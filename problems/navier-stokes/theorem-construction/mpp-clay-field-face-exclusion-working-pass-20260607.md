---
ns_viewer:
  theorem_id: clay-field-face-exclusion-working-pass-20260607
  status: failed-proof-reduced-to-missing-lemma
  proof_role: clay_field_face_exclusion_attempt
  target_blocker: ClayFieldFaceExclusion.A
  logical_landing_node: cm_field_face_attempts
  cm_face_landing: Field
  edge_effect: "Tests whether retained Pack+Part excludes the all-scales Field failure for a finite Clay terminal obstruction; result: not proved from installed inputs."
  upstream_origin: "June 7 retained-Pack/terminal-Part Field-face working pass."
  downstream_consequence: "Route the missing Field realization lemma to the Field/Jump row rather than leaving a generic Clay bridge blocker."
  missing_lemma: ClayFieldFailureRealization.A
---

# MPP Clay Field-Face Exclusion Working Pass

Date: 2026-06-07

## Status

Failed proof attempt with exact reduction.

This note does not install `ClayFieldFaceExclusion.A`.  The installed sources
prove that a finite same-solution terminal witness with retained Pack and Part
has no positive Field scale unless the same solution continues. They do not
prove that the all-scales Field failure is impossible as a Clay terminal
obstruction.

The smallest missing lemma for the retained-terminal-Part route is
`ClayFieldFailureRealization.A`, stated below.

## Theorem Target

```text
ClayFieldFaceExclusion.A
```

Let `W_*` be a finite Clay breakdown from smooth original data, and let `Q` be
the canonical same-solution terminal obstruction extracted from `W_*`.  At the
continuation depth `N_s`, assume the earlier CM services are retained:

```math
Pack_Q
\wedge
Part^{term}_{N_s,Q}.
```

The target is to rule out

```math
\forall r>0\,\neg Field_{N_s,r,Q}
```

while `Q` remains a valid same-solution Clay terminal obstruction.

The distinction between `Part^{lic}` and `Part^{term}` is load-bearing.  The
installed Field-to-Part collapse permits `Part^{lic}` as a proof-order license;
the desired contradiction needs terminal Part as an endpoint truth.

## Installed Inputs Checked

### Canonical terminal entry

`ClayBreakdownCanonicalTerminalObstruction.A` supplies:

```math
ClayAdmissibleFiniteBreakdown(W_*)
\Longrightarrow
SameSolutionTerminalObstruction(W_*).
```

After legal losses, non-selected branches, readout artifacts, and paid finite
ledger terms are stripped, the object enters the Pack-first terminal CM packet:

```text
Pack_Q,
Part_{N_s,Q},
Field_{N_s,r,Q}.
```

It also records the consequence:

```math
\neg Pack_Q
\vee
\neg Part_{N_s,Q}
\vee
\forall r>0\,\neg Field_{N_s,r,Q}.
```

This is a classification theorem. It does not exclude the Field face.

### Terminal CM completeness

`ClayTerminalCMCompleteness.A` gives the continuation packet readout:

```math
Pack_Q\wedge Part_{N_s,Q}\wedge Field_{N_s,r,Q}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad s>5/2.
```

Then classical local well-posedness continues the same solution past `T_*`.

For a finite terminal witness this proves:

```math
Pack_Q\wedge Part_{N_s,Q}\wedge ClayWitness_{CM}(W_*)
\Longrightarrow
\forall r>0\,\neg Field_{N_s,r,Q}.
```

This is the opposite direction from `ClayFieldFaceExclusion.A`.

### Direct Clay bridge status

`mpp-clay-counterexample-exclusion-bridge-direct-work-20260601.md` reduces the
unconditional Clay bridge to an original-data face-exclusion input:

```text
OriginalSmoothData_T3
=> no Pack/Part/Field first face failure on Q_atlas.
```

The note explicitly says the current inputs prove the bridge only conditional on
that face-exclusion theorem.

### Endpoint readout compatibility

`Field.Read` proves:

```math
Field_{\mathrm{avg}}
+ READ.COVER
+ ATD_m^\varepsilon
\Longrightarrow
Field_{N,r_F,Q}
```

