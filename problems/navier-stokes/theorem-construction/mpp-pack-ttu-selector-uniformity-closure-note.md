# MPP Pack.TTU Selector / Uniformity Closure Note

## Status

Audit of the two subtargets left by the direct `Pack.TTU` fallback:

```math
EndpointSelector.TTU
\qquad\text{and}\qquad
UniformStrainTail.TTU.
```

The result is that both are conditional theorem shapes. Neither follows from the
current endpoint definitions, compact label topology, labelwise finite strain,
or original smooth data alone.

## Common Setup

Let

```math
s(a,t):=
\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

The required direct pack ledger is

```math
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)\,dt<\infty.
```

The endpoint face typing already proves that a labelwise infinite strain tail
is an endpoint tower face:

```math
\mathcal S_\infty\ne\varnothing
\Longrightarrow
tower\text{-}blown.
```

The remaining problem is the continuum supremum over labels.

## Target 1: `EndpointSelector.TTU`

The desired selector theorem is a fixed finite reduction:

```math
\exists\{a_1,\dots,a_J\}\subset A_Q
```

such that the terminal supremal strain ledger is controlled by those labels.

For an already finite active packet, this is valid:

```math
A_Q=\{a_1,\dots,a_J\},
\qquad
\mathcal S_\infty=\varnothing
\Longrightarrow
S_{pack,Q}\in L^1([t_0,T_*)).
```

But the endpoint definitions supply only threshold selectors:

```math
\forall M\ \exists(a_M,t_M):\quad s(a_M,t_M)>M.
```

The selected label may depend on `M`. That does not produce a fixed finite
selector set.

## Target 2: `UniformStrainTail.TTU`

The desired uniformity theorem is:

```math
\mathcal S_\infty=\varnothing
\Longrightarrow
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)\,dt<\infty.
```

Labelwise finite strain does not imply this.  Here is the exact obstruction
model.  Let `A_Q=[0,1]`.  Choose pairwise disjoint label intervals `U_n` and
pairwise disjoint terminal time intervals `I_n`.  Choose nonnegative bumps
`\chi_n(a)` supported in `U_n` and `\psi_n(t)` supported in `I_n`, with
`sup_a chi_n(a)=1`, and choose amplitudes `h_n` so that
`h_n\int_{I_n}\psi_n(t)\,dt=1`.  Set

```math
s(a,t)=\sum_n h_n\chi_n(a)\psi_n(t),
```

Since the `U_n` are disjoint, each fixed label belongs to at most one support, so

```math
\int_{t_0}^{T_*}s(a,t)\,dt<\infty
\qquad\text{for every fixed }a,
```

while

```math
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)\,dt
\ge
\sum_n h_n\int_{I_n}\psi_n(t)\,dt
=\sum_n 1
=\infty.
```

The same construction defeats every fixed finite selector: choose all later
`U_n` disjoint from that finite set, and the selected labels miss the later
spikes.  This is a measure-theoretic obstruction to the implication from
labelwise strain tails to the supremal ledger; it is not claimed here as a
Navier--Stokes solution.

## Conditional Closure 1: Finite Complexity

A sufficient structural theorem is:

```math
FiniteComplexity.TTU:
\exists C_1,\dots,C_J,\ a_j\in C_j
```

with

```math
\sup_{a\in C_j}s(a,t)
\le
C\,s(a_j,t)+e_j(t),
\qquad
\sum_j\int_{t_0}^{T_*}e_j(t)\,dt<\infty.
```

Together with absence of bad strain tails on the representatives, this gives
the terminal pack ledger.

The current endpoint framework does not supply this finite-complexity rule.

## Conditional Closure 2: Integrable Label Modulus

Another sufficient theorem is an integrable terminal label modulus. If `A_Q` is
compact and for a finite `\delta`-net `{a_j}`,

```math
|s(a,t)-s(b,t)|\le\omega_t(\delta)
\quad
d(a,b)\le\delta,
```

with

```math
\int_{t_0}^{T_*}\omega_t(\delta)\,dt<\infty,
```

then

```math
\sup_{a\in A_Q}s(a,t)
\le
\sum_j s(a_j,t)+\omega_t(\delta),
```

and labelwise finite strain gives `Pack.TTU`.

Original smooth data gives continuity on compact subintervals below `T_*`; it
does not give the terminal integrable modulus.

## Closed Reduction

The selector/uniformity branch reduces to:

```math
\boxed{
FiniteComplexity.TTU
\quad\text{or}\quad
IntegrableLabelModulus.TTU.
}
```

Neither is currently installed from `OriginalSmoothData`.

The direct attempt on these structural hypotheses is recorded in
`mpp-label-finite-complexity-modulus-direct-attempt-note.md`. It reduces them to
one no-moving-spike structural atom:

```math
LabelNoMovingSpike.TTU.
```

That atom is not installed from `OriginalSmoothData`; an integrable label
modulus would require continuation-grade material-coordinate control such as
terminal `\nabla_x^2u` and pack-gauge bounds, while finite complexity is not a
consequence of the endpoint threshold-witness definitions.

The direct pointwise fallback remains:

```math
Pack.TTU
\Leftarrow
EndpointSelector.TTU\ \text{or}\ UniformStrainTail.TTU
\Leftarrow
FiniteComplexity.TTU\ \text{or}\ IntegrableLabelModulus.TTU.
```

This is a valid conditional route, not an unconditional replacement for the
active averaged route through `SOURCE.NO-PULSE.A`.
