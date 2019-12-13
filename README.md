# filenote

Attach a comment to (or read a comment from) a file.

```
Usage: filenote [OPTIONS] FILE [FILE …]

positional arguments:
  FILE                  FILE or DIR to act on

optional arguments:
  -h, --help            show this help message and exit
  --version             show version information and exit
  --copyright           show copying policy and exit
  -f, --files-only      act on files only
  -d, --dirs-only, --directories-only
                        act on directories only
  --delete              delete comment associated with FILE
  -l, --long            show both FILE and COMMENT
  -c COMMENT, --comment COMMENT
                        attach COMMENT to FILE
```

This command attaches a comment to or reads a comment from a file or directory, if supported by the filesystem, using the name `user.comment`.

If `COMMENT` is given, a comment will be attached to each `FILE`.

If `COMMENT` is omitted, the comment for each `FILE` will be shown.

If the `--delete` switch is given, or if `COMMENT` is an empty string (i.e., ‘’), any comment associated with `FILE` will be deleted.

The `--files-only` and `--dirs-only` options work together: if you use `--files-only` and omit `--dirs-only`, then only the files will be affected and the other way round. If none of `--files-only` and `--dirs-only` is used, all given files and directories will have their comment changed.

Modeled loosely after the AmigaDOS command `FileNote`.

See also: `setfattr(1)`, `getfattr(1)`, `xattr(7)`.
