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

The terminal Zeno/critical-pole regime suggests that a scale-normalized object should become approximately autonomous at the pole. But approximate criticality does not by itself imply stationarity.

To pass from a renormalized ancient/local suitable limit to a stationary profile, one needs a vanishing theorem for all time-derivative and modulation-forcing terms. Typically this would come from:

```text
monotone Lyapunov functional;
frequency-locking identity;
vanishing entropy production;
compactness plus uniqueness of tangent flow;
modulation equations with integrable derivative;
source/defect evacuation.
```

The installed inputs do not provide such a theorem. In particular, after Zeno rescaling, terminal concentration can retain residual forcing or an ancient profile with nontrivial time-dependence. That object is outside the exact Landau-class consumer.

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
terminal Zeno critical orbit + modulation freezing + defect evacuation
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