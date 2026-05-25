# Navier-Stokes Source-Field Representation Rubric

Purpose: govern how the large Navier-Stokes source field is compressed into a referee-facing manuscript without filename dumping or invisible handwaving.

The governing proof program is the class-membership contrapositive route:

```text
O_pass -> Member(Q; O_NS^work) -> smooth continuation
O_fail capable of finite nonsmoothness -> Exit(Q; O_NS^work)
Exit(Q; O_NS^work) := not Member(Q; O_NS^work)
```

Every mathematical source object must be represented by proof role.

| Source object type | Manuscript representation | Required standard | Rejection rule |
| --- | --- | --- | --- |
| Core definitions and class laws | Formal definition, lemma, theorem, or proof | The same datum, equation, pressure, viscosity, witness record, `Member`, and `Exit` predicates are stated in the argument itself. | Reject prose-only vocabulary that does not define the object used by the proof. |
| Terminal witness classifications | First-face theorem or proof paragraph | The selected terminal packet is tested in order through `Pack_Q`, `Part_{N,Q}`, and `Field_{N,r,Q}`. | Reject branch language with no declared first failed service. |
| Forward-positive obstruction families | Branch-family compression paragraph or table row | The obstruction has a selected terminal object and a pass/fail split: pass supports membership, fail enters class exit. | Reject thematic summaries that do not say what terminal object is being tested. |
| Auxiliary estimates and readouts | Support for a named hinge | The estimate names one hinge it supports: terminal packet capture, membership readout, or no genuine finite class exit. | Reject support material that strengthens intuition without moving a hinge. |
| Transfer, mirror, and comparison material | Comparison pressure-test or exclusion | The exact Navier-Stokes object must be landed inside the same Pack/Part/Field witness tree before it can enter the proof spine. | Reject comparison evidence as proof evidence until the landing theorem exists. |
| Failed attempts and adversarial audits | Live burden or pressure test | A failed attempt enters the manuscript only by attacking one of the three referee hinges. | Reject audit text as proof text when it does not change a hinge. |
| Theorem-creation candidate notes | Live candidate support, active blocker, or pressure test | A candidate note must name the service face or referee hinge it affects before it is allowed into the manuscript. | Reject candidate output as theorem evidence until downstream audit lands it. |
| Build, provenance, and automation records | Outside the mathematical manuscript | These records protect reproducibility and bundle integrity outside the proof. | Reject internal process language from the main proof. |
| Active blockers | Named theorem obligation | The blocker must state its service face and its closing hinge. | Reject hidden burdens, status language, and vague "future work" phrasing. |

Authoring gates:

1. The main manuscript should not list internal filenames as proof content.
2. Every included branch must name its mathematical job.
3. Every branch-family paragraph must preserve the Pack-first witness order.
4. Every support estimate must attach to a hinge rather than float as background.
5. Every live blocker must be stated as a theorem obligation, not as process status.
6. The current concrete blocker is the no-genuine-exit hinge for original smooth data. The active Pack-side/source support chain is carried by the current theorem-creation candidate notes: source-reserve birth charge, reserve creation, terminal reserve first appearance, positive remainder depletion, source-weighted angular depletion, BASAC reverse Holder production, terminal source anti-concentration, and uniform temporal source integrability.
