# Pack.TTU Retry Via Finite-Selector Strain Route

Status: conditional retry theorem. The full direct `OriginalSmoothData` theorem remains open for continuum active label families.

## Diagnosis

The failed step asked for

```math
OriginalSmoothData
\Longrightarrow
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty,
```

where

```math
S_{pack,Q}(t)=\sup_{a\in A_Q(t)}\|S(\Phi(a,t),t)\|_{op}.
```

Energy and enstrophy supply

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
```

which control spacetime averages. `Pack.TTU` asks for an `L^1_t` bound on a material-label supremum of strain. That is a stronger terminal object. Labelwise strain control also does not control the continuum supremum without a compact-uniform strain-tail theorem or a finite-selector reduction.

## Conditional strain-to-pack theorem

Let

```math
F(a,t)=D_a\Phi(a,t),
\qquad
S=\frac12(\nabla u+\nabla u^T).
```

The deformation equation gives

```math
\partial_tF(a,t)=\nabla u(\Phi(a,t),t)F(a,t).
```

For every vector `v`,

```math
\frac{d}{dt}|Fv|^2
=2\langle S(\Phi(a,t),t)Fv,Fv\rangle
\le2S_{pack,Q}(t)|Fv|^2.
```

The inverse deformation satisfies the corresponding lower singular-value estimate. Hence

```math
\Gamma_{pack,Q}(t)
\le
\Gamma_{pack,Q}(t_0)
\exp\left(\int_{t_0}^{t}S_{pack,Q}(s)\,ds\right).
```

Thus

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

## Retry: finite-selector closure

Assume the active terminal packet has a fixed finite selector set

```math
A_Q=\{a_1,\dots,a_J\}.
```

Assume `StrainTail.TTU` and pointwise endpoint closure `End_NS`. Since `End_NS` excludes `tower-blown`, the strain-tail endpoint typing gives no infinite-strain label in the selector packet. Therefore, for every `j`,

```math
\int_{t_0}^{T_*}
\|S(\Phi(a_j,t),t)\|_{op}\,dt<\infty.
```

For the fixed finite selector set,

```math
S_{pack,Q}(t)
=
\max_{1\le j\le J}\|S(\Phi(a_j,t),t)\|_{op}.
```

Hence

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt
\le
\sum_{j=1}^{J}
\int_{t_0}^{T_*}\|S(\Phi(a_j,t),t)\|_{op}\,dt
<\infty.
```

The conditional strain-to-pack theorem then gives

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

Therefore the finite-selector retry closes:

```math
End_{NS}+StrainTail.TTU+|A_Q|<\infty
\Longrightarrow
Pack.TTU.
```

## Remaining exact target

For continuum active label families, the remaining theorem is one of:

```math
EndpointSelector.TTU
```

or

```math
UniformStrainTail.TTU.
```

Either theorem would convert labelwise strain-tail control into the terminal supremal strain budget required by full direct `Pack.TTU`.