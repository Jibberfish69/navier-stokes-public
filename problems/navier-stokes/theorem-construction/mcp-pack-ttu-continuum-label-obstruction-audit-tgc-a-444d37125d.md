# Pack.TTU Continuum-Label Obstruction Audit

Status: failed for continuum active label families. Finite-selector `Pack.TTU` remains valid.

## Target

The continuum target is

```math
UniformStrainTail.TTU:
\mathcal S_\infty=\varnothing
\Longrightarrow
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)\,dt<\infty,
```

where

```math
s(a,t)=\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

The selector target is

```math
EndpointSelector.TTU:
\exists\{a_1,\dots,a_J\}\subset A_Q
\quad
\int\sup_{a\in A_Q}s(a,t)dt
\le C\sum_{j=1}^{J}\int s(a_j,t)dt.
```

## Finite-selector closure

If

```math
A_Q=\{a_1,\dots,a_J\},
```

then

```math
\int\sup_{a\in A_Q}s(a,t)dt
\le
\sum_{j=1}^{J}\int s(a_j,t)dt.
```

Together with labelwise finite strain-tail control, this gives `Pack.TTU`.

## Moving-spike obstruction

Compactness and labelwise finite strain do not imply the continuum result. A moving spike construction on a compact label set can have

```math
\int_{t_0}^{T_*}s(a,t)dt<\infty
\qquad\text{for every fixed }a,
```

while

```math
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)dt=\infty.
```

The same construction defeats every fixed finite selector by moving the spikes away from that selector after finitely many steps.

## Verdict

For continuum active label families, `Pack.TTU` remains open at exactly one of the following missing hypotheses:

```math
EndpointSelector.TTU
```

or

```math
UniformStrainTail.TTU.
```

A successful theorem must add either a fixed finite active selector packet, an integrable label-continuity modulus, or a finite-complexity rule preventing moving terminal strain spikes.

## Boundary

This obstruction belongs to the direct `Pack.TTU` branch. The averaged terminal route avoids it through `TGC.A` and `Jump_avg` classification.