# BASACAtomForcesEscape.A failed attempt

## Status

Failed unconditional discharge from installed `B_ASAC` class clauses.  The theorem is the right class-specific Liouville target, but current data do not force an escape from a nonzero terminal source atom.

## Target

Prove that every nonzero terminal source atom in `B_ASAC` forces at least one forbidden escape:

```text
earlier selected same-fluid source slice,
legal/projected/cutoff/boundary exit,
finite or non-Zeno donor-refill exit,
nonzero ASAC-paid defect measure.
```

Then, since every such escape is excluded by the definition of `B_ASAC`, the terminal source residue must vanish.

## Tests

First-pulse source-parent minimality removes fixed earlier selected source parents and finite/non-Zeno ancestry.  It does not remove a sequence of source layers whose heat scales shrink to zero at the terminal time.

Local energy and raw source compactness provide finite source mass on compact cylinders.  They do not separate diffuse near-terminal source from a terminal atom.  The endpoint time-marginal witness

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

still has bounded `L^1_s` mass and converges to a terminal atom.

Zero ASAC defect removes the active-alignment / one-sided pair-weight charge already paid by ASAC.  It does not imply that the native positive source-residue measure vanishes.

The homogeneous parent-drain identity `TPNI.A` cannot be reused directly.  Pairing a `B_ASAC` source-residue object with the adjoint leaves the terminal source term

```math
\int \Phi_T\,d\mu_*^{src},
```

which is the object to eliminate.  Thus the identity becomes a source-charge identity, not a contradiction.

## Exact new atom

The least circular next target is

```math
BASACNoIncomingSourceDrain.A.
```

Statement: a nonzero `B_ASAC` terminal source charge forces an earlier selected source parent or a legal/donor/ASAC escape.

This would give

```math
BASACNoIncomingSourceDrain.A
\Longrightarrow BASACAtomForcesEscape.A
\Longrightarrow ZenoResidueLiouville_{B_ASAC}.A.
```

## Verdict

`BASACAtomForcesEscape.A` remains open.  The current smallest non-circular closure target is `BASACNoIncomingSourceDrain.A`.