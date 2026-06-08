---
ns_viewer:
  theorem_id: averaged-jumpavg-field-face-reduction-20260607
  status: discharged-by-averaged-field-face-admission
  proof_role: cm_face_landing
  target_blocker: averaged-jumpavg-branch-native-discharge
  logical_landing_node: cm_field_face_attempts
  edge_effect: "Records the averaged Jump_avg reduction and its discharge by AveragedFieldFaceAdmission.A, without importing pointwise readout upstream."
  cm_face_landing: Field
  upstream_origin:
    - problems/navier-stokes/d8-completion-route-map.yaml
    - problems/navier-stokes/live-theorem-edge.yaml
    - problems/navier-stokes/theorem-construction/ns-completion-executor-proof-blocker-20260607-iteration-2.md
  downstream_consequence: "With AveragedFieldFaceAdmission.A installed, Jump_avg on the same admitted averaged tail lands as forall r > 0, not Field_{N,r,Q} under retained Pack_Q and Part_{N,Q}; the h/F survivor-measure route remains unnecessary for this CM face landing."
---

# Averaged Jump_avg Field-Face Reduction

Date: 2026-06-07.

## Status

This reduction is now discharged for the current CM-test-conditioned averaged
branch by `mpp-averaged-field-face-admission-20260607.md`.

It is not a proof of the full Clay theorem by itself. It is the precise
Field-face landing for the retained Pack/Part averaged `Jump_avg` branch.

Target blocker: `averaged-jumpavg-branch-native-discharge`.

CM program target: prove `Exit(Q):=not Member(Q)` by landing the first failed witness face among `Pack_Q`, `Part_{N,Q}`, and `Field_{N,r,Q}`. This note attacks the retained averaged `Jump_avg` branch only after the averaged object is admitted to the same CM test and the Pack/Part faces have not already failed.

## Exact Statement Tried

Let `T` be a terminal averaged tail in the averaged route, with fixed finite route parameter set and same-fluid atlas data.

Assume:

1. `T` is admitted to the Clay/CM witness test for the same `Q_atlas`.
2. `Pack_Q` and `Part_{N,Q}` are retained on that admitted object.
3. `Jump_avg(T)` holds in the branch-native averaged sense:
   every terminal subtail has `inf r_good = 0`.

Tried conclusion:

```text
Jump_avg(T) + CM-test admission + retained Pack_Q + retained Part_{N,Q}
  => forall r > 0, not Field_{N,r,Q}
  => Exit(Q):=not Member(Q).
```

The intended landing face is `Field`, not `Pack` and not `Part`.

## Mechanism Tried

The attempt uses a face-complement argument rather than a positive endpoint theorem.

The averaged notes define `Field_avg(T)` as the terminal positive-scale same-fluid SCF-good cover condition, and define `Jump_avg(T)` as its complement: no terminal subtail carries a positive lower bound for `r_good`. Therefore `Jump_avg(T)` already says the averaged terminal object has no surviving positive same-fluid coherence scale in the averaged endpoint row.

If the global CM face `Field_{N,r,Q}` for this admitted averaged object is exactly, or at least implies, the same terminal positive-scale same-fluid cover encoded by `Field_avg(T)`, then the proof is immediate:

```text
Field_{N,r,Q} for some r > 0
  => Field_avg(T)
  => not Jump_avg(T),
```

so `Jump_avg(T)` gives `forall r > 0, not Field_{N,r,Q}`. With Pack and Part retained, this is the first available CM face failure and supports `Exit(Q):=not Member(Q)`.

## Installed Landing

The branch lands in the Field face:

```text
CM-test-admitted averaged terminal tail
  + retained Pack_Q
  + retained Part_{N,Q}
  + Jump_avg(T)
  + AveragedFieldFaceAdmission.A
  => forall r > 0, not Field_{N,r,Q}.
```

Here `AveragedFieldFaceAdmission.A` is the installed admission/translation theorem:

```text
AveragedFieldFaceAdmission.A:
  On a CM-test-admitted averaged terminal tail with the same Q_atlas,
  Field_{N,r,Q} for some r > 0 implies Field_avg(T).
```

The one-way implication is enough. A full equivalence between `Field_avg(T)` and the averaged instance of `Field_{N,r,Q}` would be stronger than needed.

## What This Closes

The current source surfaces install `AveragedFieldFaceAdmission.A`.

The averaged route also quarantines pointwise readout surfaces until after the averaged endpoint. Therefore this note cannot import `READ.COVER`, `DTC.Read`, `Field.Read`, `READ.END`, or pointwise terminal readout upstream to identify `Field_avg` with `Field_{N,r,Q}`.

The h/F survivor-measure forcing route remains unproved: the existing failed attempts do not show that persistent `Jump_avg` forces nonzero terminal h/F survivor measure or separated positive scale-window mass. That stronger no-escape theorem is not required for this CM face landing.

## Mathematical Delta

The averaged CM face landing is narrower than "prove branch-native h/F defect charge" for CM exit purposes.

For the CM contrapositive route, it is enough to prove the one-way field-face admission theorem:

```text
Field_{N,r,Q} => Field_avg(T)
```

for the admitted averaged terminal object. Then `Jump_avg := not Field_avg` consumes the branch as `forall r > 0, not Field_{N,r,Q}` and lands in the Field face.

This separates two different burdens:

1. Strong positive no-escape burden:
   `Jump_avg` forces nonzero h/F survivor measure with separated positive scale mass.
2. Minimal CM face burden:
   `Jump_avg` is admissible as failure of the `Field_{N,r,Q}` face through `Field_avg`.

The second burden is smaller and is now installed by `AveragedFieldFaceAdmission.A`.

## Boundary

The installed next step was:

```text
If a CM-test-admitted averaged terminal tail carries Field_{N,r,Q}
for some r > 0, then the averaged terminal route has Field_avg(T).
```

That proof is internal to the averaged route and does not use downstream readout.
It unfolds the definitions of `Field_{N,r,Q}`, `r_good`, same-fluid SCF-good
cover, and terminal subtail selection, then shows that any positive CM field
scale supplies a positive terminal lower bound for `r_good` after passing to a
terminal averaged subtail.

If a future route weakens the CM depth below the finite depth controlling the
`SCF_base` components, this landing must be rechecked at that weaker depth. For
the present CM witness depth, the `Jump_avg` branch has a proved Field-face
landing.