for some `r_F>0`.

This is usable only after a positive lower readout cover has been supplied.  It
does not prove `READ.COVER`, `GoodScaleNonCollapse.A`, or a positive Field scale
from Pack and Part.

### Exact witness direction

`CMW.A` proves the one-way certificate:

```math
\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work}).
```

The live edge records the direction correction: arbitrary failure of a CM row is
not by itself the theorem-grade converse to membership.  In the Clay terminal
chain, a face failure supports `Exit(Q):=not Member(Q)` only after terminal
entry and finite-failure exhaustion.

### Live edge

The live edge records three relevant boundaries.

1. `Field` is reserved for licensed coherence/readout residue after Pack and
   Part have separately survived.
2. `GoodScaleNonCollapse.A` is the clean replacement interface for producing
   `READ.COVER`:

   ```text
   GoodScaleNonCollapse.A => UniformReadCover.A => READ.COVER.
   ```

3. `RetainedFieldToPartCollapse.A` is installed only for a realized terminal
   same-fluid `Jump`, not for absent support or quarantined readout.

## Proof Attempt

### 1. Local `H^s` continuation

Assume `Pack_Q`, `Part_{N_s,Q}`, and `Field_{N_s,r,Q}` for some positive
`r`.  The global material atlas / terminal completeness readout gives a bounded
`H^s`, `s>5/2`, norm up to `T_*`.  The `H^s`, `s>5/2`, relaunch
criterion gives a lifespan
`\tau=\tau(s,\sup_{t<T_*}\|u(t)\|_{H^s})>0` from any preterminal time;
uniqueness on overlaps extends the same classical solution past `T_*`.

This proves that the full Pack+Part+Field packet is incompatible with a finite
terminal breakdown.  It does not prove that retained Pack+Part force Field.
The argument therefore produces:

```math
finite\ terminal\ witness
+ Pack_Q
+ Part_{N_s,Q}
\Longrightarrow
\forall r>0\,\neg Field_{N_s,r,Q},
```

not the desired exclusion of the Field branch.

### 2. Positive-scale readout

The readout route can restore Field from a positive lower cover:

```math
READ.COVER + ATD_m^\varepsilon + Field_{\mathrm{avg}}
\Longrightarrow
Field_{N,r_F,Q}.
```

The missing step is the production of that positive lower cover on the same
terminal tail.  Pack supplies the retained carrier and readout-compatible
material atlas.  Part supplies the pressure-viscosity tower participation.
Neither installed predicate supplies a uniform positive one-field coherence
scale.

Thus the positive-scale route reduces to:

```text
ClayRetainedPackPartGoodScaleNonCollapse.A:
Original smooth same-solution terminal atlas
+ Pack_Q
+ Part^{term}_{N_s,Q}
=> exists r_F>0 with Field_{N_s,r_F,Q}.
```

This is the stronger form of the missing face-exclusion theorem.

### 3. Zero-radius ontology

Pure terminal scale collapse is not a Field proof.  If the object has no
positive carrier scale, or only a zero-radius terminal residue remains, the
live edge and carrier-admissibility notes place that failure first in `not
Pack_Q`.

With `Pack_Q` retained, the zero-radius Pack subcase is removed.  The remaining
Field failure is not radius-zero carrier loss; it is failure of positive-scale
one-field coherence on an already retained carrier and participation tower.
The zero-radius test therefore eliminates only a Pack-facing subcase.

### 4. Dyadic survivor versus fixed Field

On every strict preterminal classical interval there are local positive scales
where the field is smooth.  A dyadic terminal selection can therefore produce
surviving packets at scales `r_j>0`.

This does not give `Field_{N_s,r,Q}` for any fixed terminal scale.  The scales
may shrink to zero, the finite-difference constants may diverge, or the selected
packets may fail to lie on one same terminal witness record.  Passing from
dyadic survivors to one retained Field predicate needs a compactness/noncollapse
lemma:

```text
inf_j r_j > 0
```

on a same-fluid terminal subtail, with uniform finite overlap and the same
packet ledger.  That is again the `GoodScaleNonCollapse / UniformReadCover`
interface, not an installed consequence of Pack+Part.

