# UniformStrainTail Retry: Selector And Moving-Spike Test

## Status

Anchored retry result. The finite selector route remains valid. The continuum selector route fails without an extra finite-complexity or integrable-modulus theorem.

## Anchored target

Let

```math
s(a,t):=
\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

The continuum target is

```math
UniformStrainTail.TTU:
\mathcal S_\infty=\varnothing
\Longrightarrow
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)\,dt<\infty.
```

The finite selector target is

```math
EndpointSelector.TTU:
\exists\{a_1,\dots,a_J\}\subset A_Q
\quad
\int\sup_{a\in A_Q}s(a,t)dt
\le
C\sum_{j=1}^{J}\int s(a_j,t)dt.
```

## Finite selector case

If the active packet is already a fixed finite selector set,

```math
A_Q=\{a_1,\dots,a_J\},
```

then

```math
\int\sup_{a\in A_Q}s(a,t)dt
\le
\sum_{j=1}^{J}\int s(a_j,t)dt.
```

Together with `\mathcal S_\infty=\varnothing`, this gives `Pack.TTU`.

## Moving-spike obstruction

Compactness and pointwise finite strain do not imply the continuum target.

Take a compact label set `A_Q=[0,1]` and a terminal sequence `t_n\uparrow T_*`. Choose disjoint label neighborhoods `U_n\subset A_Q` and disjoint time intervals `I_n\subset[t_0,T_*)` with `I_n\to T_*`. Let

```math
s(a,t)=\sum_{n}A_n\phi_n(a)\psi_n(t),
```

where `\phi_n` and `\psi_n` are smooth bumps supported in `U_n` and `I_n`, and choose

```math
A_n|I_n|=1/n.
```

Every fixed label belongs to at most one `U_n`, so

```math
\int_{t_0}^{T_*}s(a,t)dt<\infty
\qquad\text{for every }a.
```

Hence

```math
\mathcal S_\infty=\varnothing.
```

But

```math
\int_{t_0}^{T_*}\sup_a s(a,t)dt
\ge
\sum_n A_n|I_n|
=
\sum_n\frac1n
=
\infty.
```

Thus `UniformStrainTail.TTU` fails under compactness and pointwise finite strain alone.

## EndpointSelector.TTU test

The same construction defeats a fixed finite selector. For any finite set

```math
\{a_1,\dots,a_J\}\subset A_Q,
```

choose all but finitely many `U_n` disjoint from that selector. The finite selector misses the later moving spikes while the continuum supremum still sees them.

Thus threshold-dependent labels can witness arbitrarily large supremal strain, while no fixed finite selector captures the whole terminal strain ledger.

## Exact missing hypothesis

A successful continuum theorem needs one of the following:

```math
\text{fixed finite active selector packet},
```

```math
\text{integrable label-modulus }\omega_t(\delta)\text{ with }\int\omega_t(\delta)dt<\infty,
```

or

```math
\text{finite-complexity rule preventing moving strain spikes across labels.}
```

## Verdict

The anchored retry leaves the live target as a genuine uniformity theorem:

```math
UniformStrainTail.TTU
```

or a structural selector theorem:

```math
EndpointSelector.TTU.
```

Finite active packets close. Continuum active packets require additional structure beyond compactness and labelwise finite strain.