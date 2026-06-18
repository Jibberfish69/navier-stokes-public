# AsymptoticStationarity.A Attempt

## Target

Prove the second hard subpiece of `ZenoCriticalProfileProduction.A`:

```text
AsymptoticStationarity.A
```

Desired statement:

A renormalized terminal Zeno critical profile has vanishing renormalized time derivative and residual source/defect terms, so the limit solves the stationary Navier-Stokes equation on `R^3 \ {0}`.

## Why it is needed

The downstream Landau/Sverak consumer requires a stationary `(-1)`-homogeneous smooth-sphere profile. An ancient or self-similar-looking local suitable limit is not enough. The limit must lose:

```text
time-dependence;
renormalized drift forcing;
selector-motion forcing;
scale-acceleration forcing;
residual source terms;
defect measures.
```

## Attempt

The old loose step is the expectation that critical rescaling makes the profile
approximately autonomous at the pole.  Approximate criticality does not by
itself imply stationarity.  The exact theorem needed is a residual-vanishing
statement.
For a renormalized Zeno sequence `U_n,P_n` on compact sets
`K subset R^3\{0}` and finite renormalized time intervals `J`, write the
renormalized equation in the form

```math
\partial_s U_n-\nu\Delta U_n+(U_n\cdot\nabla)U_n+\nabla P_n
=
F_n^{drift}
+F_n^{selector}
+F_n^{scale}
+F_n^{src}
+\operatorname{div}M_n^{def}.
```

Stationarity follows only after the actual selected sequence satisfies

```text
partial_s U_n -> 0 in L^1(J;H^{-1}(K));
F_n^{drift}+F_n^{selector}+F_n^{scale} -> 0 in L^1(J;H^{-1}(K));
F_n^{src} -> 0 in L^1(J;H^{-1}(K));
M_n^{def} -> 0 as a measure on J x K.
```

A monotone Lyapunov functional, frequency-locking identity, entropy-production
identity, uniqueness of tangent flow, modulation equation, or source-evacuation
argument would be useful only if it proves the displayed vanishing for the
selected sequence.  The installed inputs do not provide that theorem. In
particular, after Zeno rescaling, terminal concentration can retain residual
forcing or an ancient profile with nontrivial time-dependence. That object is
outside the exact Landau-class consumer.

## Failure point

Without `AsymptoticStationarity.A`, the Door 2 profile may remain:

```text
ancient/local suitable;
scale-critical but not exactly stationary;
modulated;
defect-bearing;
source-residue-bearing.
```

Such a profile cannot be killed by `ZeroFluxLandauClassLiouville.A`.

## Verdict

`AsymptoticStationarity.A` is not proved from installed inputs.

It reduces to a vanishing theorem for the renormalized time-derivative, modulation-forcing, source, and defect terms:

```text
RenormalizedZenoStationarity.A:
terminal Zeno critical orbit
+ displayed L^1_s H^{-1}_{loc} vanishing of time/modulation/source terms
+ local measure evacuation of defect terms
=> stationary Navier-Stokes profile on R^3 \ {0}.
```

Claimed status: failed; asymptotic stationarity remains a live Door 2 production obstruction.

## Final sharp frontier after this pass

Door 1 remains blocked at:

```text
WeightedLiftedSkewDefectLegal.A
```

because that is the missing legal step inside `ProjectedLocalPreCauchyResidueIdentity.A`.

Door 2 remains blocked at:

```text
ModulationFreezing.A + AsymptoticStationarity.A
```

as the first hard sub-obstructions inside `ZenoCriticalProfileProduction.A`.

The solved pieces remain:

```text
FiniteVectorSelector.A;
ZeroFluxLandauClassLiouville.A conditional on exact Landau-class production.
```