### 5. Endpoint compatibility

`Field.Read`, `DTC.Read`, `READ.END`, and `FULL.END` are downstream
compatibility theorems.  They say that once the averaged endpoint package and a
positive readout cover exist, the old pointwise endpoint matrix is recovered.

Using them here would spend endpoint readout to manufacture the positive scale
needed to enter the endpoint readout.  The live edge forbids that upstream use.
Endpoint compatibility therefore cannot prove `ClayFieldFaceExclusion.A`.

### 6. Field-to-Part collapse

The installed collapse theorem says:

```math
Pack_Q
\wedge
\mathcal J_Q
\wedge
\forall r>0\,\neg Field_{N,Q,r}
\Longrightarrow
\neg Part^{term}_{N,Q},
```

where `\mathcal J_Q` is a realized same-fluid terminal `Jump`.

This gives a narrow route to the requested contradiction.  If all-scales Field
failure for a canonical Clay terminal obstruction is known to be a realized
same-fluid `Jump`, then terminal Part cannot also hold.

The installed sources do not prove that realization step.  They explicitly
warn that the collapse applies to a realized terminal `Jump`, not to a missing
support theorem or quarantined readout packet.

## Result

`ClayFieldFaceExclusion.A` is not proved by the current installed inputs.

The current proof state is:

```math
finite\ Clay\ terminal\ witness
+ Pack_Q
+ Part_{N_s,Q}
\Longrightarrow
\forall r>0\,\neg Field_{N_s,r,Q}
```

by continuation readout; and separately:

```math
realized\ Jump
+ Pack_Q
+ \forall r>0\,\neg Field_{N_s,r,Q}
\Longrightarrow
\neg Part^{term}_{N_s,Q}
```

by terminal Field-to-Part collapse.

The gap is exactly between those two statements.

## Smallest Exact Missing Lemma

```text
ClayFieldFailureRealization.A
```

Statement:

Let `Q` be the canonical same-solution terminal obstruction extracted from a
finite Clay breakdown after legal boundary/cutoff/collar losses, non-selected
branches, readout artifacts, and paid finite ledger terms are removed.  Assume

```math
Pack_Q
\wedge
Part^{term}_{N_s,Q}
\wedge
\forall r>0\,\neg Field_{N_s,r,Q}.
```

Then the all-scales Field failure is a realized same-fluid terminal `Jump`
`\mathcal J_Q` on the retained carrier, rather than mere absence of an upstream
support theorem, missing downstream readout cover, or quarantined endpoint
packet.

Consequence:

```math
ClayFieldFailureRealization.A
+ TerminalFieldJumpPartCollapse.A
\Longrightarrow
\neg Part^{term}_{N_s,Q},
```

contradicting the retained terminal Part hypothesis.  This would prove the
stated retained-Pack/terminal-Part form of `ClayFieldFaceExclusion.A`.

## Stronger Alternate Missing Lemma

The direct positive-scale version is:

```text
ClayRetainedPackPartGoodScaleNonCollapse.A
```

Statement:

```math
OriginalSmoothData
+ SameSolutionTerminalObstruction(Q)
+ Pack_Q
+ Part^{term}_{N_s,Q}
\Longrightarrow
\exists r_F>0:\ Field_{N_s,r_F,Q}.
```

This is the `GoodScaleNonCollapse.A => UniformReadCover.A => READ.COVER =>
Field.Read` route specialized to the canonical Clay terminal atlas.  It is
stronger than the realization lemma because it directly produces the Field
service and then closes only after the periodic `H^s`, `s>5/2`, relaunch theorem
supplies a lifespan controlled by the uniform `H^s` readout and uniqueness on
overlaps.

## Proof Judgment

The Field-face branch is not excluded here.  The working pass proves that local
`H^s` continuation, endpoint readout, zero-radius classification, and dyadic
survivor selection do not close the branch without a positive-scale
noncollapse or a realized-Jump identification theorem.  The smallest next
missing lemma is `ClayFieldFailureRealization.A`; the stronger direct closure
is `ClayRetainedPackPartGoodScaleNonCollapse.A`.
