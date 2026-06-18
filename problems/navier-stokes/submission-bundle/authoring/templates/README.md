# PDF Writing Templates

This is the Navier--Stokes human-PDF template folder.

Reusable writing forms for the final Clay-facing human PDF live here after they
have been deliberately extracted from the lab, sample, or manuscript work.

This folder is for reader-facing proof-writing templates: abstract shape,
introduction shape, Gold/Silver route explanation, class-membership witness
sections, theorem/proof section forms, branch/leaf integration forms, and
Pack/Part/Field exit prose patterns.

Template rendering rule:

Every `.tex` template in this folder must compile as its own standalone PDF,
and the matching audit PDF must live beside it with the same basename. After
adding or changing a template, run:

```sh
make -C problems/navier-stokes/submission-bundle/authoring/templates all
```

The `.build/` directory is temporary build scratch. The `.tex` source and its
same-basename `.pdf` are the durable template pair.

Current TOC templates:

- `monograph-v6-toc-template-custom-macros.tex` keeps the V6 custom TOC layer:
  `\Volume`, `\volumegroup`, `\VolSection`, the custom `vgroup` TOC row, and
  the volume/section numbering scheme.
- `monograph-v6-toc-template-standard-latex.tex` keeps the same visual idea with
  ordinary math-paper sectioning: `\section`, `\subsection`, and
  `\subsubsection`.

This folder is not for system pipeline forms, runtime handoff forms, raw
transcripts, lab experiments, or sample PDFs. Those belong outside this folder.
