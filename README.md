# filenote

Attach a comment to (or read a comment from) a file or directory.

```
Usage: filenote [OPTIONS] PATH [PATH …]

positional arguments:
  PATH                  File or directory

optional arguments:
  -h, --help            show this help message and exit
  --version             show version information and exit
  --copyright           show copying policy and exit
  -f, --files-only      only change the comments of files
  -d, --dirs-only, --directories-only
                        only change the comments of directories
  -x, --remove          remove comment associated with PATH
  -l, --long            show both PATH and COMMENT
  -c COMMENT, --comment COMMENT
                        attach COMMENT to PATH
```

This command attaches a comment to or reads a comment from a file or directory, if supported by the filesystem, using the extended attribute name `user.xdg.comment`.

If `COMMENT` is given, a comment will be attached to each `PATH`.

If `COMMENT` is omitted, the comment for each `PATH` will be shown.

If the `--remove` switch is given, or if `COMMENT` is an empty string (i.e., ‘’), any comment associated with `PATH` will be removed.

The `--files-only` and `--dirs-only` options work together: if you use `--files-only` and omit `--dirs-only`, then only the files will be affected and the other way round. If none of `--files-only` and `--dirs-only` is used, all given files and directories will have their comment changed.

Modeled loosely after the AmigaDOS command `FileNote`.

See also: `setfattr(1)`, `getfattr(1)`, `xattr(7)`.

## Requirements

* Python 3.6+ (only tested on Python 3.8)
