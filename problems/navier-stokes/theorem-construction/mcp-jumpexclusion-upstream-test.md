# JumpExclusion.Upstream Test

## Status

Failed upstream discharge.

## Target

```math
JumpExclusion.Upstream:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\neg Jump_{avg}.
```

Equivalently,

```math
OriginalSmoothData+Pack.TTU
\Longrightarrow
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing.
```

## Available inputs

`Pack.TTU` supplies bounded terminal pack geometry:

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

This gives same-fluid distortion control and supports stable moving-cylinder comparisons.

Original data supplies energy-class bounds and compact-time smoothness:

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

## Bad set

The active SCF-bad set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

By the endpoint grammar,

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

## Test result

Pack control stabilizes geometry. It gives no direct bound for the local scale-critical packet

```math
SCF_{base}(Q_r^\Phi(a,t)).
```

Energy gives SCF-good scales at material-a.e. points. The active endpoint tail requires every active terminal material point to have a positive good scale.

Thus the current inputs give

```math
OriginalSmoothData+Pack.TTU
\Longrightarrow
\text{a.e. SCF-good coverage with stable geometry},
```

and they do not give full active-tail SCF-good coverage.

## Forbidden downstream shortcut

The downstream route is

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow \neg Jump_{avg}.
```

This route belongs after averaged endpoint closure. It cannot feed the upstream proof of `GoodScale.TTU`.

## Verdict

`JumpExclusion.Upstream` remains open.

The next target is a concentration exclusion theorem:

```math
SCFBad.Contra:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\mathcal B_{\varepsilon_m}^{\Phi}=\varnothing,
```

or a theorem showing every active terminal SCF-bad point forces a stronger endpoint face already excluded upstream.