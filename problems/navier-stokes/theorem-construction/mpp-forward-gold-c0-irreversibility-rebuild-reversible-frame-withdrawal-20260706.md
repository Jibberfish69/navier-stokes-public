---
theorem_id: forward-gold-c0-irreversibility-rebuild-reversible-frame-withdrawal-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / irreversible cumulative record cost
status: correction-reversible-cancellation-frame-withdrawn-thickness-or-charge-frontier
ontology_lock:
  fluid_field_object: Navier-Stokes same-fluid velocity-pressure field
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
target_objects:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - TemporalRecordThicknessChargeBillCurrency.A
  - SameParentRecordPositiveSelectionStorage.A
  - RecordMenuPressureActiveOrSilentService.A
  - RetainedRecordEdgeExactProjectorChartLicense.A
  - RecordMenuDetectorAngleGap.A
regrades:
  - mpp-forward-gold-GOAL-item2-gate2-pawl-verdict-merges-item4-20260706.md
  - mpp-forward-gold-c0-gate2-signed-total-positive-record-retention-obstruction-20260706.md
  - mpp-forward-gold-same-packet-cycle-shuttle-lift-attempt-20260706.md
  - mpp-forward-gold-E4-record-closedness-compensated-compactness-20260706.md
  - mpp-forward-gold-c0-E4-temporal-pinch-charge-bill-currency-reduction-20260706.md
  - mpp-forward-gold-c0-normalized-passage-gate4-source-strict-verdict-20260706.md
derived_reductions:
  - mpp-forward-gold-c0-irreversible-thick-branch-liouville-reduction-20260706.md
  - mpp-forward-gold-c0-heat-scale-route-b-surplus-zero-rigidity-reduction-20260706.md
  - mpp-forward-gold-c0-persistent-affine-quotient-payment-frontier-20260706.md
completion_truth: >-
  This is a correction and strict re-foundation, not a proof of c_0. The
  previous reversible-cancellation language is withdrawn as a temporal
  mechanism: tr(A^3)=3 det(grad u)=div Phi is a spatial null-Lagrangian /
  boundary-current identity, not a Navier-Stokes time-reversibility law. Euler
  production is reversible; Navier-Stokes viscosity is the irreversible
  correction. The Navier-Stokes fluid-field-object is therefore not reversible,
  not adiabatic, and not compressible; it is the incompressible viscous
  dissipative pressure-constrained same-fluid field. Therefore c_0 should be
  sought as the cumulative irreversible cost of sustaining an Euler-like
  marginal climb through infinitely many record doublings. The remaining wall
  is now sharpened: positive-radius / thick-material-time concentration is paid
  by finite participation and fixed-cylinder viscous throttle, while the
  shrinking heat-scale branch still requires temporal thickness-or-charge in
  bill currency and same-parent positive-selection storage/detector
  faithfulness, equivalently global same-history surplus-zero route-b rigidity,
  or route the event out as legal/stop/parentless. No MPP closure is claimed.
---

# Irreversibility rebuild after the reversible-frame error

## 1. Ontology lock

The Navier-Stokes fluid-field-object in this proof lane is the same evolving
velocity-pressure field for one incompressible viscous fluid. It is not
reversible, not adiabatic, and not compressible.

The working ontology is:

```text
Navier-Stokes fluid-field-object:
    incompressible
    viscous
    dissipative
    pressure-constrained
    irreversible
```

Euler is only the nearby inviscid comparison object. The Euler stretching /
null-Lagrangian service can look reversible at the comparison level, but the
Navier-Stokes object carrying the actual record has viscosity and therefore an
arrow of time.

## 2. Correction

The null-Lagrangian identity

```math
\operatorname{tr}(A^3)=3\det(\nabla u)=\operatorname{div}\Phi
```

is a spatial statement. It says the instantaneous cubic service has a boundary
current form. It does not say that the Navier-Stokes process in time can move a
record out and then run that motion back for free.

The earlier language of a reversible `M`-out-`M`-back cycle promoted this
spatial identity into temporal reversibility. That promotion is unjustified.
Navier-Stokes is not time-reversible: the viscous term has the wrong sign under
time reversal. Only the Euler part has the reversible symmetry.

So the record mechanism should be typed this way:

```text
Euler-like production:       reversible cubic stretching / null-Lagrangian service
Navier-Stokes correction:    irreversible cumulative viscous cost
c_0 question:                can the irreversible flow sustain the Euler-like
                             marginal climb for infinitely many doublings?
```

The corrected object is cumulative in time. The instantaneous high-Reynolds
ratio can make viscosity look small at one scale, but an infinite blowup climb
requires unboundedly many record doublings. Those doublings must pass through
the finite irreversible budget of the same fluid history.

## 3. What stays valid

The spatial null-Lagrangian content remains useful, but only in its own role.
It supports weak closedness / compensated compactness for the spatial record
core when concentration is excluded.

Thus the useful part of the E4 closedness line is:

```text
spatial null Lagrangian + no concentration
    -> record core passes to the weak limit.
```

