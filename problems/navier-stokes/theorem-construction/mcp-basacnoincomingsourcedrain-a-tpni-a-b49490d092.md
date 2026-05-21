# BASACNoIncomingSourceDrain.A failed attempt

## Status

Failed unconditional discharge from installed inputs.  This is the source-drain form of the class-specific `B_ASAC` Liouville problem.

## Target

Prove that a nonzero terminal source charge in `B_ASAC` forces one of:

```text
earlier selected same-fluid source parent,
legal/projected/cutoff/boundary exit,
finite or non-Zeno donor-refill exit,
nonzero ASAC-paid defect measure.
```

Since `B_ASAC` excludes those alternatives, this would force the terminal source residue to vanish.

## Attempted imports

The May 4 source-drain package is conditional.  The May 5 correction identifies the break: first-pulse no-parent does not control diffuse legal source-parent ancestry.  A parent cloud can carry order-one source charge while every bounded selected parent subfamily has vanishing mass.

`NoIncomingLicense_src.A` supplies first-pulse no-parent.  It removes fixed earlier selected parents and, with donor/entrance ledgers, finite and non-Zeno parent trees.  It does not rule out a zero-thickness terminal source marginal.

`ASACDefectMeasure.A` removes the ASAC-paid active-alignment / pair-weight defect.  Legal, projected, cutoff, boundary, finite-donor, and non-Zeno exits are also removed by `B_ASAC` production.  These exclusions classify the survivor; they do not compact the remaining source ancestry.

The installed `TPNI.A` identity is homogeneous.  For a `B_ASAC` source-residue object, the adjoint identity contains

```math
\int \Phi_T\,d\mu_*^{src},
```

which is the live source term.  Thus TPNI becomes a source-parent-or-charge identity rather than a contradiction.

## Exact new atom

The missing theorem is

```math
BASACSourceAncestryCompactness.A.
```

Statement: in the produced `B_ASAC` terminal source-residue class, a nonzero terminal source charge cannot be represented by a diffuse legal same-fluid parent cloud invisible to every bounded earlier selected source family.  It must contain a fixed negative-time selected source parent or produce a legal/donor/ASAC escape.

Equivalent sufficient forms are

```math
NoIncomingFlux^{global}_{B_{ASAC}}.A
```

or

```math
TransportedCylinderNoFlux_{B_{ASAC}}.A.
```

for the same source-residue tangent class.

## Verdict

`BASACNoIncomingSourceDrain.A` remains open.  The next exact closure target is `BASACSourceAncestryCompactness.A`.