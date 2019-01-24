pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong,
    __clang_max_align_nonce2: c_longdouble,
};
pub extern fn memcpy(__dest: ?*c_void, __src: ?*const c_void, __n: c_ulong) ?*c_void;
pub extern fn memmove(__dest: ?*c_void, __src: ?*const c_void, __n: c_ulong) ?*c_void;
pub extern fn memccpy(noalias __dest: ?*c_void, noalias __src: ?*const c_void, __c: c_int, __n: usize) ?*c_void;
pub extern fn memset(__s: ?*c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn memcmp(__s1: ?*const c_void, __s2: ?*const c_void, __n: c_ulong) c_int;
pub extern fn memchr(__s: ?*const c_void, __c: c_int, __n: c_ulong) ?*c_void;
pub extern fn strcpy(__dest: ?[*]u8, __src: ?[*]const u8) ?[*]u8;
pub extern fn strncpy(__dest: ?[*]u8, __src: ?[*]const u8, __n: c_ulong) ?[*]u8;
pub extern fn strcat(__dest: ?[*]u8, __src: ?[*]const u8) ?[*]u8;
pub extern fn strncat(__dest: ?[*]u8, __src: ?[*]const u8, __n: c_ulong) ?[*]u8;
pub extern fn strcmp(__s1: ?[*]const u8, __s2: ?[*]const u8) c_int;
pub extern fn strncmp(__s1: ?[*]const u8, __s2: ?[*]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: ?[*]const u8, __s2: ?[*]const u8) c_int;
pub extern fn strxfrm(__dest: ?[*]u8, __src: ?[*]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data = @OpaqueType();
pub const struct___locale_struct = extern struct {
    __locales: [13](?*struct___locale_data),
    __ctype_b: ?[*]const c_ushort,
    __ctype_tolower: ?[*]const c_int,
    __ctype_toupper: ?[*]const c_int,
    __names: [13](?[*]const u8),
};
pub const __locale_t = ?[*]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: ?[*]const u8, __s2: ?[*]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: ?[*]u8, __src: ?[*]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: ?[*]const u8) ?[*]u8;
pub extern fn strndup(__string: ?[*]const u8, __n: c_ulong) ?[*]u8;
pub extern fn strchr(__s: ?[*]const u8, __c: c_int) ?[*]u8;
pub extern fn strrchr(__s: ?[*]const u8, __c: c_int) ?[*]u8;
pub extern fn strcspn(__s: ?[*]const u8, __reject: ?[*]const u8) c_ulong;
pub extern fn strspn(__s: ?[*]const u8, __accept: ?[*]const u8) c_ulong;
pub extern fn strpbrk(__s: ?[*]const u8, __accept: ?[*]const u8) ?[*]u8;
pub extern fn strstr(__haystack: ?[*]const u8, __needle: ?[*]const u8) ?[*]u8;
pub extern fn strtok(__s: ?[*]u8, __delim: ?[*]const u8) ?[*]u8;
pub extern fn __strtok_r(noalias __s: ?[*]u8, noalias __delim: ?[*]const u8, noalias __save_ptr: ?[*](?[*]u8)) ?[*]u8;
pub extern fn strtok_r(noalias __s: ?[*]u8, noalias __delim: ?[*]const u8, noalias __save_ptr: ?[*](?[*]u8)) ?[*]u8;
pub extern fn strlen(__s: ?[*]const u8) c_ulong;
pub extern fn strnlen(__string: ?[*]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) ?[*]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: ?[*]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) ?[*]u8;
pub extern fn bcmp(__s1: ?*const c_void, __s2: ?*const c_void, __n: usize) c_int;
pub extern fn bcopy(__src: ?*const c_void, __dest: ?*c_void, __n: usize) void;
pub extern fn bzero(__s: ?*c_void, __n: c_ulong) void;
pub extern fn index(__s: ?[*]const u8, __c: c_int) ?[*]u8;
pub extern fn rindex(__s: ?[*]const u8, __c: c_int) ?[*]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: ?[*]const u8, __s2: ?[*]const u8) c_int;
pub extern fn strncasecmp(__s1: ?[*]const u8, __s2: ?[*]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: ?[*]const u8, __s2: ?[*]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: ?[*]const u8, __s2: ?[*]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*c_void, __n: usize) void;
pub extern fn strsep(noalias __stringp: ?[*](?[*]u8), noalias __delim: ?[*]const u8) ?[*]u8;
pub extern fn strsignal(__sig: c_int) ?[*]u8;
pub extern fn __stpcpy(noalias __dest: ?[*]u8, noalias __src: ?[*]const u8) ?[*]u8;
pub extern fn stpcpy(__dest: ?[*]u8, __src: ?[*]const u8) ?[*]u8;
pub extern fn __stpncpy(noalias __dest: ?[*]u8, noalias __src: ?[*]const u8, __n: usize) ?[*]u8;
pub extern fn stpncpy(__dest: ?[*]u8, __src: ?[*]const u8, __n: c_ulong) ?[*]u8;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*c_void;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = ?[*]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: extern union {
        __wch: c_uint,
        __wchb: [4]u8,
    },
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = @OpaqueType();
pub const _IO_lock_t = c_void;
pub const struct__IO_codecvt = @OpaqueType();
pub const struct__IO_wide_data = @OpaqueType();
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: ?[*]u8,
    _IO_read_end: ?[*]u8,
    _IO_read_base: ?[*]u8,
    _IO_write_base: ?[*]u8,
    _IO_write_ptr: ?[*]u8,
    _IO_write_end: ?[*]u8,
    _IO_buf_base: ?[*]u8,
    _IO_buf_end: ?[*]u8,
    _IO_save_base: ?[*]u8,
    _IO_backup_base: ?[*]u8,
    _IO_save_end: ?[*]u8,
    _markers: ?*struct__IO_marker,
    _chain: ?[*]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: ?[*]struct__IO_FILE,
    _freeres_buf: ?*c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: ?[*]FILE;
