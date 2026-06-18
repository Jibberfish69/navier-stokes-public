---
ns_viewer:
  theorem_id: averaged-jumpavg-field-face-reduction-20260607
  status: conditional-on-scfbase-local-modulus
  proof_role: cm_face_landing
  target_blocker: averaged-jumpavg-branch-native-discharge
  logical_landing_node: cm_field_face_attempts
  edge_effect: "Records the averaged Jump_avg reduction after exactness repair: the Field-face landing is conditional on the same-tail SCF_base local modulus needed by AveragedFieldFaceAdmission.A."
  cm_face_landing: Field
  upstream_origin:
    - problems/navier-stokes/d8-completion-route-map.yaml
    - problems/navier-stokes/live-theorem-edge.yaml
    - problems/navier-stokes/theorem-construction/ns-completion-executor-proof-blocker-20260607-iteration-2.md
  downstream_consequence: "Jump_avg on the same admitted averaged tail rules out positive CM Field scales that also carry SCFBaseLocalModulus_N(T,r). The unconditional forall r > 0, not Field_{N,r,Q} landing still requires a theorem proving Field_{N,r,Q} supplies that modulus, or a strengthened Field face."
---

# Averaged Jump_avg Field-Face Reduction

Date: 2026-06-07.

## Status

This reduction is no longer discharged by depth alone.  It is conditional on the
same-tail `SCF_base` local modulus now required by
`mpp-averaged-field-face-admission-20260607.md`.

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
4. Any positive `Field_{N,r,Q}` scale being tested either carries
   `SCFBaseLocalModulus_N(T,r)`, or a separate theorem proves that
   `Field_{N,r,Q}` supplies that modulus on the retained terminal subtail.

Conditional conclusion:

```text
Jump_avg(T) + CM-test admission + retained Pack_Q + retained Part_{N,Q}
  + SCFBaseLocalModulus_N(T,r)
  => not Field_{N,r,Q} at that r.
```

The former unconditional conclusion

```text
Jump_avg(T) + CM-test admission + retained Pack_Q + retained Part_{N,Q}
  => forall r > 0, not Field_{N,r,Q}
  => Exit(Q):=not Member(Q).
```

is available only after the modulus is part of the Field face or has been proved
from the Field hypotheses.

The intended landing face is `Field`, not `Pack` and not `Part`.

## Mechanism Tried

The attempt uses a face-complement argument rather than a positive endpoint theorem.

The averaged notes define `Field_avg(T)` as the terminal positive-scale same-fluid SCF-good cover condition, and define `Jump_avg(T)` as its complement: no terminal subtail carries a positive lower bound for `r_good`. Therefore `Jump_avg(T)` says the averaged terminal object has no surviving positive `SCF_base`-good scale in the averaged endpoint row.

The repaired admission theorem identifies the exact extra input needed to compare the CM Field face with that averaged endpoint row:

```text
Field_{N,r,Q} for some r > 0
  + SCFBaseLocalModulus_N(T,r)
  => Field_avg(T)
  => not Jump_avg(T),
```

so `Jump_avg(T)` rules out a positive `Field_{N,r,Q}` scale that also carries the same-tail modulus. With Pack and Part retained, this becomes the first available CM face failure only when that modulus is part of the retained Field row or has been separately derived from it.

## Installed Landing

The branch lands in the Field face conditionally:

```text
CM-test-admitted averaged terminal tail
  + retained Pack_Q
  + retained Part_{N,Q}
  + Jump_avg(T)
  + AveragedFieldFaceAdmission.A
  + SCFBaseLocalModulus_N(T,r)
  => not Field_{N,r,Q} at that r.
```

Here `AveragedFieldFaceAdmission.A` is the conditional admission/translation theorem:

```text
AveragedFieldFaceAdmission.A:
  On a CM-test-admitted averaged terminal tail with the same Q_atlas,
  Field_{N,r,Q} for some r > 0
    + SCFBaseLocalModulus_N(T,r)
    implies Field_avg(T).
```

The one-way implication is enough. A full equivalence between `Field_avg(T)` and the averaged instance of `Field_{N,r,Q}` would be stronger than needed.

## What This Closes

The current source surfaces now install `AveragedFieldFaceAdmission.A` only with the same-tail `SCF_base` modulus.

The averaged route also quarantines pointwise readout surfaces until after the averaged endpoint. Therefore this note cannot import `READ.COVER`, `DTC.Read`, `Field.Read`, `READ.END`, or pointwise terminal readout upstream to identify `Field_avg` with `Field_{N,r,Q}`.

The h/F survivor-measure forcing route remains unproved: the existing failed attempts do not show that persistent `Jump_avg` forces nonzero terminal h/F survivor measure or separated positive scale-window mass. That stronger no-escape theorem is not required for this CM face landing after the same-tail `SCF_base` modulus is supplied.

## Mathematical Delta

The averaged CM face landing is narrower than "prove branch-native h/F defect charge" for CM exit purposes.

For the CM contrapositive route, it is enough to prove the one-way field-face admission theorem with its exact modulus hypothesis:

```text
Field_{N,r,Q} + SCFBaseLocalModulus_N(T,r) => Field_avg(T)
```

for the admitted averaged terminal object. Then `Jump_avg := not Field_avg` consumes any positive Field branch carrying that modulus. The all-radii Field-face landing follows only when every retained positive Field branch supplies the modulus.

This separates two different burdens:

1. Strong positive no-escape burden:
   `Jump_avg` forces nonzero h/F survivor measure with separated positive scale mass.
2. Minimal CM face burden:
   `Jump_avg` is admissible as failure of the `Field_{N,r,Q}` face through `Field_avg`, conditional on the same-tail `SCF_base` local modulus.

The second burden is smaller than the h/F route, but it is not depth-only; it is installed by `AveragedFieldFaceAdmission.A` with the modulus hypothesis.

## Boundary

The installed next step was:

```text
If a CM-test-admitted averaged terminal tail carries Field_{N,r,Q}
for some r > 0 and SCFBaseLocalModulus_N(T,r), then the averaged terminal
route has Field_avg(T).
```

That proof is internal to the averaged route and does not use downstream readout.
It unfolds the definitions of `Field_{N,r,Q}`, `r_good`, same-fluid SCF-good
cover, and terminal subtail selection, then uses the same-tail modulus to choose
a uniform positive `SCF_base`-good radius after passing to a terminal averaged
subtail.

If a future route weakens the CM depth below the finite depth controlling the
`SCF_base` components, this landing must be rechecked at that weaker depth. If a
future route omits the same-tail modulus, this note does not give an
unconditional Field-face landing.
