# Navier-Stokes Source-Field Representation Rubric

Purpose: govern how the large Navier-Stokes source field is compressed into a referee-facing manuscript without filename dumping or invisible handwaving.

The governing proof program is the class-membership contrapositive route:

```text
O_pass -> Member(Q; O_NS^work) -> smooth continuation
O_fail capable of finite nonsmoothness -> Exit(Q; O_NS^work)
Exit(Q; O_NS^work) := not Member(Q; O_NS^work)
```

Every mathematical source object must be represented by proof role.

## Dependency-forward PDF law

The Clay-facing PDF builds in the order a reader needs the proof:

```text
Clay target
  -> classical continuation criterion
  -> one concrete positive attempt
  -> the terminal branch left by failure
  -> working class object
  -> Part/Field witnesses
  -> terminal packet capture
  -> class exit
  -> branch-family exhaustion
  -> short proof spine.
```

Each branch-family section must move through this sequence:

```text
positive-forward burden
  -> exact pressure or failure branch
  -> selected terminal object
  -> first class witness tested
  -> pass-side readout or fail-side class exit.
```

The rendered PDF carries mathematical arguments only.
Every relevant surface that enters the proof program must be expanded into a mathematical branch obligation, support obligation, or family obligation, with its claim and proof role stated inside the manuscript.
Internal paths, filenames, generated-surface labels, coverage ledgers, build records, status surfaces, audit rows, and provenance inventories stay outside the PDF.
The PDF may mention a branch family only by its mathematical mechanism, witness, and proof role.
The PDF may not satisfy scale by repeating the same claim, proof, or reader-facing role with only an obligation number changed. That is padding, not representation. When many source rows collapse to one mathematical proof role, the reader-facing PDF must state the proof role once for that family and keep the row-level inventory outside the manuscript until there is real mathematical content to expand.

Required verification:

```sh
ruby problems/navier-stokes/tools/check_pdf_argument_hygiene.rb
```

| Source object type | Manuscript representation | Required standard | Rejection rule |
| --- | --- | --- | --- |
| Core definitions and class laws | Formal definition, lemma, theorem, or proof | The same datum, equation, pressure, viscosity, witness record, `Member`, and `Exit` predicates are stated in the argument itself. | Reject prose-only vocabulary that does not define the object used by the proof. |
| Terminal witness classifications | First-face theorem or proof paragraph | The selected terminal packet is tested in order through `Pack_Q`, `Part_{N,Q}`, and `Field_{N,r,Q}`. | Reject branch language with no declared first failed service. |
| Forward-positive obstruction families | Branch-family compression paragraph or table row | The obstruction has a selected terminal object and a pass/fail split: pass supports membership, fail enters class exit. | Reject thematic summaries that do not say what terminal object is being tested. |
| Auxiliary estimates and readouts | Support for a named hinge | The estimate names one hinge it supports: terminal packet capture, membership readout, or no genuine finite class exit. | Reject support material that strengthens intuition without moving a hinge. |
| Transfer, mirror, and comparison material | Comparison pressure-test or exclusion | The exact Navier-Stokes object must be landed inside the same Part/Field witness tree before it can enter the proof spine. | Reject comparison evidence as proof evidence until the landing theorem exists. |
| Failed attempts and adversarial audits | Live burden or pressure test | A failed attempt enters the manuscript only by attacking one of the three referee hinges. | Reject audit text as proof text when it does not change a hinge. |
| Theorem-creation candidate notes | Live candidate support, active blocker, or pressure test | A candidate note must name the service face or referee hinge it affects before it is allowed into the manuscript. | Reject candidate output as theorem evidence until downstream audit lands it. |
| Build, provenance, and automation records | Outside the mathematical manuscript | These records protect reproducibility and bundle integrity outside the proof. | Reject internal process language from the main proof. |
| Active blockers | Named theorem obligation | The blocker must state its service face and its closing hinge. | Reject hidden burdens, status language, and vague "future work" phrasing. |

Authoring gates:

1. The main manuscript must be free of internal filenames and path strings.
2. Every included branch must name its mathematical job.
3. Every branch-family paragraph must preserve the Field-certification witness order.
4. Every support estimate must attach to a hinge rather than float as background.
5. Every live blocker must be stated as a theorem obligation with its witness and closing hinge.
6. Dependency order is mandatory: definitions and operational need precede branch-family compression.
7. There is no current concrete CM blocker after terminal witness consumption. The Pack-side/source support chain is retained as mathematical support and may enter the proof spine only through the terminal CM entry, Part/Field finite-failure exhaustion, or contrapositive embedding gates.
8. The surface appendix must be long when the source field is long and the mathematical roles are genuinely distinct. Compression is allowed only by proof role, never by removing relevant mathematical obligations from the manuscript. Repeating a proof-role template across row numbers is forbidden and must fail the PDF hygiene check.