pub extern var stdout: ?[*]FILE;
pub extern var stderr: ?[*]FILE;
pub extern fn remove(__filename: ?[*]const u8) c_int;
pub extern fn rename(__old: ?[*]const u8, __new: ?[*]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: ?[*]const u8, __newfd: c_int, __new: ?[*]const u8) c_int;
pub extern fn tmpfile() ?[*]FILE;
pub extern fn tmpnam(__s: ?[*]u8) ?[*]u8;
pub extern fn tmpnam_r(__s: ?[*]u8) ?[*]u8;
pub extern fn tempnam(__dir: ?[*]const u8, __pfx: ?[*]const u8) ?[*]u8;
pub extern fn fclose(__stream: ?[*]FILE) c_int;
pub extern fn fflush(__stream: ?[*]FILE) c_int;
pub extern fn fflush_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn fopen(__filename: ?[*]const u8, __modes: ?[*]const u8) ?[*]FILE;
pub extern fn freopen(noalias __filename: ?[*]const u8, noalias __modes: ?[*]const u8, noalias __stream: ?[*]FILE) ?[*]FILE;
pub extern fn fdopen(__fd: c_int, __modes: ?[*]const u8) ?[*]FILE;
pub extern fn fmemopen(__s: ?*c_void, __len: usize, __modes: ?[*]const u8) ?[*]FILE;
pub extern fn open_memstream(__bufloc: ?[*](?[*]u8), __sizeloc: ?[*]usize) ?[*]FILE;
pub extern fn setbuf(noalias __stream: ?[*]FILE, noalias __buf: ?[*]u8) void;
pub extern fn setvbuf(noalias __stream: ?[*]FILE, noalias __buf: ?[*]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: ?[*]FILE, noalias __buf: ?[*]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: ?[*]FILE) void;
pub extern fn fprintf(__stream: ?[*]FILE, __format: ?[*]const u8) c_int;
pub extern fn printf(__format: ?[*]const u8) c_int;
pub extern fn sprintf(__s: ?[*]u8, __format: ?[*]const u8) c_int;
pub extern fn vfprintf(__s: ?[*]FILE, __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vprintf(__format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vsprintf(__s: ?[*]u8, __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: ?[*]u8, __maxlen: c_ulong, __format: ?[*]const u8) c_int;
pub extern fn vsnprintf(__s: ?[*]u8, __maxlen: c_ulong, __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: ?[*]const u8) c_int;
pub extern fn fscanf(noalias __stream: ?[*]FILE, noalias __format: ?[*]const u8) c_int;
pub extern fn scanf(noalias __format: ?[*]const u8) c_int;
pub extern fn sscanf(noalias __s: ?[*]const u8, noalias __format: ?[*]const u8) c_int;
pub extern fn vfscanf(noalias __s: ?[*]FILE, noalias __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: ?[*]const u8, noalias __format: ?[*]const u8, __arg: ?[*]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: ?[*]FILE) c_int;
pub extern fn getc(__stream: ?[*]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: ?[*]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: ?[*]FILE) c_int;
pub extern fn fgets(noalias __s: ?[*]u8, __n: c_int, noalias __stream: ?[*]FILE) ?[*]u8;
pub extern fn __getdelim(noalias __lineptr: ?[*](?[*]u8), noalias __n: ?[*]usize, __delimiter: c_int, noalias __stream: ?[*]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: ?[*](?[*]u8), noalias __n: ?[*]usize, __delimiter: c_int, noalias __stream: ?[*]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: ?[*](?[*]u8), noalias __n: ?[*]usize, noalias __stream: ?[*]FILE) __ssize_t;
pub extern fn fputs(noalias __s: ?[*]const u8, noalias __stream: ?[*]FILE) c_int;
pub extern fn puts(__s: ?[*]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: ?[*]FILE) c_int;
pub extern fn fread(__ptr: ?*c_void, __size: c_ulong, __n: c_ulong, __stream: ?[*]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const c_void, __size: c_ulong, __n: c_ulong, __s: ?[*]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*c_void, __size: usize, __n: usize, noalias __stream: ?[*]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const c_void, __size: usize, __n: usize, noalias __stream: ?[*]FILE) usize;
pub extern fn fseek(__stream: ?[*]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: ?[*]FILE) c_long;
pub extern fn rewind(__stream: ?[*]FILE) void;
pub extern fn fseeko(__stream: ?[*]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: ?[*]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: ?[*]FILE, noalias __pos: ?[*]fpos_t) c_int;
pub extern fn fsetpos(__stream: ?[*]FILE, __pos: ?[*]const fpos_t) c_int;
pub extern fn clearerr(__stream: ?[*]FILE) void;
pub extern fn feof(__stream: ?[*]FILE) c_int;
pub extern fn ferror(__stream: ?[*]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: ?[*]FILE) void;
pub extern fn feof_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn ferror_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn perror(__s: ?[*]const u8) void;
pub extern var sys_nerr: c_int;
pub extern const sys_errlist: [*]const (?[*]const u8);
pub extern fn fileno(__stream: ?[*]FILE) c_int;
pub extern fn fileno_unlocked(__stream: ?[*]FILE) c_int;
pub extern fn popen(__command: ?[*]const u8, __modes: ?[*]const u8) ?[*]FILE;
pub extern fn pclose(__stream: ?[*]FILE) c_int;
pub extern fn ctermid(__s: ?[*]u8) ?[*]u8;
pub extern fn flockfile(__stream: ?[*]FILE) void;
pub extern fn ftrylockfile(__stream: ?[*]FILE) c_int;
pub extern fn funlockfile(__stream: ?[*]FILE) void;
pub extern fn __uflow(arg0: ?[*]FILE) c_int;
pub extern fn __overflow(arg0: ?[*]FILE, arg1: c_int) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: ?[*]const u8) f64;
pub extern fn atoi(__nptr: ?[*]const u8) c_int;
pub extern fn atol(__nptr: ?[*]const u8) c_long;
pub extern fn atoll(__nptr: ?[*]const u8) c_longlong;
pub extern fn strtod(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8)) f64;
pub extern fn strtof(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8)) f32;
pub extern fn strtold(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8)) c_longdouble;
pub extern fn strtol(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8), __base: c_int) c_long;
pub extern fn strtoul(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8), __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: ?[*]const u8, noalias __endptr: ?[*](?[*]u8), __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: ?[*]const u8, noalias __endptr: ?[*](?[*]u8), __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8), __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: ?[*]const u8, __endptr: ?[*](?[*]u8), __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) ?[*]u8;
pub extern fn a64l(__s: ?[*]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulong;
pub const register_t = c_long;
pub fn __bswap_16(__bsx: __uint16_t) __uint16_t {
    return __uint16_t(((c_int(__bsx) >> @import("std").math.Log2Int(c_int)(8)) & 255) | ((c_int(__bsx) & 255) << @import("std").math.Log2Int(c_int)(8)));
}
pub fn __bswap_32(__bsx: __uint32_t) __uint32_t {
    return ((((__bsx & -16777216) >> @import("std").math.Log2Int(c_uint)(24)) | ((__bsx & 16711680) >> @import("std").math.Log2Int(c_uint)(8))) | ((__bsx & 65280) << @import("std").math.Log2Int(c_uint)(8))) | ((__bsx & 255) << @import("std").math.Log2Int(c_uint)(24));
}
pub fn __bswap_64(__bsx: __uint64_t) __uint64_t {
    return __uint64_t(((((((((c_ulonglong(__bsx) & -72057594037927936) >> @import("std").math.Log2Int(c_ulonglong)(56)) | ((c_ulonglong(__bsx) & 71776119061217280) >> @import("std").math.Log2Int(c_ulonglong)(40))) | ((c_ulonglong(__bsx) & 280375465082880) >> @import("std").math.Log2Int(c_ulonglong)(24))) | ((c_ulonglong(__bsx) & 1095216660480) >> @import("std").math.Log2Int(c_ulonglong)(8))) | ((c_ulonglong(__bsx) & 4278190080) << @import("std").math.Log2Int(c_ulonglong)(8))) | ((c_ulonglong(__bsx) & 16711680) << @import("std").math.Log2Int(c_ulonglong)(24))) | ((c_ulonglong(__bsx) & 65280) << @import("std").math.Log2Int(c_ulonglong)(40))) | ((c_ulonglong(__bsx) & 255) << @import("std").math.Log2Int(c_ulonglong)(56)));
}
pub fn __uint16_identity(__x: __uint16_t) __uint16_t {
    return __x;
}
pub fn __uint32_identity(__x: __uint32_t) __uint32_t {
    return __x;
}
pub fn __uint64_identity(__x: __uint64_t) __uint64_t {
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: ?[*]fd_set, noalias __writefds: ?[*]fd_set, noalias __exceptfds: ?[*]fd_set, noalias __timeout: ?[*]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: ?[*]fd_set, noalias __writefds: ?[*]fd_set, noalias __exceptfds: ?[*]fd_set, noalias __timeout: ?[*]const struct_timespec, noalias __sigmask: ?[*]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [7]u8,
    __pad2: c_ulong,
    __flags: c_uint,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: ?[*]struct___pthread_internal_list,
    __next: ?[*]struct___pthread_internal_list,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
pub const struct___pthread_cond_s = extern struct {
    @"": extern union {
        __wseq: c_ulonglong,
        __wseq32: extern struct {
            __low: c_uint,
            __high: c_uint,
        },
    },
    @"": extern union {
        __g1_start: c_ulonglong,
        __g1_start32: extern struct {
            __low: c_uint,
            __high: c_uint,
        },
    },
    __g_refs: [2]c_uint,
    __g_size: [2]c_uint,
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [2]c_uint,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: ?[*]u8, __statelen: usize) ?[*]u8;
pub extern fn setstate(__statebuf: ?[*]u8) ?[*]u8;
pub const struct_random_data = extern struct {
    fptr: ?[*]i32,
    rptr: ?[*]i32,
    state: ?[*]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: ?[*]i32,
};
pub extern fn random_r(noalias __buf: ?[*]struct_random_data, noalias __result: ?[*]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: ?[*]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: ?[*]u8, __statelen: usize, noalias __buf: ?[*]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: ?[*]u8, noalias __buf: ?[*]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: ?[*]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: ?[*]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: ?[*]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: ?[*]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: ?[*]c_ushort) ?[*]c_ushort;
pub extern fn lcong48(__param: ?[*]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
pub extern fn drand48_r(noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]f64) c_int;
pub extern fn erand48_r(__xsubi: ?[*]c_ushort, noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]c_long) c_int;
pub extern fn nrand48_r(__xsubi: ?[*]c_ushort, noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]c_long) c_int;
pub extern fn jrand48_r(__xsubi: ?[*]c_ushort, noalias __buffer: ?[*]struct_drand48_data, noalias __result: ?[*]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: ?[*]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: ?[*]c_ushort, __buffer: ?[*]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: ?[*]c_ushort, __buffer: ?[*]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*c_void;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*c_void;
pub extern fn realloc(__ptr: ?*c_void, __size: c_ulong) ?*c_void;
pub extern fn free(__ptr: ?*c_void) void;
pub extern fn alloca(__size: c_ulong) ?*c_void;
pub extern fn valloc(__size: usize) ?*c_void;
pub extern fn posix_memalign(__memptr: ?[*](?*c_void), __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: usize, __size: usize) ?*c_void;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?extern fn() void) c_int;
pub extern fn at_quick_exit(__func: ?extern fn() void) c_int;
pub extern fn on_exit(__func: ?extern fn(c_int, ?*c_void) void, __arg: ?*c_void) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: ?[*]const u8) ?[*]u8;
pub extern fn putenv(__string: ?[*]u8) c_int;
pub extern fn setenv(__name: ?[*]const u8, __value: ?[*]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: ?[*]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: ?[*]u8) ?[*]u8;
pub extern fn mkstemp(__template: ?[*]u8) c_int;
pub extern fn mkstemps(__template: ?[*]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: ?[*]u8) ?[*]u8;
pub extern fn system(__command: ?[*]const u8) c_int;
pub extern fn realpath(noalias __name: ?[*]const u8, noalias __resolved: ?[*]u8) ?[*]u8;
pub const __compar_fn_t = ?extern fn(?*const c_void, ?*const c_void) c_int;
pub extern fn bsearch(__key: ?*const c_void, __base: ?*const c_void, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*c_void;
pub extern fn qsort(__base: ?*c_void, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int) ?[*]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int) ?[*]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: ?[*]u8) ?[*]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int) ?[*]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int) ?[*]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: ?[*]u8) ?[*]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int, noalias __buf: ?[*]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int, noalias __buf: ?[*]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int, noalias __buf: ?[*]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: ?[*]c_int, noalias __sign: ?[*]c_int, noalias __buf: ?[*]u8, __len: usize) c_int;
pub extern fn mblen(__s: ?[*]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: ?[*]wchar_t, noalias __s: ?[*]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: ?[*]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: ?[*]wchar_t, noalias __s: ?[*]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: ?[*]u8, noalias __pwcs: ?[*]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: ?[*]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: ?[*](?[*]u8), noalias __tokens: ?[*]const (?[*]u8), noalias __valuep: ?[*](?[*]u8)) c_int;
pub extern fn getloadavg(__loadavg: ?[*]f64, __nelem: c_int) c_int;
pub const __jmp_buf = [8]c_long;
pub const struct___jmp_buf_tag = extern struct {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
};
pub const jmp_buf = [1]struct___jmp_buf_tag;
pub extern fn setjmp(__env: ?[*]struct___jmp_buf_tag) c_int;
pub extern fn __sigsetjmp(__env: ?[*]struct___jmp_buf_tag, __savemask: c_int) c_int;
pub extern fn _setjmp(__env: ?[*]struct___jmp_buf_tag) c_int;
pub extern fn longjmp(__env: ?[*]struct___jmp_buf_tag, __val: c_int) noreturn;
pub extern fn _longjmp(__env: ?[*]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const sigjmp_buf = [1]struct___jmp_buf_tag;
pub extern fn siglongjmp(__env: ?[*]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const FT_Int16 = c_short;
pub const FT_UInt16 = c_ushort;
pub const FT_Int32 = c_int;
pub const FT_UInt32 = c_uint;
pub const FT_Fast = c_int;
pub const FT_UFast = c_uint;
pub const FT_Int64 = c_long;
pub const FT_UInt64 = c_ulong;
pub const FT_Memory = ?[*]struct_FT_MemoryRec_;
pub const FT_Alloc_Func = ?extern fn(FT_Memory, c_long) ?*c_void;
pub const FT_Free_Func = ?extern fn(FT_Memory, ?*c_void) void;
pub const FT_Realloc_Func = ?extern fn(FT_Memory, c_long, c_long, ?*c_void) ?*c_void;
pub const struct_FT_MemoryRec_ = extern struct {
    user: ?*c_void,
    alloc: FT_Alloc_Func,
    free: FT_Free_Func,
    realloc: FT_Realloc_Func,
};
pub const union_FT_StreamDesc_ = extern union {
    value: c_long,
    pointer: ?*c_void,
};
pub const FT_StreamDesc = union_FT_StreamDesc_;
pub const FT_Stream = ?[*]struct_FT_StreamRec_;
pub const FT_Stream_IoFunc = ?extern fn(FT_Stream, c_ulong, ?[*]u8, c_ulong) c_ulong;
pub const FT_Stream_CloseFunc = ?extern fn(FT_Stream) void;
pub const struct_FT_StreamRec_ = extern struct {
    base: ?[*]u8,
    size: c_ulong,
    pos: c_ulong,
    descriptor: FT_StreamDesc,
    pathname: FT_StreamDesc,
    read: FT_Stream_IoFunc,
    close: FT_Stream_CloseFunc,
    memory: FT_Memory,
    cursor: ?[*]u8,
    limit: ?[*]u8,
};
pub const FT_StreamRec = struct_FT_StreamRec_;
pub const FT_Pos = c_long;
pub const struct_FT_Vector_ = extern struct {
    x: FT_Pos,
    y: FT_Pos,
};
pub const FT_Vector = struct_FT_Vector_;
pub const struct_FT_BBox_ = extern struct {
    xMin: FT_Pos,
    yMin: FT_Pos,
    xMax: FT_Pos,
    yMax: FT_Pos,
};
pub const FT_BBox = struct_FT_BBox_;
pub const FT_PIXEL_MODE_NONE = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_NONE;
pub const FT_PIXEL_MODE_MONO = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_MONO;
pub const FT_PIXEL_MODE_GRAY = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_GRAY;
pub const FT_PIXEL_MODE_GRAY2 = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_GRAY2;
pub const FT_PIXEL_MODE_GRAY4 = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_GRAY4;
pub const FT_PIXEL_MODE_LCD = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_LCD;
pub const FT_PIXEL_MODE_LCD_V = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_LCD_V;
pub const FT_PIXEL_MODE_BGRA = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_BGRA;
pub const FT_PIXEL_MODE_MAX = enum_FT_Pixel_Mode_.FT_PIXEL_MODE_MAX;
pub const enum_FT_Pixel_Mode_ = extern enum {
    FT_PIXEL_MODE_NONE = 0,
    FT_PIXEL_MODE_MONO = 1,
    FT_PIXEL_MODE_GRAY = 2,
    FT_PIXEL_MODE_GRAY2 = 3,
    FT_PIXEL_MODE_GRAY4 = 4,
    FT_PIXEL_MODE_LCD = 5,
    FT_PIXEL_MODE_LCD_V = 6,
    FT_PIXEL_MODE_BGRA = 7,
    FT_PIXEL_MODE_MAX = 8,
};
pub const FT_Pixel_Mode = enum_FT_Pixel_Mode_;
pub const struct_FT_Bitmap_ = extern struct {
    rows: c_uint,
    width: c_uint,
    pitch: c_int,
    buffer: ?[*]u8,
    num_grays: c_ushort,
    pixel_mode: u8,
    palette_mode: u8,
    palette: ?*c_void,
};
pub const FT_Bitmap = struct_FT_Bitmap_;
pub const struct_FT_Outline_ = extern struct {
    n_contours: c_short,
    n_points: c_short,
    points: ?[*]FT_Vector,
    tags: ?[*]u8,
    contours: ?[*]c_short,
    flags: c_int,
};
pub const FT_Outline = struct_FT_Outline_;
pub const FT_Outline_MoveToFunc = ?extern fn(?[*]const FT_Vector, ?*c_void) c_int;
pub const FT_Outline_LineToFunc = ?extern fn(?[*]const FT_Vector, ?*c_void) c_int;
pub const FT_Outline_ConicToFunc = ?extern fn(?[*]const FT_Vector, ?[*]const FT_Vector, ?*c_void) c_int;
pub const FT_Outline_CubicToFunc = ?extern fn(?[*]const FT_Vector, ?[*]const FT_Vector, ?[*]const FT_Vector, ?*c_void) c_int;
pub const struct_FT_Outline_Funcs_ = extern struct {
    move_to: FT_Outline_MoveToFunc,
    line_to: FT_Outline_LineToFunc,
    conic_to: FT_Outline_ConicToFunc,
    cubic_to: FT_Outline_CubicToFunc,
    shift: c_int,
    delta: FT_Pos,
};
pub const FT_Outline_Funcs = struct_FT_Outline_Funcs_;
pub const FT_GLYPH_FORMAT_NONE = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_NONE;
pub const FT_GLYPH_FORMAT_COMPOSITE = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_COMPOSITE;
pub const FT_GLYPH_FORMAT_BITMAP = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_BITMAP;
pub const FT_GLYPH_FORMAT_OUTLINE = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_OUTLINE;
pub const FT_GLYPH_FORMAT_PLOTTER = enum_FT_Glyph_Format_.FT_GLYPH_FORMAT_PLOTTER;
pub const enum_FT_Glyph_Format_ = extern enum {
    FT_GLYPH_FORMAT_NONE = 0,
    FT_GLYPH_FORMAT_COMPOSITE = 1668246896,
    FT_GLYPH_FORMAT_BITMAP = 1651078259,
    FT_GLYPH_FORMAT_OUTLINE = 1869968492,
    FT_GLYPH_FORMAT_PLOTTER = 1886154612,
};
pub const FT_Glyph_Format = enum_FT_Glyph_Format_;
pub const struct_FT_RasterRec_ = @OpaqueType();
pub const FT_Raster = ?*struct_FT_RasterRec_;
pub const struct_FT_Span_ = extern struct {
    x: c_short,
    len: c_ushort,
    coverage: u8,
};
pub const FT_Span = struct_FT_Span_;
pub const FT_SpanFunc = ?extern fn(c_int, c_int, ?[*]const FT_Span, ?*c_void) void;
pub const FT_Raster_BitTest_Func = ?extern fn(c_int, c_int, ?*c_void) c_int;
pub const FT_Raster_BitSet_Func = ?extern fn(c_int, c_int, ?*c_void) void;
pub const struct_FT_Raster_Params_ = extern struct {
    target: ?[*]const FT_Bitmap,
    source: ?*const c_void,
    flags: c_int,
    gray_spans: FT_SpanFunc,
    black_spans: FT_SpanFunc,
    bit_test: FT_Raster_BitTest_Func,
    bit_set: FT_Raster_BitSet_Func,
    user: ?*c_void,
    clip_box: FT_BBox,
};
pub const FT_Raster_Params = struct_FT_Raster_Params_;
pub const FT_Raster_NewFunc = ?extern fn(?*c_void, ?[*]FT_Raster) c_int;
pub const FT_Raster_DoneFunc = ?extern fn(FT_Raster) void;
pub const FT_Raster_ResetFunc = ?extern fn(FT_Raster, ?[*]u8, c_ulong) void;
pub const FT_Raster_SetModeFunc = ?extern fn(FT_Raster, c_ulong, ?*c_void) c_int;
pub const FT_Raster_RenderFunc = ?extern fn(FT_Raster, ?[*]const FT_Raster_Params) c_int;
pub const struct_FT_Raster_Funcs_ = extern struct {
    glyph_format: FT_Glyph_Format,
    raster_new: FT_Raster_NewFunc,
    raster_reset: FT_Raster_ResetFunc,
    raster_set_mode: FT_Raster_SetModeFunc,
    raster_render: FT_Raster_RenderFunc,
    raster_done: FT_Raster_DoneFunc,
};
pub const FT_Raster_Funcs = struct_FT_Raster_Funcs_;
pub const FT_Bool = u8;
pub const FT_FWord = c_short;
pub const FT_UFWord = c_ushort;
pub const FT_Char = i8;
pub const FT_Byte = u8;
pub const FT_Bytes = ?[*]const FT_Byte;
pub const FT_Tag = FT_UInt32;
pub const FT_String = u8;
pub const FT_Short = c_short;
pub const FT_UShort = c_ushort;
pub const FT_Int = c_int;
pub const FT_UInt = c_uint;
pub const FT_Long = c_long;
pub const FT_ULong = c_ulong;
pub const FT_F2Dot14 = c_short;
pub const FT_F26Dot6 = c_long;
pub const FT_Fixed = c_long;
pub const FT_Error = c_int;
pub const FT_Pointer = ?*c_void;
pub const FT_Offset = usize;
pub const FT_PtrDist = ptrdiff_t;
pub const struct_FT_UnitVector_ = extern struct {
    x: FT_F2Dot14,
    y: FT_F2Dot14,
};
pub const FT_UnitVector = struct_FT_UnitVector_;
pub const struct_FT_Matrix_ = extern struct {
    xx: FT_Fixed,
    xy: FT_Fixed,
    yx: FT_Fixed,
    yy: FT_Fixed,
};
pub const FT_Matrix = struct_FT_Matrix_;
pub const struct_FT_Data_ = extern struct {
    pointer: ?[*]const FT_Byte,
    length: FT_Int,
};
pub const FT_Data = struct_FT_Data_;
pub const FT_Generic_Finalizer = ?extern fn(?*c_void) void;
pub const struct_FT_Generic_ = extern struct {
    data: ?*c_void,
    finalizer: FT_Generic_Finalizer,
};
pub const FT_Generic = struct_FT_Generic_;
pub const FT_ListNode = ?[*]struct_FT_ListNodeRec_;
pub const struct_FT_ListNodeRec_ = extern struct {
    prev: FT_ListNode,
    next: FT_ListNode,
    data: ?*c_void,
};
pub const struct_FT_ListRec_ = extern struct {
    head: FT_ListNode,
    tail: FT_ListNode,
};
pub const FT_List = ?[*]struct_FT_ListRec_;
pub const FT_ListNodeRec = struct_FT_ListNodeRec_;
pub const FT_ListRec = struct_FT_ListRec_;
pub const FT_Mod_Err_Base = 0;
pub const FT_Mod_Err_Autofit = 0;
pub const FT_Mod_Err_BDF = 0;
pub const FT_Mod_Err_Bzip2 = 0;
pub const FT_Mod_Err_Cache = 0;
pub const FT_Mod_Err_CFF = 0;
pub const FT_Mod_Err_CID = 0;
pub const FT_Mod_Err_Gzip = 0;
pub const FT_Mod_Err_LZW = 0;
pub const FT_Mod_Err_OTvalid = 0;
pub const FT_Mod_Err_PCF = 0;
pub const FT_Mod_Err_PFR = 0;
pub const FT_Mod_Err_PSaux = 0;
pub const FT_Mod_Err_PShinter = 0;
pub const FT_Mod_Err_PSnames = 0;
pub const FT_Mod_Err_Raster = 0;
pub const FT_Mod_Err_SFNT = 0;
pub const FT_Mod_Err_Smooth = 0;
pub const FT_Mod_Err_TrueType = 0;
pub const FT_Mod_Err_Type1 = 0;
pub const FT_Mod_Err_Type42 = 0;
pub const FT_Mod_Err_Winfonts = 0;
pub const FT_Mod_Err_GXvalid = 0;
pub const FT_Mod_Err_Max = 1;
pub const FT_Err_Ok = 0;
pub const FT_Err_Cannot_Open_Resource = 1;
pub const FT_Err_Unknown_File_Format = 2;
pub const FT_Err_Invalid_File_Format = 3;
pub const FT_Err_Invalid_Version = 4;
pub const FT_Err_Lower_Module_Version = 5;
pub const FT_Err_Invalid_Argument = 6;
pub const FT_Err_Unimplemented_Feature = 7;
pub const FT_Err_Invalid_Table = 8;
pub const FT_Err_Invalid_Offset = 9;
pub const FT_Err_Array_Too_Large = 10;
pub const FT_Err_Missing_Module = 11;
pub const FT_Err_Missing_Property = 12;
pub const FT_Err_Invalid_Glyph_Index = 16;
pub const FT_Err_Invalid_Character_Code = 17;
pub const FT_Err_Invalid_Glyph_Format = 18;
pub const FT_Err_Cannot_Render_Glyph = 19;
pub const FT_Err_Invalid_Outline = 20;
pub const FT_Err_Invalid_Composite = 21;
pub const FT_Err_Too_Many_Hints = 22;
pub const FT_Err_Invalid_Pixel_Size = 23;
pub const FT_Err_Invalid_Handle = 32;
pub const FT_Err_Invalid_Library_Handle = 33;
pub const FT_Err_Invalid_Driver_Handle = 34;
pub const FT_Err_Invalid_Face_Handle = 35;
pub const FT_Err_Invalid_Size_Handle = 36;
pub const FT_Err_Invalid_Slot_Handle = 37;
pub const FT_Err_Invalid_CharMap_Handle = 38;
pub const FT_Err_Invalid_Cache_Handle = 39;
pub const FT_Err_Invalid_Stream_Handle = 40;
pub const FT_Err_Too_Many_Drivers = 48;
pub const FT_Err_Too_Many_Extensions = 49;
pub const FT_Err_Out_Of_Memory = 64;
pub const FT_Err_Unlisted_Object = 65;
pub const FT_Err_Cannot_Open_Stream = 81;
pub const FT_Err_Invalid_Stream_Seek = 82;
pub const FT_Err_Invalid_Stream_Skip = 83;
pub const FT_Err_Invalid_Stream_Read = 84;
pub const FT_Err_Invalid_Stream_Operation = 85;
pub const FT_Err_Invalid_Frame_Operation = 86;
pub const FT_Err_Nested_Frame_Access = 87;
pub const FT_Err_Invalid_Frame_Read = 88;
pub const FT_Err_Raster_Uninitialized = 96;
pub const FT_Err_Raster_Corrupted = 97;
pub const FT_Err_Raster_Overflow = 98;
pub const FT_Err_Raster_Negative_Height = 99;
pub const FT_Err_Too_Many_Caches = 112;
pub const FT_Err_Invalid_Opcode = 128;
pub const FT_Err_Too_Few_Arguments = 129;
pub const FT_Err_Stack_Overflow = 130;
pub const FT_Err_Code_Overflow = 131;
pub const FT_Err_Bad_Argument = 132;
pub const FT_Err_Divide_By_Zero = 133;
pub const FT_Err_Invalid_Reference = 134;
pub const FT_Err_Debug_OpCode = 135;
pub const FT_Err_ENDF_In_Exec_Stream = 136;
pub const FT_Err_Nested_DEFS = 137;
pub const FT_Err_Invalid_CodeRange = 138;
pub const FT_Err_Execution_Too_Long = 139;
pub const FT_Err_Too_Many_Function_Defs = 140;
pub const FT_Err_Too_Many_Instruction_Defs = 141;
pub const FT_Err_Table_Missing = 142;
pub const FT_Err_Horiz_Header_Missing = 143;
pub const FT_Err_Locations_Missing = 144;
pub const FT_Err_Name_Table_Missing = 145;
pub const FT_Err_CMap_Table_Missing = 146;
pub const FT_Err_Hmtx_Table_Missing = 147;
pub const FT_Err_Post_Table_Missing = 148;
pub const FT_Err_Invalid_Horiz_Metrics = 149;
pub const FT_Err_Invalid_CharMap_Format = 150;
pub const FT_Err_Invalid_PPem = 151;
pub const FT_Err_Invalid_Vert_Metrics = 152;
pub const FT_Err_Could_Not_Find_Context = 153;
pub const FT_Err_Invalid_Post_Table_Format = 154;
pub const FT_Err_Invalid_Post_Table = 155;
pub const FT_Err_DEF_In_Glyf_Bytecode = 156;
pub const FT_Err_Missing_Bitmap = 157;
pub const FT_Err_Syntax_Error = 160;
pub const FT_Err_Stack_Underflow = 161;
pub const FT_Err_Ignore = 162;
pub const FT_Err_No_Unicode_Glyph_Name = 163;
pub const FT_Err_Glyph_Too_Big = 164;
pub const FT_Err_Missing_Startfont_Field = 176;
pub const FT_Err_Missing_Font_Field = 177;
pub const FT_Err_Missing_Size_Field = 178;
pub const FT_Err_Missing_Fontboundingbox_Field = 179;
pub const FT_Err_Missing_Chars_Field = 180;
pub const FT_Err_Missing_Startchar_Field = 181;
pub const FT_Err_Missing_Encoding_Field = 182;
pub const FT_Err_Missing_Bbx_Field = 183;
pub const FT_Err_Bbx_Too_Big = 184;
pub const FT_Err_Corrupted_Font_Header = 185;
pub const FT_Err_Corrupted_Font_Glyphs = 186;
pub const FT_Err_Max = 187;
pub const struct_FT_Glyph_Metrics_ = extern struct {
    width: FT_Pos,
    height: FT_Pos,
    horiBearingX: FT_Pos,
    horiBearingY: FT_Pos,
    horiAdvance: FT_Pos,
    vertBearingX: FT_Pos,
    vertBearingY: FT_Pos,
    vertAdvance: FT_Pos,
};
pub const FT_Glyph_Metrics = struct_FT_Glyph_Metrics_;
pub const struct_FT_Bitmap_Size_ = extern struct {
    height: FT_Short,
    width: FT_Short,
    size: FT_Pos,
    x_ppem: FT_Pos,
    y_ppem: FT_Pos,
};
pub const FT_Bitmap_Size = struct_FT_Bitmap_Size_;
pub const struct_FT_LibraryRec_ = @OpaqueType();
pub const FT_Library = ?*struct_FT_LibraryRec_;
pub const struct_FT_ModuleRec_ = @OpaqueType();
pub const FT_Module = ?*struct_FT_ModuleRec_;
pub const struct_FT_DriverRec_ = @OpaqueType();
pub const FT_Driver = ?*struct_FT_DriverRec_;
pub const struct_FT_RendererRec_ = @OpaqueType();
pub const FT_Renderer = ?*struct_FT_RendererRec_;
pub const FT_Face = ?[*]struct_FT_FaceRec_;
pub const FT_ENCODING_NONE = enum_FT_Encoding_.FT_ENCODING_NONE;
pub const FT_ENCODING_MS_SYMBOL = enum_FT_Encoding_.FT_ENCODING_MS_SYMBOL;
pub const FT_ENCODING_UNICODE = enum_FT_Encoding_.FT_ENCODING_UNICODE;
pub const FT_ENCODING_SJIS = enum_FT_Encoding_.FT_ENCODING_SJIS;
pub const FT_ENCODING_PRC = enum_FT_Encoding_.FT_ENCODING_PRC;
pub const FT_ENCODING_BIG5 = enum_FT_Encoding_.FT_ENCODING_BIG5;
pub const FT_ENCODING_WANSUNG = enum_FT_Encoding_.FT_ENCODING_WANSUNG;
pub const FT_ENCODING_JOHAB = enum_FT_Encoding_.FT_ENCODING_JOHAB;
pub const FT_ENCODING_GB2312 = enum_FT_Encoding_.FT_ENCODING_GB2312;
pub const FT_ENCODING_MS_SJIS = enum_FT_Encoding_.FT_ENCODING_MS_SJIS;
pub const FT_ENCODING_MS_GB2312 = enum_FT_Encoding_.FT_ENCODING_MS_GB2312;
pub const FT_ENCODING_MS_BIG5 = enum_FT_Encoding_.FT_ENCODING_MS_BIG5;
pub const FT_ENCODING_MS_WANSUNG = enum_FT_Encoding_.FT_ENCODING_MS_WANSUNG;
pub const FT_ENCODING_MS_JOHAB = enum_FT_Encoding_.FT_ENCODING_MS_JOHAB;
pub const FT_ENCODING_ADOBE_STANDARD = enum_FT_Encoding_.FT_ENCODING_ADOBE_STANDARD;
pub const FT_ENCODING_ADOBE_EXPERT = enum_FT_Encoding_.FT_ENCODING_ADOBE_EXPERT;
pub const FT_ENCODING_ADOBE_CUSTOM = enum_FT_Encoding_.FT_ENCODING_ADOBE_CUSTOM;
pub const FT_ENCODING_ADOBE_LATIN_1 = enum_FT_Encoding_.FT_ENCODING_ADOBE_LATIN_1;
pub const FT_ENCODING_OLD_LATIN_2 = enum_FT_Encoding_.FT_ENCODING_OLD_LATIN_2;
pub const FT_ENCODING_APPLE_ROMAN = enum_FT_Encoding_.FT_ENCODING_APPLE_ROMAN;
pub const enum_FT_Encoding_ = extern enum {
    FT_ENCODING_NONE = 0,
    FT_ENCODING_MS_SYMBOL = 1937337698,
    FT_ENCODING_UNICODE = 1970170211,
    FT_ENCODING_SJIS = 1936353651,
    FT_ENCODING_PRC = 1734484000,
    FT_ENCODING_BIG5 = 1651074869,
    FT_ENCODING_WANSUNG = 2002873971,
    FT_ENCODING_JOHAB = 1785686113,
    FT_ENCODING_GB2312 = 1734484000,
    FT_ENCODING_MS_SJIS = 1936353651,
    FT_ENCODING_MS_GB2312 = 1734484000,
    FT_ENCODING_MS_BIG5 = 1651074869,
    FT_ENCODING_MS_WANSUNG = 2002873971,
    FT_ENCODING_MS_JOHAB = 1785686113,
    FT_ENCODING_ADOBE_STANDARD = 1094995778,
    FT_ENCODING_ADOBE_EXPERT = 1094992453,
    FT_ENCODING_ADOBE_CUSTOM = 1094992451,
    FT_ENCODING_ADOBE_LATIN_1 = 1818326065,
    FT_ENCODING_OLD_LATIN_2 = 1818326066,
    FT_ENCODING_APPLE_ROMAN = 1634889070,
};
pub const FT_Encoding = extern enum {
    FT_ENCODING_NONE = 0,
    FT_ENCODING_MS_SYMBOL = 1937337698,
    FT_ENCODING_UNICODE = 1970170211,
    FT_ENCODING_SJIS = 1936353651,
    FT_ENCODING_PRC = 1734484000,
    FT_ENCODING_BIG5 = 1651074869,
    FT_ENCODING_WANSUNG = 2002873971,
    FT_ENCODING_JOHAB = 1785686113,
    FT_ENCODING_GB2312 = 1734484000,
    FT_ENCODING_MS_SJIS = 1936353651,
    FT_ENCODING_MS_GB2312 = 1734484000,
    FT_ENCODING_MS_BIG5 = 1651074869,
    FT_ENCODING_MS_WANSUNG = 2002873971,
    FT_ENCODING_MS_JOHAB = 1785686113,
    FT_ENCODING_ADOBE_STANDARD = 1094995778,
    FT_ENCODING_ADOBE_EXPERT = 1094992453,
    FT_ENCODING_ADOBE_CUSTOM = 1094992451,
    FT_ENCODING_ADOBE_LATIN_1 = 1818326065,
    FT_ENCODING_OLD_LATIN_2 = 1818326066,
    FT_ENCODING_APPLE_ROMAN = 1634889070,
};
pub const struct_FT_CharMapRec_ = extern struct {
    face: FT_Face,
    encoding: FT_Encoding,
    platform_id: FT_UShort,
    encoding_id: FT_UShort,
};
pub const FT_CharMap = ?[*]struct_FT_CharMapRec_;
pub const struct_FT_SubGlyphRec_ = @OpaqueType();
pub const FT_SubGlyph = ?*struct_FT_SubGlyphRec_;
pub const struct_FT_Slot_InternalRec_ = @OpaqueType();
pub const FT_Slot_Internal = ?*struct_FT_Slot_InternalRec_;
pub const struct_FT_GlyphSlotRec_ = extern struct {
    library: FT_Library,
    face: FT_Face,
    next: FT_GlyphSlot,
    reserved: FT_UInt,
    generic: FT_Generic,
    metrics: FT_Glyph_Metrics,
    linearHoriAdvance: FT_Fixed,
    linearVertAdvance: FT_Fixed,
    advance: FT_Vector,
    format: FT_Glyph_Format,
    bitmap: FT_Bitmap,
    bitmap_left: FT_Int,
    bitmap_top: FT_Int,
    outline: FT_Outline,
    num_subglyphs: FT_UInt,
    subglyphs: FT_SubGlyph,
    control_data: ?*c_void,
    control_len: c_long,
    lsb_delta: FT_Pos,
    rsb_delta: FT_Pos,
    other: ?*c_void,
    internal: FT_Slot_Internal,
};
pub const FT_GlyphSlot = ?[*]struct_FT_GlyphSlotRec_;
pub const struct_FT_Size_Metrics_ = extern struct {
    x_ppem: FT_UShort,
    y_ppem: FT_UShort,
    x_scale: FT_Fixed,
    y_scale: FT_Fixed,
    ascender: FT_Pos,
    descender: FT_Pos,
    height: FT_Pos,
    max_advance: FT_Pos,
};
pub const FT_Size_Metrics = struct_FT_Size_Metrics_;
pub const struct_FT_Size_InternalRec_ = @OpaqueType();
pub const FT_Size_Internal = ?*struct_FT_Size_InternalRec_;
pub const struct_FT_SizeRec_ = extern struct {
    face: FT_Face,
    generic: FT_Generic,
    metrics: FT_Size_Metrics,
    internal: FT_Size_Internal,
};
pub const FT_Size = ?[*]struct_FT_SizeRec_;
pub const struct_FT_Face_InternalRec_ = @OpaqueType();
pub const FT_Face_Internal = ?*struct_FT_Face_InternalRec_;
pub const struct_FT_FaceRec_ = extern struct {
    num_faces: FT_Long,
    face_index: FT_Long,
    face_flags: FT_Long,
    style_flags: FT_Long,
    num_glyphs: FT_Long,
    family_name: ?[*]FT_String,
    style_name: ?[*]FT_String,
    num_fixed_sizes: FT_Int,
    available_sizes: ?[*]FT_Bitmap_Size,
    num_charmaps: FT_Int,
    charmaps: ?[*]FT_CharMap,
    generic: FT_Generic,
    bbox: FT_BBox,
    units_per_EM: FT_UShort,
    ascender: FT_Short,
    descender: FT_Short,
    height: FT_Short,
    max_advance_width: FT_Short,
    max_advance_height: FT_Short,
    underline_position: FT_Short,
    underline_thickness: FT_Short,
    glyph: FT_GlyphSlot,
    size: FT_Size,
    charmap: FT_CharMap,
    driver: FT_Driver,
    memory: FT_Memory,
    stream: FT_Stream,
    sizes_list: FT_ListRec,
    autohint: FT_Generic,
    extensions: ?*c_void,
    internal: FT_Face_Internal,
};
pub const FT_CharMapRec = struct_FT_CharMapRec_;
pub const FT_FaceRec = struct_FT_FaceRec_;
pub const FT_SizeRec = struct_FT_SizeRec_;
pub const FT_GlyphSlotRec = struct_FT_GlyphSlotRec_;
pub extern fn FT_Init_FreeType(alibrary: ?[*]FT_Library) FT_Error;
pub extern fn FT_Done_FreeType(library: FT_Library) FT_Error;
pub const struct_FT_Parameter_ = extern struct {
    tag: FT_ULong,
    data: FT_Pointer,
};
pub const FT_Parameter = struct_FT_Parameter_;
pub const struct_FT_Open_Args_ = extern struct {
    flags: FT_UInt,
    memory_base: ?[*]const FT_Byte,
    memory_size: FT_Long,
    pathname: ?[*]FT_String,
    stream: FT_Stream,
    driver: FT_Module,
    num_params: FT_Int,
    params: ?[*]FT_Parameter,
};
pub const FT_Open_Args = struct_FT_Open_Args_;
pub extern fn FT_New_Face(library: FT_Library, filepathname: ?[*]const u8, face_index: FT_Long, aface: ?[*]FT_Face) FT_Error;
pub extern fn FT_New_Memory_Face(library: FT_Library, file_base: ?[*]const FT_Byte, file_size: FT_Long, face_index: FT_Long, aface: ?[*]FT_Face) FT_Error;
pub extern fn FT_Open_Face(library: FT_Library, args: ?[*]const FT_Open_Args, face_index: FT_Long, aface: ?[*]FT_Face) FT_Error;
pub extern fn FT_Attach_File(face: FT_Face, filepathname: ?[*]const u8) FT_Error;
pub extern fn FT_Attach_Stream(face: FT_Face, parameters: ?[*]FT_Open_Args) FT_Error;
pub extern fn FT_Reference_Face(face: FT_Face) FT_Error;
pub extern fn FT_Done_Face(face: FT_Face) FT_Error;
pub extern fn FT_Select_Size(face: FT_Face, strike_index: FT_Int) FT_Error;
pub const FT_SIZE_REQUEST_TYPE_NOMINAL = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_NOMINAL;
pub const FT_SIZE_REQUEST_TYPE_REAL_DIM = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_REAL_DIM;
pub const FT_SIZE_REQUEST_TYPE_BBOX = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_BBOX;
pub const FT_SIZE_REQUEST_TYPE_CELL = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_CELL;
pub const FT_SIZE_REQUEST_TYPE_SCALES = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_SCALES;
pub const FT_SIZE_REQUEST_TYPE_MAX = enum_FT_Size_Request_Type_.FT_SIZE_REQUEST_TYPE_MAX;
pub const enum_FT_Size_Request_Type_ = extern enum {
    FT_SIZE_REQUEST_TYPE_NOMINAL,
    FT_SIZE_REQUEST_TYPE_REAL_DIM,
    FT_SIZE_REQUEST_TYPE_BBOX,
    FT_SIZE_REQUEST_TYPE_CELL,
    FT_SIZE_REQUEST_TYPE_SCALES,
    FT_SIZE_REQUEST_TYPE_MAX,
};
pub const FT_Size_Request_Type = enum_FT_Size_Request_Type_;
pub const struct_FT_Size_RequestRec_ = extern struct {
    type: FT_Size_Request_Type,
    width: FT_Long,
    height: FT_Long,
    horiResolution: FT_UInt,
    vertResolution: FT_UInt,
};
pub const FT_Size_RequestRec = struct_FT_Size_RequestRec_;
pub const FT_Size_Request = ?[*]struct_FT_Size_RequestRec_;
pub extern fn FT_Request_Size(face: FT_Face, req: FT_Size_Request) FT_Error;
pub extern fn FT_Set_Char_Size(face: FT_Face, char_width: FT_F26Dot6, char_height: FT_F26Dot6, horz_resolution: FT_UInt, vert_resolution: FT_UInt) FT_Error;
pub extern fn FT_Set_Pixel_Sizes(face: FT_Face, pixel_width: FT_UInt, pixel_height: FT_UInt) FT_Error;
pub extern fn FT_Load_Glyph(face: FT_Face, glyph_index: FT_UInt, load_flags: FT_Int32) FT_Error;
pub extern fn FT_Load_Char(face: FT_Face, char_code: FT_ULong, load_flags: FT_Int32) FT_Error;
pub extern fn FT_Set_Transform(face: FT_Face, matrix: ?[*]FT_Matrix, delta: ?[*]FT_Vector) void;
pub const FT_RENDER_MODE_NORMAL = enum_FT_Render_Mode_.FT_RENDER_MODE_NORMAL;
pub const FT_RENDER_MODE_LIGHT = enum_FT_Render_Mode_.FT_RENDER_MODE_LIGHT;
pub const FT_RENDER_MODE_MONO = enum_FT_Render_Mode_.FT_RENDER_MODE_MONO;
pub const FT_RENDER_MODE_LCD = enum_FT_Render_Mode_.FT_RENDER_MODE_LCD;
pub const FT_RENDER_MODE_LCD_V = enum_FT_Render_Mode_.FT_RENDER_MODE_LCD_V;
pub const FT_RENDER_MODE_MAX = enum_FT_Render_Mode_.FT_RENDER_MODE_MAX;
pub const enum_FT_Render_Mode_ = extern enum {
    FT_RENDER_MODE_NORMAL = 0,
    FT_RENDER_MODE_LIGHT = 1,
    FT_RENDER_MODE_MONO = 2,
    FT_RENDER_MODE_LCD = 3,
    FT_RENDER_MODE_LCD_V = 4,
    FT_RENDER_MODE_MAX = 5,
};
pub const FT_Render_Mode = enum_FT_Render_Mode_;
pub extern fn FT_Render_Glyph(slot: FT_GlyphSlot, render_mode: FT_Render_Mode) FT_Error;
pub const FT_KERNING_DEFAULT = enum_FT_Kerning_Mode_.FT_KERNING_DEFAULT;
pub const FT_KERNING_UNFITTED = enum_FT_Kerning_Mode_.FT_KERNING_UNFITTED;
pub const FT_KERNING_UNSCALED = enum_FT_Kerning_Mode_.FT_KERNING_UNSCALED;
pub const enum_FT_Kerning_Mode_ = extern enum {
    FT_KERNING_DEFAULT = 0,
    FT_KERNING_UNFITTED = 1,
    FT_KERNING_UNSCALED = 2,
};
pub const FT_Kerning_Mode = enum_FT_Kerning_Mode_;
pub extern fn FT_Get_Kerning(face: FT_Face, left_glyph: FT_UInt, right_glyph: FT_UInt, kern_mode: FT_UInt, akerning: ?[*]FT_Vector) FT_Error;
pub extern fn FT_Get_Track_Kerning(face: FT_Face, point_size: FT_Fixed, degree: FT_Int, akerning: ?[*]FT_Fixed) FT_Error;
pub extern fn FT_Get_Glyph_Name(face: FT_Face, glyph_index: FT_UInt, buffer: FT_Pointer, buffer_max: FT_UInt) FT_Error;
pub extern fn FT_Get_Postscript_Name(face: FT_Face) ?[*]const u8;
pub extern fn FT_Select_Charmap(face: FT_Face, encoding: FT_Encoding) FT_Error;
pub extern fn FT_Set_Charmap(face: FT_Face, charmap: FT_CharMap) FT_Error;
pub extern fn FT_Get_Charmap_Index(charmap: FT_CharMap) FT_Int;
pub extern fn FT_Get_Char_Index(face: FT_Face, charcode: FT_ULong) FT_UInt;
pub extern fn FT_Get_First_Char(face: FT_Face, agindex: ?[*]FT_UInt) FT_ULong;
pub extern fn FT_Get_Next_Char(face: FT_Face, char_code: FT_ULong, agindex: ?[*]FT_UInt) FT_ULong;
pub extern fn FT_Face_Properties(face: FT_Face, num_properties: FT_UInt, properties: ?[*]FT_Parameter) FT_Error;
pub extern fn FT_Get_Name_Index(face: FT_Face, glyph_name: ?[*]FT_String) FT_UInt;
pub extern fn FT_Get_SubGlyph_Info(glyph: FT_GlyphSlot, sub_index: FT_UInt, p_index: ?[*]FT_Int, p_flags: ?[*]FT_UInt, p_arg1: ?[*]FT_Int, p_arg2: ?[*]FT_Int, p_transform: ?[*]FT_Matrix) FT_Error;
pub extern fn FT_Get_FSType_Flags(face: FT_Face) FT_UShort;
pub extern fn FT_Face_GetCharVariantIndex(face: FT_Face, charcode: FT_ULong, variantSelector: FT_ULong) FT_UInt;
pub extern fn FT_Face_GetCharVariantIsDefault(face: FT_Face, charcode: FT_ULong, variantSelector: FT_ULong) FT_Int;
pub extern fn FT_Face_GetVariantSelectors(face: FT_Face) ?[*]FT_UInt32;
pub extern fn FT_Face_GetVariantsOfChar(face: FT_Face, charcode: FT_ULong) ?[*]FT_UInt32;
pub extern fn FT_Face_GetCharsOfVariant(face: FT_Face, variantSelector: FT_ULong) ?[*]FT_UInt32;
pub extern fn FT_MulDiv(a: FT_Long, b: FT_Long, c: FT_Long) FT_Long;
pub extern fn FT_MulFix(a: FT_Long, b: FT_Long) FT_Long;
pub extern fn FT_DivFix(a: FT_Long, b: FT_Long) FT_Long;
pub extern fn FT_RoundFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_CeilFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_FloorFix(a: FT_Fixed) FT_Fixed;
pub extern fn FT_Vector_Transform(vec: ?[*]FT_Vector, matrix: ?[*]const FT_Matrix) void;
pub extern fn FT_Library_Version(library: FT_Library, amajor: ?[*]FT_Int, aminor: ?[*]FT_Int, apatch: ?[*]FT_Int) void;
pub extern fn FT_Face_CheckTrueTypePatents(face: FT_Face) FT_Bool;
pub extern fn FT_Face_SetUnpatentedHinting(face: FT_Face, value: FT_Bool) FT_Bool;
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const LLONG_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-LLONG_MAX, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-LLONG_MAX, -1) else (-LLONG_MAX)(-1);
pub const _IO_USER_LOCK = 32768;
pub const __INT64_FMTd__ = c"ld";
pub const __STDC_VERSION__ = c_long(201112);
pub const FT_ERR_BASE = 0;
pub const ft_ptrdiff_t = ptrdiff_t;
pub const __INT_LEAST8_FMTi__ = c"hhi";
pub const FT_UINT_MAX = UINT_MAX;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __clang_version__ = c"7.0.1 (tags/RELEASE_701/final)";
pub const __UINT_LEAST8_FMTo__ = c"hho";
pub const ft_fclose = fclose;
pub const __INTMAX_FMTd__ = c"ld";
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const ft_jmp_buf = jmp_buf;
pub const ft_strtol = strtol;
pub const FT_OUTLINE_EVEN_ODD_FILL = 2;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INT_LEAST16_FMTi__ = c"hi";
pub const ft_raster_flag_default = FT_RASTER_FLAG_DEFAULT;
pub const ft_strrchr = strrchr;
pub const __MMX__ = 1;
pub const FREETYPE_MINOR = 9;
pub const FT_AUTOHINTER_H = FT_DRIVER_H;
pub const _THREAD_SHARED_TYPES_H = 1;
pub const _POSIX2_RE_DUP_MAX = 255;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const FT_INT_MIN = INT_MIN;
pub const FT_OUTLINE_OWNER = 1;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __ptr_t = [*]void;
pub const __WCHAR_WIDTH__ = 32;
pub const FT_RASTER_FLAG_DEFAULT = 0;
pub const HOST_NAME_MAX = 64;
pub const FT_SUBGLYPH_FLAG_ARGS_ARE_WORDS = 1;
pub const __USE_MISC = 1;
pub const _POSIX_AIO_LISTIO_MAX = 2;
pub const __SIZEOF_PTHREAD_ATTR_T = 56;
pub const __PTRDIFF_FMTd__ = c"ld";
pub const __FLT_EVAL_METHOD__ = 0;
pub const __SSE_MATH__ = 1;
pub const __UINT_FAST8_FMTo__ = c"hho";
pub const __UINT_LEAST64_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_LEAST64_FMTx__ = c"lx";
pub const __INT8_MAX__ = 127;
pub const FT_CHAR_BIT = CHAR_BIT;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const _POSIX2_BC_SCALE_MAX = 99;
pub const LONG_MIN = if (@typeId(@typeOf(-c_long(1))) == @import("builtin").TypeId.Pointer) @ptrCast(-__LONG_MAX__, -c_long(1)) else if (@typeId(@typeOf(-c_long(1))) == @import("builtin").TypeId.Int) @intToPtr(-__LONG_MAX__, -c_long(1)) else (-__LONG_MAX__)(-c_long(1));
pub const __PTHREAD_MUTEX_HAVE_PREV = 1;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const _SYS_CDEFS_H = 1;
pub const _ATFILE_SOURCE = 1;
pub const ft_strncpy = strncpy;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __USE_POSIX199309 = 1;
pub const __NO_MATH_INLINES = 1;
pub const RE_DUP_MAX = 32767;
pub const __WCHAR_TYPE__ = int;
pub const __LONG_MAX__ = c_long(9223372036854775807);
pub const FREETYPE_MAJOR = 2;
pub const FT_OUTLINE_SMART_DROPOUTS = 16;
pub const MAX_INPUT = 255;
pub const __pic__ = 2;
pub const ft_open_driver = FT_OPEN_DRIVER;
pub const __INT_FAST16_FMTi__ = c"hi";
pub const __PTRDIFF_WIDTH__ = 64;
pub const FT_Raster_Span_Func = FT_SpanFunc;
pub const __LDBL_DENORM_MIN__ = 0.000000;
pub const FT_LOAD_DEFAULT = 0;
pub const RAND_MAX = 2147483647;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub const FT_RASTER_FLAG_AA = 1;
pub const _IOFBF = 0;
pub const __INT64_C_SUFFIX__ = L;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const FT_CACHE_INTERNAL_MRU_H = FT_CACHE_H;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __struct_FILE_defined = 1;
pub const _IO_EOF_SEEN = 16;
pub const __USE_ATFILE = 1;
pub const __WALL = 1073741824;
pub const __UINT64_MAX__ = c_ulong(18446744073709551615);
pub const _POSIX_LINK_MAX = 8;
pub const FT_CURVE_TAG_CONIC = 0;
pub const _POSIX_CLOCKRES_MIN = 20000000;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __DBL_DIG__ = 15;
pub const __ATOMIC_ACQUIRE = 2;
pub const PTHREAD_STACK_MIN = 16384;
pub const _LIBC_LIMITS_H_ = 1;
pub const FT_CACHE_SMALL_BITMAPS_H = FT_CACHE_H;
pub const __FLT16_HAS_DENORM__ = 1;
pub const _POSIX_RE_DUP_MAX = 255;
pub const __UINT_FAST16_FMTu__ = c"hu";
pub const __INTPTR_FMTi__ = c"li";
pub const __UINT_FAST8_FMTX__ = c"hhX";
pub const SHRT_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-__SHRT_MAX__, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-__SHRT_MAX__, -1) else (-__SHRT_MAX__)(-1);
pub const _POSIX_ARG_MAX = 4096;
pub const __UINT8_FMTo__ = c"hho";
pub const __UINT_LEAST16_FMTx__ = c"hx";
pub const __UINT_FAST16_FMTX__ = c"hX";
pub const __VERSION__ = c"4.2.1 Compatible Clang 7.0.1 (tags/RELEASE_701/final)";
pub const __UINT_FAST32_FMTx__ = c"x";
pub const __UINT_FAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST64_FMTo__ = c"lo";
pub const PATH_MAX = 4096;
pub const __clockid_t_defined = 1;
pub const __UINT_LEAST8_MAX__ = 255;
pub const _POSIX2_EXPR_NEST_MAX = 32;
pub const FT_SUBGLYPH_FLAG_USE_MY_METRICS = 512;
pub const FT_Raster_New_Func = FT_Raster_NewFunc;
pub const __GLIBC_USE_DEPRECATED_GETS = 0;
pub const __UINT16_MAX__ = 65535;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __x86_64 = 1;
pub const __PTHREAD_RWLOCK_INT_FLAGS_SHARED = 1;
pub const __SIZEOF_WINT_T__ = 4;
pub const FT_FSTYPE_EDITABLE_EMBEDDING = 8;
pub const __UINTMAX_FMTo__ = c"lo";
pub const FT_CURVE_TAG_HAS_SCANMODE = 4;
pub const __UINT_LEAST8_FMTX__ = c"hhX";
pub const __HAVE_FLOAT64X = 1;
pub const __WINT_UNSIGNED__ = 1;
pub const _POSIX_HOST_NAME_MAX = 255;
pub const XATTR_NAME_MAX = 255;
pub const __HAVE_FLOAT16 = 0;
pub const FT_CACHE_IMAGE_H = FT_CACHE_H;
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = 8;
pub const FT_OUTLINE_HIGH_PRECISION = 256;
pub const __POINTER_WIDTH__ = 64;
pub const ft_render_mode_normal = FT_RENDER_MODE_NORMAL;
pub const __PTRDIFF_MAX__ = c_long(9223372036854775807);
pub const __FLT16_DIG__ = 3;
pub const FT_OUTLINE_NONE = 0;
pub const __SIZEOF_LONG__ = 8;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __W_CONTINUED = 65535;
pub const __NO_INLINE__ = 1;
pub const __HAVE_FLOAT128 = 0;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const _BITS_PTHREADTYPES_COMMON_H = 1;
pub const __UINTMAX_FMTu__ = c"lu";
pub const ft_strcmp = strcmp;
pub const ft_outline_reverse_fill = FT_OUTLINE_REVERSE_FILL;
pub const NGROUPS_MAX = 65536;
pub const __FLT_RADIX__ = 2;
pub const __GLIBC_MINOR__ = 28;
pub const AIO_PRIO_DELTA_MAX = 20;
pub const _BITS_BYTESWAP_H = 1;
pub const _BITS_SETJMP_H = 1;
pub const _STRUCT_TIMESPEC = 1;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const _POSIX_LOGIN_NAME_MAX = 9;
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X2 = 1000;
pub const FOPEN_MAX = 16;
pub const __UINTMAX_WIDTH__ = 64;
pub const FT_CACHE_INTERNAL_IMAGE_H = FT_CACHE_H;
pub const __PTHREAD_MUTEX_USE_UNION = 0;
pub const __INT64_FMTi__ = c"li";
pub const __UINT_FAST64_FMTu__ = c"lu";
pub const _POSIX_TZNAME_MAX = 6;
pub const __INT_FAST16_TYPE__ = short;
pub const __HAVE_DISTINCT_FLOAT128 = 0;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __LDBL_MIN__ = 0.000000;
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const MQ_PRIO_MAX = 32768;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __PIC__ = 2;
pub const ft_encoding_johab = FT_ENCODING_JOHAB;
pub const _POSIX_NAME_MAX = 14;
pub const _DEFAULT_SOURCE = 1;
pub const __FD_SETSIZE = 1024;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __UINT_LEAST64_FMTX__ = c"lX";
pub const ft_strcpy = strcpy;
pub const __clang_minor__ = 0;
pub const FT_CFF_DRIVER_H = FT_DRIVER_H;
pub const __SIZEOF_FLOAT128__ = 16;
pub const FT_OUTLINE_SINGLE_PASS = 512;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __UINT_FAST64_FMTo__ = c"lo";
pub const _POSIX_SYMLINK_MAX = 255;
pub const MB_LEN_MAX = 16;
pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const ft_fopen = fopen;
pub const LINK_MAX = 127;
pub const __UINT64_FMTx__ = c"lx";
pub const ft_raster_flag_aa = FT_RASTER_FLAG_AA;
pub const P_tmpdir = c"/tmp";
pub const __WCOREFLAG = 128;
pub const SEEK_END = 2;
pub const __SLONG32_TYPE = int;
pub const _DEBUG = 1;
pub const __restrict_arr = __restrict;
pub const __RLIM_T_MATCHES_RLIM64_T = 1;
pub const __UINT8_FMTX__ = c"hhX";
pub const _POSIX_NGROUPS_MAX = 8;
pub const __UINTPTR_WIDTH__ = 64;
pub const __WNOTHREAD = 536870912;
pub const __time_t_defined = 1;
pub const __k8 = 1;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __UINT8_FMTx__ = c"hhx";
pub const __INTMAX_C_SUFFIX__ = L;
pub const FT_CALLBACK_TABLE = @"extern";
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __INT16_FMTd__ = c"hd";
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const FT_LONG_MAX = LONG_MAX;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __INTMAX_WIDTH__ = 64;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const ft_pixel_mode_none = FT_PIXEL_MODE_NONE;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const EXIT_FAILURE = 1;
pub const __USE_POSIX = 1;
pub const __SIZE_FMTo__ = c"lo";
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const __PDP_ENDIAN = 3412;
pub const __INT_FAST8_FMTi__ = c"hhi";
pub const __UINT_LEAST32_FMTo__ = c"o";
pub const __UINT_FAST16_FMTx__ = c"hx";
pub const __FLT_MIN_EXP__ = -125;
pub const __UINT_LEAST64_FMTu__ = c"lu";
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const FT_CURVE_TAG_ON = 1;
pub const __INT_FAST64_FMTd__ = c"ld";
pub const _POSIX_MAX_INPUT = 255;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const ft_pixel_mode_pal2 = FT_PIXEL_MODE_GRAY2;
pub const CHAR_BIT = __CHAR_BIT__;
pub const __GXX_ABI_VERSION = 1002;
pub const ft_encoding_latin_1 = FT_ENCODING_ADOBE_LATIN_1;
pub const T1_MAX_DICT_DEPTH = 5;
pub const __FLT_MANT_DIG__ = 24;
pub const FT_OPEN_STREAM = 2;
pub const __UINT_FAST64_FMTx__ = c"lx";
pub const __STDC__ = 1;
pub const __HAVE_FLOAT64X_LONG_DOUBLE = 1;
pub const __INTPTR_FMTd__ = c"ld";
pub const __GNUC_PATCHLEVEL__ = 1;
pub const RTSIG_MAX = 32;
pub const __SIZE_WIDTH__ = 64;
pub const __UINT_LEAST8_FMTx__ = c"hhx";
pub const __INT_LEAST64_FMTi__ = c"li";
pub const __HAVE_DISTINCT_FLOAT64 = 0;
pub const __INT_FAST16_MAX__ = 32767;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __have_pthread_attr_t = 1;
pub const __INT_MAX__ = 2147483647;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const ft_sfree = free;
pub const __DBL_DENORM_MIN__ = 0.000000;
pub const __clang_major__ = 7;
pub const __FLT16_MANT_DIG__ = 11;
pub const XATTR_LIST_MAX = 65536;
pub const INT_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-__INT_MAX__, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-__INT_MAX__, -1) else (-__INT_MAX__)(-1);
pub const ft_encoding_none = FT_ENCODING_NONE;
pub const __FLT_DENORM_MIN__ = 0.000000;
pub const __BIG_ENDIAN = 4321;
pub const ft_kerning_unscaled = FT_KERNING_UNSCALED;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __HAVE_DISTINCT_FLOAT32X = 0;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const TMP_MAX = 238328;
pub const FT_Curve_Tag_Conic = FT_CURVE_TAG_CONIC;
pub const FT_RASTER_FLAG_CLIP = 4;
pub const __UINT_FAST8_MAX__ = 255;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __GLIBC_USE_LIB_EXT2 = 0;
pub const LONG_MAX = __LONG_MAX__;
pub const FREETYPE_PATCH = 1;
pub const __SIZEOF_PTHREAD_MUTEX_T = 40;
pub const __OFF_T_MATCHES_OFF64_T = 1;
pub const __UINT8_FMTu__ = c"hhu";
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const FT_SUBGLYPH_FLAG_ARGS_ARE_XY_VALUES = 2;
pub const __HAVE_FLOAT128X = 0;
pub const __UINT16_FMTu__ = c"hu";
pub const __SIZE_FMTu__ = c"lu";
pub const __LDBL_MIN_EXP__ = -16381;
pub const __UINT_FAST32_FMTu__ = c"u";
pub const __pie__ = 2;
pub const __SSP_STRONG__ = 2;
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __clang_patchlevel__ = 1;
pub const FT_CACHE_INTERNAL_SBITS_H = FT_CACHE_H;
pub const MAX_CANON = 255;
pub const EOF = -1;
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X4 = 2333;
pub const __FXSR__ = 1;
pub const _IOLBF = 1;
pub const ft_sprintf = sprintf;
pub const __UINT32_FMTx__ = c"x";
pub const __UINT32_FMTu__ = c"u";
pub const WNOHANG = 1;
pub const __SIZEOF_PTHREAD_COND_T = 48;
pub const __SIZE_MAX__ = c_ulong(18446744073709551615);
pub const _BITS_UINTN_IDENTITY_H = 1;
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X3 = 1667;
pub const FT_OUTLINE_REVERSE_FILL = 4;
pub const FT_Curve_Tag_Cubic = FT_CURVE_TAG_CUBIC;
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y1 = 400;
pub const _POSIX_MQ_OPEN_MAX = 8;
pub const FT_Raster_Render_Func = FT_Raster_RenderFunc;
pub const __HAVE_DISTINCT_FLOAT32 = 0;
pub const __USE_ISOC11 = 1;
pub const _POSIX_STREAM_MAX = 8;
pub const __tune_k8__ = 1;
pub const _POSIX2_CHARCLASS_NAME_MAX = 14;
pub const __x86_64__ = 1;
pub const __WORDSIZE_TIME64_COMPAT32 = 1;
pub const __UINTMAX_FMTx__ = c"lx";
pub const __UINT64_C_SUFFIX__ = UL;
pub const __INT_LEAST16_MAX__ = 32767;
pub const ARG_MAX = 131072;
pub const __clock_t_defined = 1;
pub const __UINT32_FMTo__ = c"o";
pub const _SYS_SELECT_H = 1;
pub const FT_OPEN_PARAMS = 16;
pub const _IONBF = 2;
pub const _SYS_TYPES_H = 1;
pub const ft_encoding_adobe_expert = FT_ENCODING_ADOBE_EXPERT;
pub const __INT_LEAST16_TYPE__ = short;
pub const ft_encoding_wansung = FT_ENCODING_WANSUNG;
pub const ft_strncmp = strncmp;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __SIZEOF_INT__ = 4;
pub const __USE_POSIX_IMPLICITLY = 1;
pub const _POSIX_DELAYTIMER_MAX = 32;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const ft_open_memory = FT_OPEN_MEMORY;
pub const _IO_ERR_SEEN = 32;
pub const __amd64 = 1;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __SIZEOF_INT128__ = 16;
pub const ft_encoding_adobe_standard = FT_ENCODING_ADOBE_STANDARD;
pub const __glibc_c99_flexarr_available = 1;
pub const __linux = 1;
pub const __sigset_t_defined = 1;
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = 4;
pub const __clang__ = 1;
pub const __LDBL_DIG__ = 18;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const _BITS_POSIX1_LIM_H = 1;
pub const __UINT64_FMTo__ = c"lo";
pub const __INT_FAST32_FMTd__ = c"d";
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const __ATOMIC_ACQ_REL = 4;
pub const ft_open_stream = FT_OPEN_STREAM;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const ____mbstate_t_defined = 1;
pub const _ENDIAN_H = 1;
pub const ft_memmove = memmove;
pub const FT_Raster_Done_Func = FT_Raster_DoneFunc;
pub const CHARCLASS_NAME_MAX = 2048;
pub const __GLIBC__ = 2;
pub const FT_FSTYPE_BITMAP_EMBEDDING_ONLY = 512;
pub const __WORDSIZE = 64;
pub const __INT64_MAX__ = c_long(9223372036854775807);
pub const _BITS_TYPES_LOCALE_T_H = 1;
pub const ft_encoding_adobe_custom = FT_ENCODING_ADOBE_CUSTOM;
pub const __INT_LEAST64_MAX__ = c_long(9223372036854775807);
pub const PTHREAD_KEYS_MAX = 1024;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __FLT_HAS_DENORM__ = 1;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const FT_OPEN_PATHNAME = 4;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __INT32_FMTi__ = c"i";
pub const __DBL_HAS_INFINITY__ = 1;
pub const __FINITE_MATH_ONLY__ = 0;
pub const ft_outline_high_precision = FT_OUTLINE_HIGH_PRECISION;
pub const ft_glyph_format_plotter = FT_GLYPH_FORMAT_PLOTTER;
pub const FT_SUBGLYPH_FLAG_ROUND_XY_TO_GRID = 4;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const _STDC_PREDEF_H = 1;
pub const __FLT16_MAX_EXP__ = 15;
pub const __GNUC_VA_LIST = 1;
pub const EXIT_SUCCESS = 0;
pub const _POSIX2_BC_BASE_MAX = 99;
pub const ft_open_params = FT_OPEN_PARAMS;
pub const __SIZEOF_FLOAT__ = 4;
pub const FT_PCF_DRIVER_H = FT_DRIVER_H;
pub const __INT_LEAST32_FMTi__ = c"i";
pub const __LDBL_EPSILON__ = 0.000000;
pub const __INT_LEAST32_FMTd__ = c"d";
pub const __STDC_UTF_32__ = 1;
pub const FT_TRUETYPE_DRIVER_H = FT_DRIVER_H;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __FD_ZERO_STOS = c"stosq";
pub const __UINT_FAST64_FMTX__ = c"lX";
pub const FT_XFREE86_H = FT_FONT_FORMATS_H;
pub const _POSIX_SSIZE_MAX = 32767;
pub const __SIZEOF_DOUBLE__ = 8;
pub const ft_encoding_gb2312 = FT_ENCODING_PRC;
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const ft_open_pathname = FT_OPEN_PATHNAME;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const _STDLIB_H = 1;
pub const _BITS_STDIO_LIM_H = 1;
pub const __HAVE_FLOAT64 = 1;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const ft_render_mode_mono = FT_RENDER_MODE_MONO;
pub const FT_FSTYPE_INSTALLABLE_EMBEDDING = 0;
pub const __SIZE_FMTX__ = c"lX";
pub const __ID_T_TYPE = __U32_TYPE;
pub const _POSIX_MAX_CANON = 255;
pub const ft_kerning_default = FT_KERNING_DEFAULT;
pub const _BITS_TYPES_H = 1;
pub const __STDC_IEC_559_COMPLEX__ = 1;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const LOGIN_NAME_MAX = 256;
pub const __DBL_MIN_EXP__ = -1021;
pub const __HAVE_FLOAT32X = 1;
pub const __lldiv_t_defined = 1;
pub const ft_glyph_format_none = FT_GLYPH_FORMAT_NONE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const _ALLOCA_H = 1;
pub const FT_CURVE_TAG_CUBIC = 2;
pub const __DBL_HAS_DENORM__ = 1;
pub const __FLOAT128__ = 1;
pub const __HAVE_GENERIC_SELECTION = 1;
pub const __FLT16_HAS_QUIET_NAN__ = 1;
pub const ft_memchr = memchr;
pub const FT_Outline_CubicTo_Func = FT_Outline_CubicToFunc;
pub const __ATOMIC_RELAXED = 0;
pub const __SIZEOF_SHORT__ = 2;
pub const ____FILE_defined = 1;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __UINT16_FMTX__ = c"hX";
pub const TTY_NAME_MAX = 32;
pub const PIPE_BUF = 4096;
pub const __timeval_defined = 1;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const FT_MAX_MODULES = 32;
pub const WEXITED = 4;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __WINT_MAX__ = c_uint(4294967295);
pub const _STDIO_H = 1;
pub const __STDC_ISO_10646__ = c_long(201706);
pub const FT_RASTER_FLAG_DIRECT = 2;
pub const FT_RENDER_POOL_SIZE = c_long(16384);
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __STDC_HOSTED__ = 1;
pub const __INT_LEAST32_TYPE__ = int;
pub const __SCHAR_MAX__ = 127;
pub const __USE_POSIX2 = 1;
pub const __HAVE_FLOATN_NOT_TYPEDEF = 0;
pub const __FLT16_MIN_EXP__ = -14;
pub const ft_fread = fread;
pub const __USE_XOPEN2K = 1;
pub const TT_CONFIG_OPTION_MAX_RUNNABLE_OPCODES = c_long(1000000);
pub const __USE_FORTIFY_LEVEL = 0;
pub const __ELF__ = 1;
pub const __LDBL_MANT_DIG__ = 64;
pub const __PTHREAD_MUTEX_LOCK_ELISION = 1;
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const __USE_XOPEN2K8 = 1;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const SCHAR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-__SCHAR_MAX__, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-__SCHAR_MAX__, -1) else (-__SCHAR_MAX__)(-1);
pub const __UINT64_FMTX__ = c"lX";
pub const ft_strcat = strcat;
pub const __DBL_MANT_DIG__ = 53;
pub const _BITS_POSIX2_LIM_H = 1;
pub const _____fpos_t_defined = 1;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const _STRING_H = 1;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __USE_ISOC95 = 1;
pub const T1_MAX_CHARSTRINGS_OPERANDS = 256;
pub const ft_ftell = ftell;
pub const __UID_T_TYPE = __U32_TYPE;
pub const SHRT_MAX = __SHRT_MAX__;
pub const FT_Outline_ConicTo_Func = FT_Outline_ConicToFunc;
pub const __LITTLE_ENDIAN__ = 1;
pub const __SSE__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __UINT_LEAST16_FMTo__ = c"ho";
pub const __HAVE_FLOAT32 = 1;
pub const ft_outline_single_pass = FT_OUTLINE_SINGLE_PASS;
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const ft_srealloc = realloc;
pub const __UINTPTR_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_LEAST8_FMTu__ = c"hhu";
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __warnattr = msg;
pub const ft_raster_flag_direct = FT_RASTER_FLAG_DIRECT;
pub const __STD_TYPE = typedef;
pub const ft_encoding_big5 = FT_ENCODING_BIG5;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __LDBL_MAX__ = inf;
pub const _LP64 = 1;
pub const FD_SETSIZE = __FD_SETSIZE;
pub const _POSIX2_COLL_WEIGHTS_MAX = 2;
pub const linux = 1;
pub const FT_FSTYPE_NO_SUBSETTING = 256;
pub const __FLT_DIG__ = 6;
pub const __INT16_MAX__ = 32767;
pub const __FLT_MAX_10_EXP__ = 38;
pub const _FEATURES_H = 1;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __UINTPTR_FMTX__ = c"lX";
pub const __UINT_LEAST16_FMTu__ = c"hu";
pub const __WINT_WIDTH__ = 32;
pub const __SHRT_MAX__ = 32767;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __INT32_FMTd__ = c"d";
pub const __DBL_MIN__ = 0.000000;
pub const _POSIX_TIMER_MAX = 32;
pub const ft_strlen = strlen;
pub const __S32_TYPE = int;
pub const __INTPTR_WIDTH__ = 64;
pub const T1_MAX_SUBRS_CALLS = 16;
pub const __FLT16_MAX_10_EXP__ = 4;
pub const ft_strstr = strstr;
pub const __INT_FAST32_TYPE__ = int;
pub const __UINT_FAST32_FMTX__ = c"X";
pub const _POSIX_SOURCE = 1;
pub const INT_MAX = __INT_MAX__;
pub const __LITTLE_ENDIAN = 1234;
pub const __gnu_linux__ = 1;
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const __FILE_defined = 1;
pub const _____fpos64_t_defined = 1;
pub const _POSIX2_BC_DIM_MAX = 2048;
pub const ft_scalloc = calloc;
pub const __timer_t_defined = 1;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const ft_memset = memset;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const _POSIX_THREAD_KEYS_MAX = 128;
pub const _BITS_STDINT_INTN_H = 1;
pub const __INT_FAST8_FMTd__ = c"hhd";
pub const __KEY_T_TYPE = __S32_TYPE;
pub const SEEK_SET = 0;
pub const ft_raster_flag_clip = FT_RASTER_FLAG_CLIP;
pub const __USE_POSIX199506 = 1;
pub const __INT32_TYPE__ = int;
pub const ft_pixel_mode_pal4 = FT_PIXEL_MODE_GRAY4;
pub const __FLT_MIN__ = 0.000000;
pub const FT_ULONG_MAX = ULONG_MAX;
pub const __INT8_FMTd__ = c"hhd";
pub const ft_glyph_format_composite = FT_GLYPH_FORMAT_COMPOSITE;
pub const __FLT_MAX_EXP__ = 128;
pub const ft_encoding_unicode = FT_ENCODING_UNICODE;
pub const FT_CACHE_INTERNAL_MANAGER_H = FT_CACHE_H;
pub const FT_FILE = FILE;
pub const FT_CURVE_TAG_TOUCH_Y = 16;
pub const FT_Curve_Tag_Touch_Y = FT_CURVE_TAG_TOUCH_Y;
pub const __INT_FAST64_FMTi__ = c"li";
pub const __INT_LEAST8_FMTd__ = c"hhd";
pub const _POSIX_MQ_PRIO_MAX = 32;
pub const __UINT_LEAST32_FMTX__ = c"X";
pub const __UINTMAX_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_FAST16_FMTo__ = c"ho";
pub const ft_fseek = fseek;
pub const FT_Curve_Tag_On = FT_CURVE_TAG_ON;
pub const _SETJMP_H = 1;
pub const __LDBL_REDIR_DECL = name;
pub const COLL_WEIGHTS_MAX = 255;
pub const ft_pixel_mode_grays = FT_PIXEL_MODE_GRAY;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const FT_Outline_MoveTo_Func = FT_Outline_MoveToFunc;
pub const _POSIX_PATH_MAX = 256;
pub const FT_SUBGLYPH_FLAG_2X2 = 128;
pub const __SIZE_FMTx__ = c"lx";
pub const _POSIX_OPEN_MAX = 20;
pub const __DBL_EPSILON__ = 0.000000;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __CHAR_BIT__ = 8;
pub const __INT16_FMTi__ = c"hi";
pub const SEEK_CUR = 1;
pub const __GNUC_MINOR__ = 2;
pub const FT_SUBGLYPH_FLAG_XY_SCALE = 64;
pub const __UINT_FAST32_MAX__ = c_uint(4294967295);
pub const FT_CACHE_MANAGER_H = FT_CACHE_H;
pub const ft_longjmp = longjmp;
pub const NFDBITS = __NFDBITS;
pub const FT_FSTYPE_RESTRICTED_LICENSE_EMBEDDING = 2;
pub const __FLT_EPSILON__ = 0.000000;
pub const ft_memcpy = memcpy;
pub const __llvm__ = 1;
pub const __UINT_FAST64_MAX__ = c_ulong(18446744073709551615);
pub const FT_CACHE_INTERNAL_CACHE_H = FT_CACHE_H;
pub const __INT_FAST32_FMTi__ = c"i";
pub const NR_OPEN = 1024;
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const NULL = if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Pointer) @ptrCast([*]void, 0) else if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Int) @intToPtr([*]void, 0) else ([*]void)(0);
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const FT_ERR_PREFIX = FT_Err_;
pub const XATTR_SIZE_MAX = 65536;
pub const TT_CONFIG_OPTION_SUBPIXEL_HINTING = 2;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __UINT32_FMTX__ = c"X";
pub const __PTHREAD_MUTEX_NUSERS_AFTER_KIND = 0;
pub const FT_OUTLINE_POINTS_MAX = SHRT_MAX;
pub const __UINT32_C_SUFFIX__ = U;
pub const __INT32_MAX__ = 2147483647;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __BIT_TYPES_DEFINED__ = 1;
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X1 = 500;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4;
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y3 = 275;
pub const __STDC_UTF_16__ = 1;
pub const __UINT_LEAST32_MAX__ = c_uint(4294967295);
pub const __ATOMIC_RELEASE = 3;
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const FT_OUTLINE_IGNORE_DROPOUTS = 8;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __ldiv_t_defined = 1;
pub const ft_outline_none = FT_OUTLINE_NONE;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __SIZEOF_PTHREAD_BARRIER_T = 32;
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = 0;
pub const FILENAME_MAX = 4096;
pub const FT_INT64 = long;
pub const FT_FSTYPE_PREVIEW_AND_PRINT_EMBEDDING = 4;
pub const _POSIX_TTY_NAME_MAX = 9;
pub const __INT16_TYPE__ = short;
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y4 = 0;
pub const __SSE2_MATH__ = 1;
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = 0;
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const ft_outline_ignore_dropouts = FT_OUTLINE_IGNORE_DROPOUTS;
pub const ft_pixel_mode_mono = FT_PIXEL_MODE_MONO;
pub const __INT_FAST8_MAX__ = 127;
pub const __STDC_IEC_559__ = 1;
pub const __USE_ISOC99 = 1;
pub const __INTPTR_MAX__ = c_long(9223372036854775807);
pub const __UINT64_FMTu__ = c"lu";
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __SSE2__ = 1;
pub const __INTMAX_FMTi__ = c"li";
pub const __GNUC__ = 4;
pub const __UINT32_MAX__ = c_uint(4294967295);
pub const _BITS_TYPES___LOCALE_T_H = 1;
pub const FT_SUBGLYPH_FLAG_SCALE = 8;
pub const _POSIX_C_SOURCE = c_long(200809);
pub const ft_smalloc = malloc;
pub const __DBL_MAX_EXP__ = 1024;
pub const __INT8_FMTi__ = c"hhi";
pub const L_tmpnam = 20;
pub const __FLT16_MIN_10_EXP__ = -13;
pub const ft_memcmp = memcmp;
pub const _POSIX_THREAD_THREADS_MAX = 64;
pub const __INT_FAST64_MAX__ = c_long(9223372036854775807);
pub const __ATOMIC_SEQ_CST = 5;
pub const ft_qsort = qsort;
pub const FT_OPEN_MEMORY = 1;
pub const _POSIX_PIPE_BUF = 512;
pub const ft_encoding_sjis = FT_ENCODING_SJIS;
pub const ft_encoding_apple_roman = FT_ENCODING_APPLE_ROMAN;
pub const _POSIX_SEM_NSEMS_MAX = 256;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __HAVE_DISTINCT_FLOAT64X = 0;
pub const __GNUC_STDC_INLINE__ = 1;
pub const SEM_VALUE_MAX = 2147483647;
pub const __UINT8_MAX__ = 255;
pub const _STRINGS_H = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const ft_glyph_format_outline = FT_GLYPH_FORMAT_OUTLINE;
pub const __UINT16_FMTo__ = c"ho";
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __SIZEOF_PTHREAD_CONDATTR_T = 4;
pub const FT_Outline_LineTo_Func = FT_Outline_LineToFunc;
pub const FT_OPEN_DRIVER = 8;
pub const __SIZEOF_POINTER__ = 8;
pub const __TIMER_T_TYPE = [*]void;
pub const __unix = 1;
pub const __GLIBC_USE_IEC_60559_BFP_EXT = 0;
pub const __INT_FAST16_FMTd__ = c"hd";
pub const unix = 1;
pub const __UINT_LEAST32_FMTu__ = c"u";
pub const __FLT_MAX__ = 340282346999999984391321947108527833088.000000;
pub const BUFSIZ = 8192;
pub const ft_encoding_latin_2 = FT_ENCODING_OLD_LATIN_2;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __k8__ = 1;
pub const ft_encoding_symbol = FT_ENCODING_MS_SYMBOL;
pub const __ATOMIC_CONSUME = 1;
pub const __unix__ = 1;
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __GNU_LIBRARY__ = 6;
pub const FT_CURVE_TAG_TOUCH_X = 8;
pub const FT_Curve_Tag_Touch_X = FT_CURVE_TAG_TOUCH_X;
pub const __FLT_MIN_10_EXP__ = -37;
pub const ft_outline_owner = FT_OUTLINE_OWNER;
pub const __UINTPTR_FMTo__ = c"lo";
pub const __INT_LEAST16_FMTd__ = c"hd";
pub const __UINTPTR_FMTx__ = c"lx";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __INT_LEAST64_FMTd__ = c"ld";
pub const FT_OUTLINE_INCLUDE_STUBS = 32;
pub const SSIZE_MAX = LONG_MAX;
pub const __attribute_alloc_size__ = params;
pub const __INT_LEAST8_MAX__ = 127;
pub const _POSIX2_BC_STRING_MAX = 1000;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const L_ctermid = 9;
pub const ft_getenv = getenv;
pub const FT_Raster_Set_Mode_Func = FT_Raster_SetModeFunc;
pub const __UINT_FAST8_FMTx__ = c"hhx";
pub const __PIE__ = 2;
pub const __SIZEOF_PTHREAD_RWLOCK_T = 56;
pub const CHAR_MIN = SCHAR_MIN;
pub const FT_INT_MAX = INT_MAX;
pub const __UINT16_FMTx__ = c"hx";
pub const __UINTPTR_FMTu__ = c"lu";
pub const __UINT_LEAST16_FMTX__ = c"hX";
pub const __amd64__ = 1;
pub const __UINT_FAST32_FMTo__ = c"o";
pub const __linux__ = 1;
pub const __LP64__ = 1;
pub const __SYSCALL_WORDSIZE = 64;
pub const __PTRDIFF_FMTi__ = c"li";
pub const _POSIX_RTSIG_MAX = 8;
pub const FT_CACHE_INTERNAL_GLYPH_H = FT_CACHE_H;
pub const _BITS_TYPESIZES_H = 1;
pub const FT_USHORT_MAX = USHRT_MAX;
pub const WCONTINUED = 8;
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const _BITS_PTHREADTYPES_ARCH_H = 1;
pub const _POSIX_CHILD_MAX = 25;
pub const FT_OUTLINE_CONTOURS_MAX = SHRT_MAX;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = 4;
pub const __LONG_LONG_MAX__ = c_longlong(9223372036854775807);
pub const _POSIX_SYMLOOP_MAX = 8;
pub const _POSIX_SIGQUEUE_MAX = 32;
pub const FT_Raster_Reset_Func = FT_Raster_ResetFunc;
pub const FT_CACHE_CHARMAP_H = FT_CACHE_H;
pub const _POSIX_SEM_VALUE_MAX = 32767;
pub const __INO_T_MATCHES_INO64_T = 1;
pub const FT_LONG_MIN = LONG_MIN;
pub const WUNTRACED = 2;
pub const ft_glyph_format_bitmap = FT_GLYPH_FORMAT_BITMAP;
pub const __INTMAX_MAX__ = c_long(9223372036854775807);
pub const __UINT_LEAST32_FMTx__ = c"x";
pub const __WCHAR_MAX__ = 2147483647;
pub const ft_kerning_unfitted = FT_KERNING_UNFITTED;
pub const WSTOPPED = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const WNOWAIT = 16777216;
pub const __UINTMAX_FMTX__ = c"lX";
pub const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y2 = 275;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const ft_outline_even_odd_fill = FT_OUTLINE_EVEN_ODD_FILL;
pub const _POSIX_AIO_MAX = 1;
pub const _POSIX2_LINE_MAX = 2048;
pub const __WCLONE = 2147483648;
pub const NAME_MAX = 255;
pub const DELAYTIMER_MAX = 2147483647;
pub const __locale_data = struct___locale_data;
pub const __locale_struct = struct___locale_struct;
pub const __va_list_tag = struct___va_list_tag;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const __jmp_buf_tag = struct___jmp_buf_tag;
pub const FT_MemoryRec_ = struct_FT_MemoryRec_;
pub const FT_StreamDesc_ = union_FT_StreamDesc_;
pub const FT_StreamRec_ = struct_FT_StreamRec_;
pub const FT_Vector_ = struct_FT_Vector_;
pub const FT_BBox_ = struct_FT_BBox_;
pub const FT_Pixel_Mode_ = enum_FT_Pixel_Mode_;
pub const FT_Bitmap_ = struct_FT_Bitmap_;
pub const FT_Outline_ = struct_FT_Outline_;
pub const FT_Outline_Funcs_ = struct_FT_Outline_Funcs_;
pub const FT_Glyph_Format_ = enum_FT_Glyph_Format_;
pub const FT_RasterRec_ = struct_FT_RasterRec_;
pub const FT_Span_ = struct_FT_Span_;
pub const FT_Raster_Params_ = struct_FT_Raster_Params_;
pub const FT_Raster_Funcs_ = struct_FT_Raster_Funcs_;
pub const FT_UnitVector_ = struct_FT_UnitVector_;
pub const FT_Matrix_ = struct_FT_Matrix_;
pub const FT_Data_ = struct_FT_Data_;
pub const FT_Generic_ = struct_FT_Generic_;
pub const FT_ListNodeRec_ = struct_FT_ListNodeRec_;
pub const FT_ListRec_ = struct_FT_ListRec_;
pub const FT_Glyph_Metrics_ = struct_FT_Glyph_Metrics_;
pub const FT_Bitmap_Size_ = struct_FT_Bitmap_Size_;
pub const FT_LibraryRec_ = struct_FT_LibraryRec_;
pub const FT_ModuleRec_ = struct_FT_ModuleRec_;
pub const FT_DriverRec_ = struct_FT_DriverRec_;
pub const FT_RendererRec_ = struct_FT_RendererRec_;
pub const FT_Encoding_ = enum_FT_Encoding_;
pub const FT_CharMapRec_ = struct_FT_CharMapRec_;
pub const FT_SubGlyphRec_ = struct_FT_SubGlyphRec_;
pub const FT_Slot_InternalRec_ = struct_FT_Slot_InternalRec_;
pub const FT_GlyphSlotRec_ = struct_FT_GlyphSlotRec_;
pub const FT_Size_Metrics_ = struct_FT_Size_Metrics_;
pub const FT_Size_InternalRec_ = struct_FT_Size_InternalRec_;
pub const FT_SizeRec_ = struct_FT_SizeRec_;
pub const FT_Face_InternalRec_ = struct_FT_Face_InternalRec_;
pub const FT_FaceRec_ = struct_FT_FaceRec_;
pub const FT_Parameter_ = struct_FT_Parameter_;
pub const FT_Open_Args_ = struct_FT_Open_Args_;
pub const FT_Size_Request_Type_ = enum_FT_Size_Request_Type_;
pub const FT_Size_RequestRec_ = struct_FT_Size_RequestRec_;
pub const FT_Render_Mode_ = enum_FT_Render_Mode_;
pub const FT_Kerning_Mode_ = enum_FT_Kerning_Mode_;
