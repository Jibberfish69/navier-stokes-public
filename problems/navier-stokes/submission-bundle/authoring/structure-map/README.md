# Repo-To-PDF Structure Map

This folder translates Navier--Stokes repo names into the human PDF's section
hierarchy.

The map is not a formal cross-reference system. Repo-native names such as
`ClayTerminalWitnessCMEntry.A`, `ACT.X-Readout`, `Tail.Hs_R3`, `Pack_Q`,
`Part_{N,Q}`, and `Field_{N,r,Q}` are authoring inputs. They help decide where
material belongs in the PDF and what reader-facing title it should receive.

The PDF keeps ordinary structure names: volume, section, subsection,
subsubsection, and appendix. Internal repo words such as trunk, branch, and
leaf may guide placement, but they do not replace public PDF structure terms
unless Thomas explicitly chooses that vocabulary for the paper.

Run the mapper from the repository root:

```sh
ruby problems/navier-stokes/submission-bundle/authoring/structure-map/build_repo_section_map.rb
```

The generated `repo-section-map.yaml` records each extracted repo handle, its
reader-facing title, and its proposed PDF location. Edit
`repo-section-map-rules.yaml` when a placement rule or title override should
change.

This folder answers placement and naming questions only. It does not decide
whether a transcript passage is mathematically valid, whether an explanation
style should be preserved, or whether an experiment is good enough for the
manuscript.
