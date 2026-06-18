# ZenoCriticalProfileProduction.A Attempt

## Target

Prove Door 2 of the gold stress-flux packet:

```text
ZenoCriticalProfileProduction.A
```

Desired statement:

A terminal Zeno critical Mellin pole produces an exact stationary `(-1)`-homogeneous Navier-Stokes profile on `R^3 \ {0}`, smooth on `S^2`, after quotienting translations, rotations, and scale.

This is needed before applying the conditional Liouville theorem:

```text
ZeroFluxCriticalProfileLiouville.A
```

## What Door 2 needs

To use the Landau/Sverak classification route, the extracted profile must satisfy all of:

```text
stationary Navier-Stokes on R^3 \ {0};
(-1)-homogeneous scaling;
smooth profile on S^2;
divergence-free;
controlled point force Phi_0;
zero force in the Phi_0=0 branch;
no residual time-dependence, drift, defect measure, or source residue.
```

## Direct attempt

The Zeno critical branch supplies a terminal concentration schedule and a critical Mellin-pole heuristic. It can suggest scale-invariant structure, but it does not automatically remove:

```text
time-dependence of the blow-up limit;
translation drift;
rotational drift;
profile selector drift;
defect measure;
residual source term;
lack of smoothness on S^2;
failure of exact stationarity;
failure of exact (-1)-homogeneity.
```

Producing an exact Landau-class profile is a compactness plus rigidity theorem, not a consequence of the word Zeno.

The current extraction gives an ancient/local suitable source-residue limit or terminal branch data. That is weaker than a stationary homogeneous smooth-sphere no-force profile.

## Conditional downstream theorem

If `ZenoCriticalProfileProduction.A` were proved, then the zero-force branch could plausibly be killed by a Landau/Sverak-classification Liouville theorem:

```text
ZeroFluxCriticalProfileLiouville.A:
stationary (-1)-homogeneous smooth-sphere profile + Phi_0=0 => U=0.
```

But that theorem is downstream. It does not produce the profile.

## Verdict

`ZenoCriticalProfileProduction.A` is not proved from installed inputs.

It reduces to the exact production theorem:

```text
terminal Zeno critical Mellin pole
=> exact stationary (-1)-homogeneous smooth-sphere profile with controlled point force.
```

Claimed status:

```text
failed; exact Zeno-to-Landau-profile production bridge missing.
```

## Final two-door gold status

The sharpened two-door packet leaves exactly two missing bridges:

```text
Door 1: StressFluxSelectorDomination.A;
Door 2: ZenoCriticalProfileProduction.A.
```

The conditional Liouville theorem is not the blocker; production is.

The gold forward theorem remains open. The CM contrapositive path remains closed by branch consumption.