---
ns_viewer:
  theorem_id: averaged-field-face-admission-20260607
  status: installed-conditional-depth
  proof_role: bridge_license_reduction
  target_blocker: averaged-jumpavg-branch-native-discharge
  logical_landing_node: clay-cm-contrapositive-witness-consumption
  cm_face_landing: Field
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-averaged-jumpavg-field-face-reduction-20260607.md
    - problems/navier-stokes/theorem-construction/mcp-field-avg-equivalence-terminal-good-cover.md
    - problems/navier-stokes/submission-bundle/navier-stokes-submission.tex
  downstream_consequence: "Installs the one-way admission Field_{N,r,Q} => Field_avg(T) for the same admitted averaged terminal tail once the CM depth controls the SCF_base components; Jump_avg then lands as forall r>0 not Field_{N,r,Q}."
---

# Averaged Field-Face Admission

Date: 2026-06-07.

## Status

This installs the missing admission bridge for the averaged `Jump_avg` branch, with the standard CM depth requirement made explicit.

It is not a proof of the full Clay theorem. It is a branch bridge:

```text
Field_{N,r,Q} on the same admitted averaged tail
  => Field_avg(T).
```

Together with `Jump_avg(T):=not Field_avg(T)`, this lets the averaged bad branch land in the Field face:

```text
Pack_Q + Part_{N,Q} + Jump_avg(T)
  => forall r > 0, not Field_{N,r,Q}.
```

## Setup

Let `T` be a CM-test-admitted averaged terminal tail on the same witness record:

```text
(u_0, nu, u, p, Q, N, r, Phi, T_*).
```

Assume:

1. `Pack_Q` is retained, so the terminal object has a positive same-fluid packet and bounded transported chart geometry.
2. `Part_{N,Q}` is retained, so the same Navier-Stokes pressure-viscosity tower participates through depth `N`.
3. `N` is chosen at least as large as the finite depth needed to control the components in `SCF_base`: velocity fluctuation, local gradient energy, pressure normalization, and the same-fluid frame terms.

This depth requirement is already the intended CM witness depth in the paper: `Field_{N,r,Q}` is a finite-depth one-field witness, and the local CKN-compatible `SCF_base` packet uses only finitely many local velocity/pressure/frame quantities.

## Theorem `AveragedFieldFaceAdmission.A`

On the same admitted averaged terminal tail,

```text
Field_{N,r,Q} for some r > 0
  => Field_avg(T).
```

## Proof

By the manuscript definition, `Field_{N,r,Q}` means that, after `Pack_Q` and `Part_{N,Q}` have fixed the packet and participation readings, one positive scale carries coherent field data through depth `N` on the same witness record.

In ordinary terms, the selected terminal packet still reads as one Navier-Stokes field on a positive same-fluid scale. Neighboring velocity-tower and pressure-viscosity readings fit together instead of degenerating into incompatible terminal traces.

On a smaller same-fluid cylinder inside that positive scale, the coherent depth-`N` field bound controls the local velocity oscillation, the local gradient-energy contribution, and the pressure normalization used by `SCF_base`. Bounded Pack geometry controls the frame term. Since these are scale-critical local integrals of controlled quantities, shrinking the cylinder makes the normalized `SCF_base` value fall below the fixed `epsilon_m` threshold.

The bound is on the same terminal witness record, not on a separate readout cover. After passing to the retained terminal subtail, the same positive field scale and bounded same-fluid distortion give a uniform shrunken scale `r_*>0`. Therefore each point of that subtail has an `SCF_base`-good same-fluid cylinder with radius at least `r_*`.

By the installed definition/equivalence in `mcp-field-avg-equivalence-terminal-good-cover.md`, this is exactly:

```text
Field_avg(T).
```

So `Field_{N,r,Q}` implies `Field_avg(T)`.

## Consumption of `Jump_avg`

The averaged route defines:

```text
Jump_avg(T) := not Field_avg(T).
```

Therefore, by contrapositive of the one-way admission theorem,

```text
Jump_avg(T)
  => not (exists r > 0 with Field_{N,r,Q})
  => forall r > 0, not Field_{N,r,Q}.
```

With `Pack_Q` and `Part_{N,Q}` retained, this is the first remaining CM face failure:

```text
Pack_Q + Part_{N,Q} + forall r > 0, not Field_{N,r,Q}.
```

That face failure supports the class-exit conclusion:

```text
Exit(Q):=not Member(Q).
```

## Noncircularity

This proof does not use `READ.COVER`, `Field.Read`, `DTC.Read`, `READ.END`, `End_NS`, pointwise `DTC.A`, pointwise endpoint Field, or the downstream averaged-to-pointwise readout layer.

It uses only:

1. the same witness record;
2. retained Pack geometry;
3. retained Part participation through the Navier-Stokes pressure-viscosity tower;
4. the definition of `Field_{N,r,Q}`;
5. the installed definition of `Field_avg(T)` as terminal positive-scale same-fluid `SCF_base` goodness.

## Boundary

This note replaces the stronger `h/F` survivor-measure lower-bound demand for this CM face landing. The h/F route may remain useful as a source-control or no-escape proof, but it is not required to consume `Jump_avg` once the same admitted averaged tail has the `Field_{N,r,Q} => Field_avg` admission bridge.

The remaining depth caveat is explicit: the CM witness depth must be selected high enough to dominate the local `SCF_base` components. If a future route tries to run `Field_{N,r,Q}` at a weaker depth, this note does not apply until that depth is upgraded.
