# GoodScale Closure From TowerBound And SCF-Bad Typing

## Status

Conditional closure template.

## Target

```math
GoodScale.TTU:
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing.
```

## Inputs

Assume `Pack.TTU`, so the active same-fluid geometry is stable:

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

Assume the SCF-bad typing theorem:

```math
(a,T_*)\in\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
tower\text{-}blown.
```

This typing may be supplied either by direct tower-readout compatibility or by the stronger persistence route

```math
SCFBase.Modulus
\Longrightarrow
SCFBad.Persistence.Modulus
\Longrightarrow
SCF\text{-bad concentration}\Longrightarrow tower\text{-}blown.
```

Assume the upstream tower exclusion:

```math
TowerBound.Upstream:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\neg tower\text{-}blown.
```

## Proof

Suppose an active SCF-bad material point exists:

```math
(a,T_*)\in\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp).
```

By the SCF-bad typing theorem,

```math
tower\text{-}blown.
```

By `TowerBound.Upstream`,

```math
\neg tower\text{-}blown.
```

This contradiction excludes the active bad material set. Hence

```math
GoodScale.TTU.
```

## Conditional benchmark

The BKM comparison route supplies one conditional source:

```math
BKM
\Longrightarrow
Pack.TTU+SCFBase.Modulus+TowerBound.Upstream
\Longrightarrow
GoodScale.TTU.
```

## Boundary

This note records the logical closure. The unconditional route still needs a non-BKM source for `TowerBound.Upstream` or for `SCFBase.Modulus` strong enough to yield the same contradiction.