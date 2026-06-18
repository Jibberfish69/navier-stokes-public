# Door 2 Zero-Flux Drift Visibility Attempt

Date: 2026-06-18

Status: direct attempt; not proved from current installed inputs.

Role: test the Door 2 child

```math
\boxed{
\text{ZeroFluxDriftVisibility.A}
}
\tag{ZD.1}
```

from

```text
mpp-forward-gold-door2-gauge-stationarity-attempt-20260618.md
```

This theorem would help prove `ZenoNoDriftUniqueTangent.A`: persistent drift in
the zero-flux Zeno orbit would have to create a visible stress/source trace.

## Desired statement

In a canonical renormalized gauge, write

```math
u(t,x)
=
{1\over\lambda(t)}
U\left({R(t)^{-1}(x-x(t))\over\lambda(t)},s\right).
\tag{ZD.2}
```

The renormalized equation contains modulation forcing

```math
F^{mod}
=
-{x_s\over\lambda}\cdot\nabla_y U
-\Omega_s y\cdot\nabla_y U
-{\lambda_s\over\lambda}(U+y\cdot\nabla_yU)
+F^{selector/phase}.
\tag{ZD.3}
```

`ZeroFluxDriftVisibility.A` would say that if one of these modulation
coefficients stays nonzero along the selected Zeno orbit, then either

```math
\Phi_0\ne0
\tag{ZD.4}
```

or the selected native positive source carrier is nonzero in the Door 1 sense.
On the zero-flux branch, this would force the modulation coefficients to vanish
after quotient normalization.

## Attempt 1: bare stress-flux projection

The stress-flux residue sees net point-force imbalance:

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P=\Phi_0\delta_0.
\tag{ZD.5}
```

But a modulation derivative can be tangent to a symmetry orbit.  Translation,
rotation, scale, and selector/phase motion can change the renormalized snapshot
without producing a nonzero point-force residue.  A pure translation drift of a
nearly centered profile, for example, appears as `-x_s\cdot\nabla U`; its
spherical integral can vanish even while the orbit drifts.

So bare zero flux does not see every drift mode.

## Attempt 2: native source tests

The native source carrier is more local and one-sided than the stress flux.
This makes it a plausible detector for drift.  However, the current installed
inputs do not prove that every nonzero modulation forcing has a positive
projection onto the selected native source tests after packet selection,
positive-part extraction, and terminal localization.

The missing theorem is:

```math
\boxed{
\text{ModulationForcingNativeProjection.A}.
}
\tag{ZD.6}
```

It would say that the forcing terms in `(ZD.3)` cannot remain nonzero while all
projected native stress/source tests vanish.

## Attempt 3: canonical gauge orthogonality

A canonical gauge can impose orthogonality conditions, for instance by fixing
center, scale, rotation, and phase through selected moments or extremizers.
Such a gauge prevents arbitrary coordinate drift only after it has a coercive
Jacobian:

```math
\left|x_s\right|
+\left|\Omega_s\right|
+\left|(\log\lambda)_s\right|
+\left|\theta_s\right|
\lesssim
\|\text{projected modulation residual}\|
+\mathrm{defect}.
\tag{ZD.7}
```

This is not installed.  The Zeno profile may have nearly degenerate moments,
multiple comparable extremizers, or switching packet selectors.  Then the gauge
can move without producing a coercive residual.

The missing theorem is:

```math
\boxed{
\text{CanonicalGaugeCoercivity.A}.
}
\tag{ZD.8}
```

## Attempt 4: neutral symmetry loops

Even with a gauge, the orbit may move around a neutral family: comparable
stationary profiles, rotations preserving the selected functional, or
profile-switching subsequences.  Such motion need not create a nonzero flux
residue unless single-bubble uniqueness has already been proved.

This returns to:

```math
\boxed{
\text{SingleBubbleCanonicalGauge.A}
}
\tag{ZD.9}
```

and the no-loop statement

```math
\boxed{
\text{NoNeutralModulationLoop.A}.
}
\tag{ZD.10}
```

## Result

`ZeroFluxDriftVisibility.A` is not proved from zero stress flux plus compactness
alone.

The valid reduction is:

```math
\boxed{
\text{CanonicalGaugeCoercivity.A}
+
\text{ModulationForcingNativeProjection.A}
+
\text{NoNeutralModulationLoop.A}
\Longrightarrow
\text{ZeroFluxDriftVisibility.A}.
}
\tag{ZD.11}
```

The theorem is genuinely smaller than the whole Door 2 profile production
problem, because it only tries to make drift observable.  It does not by itself
prove renormalized stationarity, annular defect evacuation, or exact
`(-1)`-homogeneity.

## Verdict

The Door 2 drift side is sharpened to:

```math
\boxed{
\text{CanonicalGaugeCoercivity.A}
}
\qquad
\boxed{
\text{ModulationForcingNativeProjection.A}
}
\qquad
\boxed{
\text{NoNeutralModulationLoop.A}.
}
\tag{ZD.12}
```

Zero flux removes net point-force residue.  It does not by itself remove
symmetry-tangent or selector-tangent motion in the renormalized Zeno orbit.
