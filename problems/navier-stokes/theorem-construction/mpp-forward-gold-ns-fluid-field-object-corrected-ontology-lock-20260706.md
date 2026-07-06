---
theorem_id: forward-gold-ns-fluid-field-object-corrected-ontology-lock-20260706
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 / physical ontology
status: canonical-ontology-lock
ontology_lock:
  fluid_field_object: one same-fluid incompressible Navier-Stokes velocity-pressure history at fixed viscosity
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-irreversibility-rebuild-reversible-frame-withdrawal-20260706.md
applies_to:
  - c_0
  - FullTowerSignedTotalExchangeRetention.A
  - StrictSamePacketCycleExchangeCoercivity.A
  - NormalizedRelayBillCompactnessRecordPassage.A
  - OriginalHistoryRecordResetRootPayment.A
completion_truth: >-
  This file saves the corrected physical ontology. It is not a proof of c_0.
  It fixes the governing object before proof work: the Navier-Stokes
  fluid-field-object is the incompressible viscous dissipative
  pressure-constrained same-fluid velocity-pressure history. Euler is only an
  inviscid comparison object. A spatial null-Lagrangian identity may supply
  spatial cancellation or compactness structure, but it is not a temporal
  reversibility law for Navier-Stokes. The c_0 route must therefore seek a
  cumulative irreversible cost for sustaining the Euler-like marginal record
  climb, not a strict residue of a reversible cancellation cycle.
---

# Corrected Navier-Stokes fluid-field-object ontology

The Navier-Stokes fluid-field-object in this proof lane is not reversible, not
adiabatic, and not compressible.

The saved terms are:

```text
Navier-Stokes fluid-field-object:
    incompressible
    viscous
    dissipative
    pressure-constrained
    irreversible
```

It is one same-fluid velocity-pressure history at fixed viscosity. The packet,
record, pressure response, viscous payment, incompressible constraint, scale,
sign, alignment, and time all belong to that same evolving object.

## Direct answers

Reversible: no. The inviscid Euler comparison has a time-reversal symmetry, but
the Navier-Stokes equation does not. The viscous term changes sign under time
reversal and gives the mechanical history an arrow of time.

Adiabatic: no, not as the proof object. Classical incompressible Navier-Stokes
does not carry a thermodynamic heat/entropy variable that conserves the lost
mechanical energy inside an adiabatic state. Viscosity dissipates kinetic
energy. In the frozen incompressible model, that dissipation is an irreversible
mechanical budget; in a larger Navier-Stokes-Fourier parent, it would be heat
or entropy production, not free reversible storage.

Compressible: no. The Clay target and the live Gold c_0 object use the
incompressible constraint

```math
\nabla\cdot u=0.
```

Compressible or heated parent models can be comparison shadows only when
explicitly marked as such. They do not replace the live classical
incompressible Navier-Stokes object.

## Null-Lagrangian correction

The identity

```math
\operatorname{tr}(A^3)=3\det(\nabla u)=\operatorname{div}\Phi
```

is spatial. It can explain a boundary-current or compensated-compactness
feature of an instantaneous field. It does not say that a Navier-Stokes record
can move out in time and then come back for free.

So the earlier reversible-cycle reading is withdrawn as ontology. Any
`M`-out-`M`-back construction is at most an Euler/model-branch stress test
unless it is retyped as an irreversible Navier-Stokes material history with its
viscous, pressure, participation, and defect costs paid.

## c_0 consequence

The c_0 question now has this form:

```text
Can one incompressible viscous Navier-Stokes fluid-field-object sustain
positive material-record growth through an infinite heat-scale tower while
the cumulative same-packet bill stays ratio-one marginal?
```

A strict positive c_0 must come from the cumulative irreversible cost of that
infinite climb. The leading burden is therefore temporal thickness-or-charge /
root-payment admission in the original same-fluid history, not strict
non-cancellation of a reversible signed exchange loop.
