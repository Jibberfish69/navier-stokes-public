# Pack.TTU Strain Ledger Conditional Control

## Status

Conditional pack-control theorem.

## Pack strain ledger

Let

```math
F(a,t):=D_a\Phi(a,t),
\qquad
A(x,t):=\nabla u(x,t),
\qquad
S(x,t):=\frac12(A(x,t)+A(x,t)^T).
```

Define the pack-native strain ledger on the active same-fluid label family by

```math
S_{pack,Q}(t)
:=
\sup_{a\in A_Q(t)}\|S(\Phi(a,t),t)\|_{op}.
```

Equivalently,

```math
S_{pack,Q}(t)
=
\sup_{a\in A_Q(t)}
\max\{\lambda_{max}(S(\Phi(a,t),t)),\ -\lambda_{min}(S(\Phi(a,t),t))\}.
```

This ledger measures the logarithmic growth of singular values of the deformation, while pure rotation contributes no singular-value growth.

## Theorem `Pack.TTU.cond`

If

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty,
```

then

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

More precisely,

```math
\Gamma_{pack,Q}(t)
\le
\Gamma_{pack,Q}(t_0)
\exp\left(\int_{t_0}^{t}S_{pack,Q}(s)\,ds\right).
```

## Proof

The deformation gradient obeys

```math
\frac{d}{dt}F(a,t)=A(\Phi(a,t),t)F(a,t).
```

For any vector `v`,

```math
\frac{d}{dt}|Fv|^2
=2\langle S(\Phi(a,t),t)Fv,Fv\rangle
\le
2S_{pack,Q}(t)|Fv|^2.
```

Thus

```math
|F(a,t)v|
\le
|F(a,t_0)v|\exp\left(\int_{t_0}^{t}S_{pack,Q}(s)\,ds\right).
```

Taking the supremum over unit vectors gives

```math
\|F(a,t)\|_{op}
\le
\|F(a,t_0)\|_{op}
\exp\left(\int_{t_0}^{t}S_{pack,Q}(s)\,ds\right).
```

For the inverse, the smallest singular value satisfies the lower inequality

```math
\frac{d}{dt}|Fv|^2
=2\langle S(\Phi(a,t),t)Fv,Fv\rangle
\ge
-2S_{pack,Q}(t)|Fv|^2.
```

Therefore

```math
\sigma_{min}(F(a,t))
\ge
\sigma_{min}(F(a,t_0))
\exp\left(-\int_{t_0}^{t}S_{pack,Q}(s)\,ds\right),
```

and hence

```math
\|F(a,t)^{-1}\|_{op}
\le
\|F(a,t_0)^{-1}\|_{op}
\exp\left(\int_{t_0}^{t}S_{pack,Q}(s)\,ds\right).
```

Taking the supremum over the finite same-fluid label family gives the bound for

```math
\Gamma_{pack,Q}(t)
:=
\sup_{a\in A_Q(t)}
\max\{\|F(a,t)\|_{op},\|F(a,t)^{-1}\|_{op}\}.
```

Thus integrability of `S_pack,Q` implies bounded pack gauge on the terminal tail.

## Output

The conditional pack theorem is

```math
\boxed{
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
}
```

## Boundary

This proves the second implication inside `Pack.TTU`. The unresolved part is the original-data estimate

```math
OriginalSmoothData
\Longrightarrow
S_{pack,Q}\in L^1([t_0,T_*)).
```

The next test is whether energy/enstrophy, vorticity, or a BKM-type route supplies that estimate.