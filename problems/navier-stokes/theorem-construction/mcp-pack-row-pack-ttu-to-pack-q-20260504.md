# Pack row: `Pack.TTU => Pack_Q`

## Status

Conditional theorem-facing completion of the Field-window support row.

The finite-selector retained tail route closes. The continuum active-label case remains governed by the separate uniform selector / uniform strain-tail target.

## Target

Prove the CM Field-window support row:

```math
Pack.TTU \Longrightarrow Pack_Q.
```

For the retained terminal tail, `Pack_Q` is the bounded same-fluid packing witness on `Q`: the terminal pack gauge remains finite on the retained tail.

## Installed route

The current route surfaces give the finite-selector proof:

```math
End_{NS}+StrainTail.TTU+|A_Q|<\infty
\Longrightarrow Pack.TTU.
```

Here `A_Q={a_1,\dots,a_J}` is the finite active selector family.

The strain-tail theorem gives, for each selector label,

```math
\int_{t_0}^{T_*}\|\operatorname{sym}\nabla u(\Phi(a_j,t),t)\|_{op}\,dt<\infty.
```

Since the selector family is finite,

```math
S_{pack,Q}(t)
=\max_{1\le j\le J}\|\operatorname{sym}\nabla u(\Phi(a_j,t),t)\|_{op},
```

so

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt
\le
\sum_{j=1}^{J}\int_{t_0}^{T_*}\|\operatorname{sym}\nabla u(\Phi(a_j,t),t)\|_{op}\,dt<\infty.
```

By the conditional pack-strain theorem,

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

This is exactly the retained pack witness:

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*))
\Longrightarrow Pack_Q.
```

## Theorem

```math
\boxed{
End_{NS}+StrainTail.TTU+|A_Q|<\infty
\Longrightarrow Pack.TTU
\Longrightarrow Pack_Q.
}
```

## Continuum-label boundary

For a continuum active-label family, labelwise strain-tail integrability gives pointwise-in-label information. The Field-window support needs the uniform pack gauge

```math
\int_{t_0}^{T_*}\sup_{a\in A_Q}\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}\,dt<\infty.
```

That requires one of the following targets:

```math
EndpointSelector.TTU
\quad\text{or}\quad
UniformStrainTail.TTU.
```

## Claimed status

Finite-selector Pack row complete. General active-label Pack row conditional on `EndpointSelector.TTU` or `UniformStrainTail.TTU`.