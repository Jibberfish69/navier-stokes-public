# MPP PressureTimeSpread.A / EllipticTimeSmearing.A Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality.

## Target

The previous pass reduced the pure pressure-source singular branch to:

```math
PressureTimeSpread.A / EllipticTimeSmearing.A.
```

A useful exact form is a terminal strip modulus for the pure pressure residue:

```math
\mu_*^{press\perp src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^\alpha,
\qquad \alpha>0.
```

This estimate removes a pure terminal pressure atom, produces a pressure rigid class,
and feeds:

```text
PurePressureSustainResidueLiouville.A
=> NoPurePressureSourceSingularResidue.A
=> QuadraticDefectSourceDomination.A
=> PressureSourceAC.A
=> TerminalPressureHessianNoSustain.A
=> SourceTimeConcentrationCost.A.
```

## Elliptic pressure test

Pressure recovery is spatial:

```math
\nabla^2p(t)=T((S+\Omega)\otimes(S+\Omega))(t).
```

This gives time-slice Calderon-Zygmund structure, angular cancellation, and
spatial nonlocality. It does not average in time. A pressure carrier can remain
supported on shrinking terminal intervals while satisfying the elliptic pressure
law at each time slice.

Thus elliptic recovery gives spatial smearing, not the required terminal time
modulus.

## Local energy and material tests

Local energy inequalities integrate pressure work in time, but after terminal
one-sided directional selection they return to active-square/source-strength
estimates or pressure-source carrier control. They do not produce super-`L^1_t`
control of the selected pure pressure residue.

A material residence theorem would need pressure influence to stay tied to a
same-fluid material ancestry over a positive time interval. Pressure influence
is elliptic. Turning it into material residence requires the localized Leray
source tether:

```math
LocalizedLeraySourceTether.A_{ind},
```

which is one of the open pressure/source endpoints already checked.

## Terminal atom model

The surviving bad model is:

```math
g_m(s)=m1_{(-1/m,0]}(s)
\rightharpoonup\delta_{s=0}.
```

It can carry pressure-sustain mass bounded below by `M_0>0` on a shrinking terminal time
layer. Spatial elliptic recovery sees the source at each time slice and does
not spread it into earlier times. Local compactness can extract a terminal
pressure residue. The pure-pressure branch keeps this residue singular to the
native source-legal carrier.

This model is compatible with the installed hypotheses and violates
`PressureTimeSpread.A`.

## Result

`PressureTimeSpread.A / EllipticTimeSmearing.A` is not installed.

The pressure/eigenframe route has now been tested through:

```text
TerminalPressureHessianNoSustain.A,
TerminalCZPressureCancellation.A,
TerminalPressurePartnerSaturation.A,
PressureLobeSourceTether.A,
PressureSustainResidueToSourceResidue.A,
PressureSourceAC.A / LocalizedLeraySourceTether.A_ind,
QuadraticDefectSourceDomination.A,
PurePressureSustainResidueLiouville.A,
TerminalPressurePureStrainLegal.A,
TerminalPressureTraceAngularSaturation.A,
PressureRigidClassProduction.A,
PressureTimeSpread.A / EllipticTimeSmearing.A.
```

At current authority, every pressure route either returns to the terminal
source-current wall or requires a genuinely new pressure-specific theorem.

## Loop consequence

The current proof search must leave the pressure subroute. The surviving
public-finality obstruction is again the all-doors-closed terminal native
positive source atom:

```math
B_{ASAC}^{closed,min}
```

with endpoint time-marginal witness:

```math
g_m(s)=m1_{(-1/m,0]}(s).
```

The next non-alias target is:

```math
NewTerminalSourceTimeProductionMechanism.A.
```

It must produce one genuinely new theorem that forces terminal source
time-thickness, a source-Carleson / reserve charge, a rigid anti-atom class, a
transported no-incoming time-face control, an independent pressure/Leray
source tether, or a new Part/Field witness strong enough to feed
`OriginalSmoothDataPackSurvival.A`.

Until such a theorem is proved and propagated:

```text
SourceTimeConcentrationCost.A: open
ExternalTerminalTimeThicknessMechanism.A: open
OriginalSmoothDataPackSurvival.A: open
NoGenuineExitFromSmoothData.A: open
pdfs_final: false.
```
