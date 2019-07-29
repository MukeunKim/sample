/++
Auto-generated Linux syscall constants for SPARC
+/
module mir.linux.arch.sparc.uapi._asm.unistd;
version(LDC) pragma(LDC_no_moduleinfo);

enum NR_restart_syscall = 0;
enum NR_exit = 1;
enum NR_fork = 2;
enum NR_read = 3;
enum NR_write = 4;
enum NR_open = 5;
enum NR_close = 6;
enum NR_wait4 = 7;
enum NR_creat = 8;
enum NR_link = 9;
enum NR_unlink = 10;
enum NR_execv = 11;
enum NR_chdir = 12;
enum NR_chown = 13;
enum NR_mknod = 14;
enum NR_chmod = 15 /* Common                                      */;
enum NR_lchown = 16 /* Common                                      */;
enum NR_brk = 17 /* Common                                      */;
enum NR_perfctr = 18 /* Performance counter operations              */;
enum NR_lseek = 19 /* Common                                      */;
enum NR_getpid = 20 /* Common                                      */;
enum NR_capget = 21 /* Linux Specific				   */;
enum NR_capset = 22 /* Linux Specific				   */;
enum NR_setuid = 23 /* Implemented via setreuid in SunOS           */;
enum NR_getuid = 24 /* Common                                      */;
enum NR_vmsplice = 25 /* ENOSYS under SunOS			   */;
enum NR_ptrace = 26 /* Common                                      */;
enum NR_alarm = 27 /* Implemented via setitimer in SunOS          */;
enum NR_sigaltstack = 28 /* Common					   */;
enum NR_pause = 29 /* Is sigblock(0)->sigpause() in SunOS         */;
enum NR_utime = 30 /* Implemented via utimes() under SunOS        */;
static if (size_t.sizeof == 4) enum NR_lchown32 = 31 /* Linux sparc32 specific                      */;
static if (size_t.sizeof == 4) enum NR_fchown32 = 32 /* Linux sparc32 specific                      */;
enum NR_access = 33 /* Common                                      */;
enum NR_nice = 34 /* Implemented via get/setpriority() in SunOS  */;
static if (size_t.sizeof == 4) enum NR_chown32 = 35 /* Linux sparc32 specific                      */;
enum NR_sync = 36 /* Common                                      */;
enum NR_kill = 37 /* Common                                      */;
enum NR_stat = 38 /* Common                                      */;
enum NR_sendfile = 39 /* Linux Specific				   */;
enum NR_lstat = 40 /* Common                                      */;
enum NR_dup = 41 /* Common                                      */;
enum NR_pipe = 42 /* Common                                      */;
enum NR_times = 43 /* Implemented via getrusage() in SunOS        */;
static if (size_t.sizeof == 4) enum NR_getuid32 = 44 /* Linux sparc32 specific                      */;
enum NR_umount2 = 45 /* Linux Specific                              */;
enum NR_setgid = 46 /* Implemented via setregid() in SunOS         */;
enum NR_getgid = 47 /* Common                                      */;
enum NR_signal = 48 /* Implemented via sigvec() in SunOS           */;
enum NR_geteuid = 49 /* SunOS calls getuid()                        */;
enum NR_getegid = 50 /* SunOS calls getgid()                        */;
enum NR_acct = 51 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_getgid32 = 53 /* Linux sparc32 specific                      */;
static if (size_t.sizeof == 8) enum NR_memory_ordering = 52 /* Linux Specific				   */;
enum NR_ioctl = 54 /* Common                                      */;
enum NR_reboot = 55 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_mmap2 = 56 /* Linux sparc32 Specific			   */;
enum NR_symlink = 57 /* Common                                      */;
enum NR_readlink = 58 /* Common                                      */;
enum NR_execve = 59 /* Common                                      */;
enum NR_umask = 60 /* Common                                      */;
enum NR_chroot = 61 /* Common                                      */;
enum NR_fstat = 62 /* Common                                      */;
enum NR_fstat64 = 63 /* Linux Specific			           */;
enum NR_getpagesize = 64 /* Common                                      */;
enum NR_msync = 65 /* Common in newer 1.3.x revs...               */;
enum NR_vfork = 66 /* Common                                      */;
enum NR_pread64 = 67 /* Linux Specific                              */;
enum NR_pwrite64 = 68 /* Linux Specific                              */;
static if (size_t.sizeof == 4) enum NR_geteuid32 = 69 /* Linux sparc32, sbrk under SunOS             */;
static if (size_t.sizeof == 4) enum NR_getegid32 = 70 /* Linux sparc32, sstk under SunOS             */;
enum NR_mmap = 71 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_setreuid32 = 72 /* Linux sparc32, vadvise under SunOS          */;
enum NR_munmap = 73 /* Common                                      */;
enum NR_mprotect = 74 /* Common                                      */;
enum NR_madvise = 75 /* Common                                      */;
enum NR_vhangup = 76 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_truncate64 = 77 /* Linux sparc32 Specific			   */;
enum NR_mincore = 78 /* Common                                      */;
enum NR_getgroups = 79 /* Common                                      */;
enum NR_setgroups = 80 /* Common                                      */;
enum NR_getpgrp = 81 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_setgroups32 = 82 /* Linux sparc32, setpgrp under SunOS          */;
enum NR_setitimer = 83 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_ftruncate64 = 84 /* Linux sparc32 Specific			   */;
enum NR_swapon = 85 /* Common                                      */;
enum NR_getitimer = 86 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_setuid32 = 87 /* Linux sparc32, gethostname under SunOS      */;
enum NR_sethostname = 88 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_setgid32 = 89 /* Linux sparc32, getdtablesize under SunOS    */;
enum NR_dup2 = 90 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_setfsuid32 = 91 /* Linux sparc32, getdopt under SunOS          */;
enum NR_fcntl = 92 /* Common                                      */;
enum NR_select = 93 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_setfsgid32 = 94 /* Linux sparc32, setdopt under SunOS          */;
enum NR_fsync = 95 /* Common                                      */;
enum NR_setpriority = 96 /* Common                                      */;
enum NR_socket = 97 /* Common                                      */;
enum NR_connect = 98 /* Common                                      */;
enum NR_accept = 99 /* Common                                      */;
enum NR_getpriority = 100 /* Common                                      */;
enum NR_rt_sigreturn = 101 /* Linux Specific                              */;
enum NR_rt_sigaction = 102 /* Linux Specific                              */;
enum NR_rt_sigprocmask = 103 /* Linux Specific                              */;
enum NR_rt_sigpending = 104 /* Linux Specific                              */;
enum NR_rt_sigtimedwait = 105 /* Linux Specific                              */;
enum NR_rt_sigqueueinfo = 106 /* Linux Specific                              */;
enum NR_rt_sigsuspend = 107 /* Linux Specific                              */;
static if (size_t.sizeof == 4) enum NR_setresuid32 = 108 /* Linux Specific, sigvec under SunOS	   */;
static if (size_t.sizeof == 4) enum NR_getresuid32 = 109 /* Linux Specific, sigblock under SunOS	   */;
static if (size_t.sizeof == 4) enum NR_setresgid32 = 110 /* Linux Specific, sigsetmask under SunOS	   */;
static if (size_t.sizeof == 4) enum NR_getresgid32 = 111 /* Linux Specific, sigpause under SunOS	   */;
static if (size_t.sizeof == 4) enum NR_setregid32 = 112 /* Linux sparc32, sigstack under SunOS         */;
static if (size_t.sizeof == 8) enum NR_setresuid = 108 /* Linux Specific, sigvec under SunOS	   */;
static if (size_t.sizeof == 8) enum NR_getresuid = 109 /* Linux Specific, sigblock under SunOS	   */;
static if (size_t.sizeof == 8) enum NR_setresgid = 110 /* Linux Specific, sigsetmask under SunOS	   */;
static if (size_t.sizeof == 8) enum NR_getresgid = 111 /* Linux Specific, sigpause under SunOS	   */;
enum NR_recvmsg = 113 /* Common                                      */;
enum NR_sendmsg = 114 /* Common                                      */;
static if (size_t.sizeof == 4) enum NR_getgroups32 = 115 /* Linux sparc32, vtrace under SunOS           */;
enum NR_gettimeofday = 116 /* Common                                      */;
enum NR_getrusage = 117 /* Common                                      */;
enum NR_getsockopt = 118 /* Common                                      */;
enum NR_getcwd = 119 /* Linux Specific				   */;
enum NR_readv = 120 /* Common                                      */;
enum NR_writev = 121 /* Common                                      */;
enum NR_settimeofday = 122 /* Common                                      */;
enum NR_fchown = 123 /* Common                                      */;
enum NR_fchmod = 124 /* Common                                      */;
enum NR_recvfrom = 125 /* Common                                      */;
enum NR_setreuid = 126 /* Common                                      */;
enum NR_setregid = 127 /* Common                                      */;
enum NR_rename = 128 /* Common                                      */;
enum NR_truncate = 129 /* Common                                      */;
enum NR_ftruncate = 130 /* Common                                      */;
enum NR_flock = 131 /* Common                                      */;
enum NR_lstat64 = 132 /* Linux Specific			           */;
enum NR_sendto = 133 /* Common                                      */;
enum NR_shutdown = 134 /* Common                                      */;
enum NR_socketpair = 135 /* Common                                      */;
enum NR_mkdir = 136 /* Common                                      */;
enum NR_rmdir = 137 /* Common                                      */;
enum NR_utimes = 138 /* SunOS Specific                              */;
enum NR_stat64 = 139 /* Linux Specific			           */;
enum NR_sendfile64 = 140 /* adjtime under SunOS                         */;
enum NR_getpeername = 141 /* Common                                      */;
enum NR_futex = 142 /* gethostid under SunOS                       */;
enum NR_gettid = 143 /* ENOSYS under SunOS                          */;
enum NR_getrlimit = 144 /* Common                                      */;
enum NR_setrlimit = 145 /* Common                                      */;
enum NR_pivot_root = 146 /* Linux Specific, killpg under SunOS          */;
enum NR_prctl = 147 /* ENOSYS under SunOS                          */;
enum NR_pciconfig_read = 148 /* ENOSYS under SunOS                          */;
enum NR_pciconfig_write = 149 /* ENOSYS under SunOS                          */;
enum NR_getsockname = 150 /* Common                                      */;
enum NR_inotify_init = 151 /* Linux specific                              */;
enum NR_inotify_add_watch = 152 /* Linux specific                              */;
enum NR_poll = 153 /* Common                                      */;
enum NR_getdents64 = 154 /* Linux specific				   */;
static if (size_t.sizeof == 4) enum NR_fcntl64 = 155 /* Linux sparc32 Specific                      */;
enum NR_inotify_rm_watch = 156 /* Linux specific				   */;
enum NR_statfs = 157 /* Common                                      */;
enum NR_fstatfs = 158 /* Common                                      */;
enum NR_umount = 159 /* Common                                      */;
enum NR_sched_set_affinity = 160 /* Linux specific, async_daemon under SunOS    */;
enum NR_sched_get_affinity = 161 /* Linux specific, getfh under SunOS           */;
enum NR_getdomainname = 162 /* SunOS Specific                              */;
enum NR_setdomainname = 163 /* Common                                      */;
static if (size_t.sizeof == 8) enum NR_utrap_install = 164 /* SYSV ABI/v9 required			   */;
enum NR_quotactl = 165 /* Common                                      */;
enum NR_set_tid_address = 166 /* Linux specific, exportfs under SunOS        */;
enum NR_mount = 167 /* Common                                      */;
enum NR_ustat = 168 /* Common                                      */;
enum NR_setxattr = 169 /* SunOS: semsys                               */;
enum NR_lsetxattr = 170 /* SunOS: msgsys                               */;
enum NR_fsetxattr = 171 /* SunOS: shmsys                               */;
enum NR_getxattr = 172 /* SunOS: auditsys                             */;
enum NR_lgetxattr = 173 /* SunOS: rfssys                               */;
enum NR_getdents = 174 /* Common                                      */;
enum NR_setsid = 175 /* Common                                      */;
enum NR_fchdir = 176 /* Common                                      */;
enum NR_fgetxattr = 177 /* SunOS: fchroot                              */;
enum NR_listxattr = 178 /* SunOS: vpixsys                              */;
enum NR_llistxattr = 179 /* SunOS: aioread                              */;
enum NR_flistxattr = 180 /* SunOS: aiowrite                             */;
enum NR_removexattr = 181 /* SunOS: aiowait                              */;
enum NR_lremovexattr = 182 /* SunOS: aiocancel                            */;
enum NR_sigpending = 183 /* Common                                      */;
enum NR_query_module = 184 /* Linux Specific				   */;
enum NR_setpgid = 185 /* Common                                      */;
enum NR_fremovexattr = 186 /* SunOS: pathconf                             */;
enum NR_tkill = 187 /* SunOS: fpathconf                            */;
enum NR_exit_group = 188 /* Linux specific, sysconf undef SunOS         */;
enum NR_uname = 189 /* Linux Specific                              */;
enum NR_init_module = 190 /* Linux Specific                              */;
enum NR_personality = 191 /* Linux Specific                              */;
enum NR_remap_file_pages = 192 /* Linux Specific                              */;
enum NR_epoll_create = 193 /* Linux Specific                              */;
enum NR_epoll_ctl = 194 /* Linux Specific                              */;
enum NR_epoll_wait = 195 /* Linux Specific                              */;
enum NR_ioprio_set = 196 /* Linux Specific                              */;
enum NR_getppid = 197 /* Linux Specific                              */;
enum NR_sigaction = 198 /* Linux Specific                              */;
enum NR_sgetmask = 199 /* Linux Specific                              */;
enum NR_ssetmask = 200 /* Linux Specific                              */;
enum NR_sigsuspend = 201 /* Linux Specific                              */;
enum NR_oldlstat = 202 /* Linux Specific                              */;
enum NR_uselib = 203 /* Linux Specific                              */;
enum NR_readdir = 204 /* Linux Specific                              */;
enum NR_readahead = 205 /* Linux Specific                              */;
enum NR_socketcall = 206 /* Linux Specific                              */;
enum NR_syslog = 207 /* Linux Specific                              */;
enum NR_lookup_dcookie = 208 /* Linux Specific                              */;
enum NR_fadvise64 = 209 /* Linux Specific                              */;
enum NR_fadvise64_64 = 210 /* Linux Specific                              */;
enum NR_tgkill = 211 /* Linux Specific                              */;
enum NR_waitpid = 212 /* Linux Specific                              */;
enum NR_swapoff = 213 /* Linux Specific                              */;
enum NR_sysinfo = 214 /* Linux Specific                              */;
enum NR_ipc = 215 /* Linux Specific                              */;
enum NR_sigreturn = 216 /* Linux Specific                              */;
enum NR_clone = 217 /* Linux Specific                              */;
enum NR_ioprio_get = 218 /* Linux Specific                              */;
enum NR_adjtimex = 219 /* Linux Specific                              */;
enum NR_sigprocmask = 220 /* Linux Specific                              */;
enum NR_create_module = 221 /* Linux Specific                              */;
enum NR_delete_module = 222 /* Linux Specific                              */;
enum NR_get_kernel_syms = 223 /* Linux Specific                              */;
enum NR_getpgid = 224 /* Linux Specific                              */;
enum NR_bdflush = 225 /* Linux Specific                              */;
enum NR_sysfs = 226 /* Linux Specific                              */;
enum NR_afs_syscall = 227 /* Linux Specific                              */;
enum NR_setfsuid = 228 /* Linux Specific                              */;
enum NR_setfsgid = 229 /* Linux Specific                              */;
enum NR__newselect = 230 /* Linux Specific                              */;
static if (size_t.sizeof == 4) enum NR_time = 231 /* Linux Specific                              */;
enum NR_splice = 232 /* Linux Specific                              */;
enum NR_stime = 233 /* Linux Specific                              */;
enum NR_statfs64 = 234 /* Linux Specific                              */;
enum NR_fstatfs64 = 235 /* Linux Specific                              */;
enum NR__llseek = 236 /* Linux Specific                              */;
enum NR_mlock = 237;
enum NR_munlock = 238;
enum NR_mlockall = 239;
enum NR_munlockall = 240;
enum NR_sched_setparam = 241;
enum NR_sched_getparam = 242;
enum NR_sched_setscheduler = 243;
enum NR_sched_getscheduler = 244;
enum NR_sched_yield = 245;
enum NR_sched_get_priority_max = 246;
enum NR_sched_get_priority_min = 247;
enum NR_sched_rr_get_interval = 248;
enum NR_nanosleep = 249;
enum NR_mremap = 250;
enum NR__sysctl = 251;
enum NR_getsid = 252;
enum NR_fdatasync = 253;
enum NR_nfsservctl = 254;
enum NR_sync_file_range = 255;
enum NR_clock_settime = 256;
enum NR_clock_gettime = 257;
enum NR_clock_getres = 258;
enum NR_clock_nanosleep = 259;
enum NR_sched_getaffinity = 260;
enum NR_sched_setaffinity = 261;
enum NR_timer_settime = 262;
enum NR_timer_gettime = 263;
enum NR_timer_getoverrun = 264;
enum NR_timer_delete = 265;
enum NR_timer_create = 266;
enum NR_io_setup = 268;
enum NR_io_destroy = 269;
enum NR_io_submit = 270;
enum NR_io_cancel = 271;
enum NR_io_getevents = 272;
enum NR_mq_open = 273;
enum NR_mq_unlink = 274;
enum NR_mq_timedsend = 275;
enum NR_mq_timedreceive = 276;
enum NR_mq_notify = 277;
enum NR_mq_getsetattr = 278;
enum NR_waitid = 279;
enum NR_tee = 280;
enum NR_add_key = 281;
enum NR_request_key = 282;
enum NR_keyctl = 283;
enum NR_openat = 284;
enum NR_mkdirat = 285;
enum NR_mknodat = 286;
enum NR_fchownat = 287;
enum NR_futimesat = 288;
enum NR_fstatat64 = 289;
enum NR_unlinkat = 290;
enum NR_renameat = 291;
enum NR_linkat = 292;
enum NR_symlinkat = 293;
enum NR_readlinkat = 294;
enum NR_fchmodat = 295;
enum NR_faccessat = 296;
enum NR_pselect6 = 297;
enum NR_ppoll = 298;
enum NR_unshare = 299;
enum NR_set_robust_list = 300;
enum NR_get_robust_list = 301;
enum NR_migrate_pages = 302;
enum NR_mbind = 303;
enum NR_get_mempolicy = 304;
enum NR_set_mempolicy = 305;
enum NR_kexec_load = 306;
enum NR_move_pages = 307;
enum NR_getcpu = 308;
enum NR_epoll_pwait = 309;
enum NR_utimensat = 310;
enum NR_signalfd = 311;
enum NR_timerfd_create = 312;
enum NR_eventfd = 313;
enum NR_fallocate = 314;
enum NR_timerfd_settime = 315;
enum NR_timerfd_gettime = 316;
enum NR_signalfd4 = 317;
enum NR_eventfd2 = 318;
enum NR_epoll_create1 = 319;
enum NR_dup3 = 320;
enum NR_pipe2 = 321;
enum NR_inotify_init1 = 322;
enum NR_accept4 = 323;
enum NR_preadv = 324;
enum NR_pwritev = 325;
enum NR_rt_tgsigqueueinfo = 326;
enum NR_perf_event_open = 327;
enum NR_recvmmsg = 328;
enum NR_fanotify_init = 329;
enum NR_fanotify_mark = 330;
enum NR_prlimit64 = 331;
enum NR_name_to_handle_at = 332;
enum NR_open_by_handle_at = 333;
enum NR_clock_adjtime = 334;
enum NR_syncfs = 335;
enum NR_sendmmsg = 336;
enum NR_setns = 337;
enum NR_process_vm_readv = 338;
enum NR_process_vm_writev = 339;
enum NR_kern_features = 340;
enum NR_kcmp = 341;
enum NR_finit_module = 342;
enum NR_sched_setattr = 343;
enum NR_sched_getattr = 344;
enum NR_renameat2 = 345;
enum NR_seccomp = 346;
enum NR_getrandom = 347;
enum NR_memfd_create = 348;
enum NR_bpf = 349;
enum NR_execveat = 350;
enum NR_membarrier = 351;
enum NR_userfaultfd = 352;
enum NR_bind = 353;
enum NR_listen = 354;
enum NR_setsockopt = 355;
enum NR_mlock2 = 356;
enum NR_copy_file_range = 357;
enum NR_preadv2 = 358;
enum NR_pwritev2 = 359;
enum NR_statx = 360;
