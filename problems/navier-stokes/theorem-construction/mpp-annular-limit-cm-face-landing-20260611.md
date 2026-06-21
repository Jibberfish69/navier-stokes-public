---
ns_viewer:
  theorem_id: annular-limit-cm-face-landing-20260611
  status: corrected-conditional-silver-annular-readout-complete-part-field-landing
  proof_role: silver_cm_counterpart_for_surviving_annular_residual_obstruction
  logical_landing_node: terminal_cone_annular_limit_witness
  edge_effect: "Specializes the installed finite-witness CM tree to Thomas's annular-limit objection. A bare endpoint radius-zero Pack landing is not used. The surviving positive-radius annular residual witness is followed first. Once that witness is admitted as the same-solution terminal obstruction with same-solution positive-radius carrier and readout completeness, carrier and selection have already been paid, so Pack is no longer the CM argument for this annular boundary. The readout-complete admitted nonsmooth branch exits through Part or Field. The note keeps terminal annular selection, same-solution positive-radius carrier, and readout completeness explicit as the remaining referee boundary."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-annular-limit-witness-gap-goal-run-primer-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-residual-refill-ledger-and-spine-consolidation-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-any-finite-failure-witness-cm-exit-20260521.md
    - problems/navier-stokes/theorem-construction/mpp-clay-terminal-witness-invalidation-20260523.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-packet-capture-working-pass-20260526.md
  downstream_consequence: "The PDF may say the silver counterpart exists for the surviving annular obstruction: under CM-test admission with same-solution positive-radius carrier and readout completeness, the smooth branch is Member(Q) and the finite nonsmooth branch is exhausted by Part or Field. The PDF must still say this does not prove the gold scale-uniform supplier, and it must not call final CMI closure until annular selection/carrier/readout completeness and all criticism descendants are resolved."
---

# MPP AnnularLimitCMFaceLanding.A

Date: 2026-06-11

Status: corrected conditional silver CM Part/Field landing for the surviving annular
residual obstruction. This is not the gold forward-positive theorem, not a proof
of the general annular readout bridge, and not a full CMI-finality claim. After
readout-complete annular admission, Pack is no longer the CM argument; the
admitted nonsmooth branch is Part or Field.

## 1. Role

The annular-limit objection is:

```text
the singularity is witnessed by the surrounding positive-radius fields, not by
the bare endpoint point.
```

So the silver route may not argue:

```text
bare r_* = 0 gives no Pack-only terminal-radius closure.
```

It has to follow the annular witness first.

Let

```math
0<\alpha<\beta,\quad \theta>0,\qquad
A_m
=
\{(x,t):\alpha r_m<|x-x_*|<\beta r_m,\ t_m-\theta r_m^2<t<t_m\},
\qquad
r_m\downarrow0,\quad t_m\uparrow T_*.
```

On every `A_m`, `(u,p)` is still the original preterminal Navier-Stokes
solution. The live residual quantity is the positive same-fluid refill load

```math
D_m^{res},
```

after heat descendants, through-flow, legal losses, finite payments, and paid
dissipation have been removed.

## 2. Annular CM-Test Admission

Define an annular residual terminal witness `Q_ann` to be CM-test-admissible
when all of the following hold.

1. The annular family is selected from the same original smooth-data solution.
2. The terminal role is the actual finite-time obstruction left after the gold
   residual ledger, not a diagnostic subpacket.
3. Legal losses, readout-only artifacts, non-selected branches, heat
   descendants, and paid finite terms have already been removed.
4. The selected annular tail is readout-complete for the alleged obstruction:
   retaining the admitted carrier together with Part and Field on this same
   tail supplies the installed `H^s`, `s>5/2`, continuation readout.
5. The selected annular tail has a same-solution positive-radius carrier for
   the CM test. A no-carrier or no-selection outcome is a failure of annular
   admission, not the silver consumption of an admitted annular supplier.

These are the annular versions of the admission/carrier/readout premises isolated in
`mpp-terminal-packet-capture-working-pass-20260526.md`.

## 3. Theorem

Let `Q_ann` be a readout-complete CM-test-admissible surviving annular residual terminal witness
for a finite-time Navier-Stokes breakdown claim from the same smooth datum.
Fix `N_s` high enough for the installed `H^s`, `s>5/2`, continuation readout.

Admission already supplies the carrier/selection side for this annular test.
The branch split is conditional on that continuation-readout bridge:

```math
\boxed{
Q_{ann}\ \mathrm{readout\mbox{-}complete\ admitted}
\wedge Part_{N_s,Q_{ann}}
\wedge \exists r>0\,Field_{N_s,r,Q_{ann}}
\Longrightarrow
Member(Q_{ann};\mathcal O_{work}).
}
```

and, for a finite nonsmooth readout-complete admitted annular witness,

```math
\boxed{
Q_{ann}\ \mathrm{readout\mbox{-}complete\ admitted}
\wedge \mathrm{finite\ nonsmooth}
\Longrightarrow
\neg Part_{N_s,Q_{ann}}
\vee
\left(
Part_{N_s,Q_{ann}}
\wedge
\forall r>0\,\neg Field_{N_s,r,Q_{ann}}
\right).
}
```

