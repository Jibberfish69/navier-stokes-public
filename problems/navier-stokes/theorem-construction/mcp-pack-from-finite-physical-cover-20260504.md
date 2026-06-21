# Pack from finite physical same-fluid cover

## Status

Theorem-grade Pack-row replacement for the failed continuum fixed-selector route.

## Target

Prove

```math
READ.COVER+ATD_m^\varepsilon\Longrightarrow Pack_Q.
```

## Inputs

Assume `READ.COVER` gives a finite same-fluid cover of the retained approach window:

```math
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^M Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
r_*:=\min_i r_i>0,
```

and each cylinder is SCF-good:

```math
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

By local CKN completion, each shrunken cylinder carries `ATD_m^\varepsilon`; choose `m` high enough to control `\nabla u` and the transported chart distortion constants.

## Local strain bound

On each shrunken cover element,

```math
\sup_{Q_{\theta r_i}^{\Phi}(a_i,t_i)}\|\nabla u\|_{op}
\le C_i.
```

Since the cover is finite,

```math
C_*:=\max_{1\le i\le M}C_i<\infty.
```

Therefore along every retained same-fluid trajectory inside the covered tail,

```math
\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}
\le C_*.
```

Hence

```math
S_{pack,Q}(t)
:=\sup_{a\in A_Q(t)}\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}
\le C_*.
```

## Pack strain integral

For a finite terminal interval `[t_0,T_*)`,

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt
\le C_*(T_*-t_0)<\infty.
```

## Flow-map estimate

Let `F(a,t)=\nabla_a\Phi(a,t)`. It solves

```math
\partial_tF(a,t)=\nabla u(\Phi(a,t),t)F(a,t).
```

Thus

```math
\frac{d}{dt}\|F(a,t)\|\le \|\nabla u(\Phi(a,t),t)\|_{op}\|F(a,t)\|.
```

Gronwall gives

```math
\|F(a,t)\|
\le
\|F(a,t_0)\|
\exp\left(\int_{t_0}^{t}S_{pack,Q}(s)ds\right).
```

For the inverse deformation,

```math
\partial_tF^{-1}=-F^{-1}\nabla u(\Phi(a,t),t),
```

and the same estimate gives

```math
\|F(a,t)^{-1}\|
\le
\|F(a,t_0)^{-1}\|
\exp\left(\int_{t_0}^{t}S_{pack,Q}(s)ds\right).
```

Since the pack strain integral is finite, both `F` and `F^{-1}` remain bounded on the retained tail. Therefore

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

This is the Field-window support:

```math
Pack_Q.
```

## Theorem

```math
\boxed{
READ.COVER+ATD_m^\varepsilon\Longrightarrow Pack_Q.
}
```

## Why this bypasses fixed-selector failure

The failed continuum selector theorem asks for one fixed finite label set carrying a supremal moving-label escape. This proof uses a finite physical same-fluid cover instead. The cover supplies a uniform local strain bound over the whole retained approach window, so moving-label spikes cannot evade it.

## Claimed status

Discharged at theorem-construction level under the finite physical cover and local ATD hypotheses.