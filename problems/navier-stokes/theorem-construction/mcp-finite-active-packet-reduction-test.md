# Finite Active-Packet Reduction Test

## Status

Conditional reduction plus remaining selector gap.

## Target

Test whether the active terminal packet can be reduced to finitely many labels

```math
A_Q=\{a_1,\dots,a_J\}.
```

If this holds, then absence of bad strain tails gives `Pack.TTU`.

## Finite selector case

Assume a fixed finite active selector set

```math
A_Q=\{a_1,\dots,a_J\}.
```

If `\mathcal S_\infty=\varnothing`, then for every `j`,

```math
\int_{t_0}^{T_*}\|\operatorname{sym}\nabla u(\Phi(a_j,t),t)\|_{op}\,dt<\infty.
```

Therefore

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt
=
\int_{t_0}^{T_*}
\max_{1\le j\le J}
\|\operatorname{sym}\nabla u(\Phi(a_j,t),t)\|_{op}\,dt
```

and

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt
\le
\sum_{j=1}^{J}
\int_{t_0}^{T_*}
\|\operatorname{sym}\nabla u(\Phi(a_j,t),t)\|_{op}\,dt
<\infty.
```

Thus

```math
\mathcal S_\infty=\varnothing+|A_Q|<\infty
\Longrightarrow
S_{pack,Q}\in L^1([t_0,T_*))
\Longrightarrow
Pack.TTU.
```

## General endpoint packet

The endpoint gauges in the current witness are supremal:

```math
\Gamma_{pack,Q}(t)=\sup_{a\in A_Q(t)}\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\},
```

and

```math
S_{pack,Q}(t)=\sup_{a\in A_Q(t)}\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

A finite spatial cover gives finitely many cover elements. It still contains continua of labels inside each cover element. A threshold-dependent selector sequence can witness large values of the supremum, while a fixed finite label set may miss later thresholds.

Therefore the finite active-packet reduction is an additional theorem.

## Required selector theorem

The missing theorem is

```math
EndpointSelector.TTU:
\text{terminal endpoint packet admits a fixed finite active selector set preserving the endpoint gauges.}
```

A weaker sufficient form is

```math
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)\,dt
\le
C\sum_{j=1}^{J}\int_{t_0}^{T_*}s(a_j,t)\,dt
```

for

```math
s(a,t)=\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

## Verdict

Finite active-packet reduction closes `Pack.TTU` in the finite selector case. The general continuum active label family still requires `EndpointSelector.TTU` or `UniformStrainTail.TTU`.