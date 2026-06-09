# MPP EllipticTimeSmearing / Pressure Route Reentry

## Status

Active-completion reentry after the June 9 terminal positive source atom pass.

This note is not a final proof.  It records the parent-thread judgment that the
pressure/Leray route does not currently close the terminal source atom, and it
sets the next non-pressure branch-complexity target.

## Target

The pressure route would need:

```math
EllipticTimeSmearing.A
```

in the strong form:

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\downarrow0.
```

This is not bare spatial smoothing.  It is a terminal time-strip modulus for
the native positive source marginal on the `B_ASAC` terminal atom branch.

## Pressure Subtargets Checked

### `PressureCarrierTrace.A`

Carrier trace asks pressure-side residue to remain tied to the selected native
source-current carrier.  Even a strong trace relation:

```math
\mu_\ast^{press}\ll\mu_\ast^{src}
```

allows both measures to charge:

```math
\rho(y)\,dy\otimes\delta_{s=0}.
```

Carrier trace is at most a tether.  It does not provide terminal time spread.

### `EllipticTimeSmearing.A`

Pressure recovery is spatial and slice-wise:

```math
\nabla^2p(t)
=
T_y((\nabla u\otimes\nabla u)(t)).
```

On the terminal-layer model:

```math
d\mu_m^{src}(y,s)
=
\rho(y)m{\bf 1}_{(-1/m,0]}(s)\,dy\,ds,
```

the spatial operator changes `\rho(y)` but preserves the `s` support:

```math
T_y\rho(y)m{\bf 1}_{(-1/m,0]}(s)\,dy\,ds
\rightharpoonup
T_y\rho(y)\,dy\otimes\delta_{s=0}.
```

Thus bare elliptic recovery is false as a time-spreading theorem.

### `FinitePacketLeraySourceAnchoring.A`

Finite packet Leray anchoring organizes signed source-current and pressure
relations before positive selection.  After localization, terminal weights, and
positive-part extraction, a signed identity controls the selected positive
part only if the partner remains usable, exits legally, or is paid by donor /
reserve theorems.

That returns to:

```math
TerminalWeightedNoFreeSink.A,
\quad
PositiveRemainderDepletion.A,
\quad
LocalPositiveSourceCarleson.A.
```

Anchoring is a carrier statement, not a terminal residence theorem.

## Verdict

The pressure/Leray route is exhausted at the current theorem resolution:

```math
\boxed{
PressureCarrierTrace.A
}
\quad\text{binds carrier only,}
```

```math
\boxed{
EllipticTimeSmearing.A
}
\quad\text{fails at the model level for time support,}
```

```math
\boxed{
FinitePacketLeraySourceAnchoring.A
}
\quad\text{returns to signed no-free-sink / PRD.}
```

Therefore the live source-pulse branch does not close through pressure
spatial structure.

## Next Loop Target

The next non-pressure route is same-fluid ancestry / branch complexity:

```math
ScaleNormalizedBranchEntropyReserve.A,
\quad
QuantizedParentCharge.A,
\quad
MinimalBadAncestryCompactness.A.
```

At this resolution the most concrete first target is:

```math
\boxed{
BranchEntropyChargeLowerBound.A
}
```

It would have to prove that a diffuse legal parent cloud carrying order-one
native positive source mass pays a positive scale-normalized entropy or donor
reserve charge.  Without that, diffuse parent clouds keep defeating fixed
parent selection, source-drain, reverse Holder, and pressure time-spread
routes.

Until a branch-complexity charge, terminal time-thickness theorem, or rigid
time-face class is proved, `SourcePulseExclusion.A` remains open and the PDFs
remain non-final.
