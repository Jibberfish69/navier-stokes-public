# PCTP.hard Terminal-Tail Pack Control Attempt

## Status

Failed discharge. This note isolates the first obstruction in `PCTP.hard`.

Target:

```math
OriginalSmoothData\Longrightarrow \Gamma_{pack,Q}\in L^\infty(0,T_*)
```

on the periodic terminal tail, without assuming

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty.
```

## Conditional lemma that is available

Let `X(a,t)` be the flow map and

```math
F(a,t)=\nabla_aX(a,t).
```

For a smooth solution on every compact subinterval of `[0,T_*)`,

```math
\frac{d}{dt}F(a,t)=\nabla u(X(a,t),t)F(a,t),
```

and

```math
\frac{d}{dt}F(a,t)^{-1}=-F(a,t)^{-1}\nabla u(X(a,t),t).
```

Therefore the pack gauge

```math
\Gamma_{pack,Q}(t)
:=\sup_{a\in A_Q(t)}\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\}
```

obeys the conditional estimate

```math
\Gamma_{pack,Q}(t)
\le
\Gamma_{pack,Q}(0)
\exp\left(\int_0^t\|\nabla u(s)\|_{L^\infty}\,ds\right).
```

Thus pack control follows from an endpoint Lipschitz integral or an equivalent pack-native strain budget.

## Attempted replacement by incompressibility

Incompressibility gives

```math
\det F(a,t)=1.
```

This controls the product of singular values only. It does not control the largest singular value, nor the reciprocal of the smallest singular value. A volume-preserving deformation can stretch one direction and compress another while keeping determinant one. Hence incompressibility alone does not control `\Gamma_{pack,Q}`.

## Attempted replacement by energy/enstrophy

The energy class supplies global `L^2` velocity and spacetime `L^2` gradient control. These controls do not give

```math
\nabla u\in L^1_tL^\infty_x
```

on a terminal interval. A derivation of that endpoint Lipschitz integral would already be a continuation-grade regularity estimate.

## Attempted endpoint-matrix shortcut

The endpoint matrix says that pack failure enters the endpoint face

```math
packing\text{-}detached\vee tower\text{-}blown.
```

Using `End_NS` to remove that face before proving the terminal-tail inputs would be circular:

```math
End_{NS}\Rightarrow\Gamma_{pack,Q}\in L^\infty\Rightarrow End_{NS}.
```

Thus the endpoint matrix cannot supply terminal pack control upstream.

## Exact missing theorem

The missing noncircular theorem is a pack-native strain estimate:

```math
OriginalSmoothData
\Longrightarrow
\int_0^{T_*}S_{pack,Q}(t)\,dt<\infty,
```

where `S_pack,Q` dominates the logarithmic growth of both `\|F\|` and `\|F^{-1}\|` on the terminal same-fluid tail, while being derived directly from the original periodic Navier-Stokes dynamics and not from `End_NS`, `Field`, `OFP.A`, `CFI.A`, or a continuation-grade `H^s` bound.

## Verdict

The pack-control step of `PCTP.hard` is not discharged. The current route has the conditional Gronwall lemma, but lacks the required noncircular terminal pack-native strain bound from `OriginalSmoothData`.