It does not prove temporal record passage. A record can concentrate in material
time while its spatial Jacobian structure remains well behaved. The temporal
Dirac is exactly the thin-record escape.

## 4. What is withdrawn

The following interpretations are withdrawn as proof ontology:

1. `c_0` as strict non-cancellation of a temporally reversible signed exchange
   cycle.
2. the `M-M=0` reversible loop as a physical Navier-Stokes equality-case model;
3. "viscosity is a red herring" as a c_0 principle;
4. any claim that the null-Lagrangian identity by itself supplies a temporal
   pawl, ratchet, or reversible cancellation mechanism.

The WKB/cyclic-shuttle calculations may still test model branches. They do not
license the leading Navier-Stokes story. The leading story is one irreversible
same-fluid material history.

## 5. Corrected proof target

Let \(I_j=[a_j,b_j]\) be disjoint retained material record intervals carrying
unit normalized record doublings. The corrected target is a cumulative
irreversibility estimate:

```math
\sum_j 1
\le
C\int_{\cup_j I_j}
\left(dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h}\right)
+Legal+Stop.
\tag{IR.1}
```

Equivalently:

```text
every retained unit record doubling has temporal thickness or pays same-parent
charge in the bill currency.
```

The thick branch is the budget branch. If the record occupies material time at
the relevant scale, the cumulative irreversible cost is seen by the existing
viscous / field / four-body bill.

The thin branch is the live wall. If the record is squeezed into vanishing
material time, the record is not free; the equation has only three suppliers
for fast change of the same packet:

```math
\partial_tu=-u\cdot\nabla u-\nabla p+\nu\Delta u.
\tag{IR.2}
```

So a thin retained record must post transport/strain activity, pressure /
participation activity, or viscous activity. The signed-height record menu
already gives the finite native work admission row:

```math
\lambda
\le
\sum_e
\left[\int_{I_e\cap[a,b]}\omega_e\right]_+
+Legal([a,b])+Stop([a,b]).
\tag{IR.3}
```

What remains is bill currency and ownership:

```math
\sum_j\lambda_j^{-1}
\sum_e
\left[\int_{I_e\cap[a_j,b_j]}\omega_e\right]_+
\le
C\int_{\cup_j I_j}
\left(dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h}\right)
+Legal+Stop.
\tag{IR.4}
```

This is the corrected location of `c_0`.

## 6. Exact remaining theorem names

The temporal-pinch note already has the right reduction:

```text
TemporalRecordThicknessChargeBillCurrency.A
    <= SameParentRecordPositiveSelectionStorage.A.
```

The Gate 4 source-strict verdict names the open storage law:

```text
RecordNativeWorkMenuPositiveSelectionStorage.A.
```

The delamination and detector-angle notes lower that to:

```text
RecordMenuPressureActiveOrSilentService.A
+ RetainedRecordEdgeExactProjectorChartLicense.A.
```

In frozen-symbol form, the parent detectors must be faithful to the record
work:

```math
\ker D\subseteq\ker w_{rec},
\tag{IR.5}
```

uniformly on the retained pressure-active quotient. Any joint-detector-silent
positive work must already be paid as silent same-material service before the
record can count it.

## 7. Consequence for the active c_0 objective

The corrected bad sequence is not:

```text
reversible signed exchange cycle with a missing strict non-cancellation pawl.
```

The corrected bad sequence is:

```text
Euler-like marginal production trying to survive an irreversible NS history
through infinitely many retained record doublings while the cumulative bill
tends to zero.
```

If `(IR.1)' is proved, then the active normalized passage closes: a unit-record
vanishing-bill sequence cannot exist. The compactness extraction then gives
the strict reserve floor

```math
B(W)\ge \varepsilon R(W),
\qquad c_0=2\varepsilon>0,
\tag{IR.6}
```

on the retained same-packet class.

If `(IR.1)' fails, the failure is not reversible cancellation. It is one of:

1. legal/stop material;
2. parentless post-readout scalar spike;
3. detector-silent positive work not paid before record readout;
4. exact-projector / moving-chart commutator not admitted into the parent bill.

The first two are not retained unit records. The last two are the current
same-parent storage/detector-faithfulness wall.

## 8. Status

No closure is claimed. The proof target is smaller and more honest:

```text
c_0 = cumulative irreversible cost of an Euler-like marginal climb.
```

The next proof work belongs on thickness-or-charge in bill currency and on the
same-parent positive-selection storage/detector-faithfulness theorem, not on a
reversible-cancellation cycle.

The positive-radius / thick-material-time branch is now separated in
`mpp-forward-gold-c0-irreversible-thick-branch-liouville-reduction-20260706.md`:
that branch is paid by finite participation and the fixed-cylinder viscous
throttle. The remaining active branch is the shrinking heat-scale material-time
surplus-zero rigidity problem, retyped in
`mpp-forward-gold-c0-heat-scale-route-b-surplus-zero-rigidity-reduction-20260706.md`
as first-ratio storage / global laminar ancestry variation / self-similar
difference-operator coercivity.
