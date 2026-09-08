# Preamble

`packages.tex` owns package loading and document-wide typography dependencies.
`macros.tex` owns reusable semantic commands.
`theoremstyle.tex` owns formal environments, numbering, and cross-reference names.
`metadata.tex` owns the title, author, date, and PDF metadata.

Keep each concern in its owning file rather than accumulating an opaque root preamble.

