# Navier-Stokes Human Submission PDF Readthrough Criticism Inventory

- PDF reviewed: `problems/navier-stokes/submission-bundle/navier-stokes-human-submission.pdf`
- PDF pages: 1082 by `pdfinfo`
- PDF creation time: 2026-06-08 15:42:44 MDT
- Main TeX source: `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
- Appendix sources:
  - `problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex`
  - `problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex`
  - `problems/navier-stokes/submission-bundle/surface-derivation-appendix.tex`
- Reader roles used: harsh CMI-level mathematics referee; ordinary graduate-level reader

This is a criticism inventory and repair targeting file. It is not permission to
delete, demote, quarantine, or reorder the manuscript. Every repair below keeps
the current paper direction: make the mathematics pay on the page, remove
machinery voice, and preserve the app-aligned `problems/**` human PDF as the
preferred submission track.

## 1. Page 38 Still Names Live Clay-Facing Mathematics

Original criticism restored: Page 38 admits live Clay-facing math remains:
Pack retention, Part participation, Field realization, and good-scale
noncollapse.

Criticism:
Page 38 is the strongest non-completion signal in the current PDF. It says the
three live mathematical hinges remain and that the manuscript, graph, app, and
exported paper can expose them but cannot pay them by naming them. A referee
will read that as an admission that the main proof has not carried the final
Clay-facing burden.

Merged page defects:
- Page 38, closing hinges: live mathematical work is named inside the main body.
- Page 39, appendix entrance: the appendix then says the dossier is not extra
  proof gaps, creating a conflict with page 38.
- Whole PDF proof state: the reader cannot tell which named hinge is already
  proved and which hinge is still an active theorem burden.

Actionable repair target:
- Objective: replace the page-38 open-hinge paragraph with an exact status line
  for each hinge: proved in the main body, paid in a named theorem, paid in a
  named appendix theorem, or still open. The page must not say "live
  mathematical work" unless the PDF is being left explicitly non-final.
- Filenames:
  - `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
  - `problems/navier-stokes/submission-bundle/submission-verdict.yaml`
  - `problems/navier-stokes/submission-bundle/source-frontier.yaml`
- Source regions:
  - Main body near the "Remaining Closing Burden" / final main-body transition.
  - Appendix entrance directly after `\appendix`.
- Required result: the main body tells the referee exactly what mathematical
  statement pays Pack retention, Part participation, and Field/good-scale
  realization. The appendix entrance then matches that status instead of
  contradicting it.
- Safe repair mode: write the proof status for the hinge already present on the
  page. Do not demote the hinge, rename it, or hide it in status language.

## 2. Class-Membership Grammar Replaces Smoothness Without Paying Equivalence

Original criticism restored: The proof replaces global smoothness with
class-membership grammar; it needs an equivalence theorem capturing finite
breakdown claims and pass-side classical continuation.

Criticism:
The paper asks the reader to accept `Member`, `Exit`, `Pack`, `Part`, and
`Field` as the live form of the Navier-Stokes problem. That can work only after
the manuscript proves that every alleged finite-time Clay breakdown object is
captured by the same-solution terminal test, and that the pass side gives the
ordinary continuation criterion for the original solution.

Merged page defects:
- Page 1, abstract: the class-exit mechanism appears before terminal-object
  construction, continuation readout, or whole-space handling.
- Page 6, reframing: the paper shifts from smoothness to class membership
  before the reader feels why the finite-breakdown claim forces that shift.
- Page 8, Silver Standard Approach: Pack/Part/Field exhaustion is asserted
  before it feels mathematically forced.
- Page 9, class membership: notation starts carrying thought that prose has not
  earned.
- Page 16, terminal-consumption theorem: Pack/Part/Field necessity is true
  inside the grammar, while the reader still needs the bridge from Clay
  breakdown to that grammar.

Actionable repair target:
- Objective: add a clean equivalence block in ordinary mathematical language:
  an alleged finite-time breakdown must offer a same-solution terminal object;
  a same-solution terminal object is tested by Pack, Part, Field; all three
  retained requirements give the standard continuation readout; a first failed
  requirement gives class exit for that same object.
- Filenames:
  - `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
  - `problems/navier-stokes/theorem-construction/mpp-clay-terminal-witness-invalidation-20260523.md`
  - `problems/navier-stokes/theorem-construction/mpp-terminal-record-entry-standard-pde-hardening-20260608.md`
- Source regions:
  - Abstract and first two main-body sections.
  - Sections titled "Reframing the Problem", "Defining Class Membership", and
    "The Contrapositive Logic".
- Required result: a reader can say, without translating repo vocabulary, why
  the class test is the same finite-breakdown question and why the pass branch
  is a classical continuation branch.
- Safe repair mode: explain the equivalence from the Clay problem outward. Do
  not introduce a new paper spine, new route name, or assistant-owned theorem
  framing.

## 3. The No-Third-Branch Argument Reads Too Definitional

Original criticism restored: The no-third-branch argument is too definitional;
it needs PDE estimates or a bridge proving the requirements for the original
solution.

Criticism:
The current theorem says an object that is a member branch cannot also be a
finite nonsmooth obstruction branch. That is formally clean, but a harsh reader
will see it as close to tautological unless the membership requirements are
shown to give real continuation for the same original Navier-Stokes solution.

Merged page defects:
- Page 15, no-third-branch theorem: the proof says membership keeps the branch
  smooth, then rules out nonsmooth membership.
- Page 16, terminal-consumption theorem: the first failed requirement is named
  by grammar, not yet by analytic payment.
- Page 17, periodic classification: the retained branch is said to give the
  `H^s`, `s > 5/2`, continuation norm, but the continuation readout is named
  more than shown.
- Whole PDF language: proof-adverb transitions and internal proof-role wording
  make ordinary steps sound more proved than they are.

Actionable repair target:
- Objective: make the no-third-branch theorem depend on a stated continuation
  criterion: retained Pack plus retained Part plus one positive Field scale at
  depth above `s > 5/2` gives the same-solution `H^s` control needed to continue
  the classical solution past the alleged terminal time.
- Filenames:
  - `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
  - `problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex`
  - `problems/navier-stokes/theorem-construction/mpp-clay-field-failure-realization-proof-20260607.md`
  - `problems/navier-stokes/theorem-construction/mpp-terminal-record-entry-standard-pde-hardening-20260608.md`
- Source regions:
  - Main-body "No third in-class terminal branch" theorem.
  - Main-body "Periodic CM classification state" theorem.
  - Source-field appendix sections near retained Pack/Part/Field and terminal
    record entry.
- Required result: the no-third-branch theorem is no longer a definition wearing
  a theorem label. It points to the exact analytic continuation consumer and the
  exact retained witness data that feed it.
- Safe repair mode: strengthen the proof by paying the continuation step. Do
  not add a generic positive smoothness program or erase the fail branch.

## 4. The Terminal Object Q Is Assumed Too Easily

Original criticism restored: Terminal object `Q` is assumed too easily; the
paper needs construction, or proof that any alleged counterexample has such a
terminal witness.

Criticism:
A finite-time breakdown claim does not automatically hand the reader a clean
same-solution terminal packet with Pack, Part, and Field faces. The manuscript
has to show how the original solution, the alleged terminal time, the domain,
and the selected terminal object are tied together before the witness test is
allowed to start.

Merged page defects:
- Page 1, abstract: terminal witnesses appear before construction.
- Page 16, terminal-consumption theorem: the proof assumes an alleged terminal
  object is available for the first-face test.
- Page 39, appendix entrance: "failed routes" become evidence only after a
  selected same-solution terminal object exists.
- Whole PDF reader state: the reader cannot separate selected terminal objects
  from diagnostics, source residues, support branches, or historical failed
  attempts.

Actionable repair target:
- Objective: install a terminal-object construction subsection before the first
  heavy use of `Q`: what data are fixed, what terminal sequence is selected,
  what makes the object same-solution, what is rejected as surrogate or
  diagnostic only, and where Pack/Part/Field begin.
- Filenames:
  - `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
  - `problems/navier-stokes/theorem-construction/mpp-clay-terminal-witness-invalidation-20260523.md`
  - `problems/navier-stokes/theorem-construction/mpp-any-finite-failure-witness-cm-exit-20260521.md`
  - `problems/navier-stokes/theorem-construction/mpp-terminal-record-entry-standard-pde-hardening-20260608.md`
- Source regions:
  - Main-body "Reframing the Problem".
  - Main-body "Participation and One-Field Coherence Witness Laws".
  - Main-body "Packet Witness Law".
- Required result: every later use of `Q` is anchored to a constructed or
  admitted same-solution terminal witness, not to a free-floating proof token.
- Safe repair mode: add the missing construction and rejection boundary. Do not
  change the proof program into a positive deletion of terminal objects.

## 5. The Failure List Is Research History, Not Yet an Exhaustiveness Theorem

Original criticism restored: The failure list is not proved exhaustive; it is
prior positive-attempt history, not classification of all finite-time breakdown
mechanisms.

Criticism:
The current list is useful because it records how many positive-forward routes
stop. That list does not by itself prove that every possible finite-time
Navier-Stokes breakdown mechanism is one of those historical branches. A
submission-grade proof needs a theorem that turns "these are the routes we
found" into "every admissible finite terminal object enters this same
Pack/Part/Field test."

Merged page defects:
- Page 6, failure list entrance: "support stack" sounds like repo history rather
  than theorem statement.
- Pages 12-14, failure-type and witness table: labels are understandable, but
  their inevitability from the equation has not been shown.
- Pages 17-20, forward-family support examples: repeated routing language reads
  like sorting, not proof.
- Pages 23-30, positive-forward branches: the reader loses track of current
  proof versus failed attempts and motivation.
- Page 90, closure of the failure record: failed positive attempts leave
  terminal objects to be tested, but that does not yet classify every possible
  finite breakdown claim.

Actionable repair target:
- Objective: write an exhaustiveness theorem for admitted terminal witnesses:
  after same-solution entry, the first lost requirement is Pack, Part, Field, or
  the material is support awaiting terminal selection. Historical branches then
  become examples of this theorem, not the theorem itself.
- Filenames:
  - `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
  - `problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex`
  - `problems/navier-stokes/submission-bundle/surface-derivation-appendix.tex`
  - `problems/navier-stokes/submission-bundle/surface-derivation-inventory.yaml`
- Source regions:
  - Main-body "Exhaustive Failure List".
  - Main-body "Generally Classifying Failure Types From the List".
  - Appendix "Page-24 Failure-Record Contract".
  - Appendix "Expanded CM Branch Obligations".
- Required result: the proof no longer depends on the reader trusting a catalog
  of past attempts. The catalog becomes evidence under a theorem that names the
  admissible alternatives and their face landings.
- Safe repair mode: keep the history as mathematical provenance, but make the
  proof theorem independent of the history count.

## 6. Periodic and Whole-Space Branches Need Separate Analytic Force

Original criticism restored: Periodic and whole-space branches lack enough
analytic separation and force; the torus atlas does not prove the `R^3`
exterior-source estimate, and page 38 leaves the exterior `H^s` tail/export
hinge live.

Criticism:
The paper mixes the periodic `T^3` atlas, whole-space `R^3` exterior-source
handling, and direct positive `H^s` tail export. A referee will require each
domain to have its own hypotheses, terminal object, compactness/tightness
structure, pressure normalization, and continuation readout.

Merged page defects:
- Page 1, abstract: both domains are named before their different burdens are
  separated.
- Page 17, periodic classification: retained-branch continuation is asserted
  for the periodic surface.
- Page 38, closing hinges: exterior `H^s` tail/export remains a live hinge.
- Whole PDF proof state: whole-space support material can look like closure
  before the domain-specific argument has paid it.

Actionable repair target:
- Objective: split the domain claims in the main body into exact theorem
  surfaces: periodic `T^3` classification, whole-space `R^3` CM endpoint
  consumption, and the stronger direct `R^3` exterior `H^s` export theorem.
  Each surface needs its own status and proof payment.
- Filenames:
  - `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
  - `problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex`
  - `problems/navier-stokes/theorem-construction/mpp-r3-exterior-source-dyadic-escape-cm-face-20260607.md`
  - `problems/navier-stokes/theorem-construction/mpp-scf-aact-elliptic-source-endpoint-branch-package.md`
- Source regions:
  - Abstract.
  - Original problem statement.
  - Periodic CM classification theorem.
  - Whole-space / exterior-source paragraphs.
  - Source-field appendix section "R3 Exterior Tail CM Endpoint Consumption".
- Required result: a reader knows exactly which result is proved on `T^3`,
  which result is proved or claimed on `R^3`, and which stronger export theorem
  remains separate.
- Safe repair mode: separate the claims without demoting either PDF target or
  pretending the torus proof automatically exports to whole space.

## 7. Many Theorems Are Conceptual One-Paragraph Proofs Without Analytic Payment

Original criticism restored: Many propositions and theorems are conceptual
one-paragraph proofs naming Pack, Part, Field, membership, readout, or class
exit without estimates, compactness, traces, pressure recovery, or continuation
criteria.

Criticism:
The paper often uses theorem/proposition labels for conceptual routing
paragraphs. A referee expects each theorem to carry hypotheses, exact object,
equation surface, proof mechanism, and conclusion. Several current proofs tell
the reader what role the branch plays, then skip the analytic mechanism that
would make the conclusion independent of the chosen language.

Merged page defects:
- Pages 17-20, forward-family support examples: repeated support/routing/readout
  verbs sound like internal sorting.
- Page 21, four-body diagnostic: "diagnostic" weakens proof status.
- Pages 23-30, positive-forward branches: useful attempts blur with theorem
  claims.
- Whole PDF language: route, support, surface, readout, installed, diagnostic,
  obligation, and bookkeeping appear so often that the paper sounds like
  machinery.
- Whole PDF voice: the prose often sounds like Codex sorting evidence for
  itself.

Actionable repair target:
- Objective: audit every theorem, lemma, proposition, and claim in the main body
  and appendices by proof type: proved theorem, definition, routing lemma,
  historical attempt, support note, or open burden. Then upgrade proof-bearing
  entries with the missing mathematical mechanism or relabel non-proof material
  honestly inside the same current structure.
- Filenames:
  - `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`
  - `problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex`
  - `problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex`
  - `problems/navier-stokes/submission-bundle/surface-derivation-appendix.tex`
- Source regions:
  - Main-body theorem environments.
  - Appendix proof-attempt entries.
  - Source-field appendix subsections with proof labels.
  - Surface-derivation "Family proof role" blocks.
- Required result: theorem labels are reserved for statements with actual proof
  force. Support and history remain visible, but they stop pretending to be
  theorem closure.
- Safe repair mode: preserve the mathematical intent, then pay the missing
  proof or rename the local environment. Do not flatten the manuscript into a
  checker report.

## 8. Appendix D Contains Open, Conditional, Incomplete, or Failed Branches

Original criticism restored: Appendix D has many open, conditional,
incomplete, or failed branches; the text classifies them as support, but the PDF
has not turned them into a clean proof chain.

Criticism:
Appendix D is nearly the entire PDF. It contains a huge amount of source-field
material, status language, prior attempts, and branch history. The problem is
not that the appendix is large. The problem is that the reader is not always
shown how each large chunk pays service to the MPP proof in the present
manuscript.

Merged page defects:
- Pages 40-90, proof attempts appendix: stopping points can read as a collection
  of failed routes unless the main body has paid the core burden.
- Pages 91-1074, Appendix D: the scale overwhelms the paper.
- Pages 91-1074, Appendix D language: "open", "conditional", "missing",
  "remaining", "not proved", "not discharged", and "does not close" appear
  across this range.
- Whole PDF reader state: the reader cannot reliably separate proof, history,
  support, conditional branches, and live burdens.
- Whole PDF submission shape: the main body is short beside the enormous
  appendix, making the paper feel under-distilled.

Actionable repair target:
- Objective: expand Appendix D into explicit proof-payment blocks. Each block
  must say the selected terminal object, the Pack/Part/Field face or membership
  readout it pays, the theorem or estimate used, and how it returns to the main
  proof. Historical material should be marked as historical only when it is not
  being used for current proof payment.
- Filenames:
  - `problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex`
  - `problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex`
  - `problems/navier-stokes/source-forensics/master-source-extraction.md`
  - `problems/navier-stokes/submission-bundle/current-material-coverage.yaml`
- Source regions:
  - Appendix D generated source-field reader sections.
  - Appendix "Proof Attempts And Failures To Prove Smoothness".
  - Any source-field subsection containing live status words.
- Required result: Appendix D becomes readable as proof service to the MPP
  argument, not as a thousand-page status dump. Large size is acceptable only
  when the local mathematics is doing visible work.
- Safe repair mode: expand and connect. Do not quarantine, delete, demote, or
  hide appendix material as the default repair.

## 9. Appendices E-G Use Count-Based Obligation Rollups Instead of Mathematical Payment

Original criticism restored: Appendices E-G use count-based obligation rollups;
counts are not proof, and each material branch needs a precise theorem or must
be expanded into mathematical payment.

Criticism:
The final pages count hundreds of obligations and sort them into proof roles.
This may help the app or coverage machinery, but it is not enough for a Clay
submission. A count like 541 support-boundary obligations or 1067 support
obligations tells the reader the system sorted a lot of material. It does not
show the local theorem, estimate, witness entry, face failure, or readout.

Merged page defects:
- Page 1075, expanded CM obligations: counts are used to introduce proof roles.
- Page 1077, support-boundary obligations: the page explicitly says support has
  no CM conclusion until it selects a same-fluid terminal packet.
- Page 1080, branch-family obligations: generic proof-role prose repeats instead
  of showing local mathematics.
- Whole PDF language: "obligation", "support", "route", "readout", and
  "installed" dominate the final pages.
- Whole PDF voice: final pages sound generated rather than written by one person
  leading another through proof.

Actionable repair target:
- Objective: replace count-first rollups with theorem-first branch payments.
  For each material family retained in the PDF, write the local mathematical
  object, exact witness face or pass-side readout, proof mechanism, and result.
  Counts may remain as provenance after the theorem has been paid, never as the
  proof itself.
- Filenames:
  - `problems/navier-stokes/submission-bundle/surface-derivation-appendix.tex`
  - `problems/navier-stokes/submission-bundle/surface-derivation-inventory.yaml`
  - `problems/navier-stokes/tools/build_surface_derivation_appendix.rb`
- Source regions:
  - `surface-derivation-appendix.tex` sections "Expanded CM Branch Obligations",
    "Expanded Forward-Support Obligations", and "Expanded Branch-Family
    Obligations".
  - Generator logic in `build_surface_derivation_appendix.rb`.
- Required result: the final appendix pages read like mathematical proof
  expansion, not coverage reporting. A referee can inspect one family and see
  exactly what theorem it pays.
- Safe repair mode: change the generator and generated appendix toward
  theorem-first prose. Do not use obligation counts as submission evidence.

## Whole-PDF Writing Defects To Apply Inside Every Target

These are not separate controlling targets. They are writing constraints that
must be enforced while repairing the nine mathematical criticisms above.

1. Remove `merely` from manuscript prose unless a quoted source requires it.
   Current extracted count: 81.

2. Break contrast-pivot habits. Current extracted counts include `rather than`
   220 times, `instead of` 28 times, and `not only` 11 times. State the live
   mathematical object directly.

3. Break the filler-`therefore` pattern. Use that word only for a consequence
   the reader has just seen earned. For ordinary flow, write the next sentence
   directly.

4. Remove machinery voice where it replaces mathematics: route, support,
   surface, readout, installed, diagnostic, obligation, bookkeeping, proof role,
   and similar internal words. Keep them only where the page defines them and
   the reader needs them.

5. Stop telling the reader how to read the paper when the proof order can carry
   the same burden. The final manuscript should lead by mathematical order, not
   by reader-instruction paragraphs.

6. Preserve authorship and current structure. The repair is not "rewrite the
   opening", "demote hinges", "quarantine appendices", or "impose a spine". The
   repair is to make the current mathematical intent pay on the page, with exact
   objects and exact proof results.

## Immediate Work Queue From This Inventory

1. Main-body proof payment: pages 1-38 in
   `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex`.
   Result required: terminal object construction, class-equivalence bridge,
   no-third-branch analytic continuation readout, domain split, and page-38
   hinge status all become explicit mathematical statements.

2. Appendix D proof-service pass:
   `problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex`
   and `problems/navier-stokes/submission-bundle/proof-attempt-failure-appendix.tex`.
   Result required: open/conditional/history language is separated from current
   proof payment, and every retained block states the exact Pack/Part/Field or
   membership readout it serves.

3. Generated rollup repair:
   `problems/navier-stokes/tools/build_surface_derivation_appendix.rb`,
   `problems/navier-stokes/submission-bundle/surface-derivation-inventory.yaml`,
   and generated `surface-derivation-appendix.tex`.
   Result required: theorem-first branch payments replace count-first proof-role
   paragraphs.

4. Whole-PDF language pass after mathematical edits. Result required: remove
   banned and grating patterns, especially `merely`, contrast-pivot phrasing,
   filler `therefore`, and machinery voice that makes the reader translate.

## Readthrough Status

This inventory read the rendered PDF text across the whole human submission PDF
and used source inspection to bind the criticism to real files. It is a repair
targeting inventory for the next writing/proof pass; it is not a completion
claim for the PDF.
