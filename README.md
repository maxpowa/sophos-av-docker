# Sophos AV for Docker

Simple dockerfile to allow running Sophos AV on practically any Docker supported system.

Sample Usage:
```
bash$ docker pull maxpowa/sophos-av
bash$ docker run -it -v /home/max:/scan maxpowa/sophos-av savscan -all /scan
```

Savscan Usage:
```
  Usage: savscan [options] <path1> <path2>... <pathN> [include/exclude options]

  where <path1>, <path2>... <pathN> may refer to files, directories or
  filesystems.

  Note: With the exception of the -include and -exclude options, it does not
  matter where on the command line you specify an option: you can specify it
  before, in the middle of, or after, a list of paths. Regardless of where it
  appears, it is applied to all the paths on the command line. However, the
  -exclude and -include options control whether the paths after them are
  scanned, and therefore the position of these options does matter. If you
  specify options which have opposing effects to each other (for example,
  -archive followed by -narchive), then the latest one on the line takes effect
  (in this example, -narchive would take effect).

The following options may be prefixed with 'n' to invert their meaning
(for example, '-nsc' is the inverse of '-sc'). [*] indicates the option
is the default:

  -sc       [*] : Scan inside dynamically compressed executables
  -f        [ ] : Full Scan
  -di       [ ] : Disinfect infected items
  -s        [*] : Run silently (do not list files scanned)
  -c        [*] : Ask for confirmation before disinfection/deletion
  -b        [*] : Sound bell on virus detection
  -all      [ ] : Scan all files
  -rec      [*] : Do recursive Scan
  -remove   [ ] : Remove infected objects
  -dn       [ ] : Display names of files as they are scanned
  -ss       [ ] : Don't display anything except on error or virus
  -eec      [ ] : Use extended error codes
  -ext=<extension>,.. : Specify additional extensions to Scan
  -p=<file>     : Write to logfile <file>
  -idedir=<directory> : Read IDEs from alternative directory
  -exclude      : Exclude the following objects from scanning
  -include      : Include the following objects in scanning. (Use after
                  -exclude)
  -v            : Display complete version information
  -vv           : Display complete version information and details on
                  extensions and archive types supported
  -h            : Display this help and exit

The following options are related to archives and other special file types:

  -zip      [ ] : Scan inside ZIP archives
  -gzip     [ ] : Scan inside GZIP compressed files
  -arj      [ ] : Scan inside ARJ archives
  -cmz      [ ] : Scan inside Unix-compressed files
  -tar      [ ] : Scan inside TAR archives
  -rar      [ ] : Scan inside RAR archives
  -cab      [ ] : Scan inside Microsoft Cabinet files
  -archive  [ ] : All of the above
  -loopback [ ] : Scan inside loopback-type files
  -mime     [ ] : Scan files encoded in MIME format
  -oe       [ ] : Scan Microsoft Outlook Express mailbox files (requires -mime)
  -tnef     [ ] : Scan inside TNEF files

  -pua      [ ] : Scan for adware/potentially unwanted applications (PUAs).
                  This option scans for the primary component of PUAs

  -suspicious            [ ] : Scan for suspicious files

The following options may be prefixed with 'no-' to invert their meaning
(for example, '--no-reset-atime' is the inverse of '--reset-atime'.  [*]
indicates the option is the default:

  --reset-atime          [*] : Reset file access time after Scaning
  --stop-scan            [*] : Abort scanning of files such as 'zip bombs'
                               which require excessive amounts of time,
                               disk space or memory to scan
  --cust-extract         [ ] : Unpack just the predefined (by VDL)
                               files from the archives
  --early-sxl            [ ] : Perform a (synchronous) SXL lookup
                               before creating any streams (other than HOST).
                               The actual stream creation depends on the response.
                               (SXL lookups must be enabled to use this feature)

The following options are Unix-specific, and may be prefixed with 'no-'
to invert their meaning (for example, '--no-follow-symlinks' is the
inverse of '--follow-symlinks'). [*] indicates the option is the default:

  --follow-symlinks      [*] : Scan the object pointed to by symbolic links
  --stay-on-filesystem   [ ] : Attempt not to leave the starting filesystem
                               (i.e. do not traverse mount points)
  --stay-on-machine      [*] : Attempt not to leave the starting machine
                               (i.e. do not traverse remote mount points)
  --skip-special         [*] : Do not scan 'special' objects (/dev, /proc,
                               /devices etc.)
  --backtrack-protection [*] : Prevent repetition of work ('backtracking')
                               due to symbolic links
  --preserve-backtrack   [*] : Preserve the backtracking information for
                               the duration of this run
  --examine-x-bit        [ ] : Check files with an execute bit set
  --show-file-details    [ ] : Show file ownership and permissions when
                               displaying filenames
  --quarantine           [ ] : (Simple form of --quarantine option)
                               If file is infected with virus, attempt to
                               change file owner to user running Scan, and
                               permissions to -r-------- (0400)

  --quarantine:<uid=nnn>,<user=user>,
               <gid=nnn>,<group=group>,<mode=ppp>
                         [ ] : (Detailed form of --quarantine option)
                               If file is infected with virus, attempt to
                               change file ownership, group ownership, and
                               permissions to those specified as
                               uid/user, gid/group, and mode.

  -move=<quarantine directory>
                         [ ] : Move infected files to a quarantine directory
  -rename                [ ] : Append filename extension 'infected' to names
                               of infected files (unless they already have this
                               extension).
  --args-file=<file>         : Read command line arguments (both options and
                               directory/filenames) from file, taking
                               arguments from the command line again when
                               the end of the file is reached. A value of -
                               for <file> specifies taking input from stdin.
                               A small number of command line options may
                               not be used within an args file, namely:-
                               -eec, -neec, -p=, -s, -ns, -dn, -ndn.
                               These can only be specified from the command
                               line.

The following options are specific to Linux and FreeBSD only.

  -mbr      [ ] : Scan master boot records on all (physical) hard disks
  -bs=X,... [ ] : Scan boot sector of each drive listed
  -bs       [ ] : Scan boot sectors on all (logical) drives
  -cdr=X,...[ ] : Scan boot sector in bootable image of each CD drive listed

You need to have superuser rights in order to scan boot sectors.
```

Usage Guide:
https://www.sophos.com/en-us/medialibrary/PDFs/documentation/savl_9_cgeng.pdf

