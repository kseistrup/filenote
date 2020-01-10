FILENOTE(1)

# NAME

filenote - attach a comment to a file or directory.

# SYNOPSIS

*filenote* [_OPTIONS_] _PATH_…

# OPTIONS

*-h*, *--help*
	Prints a help summary to standard output, then exits.

*--version*
	Prints version information to standard output, then exits.

*--copyright*
	Prints copying policy to standard output, then exits.

*-c* _COMMENT_, *--comment*=_COMMENT_
	Attach _COMMENT_ to _PATH_, possibly overwriting a previously
	set comment. If _COMMENT_ is an empty string (i.e., _""_), the
	comment will be removed entirely from the extended attributes.
	This is equivalent to using the *--remove* switch.

	If no _COMMENT_ is given, any file comment is shown, rather
	than set.

*-d*, *--dirs-only*, *--directories-only*
	Only change the comments of directories. Default is to
	change comments of both files and directories.

*-f*, *--files-only*
	Only change the comments of files. Default is to change
	comments of both files and directories.

*-l*, *--long*
	In read mode, show both _PATH_ and associated comment.
	Default is to show only the comment.

*-n* _NAME_, *--name*=_NAME_
	Use extended file attribute _NAME_ rather than the default
	namespace, _user.xdg.comment_.

	_NAME_ must be in the form _class_._attribute_, where _class_
	is one of _user_, _trusted_, _system_ or _security_. See
	*xattr*(7) for details.

*-x*, *--remove*
	Remove comment associated with _PATH_.

# NOTES

This command is using the extended attribute name _user.xdg.comment_ for
associated notes.

Modeled loosely after a similarly named command found in AmigaDOS.

# SEE ALSO

*getfattr*(1), *setfattr*(1), *xattr*(7)

# AUTHORS

Maintained by Klaus Alexander Seistrup <klaus@seistrup.dk>. Please see
https://github.com/kseistrup/filenote for full source and bug reports.
