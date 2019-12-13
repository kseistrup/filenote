filenote(1)

# NAME

filenote – attach a comment to a file or directory.

# SYNOPSIS

*filenote* [_OPTIONS_] _PATH_…

# OPTIONS

*-h*, *--help*
	Prints a help summary to standard output, then exits.

*--version*
	Prints version information to standard output, then exits.

*--copyright*
	Prints copying policy to standard output, then exits.

*-f*, *--files-only*
	Only change the comments of files. Default is to change
	comments of both files and directories.

*-d*, *--dirs-only*, *--directories-only*
	Only change the comments of directories. Default is to
	change comments of both files and directories.

*-l*, *--long*
	In read mode, show both _PATH_ and associated comment.
	Default is to show only the comment.

*--delete*
	Delete comment associated with _PATH_.

*-c* _COMMENT_, *--comment*=_COMMENT_
	Attach _COMMENT_ to _PATH_, possibly overwriting a previously
	set comment. If _COMMENT_ is an empty string (i.e., _""_), the
	comment will be removed entirely from the extended attributes.
	This is equivalent to using the *--delete* switch.

	If no _COMMENT_ is given, any file comment is shown, rather
	than set.

# NOTES

This command is using the extended attribute name _user.comment_ for++
associated notes.

Loosely modeled after a similarly named command found in AmigaDOS.

# SEE ALSO

*getfattr*(1), *setfattr*(1), *xattr*(7)

# AUTHORS

Maintained by Klaus Alexander Seistrup <klaus@seistrup.dk>. Please see
https://github.com/kseistrup/filenote for full source and bug reports.
