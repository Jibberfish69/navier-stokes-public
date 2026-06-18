---
ns_viewer:
  theorem_id: averaged-field-face-admission-20260607
  status: conditional-on-scfbase-local-modulus
  proof_role: bridge_license_reduction
  target_blocker: averaged-jumpavg-branch-native-discharge
  logical_landing_node: cm_field_direct_rows
  edge_effect: "Replaces the loose Field-face admission by the exact conditional bridge: Field_{N,r,Q} plus a same-tail SCF_base local modulus on the admitted averaged terminal tail implies Field_avg(T)."
  cm_face_landing: Field
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-averaged-jumpavg-field-face-reduction-20260607.md
    - problems/navier-stokes/theorem-construction/mcp-field-avg-equivalence-terminal-good-cover.md
    - problems/navier-stokes/submission-bundle/navier-stokes-submission.tex
  downstream_consequence: "The one-way admission is Field_{N,r,Q} + SCFBaseLocalModulus_N(T,r) => Field_avg(T). Jump_avg only rules out positive CM Field scales that also carry this same-tail modulus, unless a separate theorem proves Field_{N,r,Q} supplies the modulus."
---

# Averaged Field-Face Admission

Date: 2026-06-07.

## Status

This replaces the old admission bridge for the averaged `Jump_avg` branch.  The depth requirement alone is not enough; the bridge also needs a same-tail `SCF_base` small-scale modulus.

It is not a proof of the full Clay theorem. It is a branch bridge:

```text
Field_{N,r,Q} on the same admitted averaged tail
  + SCFBaseLocalModulus_N(T,r)
  => Field_avg(T).
```

Together with `Jump_avg(T):=not Field_avg(T)`, this rules out a positive CM Field scale only when that same scale also carries the modulus:

```text
Pack_Q + Part_{N,Q} + Jump_avg(T)
  + SCFBaseLocalModulus_N(T,r)
  => not Field_{N,r,Q} at that r.
```

The unconditional Field-face landing returns only after `Field_{N,r,Q}` is strengthened to include this modulus, or after a separate theorem proves that `Field_{N,r,Q}` supplies it on the retained terminal subtail.

## Setup

Let `T` be a CM-test-admitted averaged terminal tail on the same witness record:

```text
(u_0, nu, u, p, Q, N, r, Phi, T_*).
```

Assume:

1. `Pack_Q` is retained, so the terminal object has a positive same-fluid packet and bounded transported chart geometry.
2. `Part_{N,Q}` is retained, so the same Navier-Stokes pressure-viscosity tower participates through depth `N`.
3. `N` is chosen at least as large as the finite depth needed to control the components in `SCF_base`: velocity fluctuation, local gradient energy, pressure normalization, and the same-fluid frame terms.
4. `SCFBaseLocalModulus_N(T,r)` holds on a retained terminal subtail `T'`: with
   ```text
   omega_SCF(rho)
     := sup_{z in T'} SCF_base(Q_rho^Phi(z)),
   ```
   for same-fluid cylinders `Q_rho^Phi(z)` inside the positive `Field_{N,r,Q}` scale, one has
   ```text
   lim_{rho downarrow 0} omega_SCF(rho)=0.
   ```

The first three assumptions say the local components are readable on the same witness record.  The fourth assumption is the exact uniform small-scale statement that turns those readable components into an `SCF_base`-good terminal cover.  It is stronger than the bare statement that the components are controlled.

## Theorem `AveragedFieldFaceAdmission.A`

On the same admitted averaged terminal tail,

```text
Field_{N,r,Q} for some r > 0
  + SCFBaseLocalModulus_N(T,r)
  => Field_avg(T).
```

## Proof

By the manuscript definition, `Field_{N,r,Q}` means that, after `Pack_Q` and `Part_{N,Q}` have fixed the packet and participation readings, one positive scale carries coherent field data through depth `N` on the same witness record.

In ordinary terms, the selected terminal packet still reads as one Navier-Stokes field on a positive same-fluid scale. Neighboring velocity-tower and pressure-viscosity readings fit together instead of degenerating into incompatible terminal traces.

The old proof step being spent here was the claim that controlled scale-critical local integrals automatically become small after shrinking the cylinder.  The exact replacement is the modulus in `SCFBaseLocalModulus_N(T,r)`.

The bound is on the same terminal witness record, not on a separate readout cover.  By the modulus, choose `r_* <= r` with

```text
omega_SCF(r_*) <= epsilon_m.
```

Since `omega_SCF` is the supremum over the retained terminal subtail `T'`, every `z in T'` has

```text
SCF_base(Q_{r_*}^Phi(z)) <= epsilon_m.
```

Thus each point of `T'` has an `SCF_base`-good same-fluid cylinder with radius `r_*`.

By the installed definition/equivalence in `mcp-field-avg-equivalence-terminal-good-cover.md`, this is exactly:

```text
Field_avg(T).
```

So `Field_{N,r,Q}` plus `SCFBaseLocalModulus_N(T,r)` implies `Field_avg(T)`.

## Consumption of `Jump_avg`

The averaged route defines:

```text
Jump_avg(T) := not Field_avg(T).
```

Therefore, by contrapositive of the one-way admission theorem, the branch cannot carry both a positive CM Field scale and the same-tail modulus:

```text
Jump_avg(T)
  => not (exists r > 0 with Field_{N,r,Q}
          and SCFBaseLocalModulus_N(T,r)).
```

With `Pack_Q` and `Part_{N,Q}` retained, the old Field-face landing follows only under the additional bridge:

```text
Field_{N,r,Q} => SCFBaseLocalModulus_N(T,r)
```

or under a strengthened definition of the Field face that includes the modulus.  Without one of those inputs, the remaining proof-force burden is exactly the missing `SCF_base` local modulus, not an already discharged Field face.  With that input supplied, the first remaining CM face failure is:

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
5. the same-tail `SCF_base` local modulus;
6. the installed definition of `Field_avg(T)` as terminal positive-scale same-fluid `SCF_base` goodness.

## Boundary

This note replaces the stronger `h/F` survivor-measure lower-bound demand for this CM face landing only after the same-tail `SCF_base` modulus is supplied. The h/F route may remain useful as a source-control or no-escape proof, but it is not required to consume `Jump_avg` once the same admitted averaged tail has the conditional `Field_{N,r,Q} + SCFBaseLocalModulus_N(T,r) => Field_avg` admission bridge.

The remaining caveat is sharper than depth alone: the CM witness depth must be selected high enough to read the local `SCF_base` components, and the same-tail small-scale modulus must be supplied or proved from `Field_{N,r,Q}`. If a future route tries to spend this admission without that modulus, the note does not apply.
