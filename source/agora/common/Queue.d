module agora.common.Queue;

/*******************************************************************************

    Multi-producer multi-consumer queue
    Non-blocking and blocking concurrent queue algorithms

    Copyright:
        Copyright (c) 2019 BOS Platform Foundation Korea
        All rights reserved.

    License:
        MIT License. See LICENSE for details.

*******************************************************************************/
import core.atomic;
import core.sync.mutex;

public alias WaitDg = void delegate();

/*******************************************************************************

    Interface for all queues.

*******************************************************************************/

public interface Queue (T)
{
    /***************************************************************************

        Atomically put one element into the queue.

        Params:
            value = value to add

    ***************************************************************************/

    public void enqueue (T value);

    /***************************************************************************

        Atomically take one element from the queue. Wait blocking or spinning.

        Return:
            The element at the front of the queue

    ***************************************************************************/

    public T dequeue (WaitDg dg = null);
}

/*******************************************************************************

    Item of queue

*******************************************************************************/

private static class QueueNode (T)
{
    public QueueNode!T next;
    public T value;
}


/*******************************************************************************

    Blocking multi-producer multi-consumer queue

*******************************************************************************/

public class BlockingQueue (T) : Queue!T
{
    private QueueNode!T head;
    private QueueNode!T tail;
    private Mutex head_lock;
    private Mutex tail_lock;

    /// Ctor
    public this()
    {
        auto n = new QueueNode!T();
        this.head = this.tail = n;
        this.head_lock = new Mutex();
        this.tail_lock = new Mutex();
    }

    /***************************************************************************

        Atomically put one element into the queue.

        Params:
            value = value to add

    ***************************************************************************/

    public void enqueue(T value)
    {
        auto item = new QueueNode!T();
        this.tail_lock.lock();
        scope (exit) this.tail_lock.unlock();

        auto back = this.tail;
        this.tail = item;
        back.value = value;
        atomicFence();
        back.next = item;
    }

    /***************************************************************************

        Atomically take one element from the queue. Wait blocking or spinning.

        Return:
            The element at the front of the queue

    ***************************************************************************/

    public T dequeue (WaitDg dg = null)
    {
        this.head_lock.lock();
        scope (exit) this.head_lock.unlock();

        while (true)
        {
            auto front = this.head;
            auto second = front.next;
            if (second !is null)
            {
                this.head = second;
                return front.value;
            }
            if (dg !is null)
                dg();
        }
    }
}

/*******************************************************************************

    Non-blocking multi-producer multi-consumer queue

*******************************************************************************/

public class NonBlockingQueue (T) : Queue!T
{
    private shared(QueueNode!T) head;
    private shared(QueueNode!T) tail;

    /// Ctor
    public this ()
    {
        shared n = new QueueNode!T();
        this.head = this.tail = n;
    }

    /***************************************************************************

        Atomically put one element into the queue.

        Params:
            value = element to add

    ***************************************************************************/

    public void enqueue (T value)
    {
        shared node = new QueueNode!T();
        node.value = value;

        while (true)
        {
            auto tail = this.tail;
            auto next = tail.next;

            if (tail is this.tail)
            {
                if (next is null)
                {
                    if (cas(&tail.next, next, node))
                        break;
                }
                else
                    cas(&this.tail, tail, next);
            }
        }
    }

    /***************************************************************************

        Atomically take one element from the queue. Wait blocking or spinning.

        Return:
            The element at the front of the queue

    ***************************************************************************/

    public T dequeue (WaitDg dg = null)
    {
        T value = void;
        while (true)
        {
            auto head = this.head;
            auto tail = this.tail;
            auto next = head.next;

            if (this.head is head)
            {
                if (head is tail)
                {
                    if (next !is null)
                        cas(&this.tail, tail, next);
                }
                else
                {
                    if (cas(&this.head, head, next))
                    {
                        value = next.value;
                        break;
                    }
                }
            }
            if (dg !is null)
                dg();
        }
        return value;
    }

}
unittest
{
    ///  Start `writers` amount of threads to write into a queue.
    ///  Start `readers` amount of threads to read from the queue.
    ///  Each writer counts from 0 to `count` and sends each number into the queue.
    ///  The sum is checked at the end.
    void test_run(alias Q)(uint writers, uint readers, uint count)
    {
        import std.bigint : BigInt;
        import std.range;

        import core.thread;

        immutable(BigInt) correct_sum = BigInt(count) * BigInt(count-1) / 2 * writers;

        BigInt sum = 0;

        auto q = new Q();

        auto write_worker = ()
        {
            Thread[] ts;
            foreach (i; 0 .. writers)
            {
                auto t = new Thread(
                    {
                        foreach (n; 1 .. count)
                            q.enqueue(n);
                        Thread.sleep(dur!("msecs")(1));
                    }
                );
                t.start();
                ts ~= t;
            }

            foreach (t; ts)
                t.join();
        };

        auto read_worker = ()
        {
            Thread[] ts;
            foreach (i; 0 .. readers)
            {
                auto t = new Thread(
                    {
                        BigInt s = 0;
                        foreach (_; 1 .. count)
                        {
                            auto n = q.dequeue();
                            s += n;
                        }
                        synchronized { sum += s; }
                        Thread.sleep(dur!("msecs")(1));
                    }
                );
                t.start();
                ts ~= t;
            }

            foreach (t; ts)
                t.join();
        };

        auto w = new Thread(write_worker);
        auto r = new Thread(read_worker);
        w.start();
        r.start();

        w.join();
        r.join();

        assert(sum == correct_sum);
    }
    import std.datetime.stopwatch : benchmark;
    enum readers = 10;
    enum writers = 10;
    enum count = 10_000;

    void f0 ()
    {
        test_run!(BlockingQueue!long)     (writers, readers, count);
    }

    void f1 ()
    {
        test_run!(NonBlockingQueue!long)  (writers, readers, count);
    }

    auto r = benchmark!(f0, f1)(3);
    import std.stdio;
    writeln(r[0]);
    writeln(r[1]);
}

unittest
{
    auto queue = new NonBlockingQueue!long();
    queue.enqueue(10);
    queue.enqueue(20);

    assert(queue.dequeue() == 10);
    assert(queue.dequeue() == 20);
}