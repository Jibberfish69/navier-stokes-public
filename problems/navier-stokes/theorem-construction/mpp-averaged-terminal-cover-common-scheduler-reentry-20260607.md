---
ns_viewer:
  theorem_id: averaged-terminal-cover-common-scheduler-reentry-20260607
  status: conditional-on-scfbase-local-modulus
  proof_role: route_reentry
  logical_landing_node: averaged_terminal_route
  edge_effect: "Splits the averaged terminal cover/scheduler problem into the no-Jump_avg pass route and the Jump_avg branch; the Jump_avg Field-face landing is conditional on the same-tail SCF_base local modulus required by AveragedFieldFaceAdmission.A."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-aact-global-finite-cover-scheduler-attempt.md
    - problems/navier-stokes/theorem-construction/mpp-tgc-a-cover-positive-scale-terminal-cover-note.md
    - problems/navier-stokes/theorem-construction/mcp-tgc-a-terminal-good-cover-scheduler-theorem.md
    - problems/navier-stokes/theorem-construction/mpp-averaged-field-face-admission-20260607.md
  downstream_consequence: "Keeps READ.COVER, DTC.Read, Field.Read, READ.END, and End_NS downstream; no-Jump_avg gives the scheduled averaged cover, while Jump_avg rules out retained positive Field scales only after SCFBaseLocalModulus_N(T,r) is supplied or derived."
---

# Averaged Terminal Cover / Common Scheduler Reentry

## Status

Narrowed executor follow-through note for the live averaged blocker:

```math
OriginalSmoothData
\Longrightarrow
\text{uniform positive SCF-good terminal finite cover}
+
\text{common AACT scheduler},
```

or else failure of that cover/scheduler must land as `Jump_avg` without using
`READ.COVER`, `DTC.Read`, `Field.Read`, `READ.END`, or any pointwise terminal
readout upstream.

This note does not close the Clay theorem by itself. It moves the blocker from a
generic "prove the cover" demand to the exact averaged branch split. The
no-`Jump_avg` side supplies the scheduled averaged cover. The `Jump_avg` side
lands in the Field face only after the same-tail `SCF_base` modulus in
`AveragedFieldFaceAdmission.A` is supplied or derived from the retained Field
hypotheses.

## Source Read

`mpp-aact-global-finite-cover-scheduler-attempt.md` proves the conditional
handoff:

```math
\text{uniform positive SCF-good terminal finite cover}
+
\text{common scheduler}
\Longrightarrow
AACT.Global.
```

It also records the failure: finite energy plus a.e. good-cylinder production
does not itself give a uniform positive terminal finite cover, because the good
radius may shrink to zero along a terminal sequence.

The later TGC surfaces sharpen this. `mpp-tgc-a-cover-positive-scale-terminal-cover-note.md`
proves:

```math
\neg Jump_{avg}(\mathcal T)
\Longrightarrow
\text{finite positive-scale SCF-good same-fluid terminal cover with scheduler-ready }L^1
\text{ majorants}.
```

`mcp-tgc-a-terminal-good-cover-scheduler-theorem.md` then spends that cover and
the local `AACT.KX` packet to obtain:

```math
SGC.A_{a.e.}+ATD_m^\varepsilon+\neg Jump_{avg}
\Longrightarrow
DTC.A_{avg}.
```

Both notes explicitly keep `READ.COVER`, `DTC.Read`, `Field.Read`, `READ.END`,
and `End_NS` downstream of `End_NS_avg`.

## Reentry Result

The averaged terminal cover/common scheduler primitive is now split as follows.

On the no-`Jump_avg` branch, the cover/scheduler handoff is no longer the live
obstruction. The installed TGC notes supply the positive-scale terminal cover,
finite overlap, scheduler-ready `L^1` majorants, and globalized averaged ACT
handoff to `DTC.A_avg`.

On the bad branch, the obstruction is exactly `Jump_avg`: persistent terminal
loss of positive SCF-good same-fluid scale, or terminal radius degeneration to
zero. That branch may not be erased by pointwise terminal readout. For the same
CM-test-admitted averaged terminal tail, retained `Pack_Q` and `Part_{N,Q}` plus
`AveragedFieldFaceAdmission.A` consume a positive Field scale only with the
same-tail modulus:

```math
Jump_{avg}(T):=\neg Field_{avg}(T)
\quad+\quad SCFBaseLocalModulus_N(T,r)
\Longrightarrow
\neg Field_{N,r,Q}\text{ at that }r.
```

## Checked Result

The sharp missing theorem was not another generic finite-cover theorem. It was a
branch-native `Jump_avg` discharge/consumption theorem.

The most direct failed attempt is recorded in
`mcp-jump_avg-separated-positive-defect-charge-lower-bound-obstruction-jump_avg-to-separated-positive-defect-charge-lower-bound-dcd5b58afe.md`.
That attempt explains why the stronger no-escape route did not close:
`Jump_avg` classifies loss of positive SCF-good averaged coherence, but the repo
has not proved that this forces a nonzero terminal `h/F` survivor measure with
separated positive scale-window mass.

The checked CM primitive uses the smaller conditional face-landing theorem instead:

```math
AveragedFieldFaceAdmission.A:
\qquad
Field_{N,r,Q}+SCFBaseLocalModulus_N(T,r)\Longrightarrow Field_{avg}(T)
```

on the same admitted averaged tail. Its contrapositive consumes `Jump_avg` as
the first remaining CM face failure under retained `Pack_Q` and `Part_{N,Q}`
only after the modulus is part of the Field row or has been separately proved.
The positive all-branches cover theorem from `OriginalSmoothData` still fails as
a standalone cover theorem; the CM branch split is now conditional at the exact
modulus input.

## CM Face Effect

The averaged cover problem now has a clean face law:

1. no `Jump_avg` gives the scheduled averaged cover and may continue to
   `DTC.A_avg`;
2. cover degeneration is `Jump_avg`;
3. on a CM-test-admitted averaged terminal tail with retained `Pack_Q` and
   `Part_{N,Q}`, `Jump_avg` lands as
   `forall r>0 not Field_{N,r,Q}` only after each retained positive Field scale
   supplies `SCFBaseLocalModulus_N(T,r)`.

That proved face supports:

```math
Exit(Q):=\neg Member(Q).
```

## Boundary

Do not spend readout objects upstream. `READ.COVER`, `DTC.Read`, `Field.Read`,
`READ.END`, and `End_NS` remain downstream of `End_NS_avg`. The unresolved
`h/F` lower/nontriviality theorem may still be useful as a stronger source or
no-escape theorem, but the CM face primitive for this averaged branch is exactly
one of the following: the same-tail `SCF_base` modulus, or a theorem proving that
`Field_{N,r,Q}` supplies that same-tail modulus.
