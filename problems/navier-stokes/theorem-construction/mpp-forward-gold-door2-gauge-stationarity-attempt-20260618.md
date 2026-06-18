# Door 2 Gauge And Stationarity Attempt

Date: 2026-06-18

Status: direct Door 2 proof attempt; not closed.  The canonical-gauge and
renormalized-stationarity strategy reduces the zero-flux Zeno profile production
problem to drift visibility, a renormalized action bound, and annular defect
evacuation.

2026-06-18 continuation: `mpp-forward-gold-door2-zero-flux-drift-visibility-attempt-20260618.md`
tests `ZeroFluxDriftVisibility.A` directly.  Zero flux does not detect
symmetry-tangent drift by itself; the drift child reduces to
`CanonicalGaugeCoercivity.A + ModulationForcingNativeProjection.A +
NoNeutralModulationLoop.A`.

Role: continue the current forward-gold Door 2 frontier:

```math
\text{ZenoNoDriftUniqueTangent.A}
+
\text{RenormalizedZenoStationarity.A}.
\tag{GS.1}
```

This is the production side needed before the conditional
`ZeroFluxLandauClassLiouville.A` consumer can apply.

## Checked source state

The direct Door 2 attempts are:

```text
mcp-zenocriticalprofileproductionsharpattempt-a-zenocriticalprofileproduction-a-zerofluxlandauclassliouville-a-2351083975.md
mcp-modulationfreezingattempt-a-modulationfreezing-a-zenocriticalprofileproduction-a-cc514696c6.md
mcp-asymptoticstationarityattempt-a-asymptoticstationarity-a-zenocriticalprofileproduction-a-65fa0863d0.md
```

They show that compactness alone yields at most an ancient/local suitable,
scale-critical, possibly modulated or defect-bearing object.  The Landau/Sverak
consumer needs more: one stationary `(-1)`-homogeneous profile, smooth on the
sphere, with zero point force.

## Attempt: canonical Zeno gauge

For a terminal Zeno sequence, write the renormalized form

```math
u(t,x)
=
{1\over\lambda_n(t)}
U_n\!\left(
{R_n(t)^{-1}(x-x_n(t))\over\lambda_n(t)},s
\right),
\qquad
ds={dt\over\lambda_n(t)^2}.
\tag{GS.2}
```

Try to fix the remaining freedom by a canonical gauge:

1. center `x_n(t)` by a local critical stress/source barycenter;
2. set `\lambda_n(t)` by a critical norm level on an annulus;
3. fix `R_n(t)` and the selector phase by an extremizing packet functional.

In that gauge, the renormalized equation has the form

```math
\partial_s U_n-\nu\Delta U_n+(U_n\cdot\nabla)U_n+\nabla P_n
=
F_n^{mod}
+F_n^{src}
+\operatorname{div}M_n^{def},
\tag{GS.3}
```

where `F_n^{mod}` contains translation, rotation, scale, phase, and selector
forcing.

Door 2 closes if the zero-flux branch proves

```math
F_n^{mod}\to0,\qquad
F_n^{src}\to0,\qquad
M_n^{def}\to0,\qquad
\partial_sU_n\to0
\tag{GS.4}
```

locally on annuli in the weak norms needed by the stationary equation.

## Drift visibility test

The attractive argument is:

```math
\text{persistent modulation drift}
\Longrightarrow
\text{observable stress/source residue}.
\tag{GS.5}
```

Then the zero-flux branch forces drift to vanish.

But `(GS.5)` is not installed.  A moving center, rotating frame, changing
selector, or switching profile can appear as a neutral modulation of the
renormalized snapshots unless the proof shows that the corresponding modulation
forcing has a nonzero projection onto the native stress/source tests.

The missing theorem is therefore:

```math
\boxed{
\text{ZeroFluxDriftVisibility.A}.
}
\tag{GS.6}
```

It says that any nonvanishing translation, rotation, phase, selector, or
scale-schedule drift in the selected Zeno orbit creates either a nonzero
projected stress-flux residue or a nonzero selected native source carrier.

Without `(GS.6)`, `ZenoNoDriftUniqueTangent.A` is not proved.

## Stationarity test

A second attractive argument is long-window averaging in renormalized time:
to make this work, finite total renormalized production must give intervals
where all production terms vanish, and compactness on those intervals must
produce a stationary limit.

The missing input is the finite action estimate itself.  Local energy and
finite `L^1_s` source mass do not imply

```math
\int_{s_0}^{\infty}
\left(
\|\partial_sU_n\|_{H^{-1}(K)}
+\|F_n^{mod}\|_{H^{-1}(K)}
+\|F_n^{src}\|_{H^{-1}(K)}
+|M_n^{def}|(K)
\right)\,ds
<\infty
\tag{GS.7}
```

uniformly on compact annuli `K\Subset\mathbb R^3\setminus\{0\}`.

The needed theorem is:

```math
\boxed{
\text{RenormalizedActionFinite.A}
}
\tag{GS.8}
```

together with

```math
\boxed{
\text{AnnularDefectEvacuation.A}.
}
\tag{GS.9}
```

The first gives enough renormalized-time integrability to find stationary
windows.  The second removes residual source and defect measures on annuli away
from the terminal point.

Without `(GS.8)` and `(GS.9)`, `RenormalizedZenoStationarity.A` is not proved.

## Unique tangent and homogeneity

Even after a stationary subsequential annular limit is produced, exact
`(-1)`-homogeneity needs scale-orbit uniqueness.  The proof must show that log
scale shifts select the same profile, not merely a family of stationary
subsequential limits.

That requires a single-bubble / no-switching theorem:

```math
\boxed{
\text{SingleBubbleCanonicalGauge.A}.
}
\tag{GS.10}
```

It rules out comparable multi-profile Zeno splitting, selector nonuniqueness,
and subsequence switching under the canonical gauge.

## Result of the attempt

The Door 2 profile production is not closed by canonical gauge language alone.
The proof needs real coercive facts behind the gauge:

```math
\boxed{
\text{SingleBubbleCanonicalGauge.A}
+
\text{ZeroFluxDriftVisibility.A}
+
\text{RenormalizedActionFinite.A}
+
\text{AnnularDefectEvacuation.A}
}
\tag{GS.11}
```

These four statements imply:

```math
\text{ZenoNoDriftUniqueTangent.A}
+
\text{RenormalizedZenoStationarity.A},
\tag{GS.12}
```

and then the already conditional Landau-class consumer becomes available after
the remaining smooth-sphere and point-force bookkeeping.

## Verdict

Door 2 remains open.  The attempt sharpened the production problem:

```math
\boxed{
\text{zero flux must make every drift observable or finite-action, and every
annular source/defect must evacuate.}
}
\tag{GS.13}
```

The exact new children are:

```math
\boxed{
\text{ZeroFluxDriftVisibility.A}
}
\qquad
\boxed{
\text{RenormalizedActionFinite.A}
+
\text{AnnularDefectEvacuation.A}
}
\qquad
\boxed{
\text{SingleBubbleCanonicalGauge.A}.
}
\tag{GS.14}
```
