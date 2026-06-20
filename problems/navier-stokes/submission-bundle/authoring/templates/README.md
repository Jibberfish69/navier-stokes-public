# PDF Writing Templates

This is the Navier--Stokes human-PDF template folder.

Reusable forms for the final human PDF live here after they have been
deliberately extracted from transcript work, experiments, writing samples, or
manuscript work.

The current tracked inventory is structural:

- `custom_volumes_TOC.tex` and `custom_volumes_TOC.pdf`
- `standard_sections_TOC.tex` and `standard_sections_TOC.pdf`
- `formal-environments.sty`

Those files give TOC shape, section hierarchy, formal environment spacing,
numbering, and cross-reference behavior. They are not proof-prose templates.

Future prose templates belong here only after a real explanation pattern has
been abstracted. Examples of possible future templates include an educational
definition-to-pressure excerpt, a transcript-to-proof extraction form, or a
reader-facing route explanation form. Do not add one by copying a weak
experiment.

Formal cross-reference boundary:

The template formal-environment layer has one internal cref system, copied and
sterilized from V6. Repo-native surface, branch, route, and status names do not
become a second formal cref scheme. They are translated outside this folder by
`../structure-map/` into PDF section placement and reader-facing titles.

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

- `custom_volumes_TOC.tex` keeps the V6 custom TOC layer:
  `\Volume`, `\volumegroup`, `\VolSection`, the custom `vgroup` TOC row, and
  the volume/section numbering scheme.
- `standard_sections_TOC.tex` keeps the same visual idea with
  ordinary math-paper sectioning: `\section`, `\subsection`, and
  `\subsubsection`.

This folder is not for system pipeline forms, runtime handoff forms, raw
transcripts, lab experiments, writing samples, or one-off proof examples. Those
belong outside this folder until a reusable form has been extracted.
