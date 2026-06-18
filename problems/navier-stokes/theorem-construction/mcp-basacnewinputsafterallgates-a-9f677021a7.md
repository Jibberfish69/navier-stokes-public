# BASACNewInputsAfterAllGates.A

## Status

External new-input triage.  The current repo surfaces leave `B_ASAC^closed` as zero-radius `not Pack_Q` support.  New progress needs a theorem imported from, or inspired by, outside PDE literature.

## Best direct new input

The smallest useful input is

```math
TerminalSourceReverseHolder_{B_{ASAC}}.A:
\left\|\,\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,\right\|_{L_s^p((-1,0))}\le C_R,
\qquad p>1.
```

This gives the terminal strip modulus

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p},
```

and hence

```math
B_{ASAC}\Longrightarrow B_{ASAC}^{TA}
\Longrightarrow ZenoResidueLiouville_{B_{ASAC}}.A.
```

## External input families

### Quantitative CKN / dissipation absolute continuity

A candidate input is

```math
QuantitativeSourceDissipationAbsoluteContinuity.A.
```

This candidate adapts quantitative partial-regularity ideas to show that the selected native source marginal cannot concentrate entirely on a terminal time face without creating a CKN-scale dissipation concentration visible to the local energy inequality.

### Energy-measure density anti-atom

A second input is

```math
EnergyMeasureDensityAntiAtom.A.
```

If the terminal source atom forces an energy measure with forbidden local density, then existing energy-measure dimension methods could rule it out under additional integrability or Type-I style hypotheses.  The missing production step is to derive those hypotheses from `B_ASAC`.

### BMO/Carleson source reserve

A third input is

```math
BMOCarlesonSourceReserve.A.
```

This candidate imports scale-critical Carleson machinery to prove a source reserve on selected terminal packets.  It is route-equivalent to `LocalPositiveSourceCarleson.A / PRD`, but it gives a concrete outside analytic language.

### Backward uniqueness / ancient Liouville

A fourth input is

```math
RigidAncientClassProduction.A+AncientLiouville_B.A.
```

The outside literature contains Liouville theorems for bounded, Type-I, L^3-sequence, two-dimensional, or axisymmetric ancient solutions.  The missing production theorem is to place the `B_ASAC` tangent object into one of those classes.

### Local pressure projection / pressure spread

A fifth input is

```math
PressureTimeFaceSpread.A.
```

Local pressure projection can improve pressure bookkeeping and isolate local pressure distributions.  Closure still requires a time-spread theorem, not only spatial pressure decomposition.

## Recommendation

The highest-yield new input to attempt first is

```math
QuantitativeSourceDissipationAbsoluteContinuity.A:
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0,
```

proved using quantitative local energy / CKN-type absolute-continuity machinery on the selected native source marginal.

This target is less circular than full PRD and more directly aimed at the terminal time-face atom than the pressure and rigid-class routes.
