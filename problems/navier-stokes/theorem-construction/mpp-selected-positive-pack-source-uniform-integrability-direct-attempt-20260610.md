---
title: Selected Positive Pack Source Uniform Integrability Direct Attempt
date: 2026-06-10
status: direct-attempt-open
loop_criticism_id: NS-LIVE-20260609-212
governing_program: "Exit(Q):=not Member(Q) through Pack_Q / Part_{N,Q} / Field_{N,r,Q}"
claim_boundary:
  logical_landing_node: SelectedPositivePackSourceUniformIntegrability.A / OriginalSmoothDataPackSurvival.A
  claim_status: not_proved
  edge_effect: "Tests whether the selected positive Pack source family is uniformly integrable near the terminal time. It is not proved from current inputs: finite native mass, local-energy/BV traces, same-solution custody, and first-exit minimality still allow nonnegative source-time marginals on shrinking terminal windows with fixed positive mass."
  downstream_consequence: "The first-Pack wall remains open. Future progress must produce terminal active-time thickness, selector stability, a Pack-critical-element rigidity/stability theorem, or another non-circular theorem excluding the selected terminal Pack source atom. pdfs_final remains false."
evidence_refs:
  - problems/navier-stokes/theorem-construction/mpp-no-zero-thickness-terminal-pack-atom-from-original-smooth-data-direct-attempt-20260610.md
  - problems/navier-stokes/theorem-construction/mpp-uniform-terminal-pack-tightness-from-first-exit-minimality-direct-attempt-20260610.md
  - problems/navier-stokes/theorem-construction/mpp-same-witness-superl1-source-carleson-direct-attempt-20260610.md
  - problems/navier-stokes/theorem-construction/mpp-basac-native-positive-source-uniform-integrability-direct-attempt-20260609.md
---

# Direct Target

```text
SelectedPositivePackSourceUniformIntegrability.A:
the selected positive Pack source family is uniformly integrable on terminal approach windows.
```

This would exclude the zero-thickness terminal Pack atom and feed terminal Pack
tightness.

# Direct Attempt

The current inputs give finite mass and same-solution custody. They do not give
uniform integrability. The selected positive Pack source can still be represented
by nonnegative time marginals on shrinking terminal windows. The sharp witness is:

```math
g_m(s)=m 1_{(-1/m,0]}(s),
\qquad
g_m(s)\,ds\rightharpoonup\delta_0.
```

This family is bounded in `L^1`, has unit mass, and is not uniformly
integrable. The terminal atom is exactly the object the theorem must remove.

# Why The Selected Pack Label Does Not Add The Missing Estimate

The source is not arbitrary; it is selected by the Field-window support. That helps
custody, but it also means the selector can choose the terminal layer where the
positive part concentrates.

The active loop already tested broader super-L1/source-Carleson, Orlicz,
Morrey, and local positive source-Carleson routes. The selected-Pack version
inherits those estimates only after a selected-Pack transfer theorem. It still
needs a new theorem that either gives active-time thickness or proves the Pack
selector is stable under terminal approach/profile decomposition.

# Result

`SelectedPositivePackSourceUniformIntegrability.A` is not proved from current
installed inputs.

The route reduces to:

```text
TerminalPositivePackActiveTimeThickness.A,
PackProfileSelectorStability.A,
PackCriticalElementStability.A,
or SelectedPositivePackSourceNoAtom.A.
```

# New Live Criticism

`NS-LIVE-20260609-212`: selected positive Pack source uniform integrability is
not proved. Finite native mass, local-energy/BV traces, same-solution custody,
and first-exit minimality still allow nonnegative source-time marginals on
shrinking terminal windows with fixed positive mass.
The active loop must prove terminal active-time thickness, Pack selector
stability, Pack critical-element stability, or another theorem excluding the
selected terminal Pack source atom before `OriginalSmoothDataPackSurvival.A`
can be counted. Keep `pdfs_final` false.