The Pack face remains available only before admission: no selected
same-solution positive-radius carrier means the annular witness was not the
admitted object under this theorem.

## 4. Proof

The annular witness has entered the same-fluid CM terminal tree by the admission
premise. That premise has already paid the carrier/selection side for this
annular object. The live CM Part/Fields on the admitted tail are:

```math
Part_{N_s,Q_{ann}},\qquad
Field_{N_s,r,Q_{ann}}.
```

### Pre-admission carrier boundary

If the surrounding positive-radius fields do not supply a selected same-solution
carrier into the terminal test, the annular object has not been admitted. That
case returns to the pre-admission/no-carrier boundary. It is not the CM
argument for an admitted annular residual supplier.

### Part

On the admitted annular carrier, the same pressure-viscosity-incompressibility
participation tower must survive through depth `N_s`, including the `N_s+2`
velocity-depth debt and the corresponding pressure response.

If the residual annular obstruction survives only by leaving that same tower,
then the participation service has failed:

```math
\neg Part_{N_s,Q_{ann}}.
```

This is the concrete Part landing. It covers the case where the leftover
residual refill can be carried as a selected annular object, but only by
dropping the same Navier-Stokes pressure law, viscosity law, incompressibility
constraint, source ancestry, or differentiated tower needed for participation.

### Field

Assume participation survives:

```math
Part_{N_s,Q_{ann}}.
```

If there were a positive scale `r>0` with

```math
Field_{N_s,r,Q_{ann}},
```

then the selected annular tail would carry the full continuation-complete CM
witness:

```math
Q_{ann}\ \mathrm{readout\mbox{-}complete\ admitted}
\wedge Part_{N_s,Q_{ann}}
\wedge Field_{N_s,r,Q_{ann}}.
```

By the readout-completeness admission premise and the installed continuation
readout, this gives
`M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty` for some `s>5/2` for the same
Navier-Stokes solution near `T_*`. Periodic `H^s` local theory gives
`\tau=\tau(\nu,s,M_s)>0`; choosing `t_j\uparrow T_*` with
`T_*-t_j<\tau/2`, the relaunch from `u(t_j)` exists past `T_*` and agrees with
the original solution on the overlap by uniqueness. That is the smooth/member
branch:

```math
Member(Q_{ann};\mathcal O_{work}).
```

It cannot also be the finite nonsmooth terminal obstruction.

There is also a direct residual-refill incompatibility.  With the installed
`H^s`, `s>5/2`, readout bounded by `M`, the dyadic source production satisfies

```math
\|\Delta_j\mathbb P\nabla\cdot(u\otimes u)\|_2
\le C_sM^2\,2^{-j(s-1)},
\qquad
\|u_j\|_2\le M\,2^{-js}.
```

Thus

```math
\Phi_j^+(t)
\le C_sM^3\,2^{(3-2s)j},
```

and the heat-scale residual refill obeys

```math
D_j^{res}(t;t_0)
\le C_s'M^3\,2^{(3-2s)j}\to0.
```

So a selected annular pulse with `D_{j_m}^{res}\ge\eta>0` cannot retain Part
and a positive Field/readout scale.  If Part survives, the pulse itself forces
the Field alternative.

Thus no positive coherent field scale survives:

```math
Part_{N_s,Q_{ann}}
\Longrightarrow
\forall r>0\,\neg Field_{N_s,r,Q_{ann}}.
```

The readout-complete admitted finite nonsmooth annular witness is exhausted by
Part failure or continuation-readout Field failure.  A weaker local field reading
that does not supply the uniform \(H^s\), \(s>5/2\), continuation norm is not
enough for this residual-decay contradiction. In the realized same-fluid
terminal ontology, an all-scale Field failure may then collapse to terminal Part
failure by `RetainedFieldToPartCollapse.A`, but the proof-facing silver split is
still Part first, Field second.

## 5. Consequence For The PDF

The silver counterpart is now:

```text
surviving residual annular obstruction
+ annular CM-test admission
+ same-solution positive-radius carrier
+ readout completeness
=> smooth readout-complete Member branch or finite nonsmooth readout-complete that Part/Field failure branch.
```

This is the CM answer to the annular objection. It does not erase the gold
program. The gold route still asks for a scale-uniform forward-positive theorem:

```text
residual annular refill cannot beat participation on every shrinking schedule,
or discounted physical cone accounting upgrades to undiscounted scale-critical
cone control.
```

The remaining referee boundary for the silver route is equally explicit:

```text
same original solution selection
+ terminal residual obstruction role
+ stripped residual ledger object
+ same-solution positive-radius carrier
+ readout completeness
```

The paper may use this note to say that a surviving annular obstruction has a
CM counterpart. The paper may not use it to claim final CMI closure unless the
admission/carrier/readout boundary and all current PDF criticism descendants are
also resolved.
