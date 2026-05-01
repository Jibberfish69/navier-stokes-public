# EndpointSelector.TTU — Finite-Complexity Rule Test

## Status

Failed as a consequence of the current endpoint definitions. Conditional sufficiency recorded.

## Target

Test whether the active terminal label family has a built-in finite-complexity rule preventing moving strain spikes:

```math
A_Q \leadsto \{a_1,\dots,a_J\}
```

or a finite family of controlled label cells that preserves the endpoint gauges.

## Current endpoint definitions

The endpoint faces use supremal gauges over the active packet. For example,

```math
\mathfrak A_{N,Q}(t)=\sup_{x\in Q_t}\sum_{k=0}^N(|U_k|+|K_k|),
```

and

```math
\Gamma_{pack,Q}(t)=\sup_{a\in A_Q(t)}\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\}.
```

These definitions provide threshold witnesses: for each threshold, some active point or label realizes the escape. They do not force the same finite set of labels or cells to realize all thresholds.

## Moving-spike obstruction

A continuum active label family can support moving spikes:

```math
s(a,t)=\sum_n A_n\phi_n(a)\psi_n(t),
```

where the label supports move through disjoint regions. Each fixed finite selector can miss all but finitely many spikes, while the supremum still sees every spike.

This pattern is compatible with threshold selectors and incompatible with a fixed finite selector conclusion.

## Conditional finite-complexity theorem

A sufficient structural theorem would be:

```math
FiniteComplexity.TTU:
\exists\text{ finite cells }C_1,\dots,C_J
\text{ and representatives }a_j\in C_j
```

with a terminal control

```math
\sup_{a\in C_j}s(a,t)
\le C\,s(a_j,t)+e_j(t),
\qquad
\sum_j\int e_j(t)dt<\infty.
```

Then

```math
\int\sup_{a\in A_Q}s(a,t)dt
\le
C\sum_j\int s(a_j,t)dt+
\sum_j\int e_j(t)dt.
```

Together with absence of bad strain tails on the representatives, this gives `Pack.TTU`.

## Verdict

The current endpoint framework supplies finite threshold selectors. It does not supply a finite-complexity rule preventing moving spikes.

The required theorem is

```math
FiniteComplexity.TTU
```

or an equivalent integrable label-modulus theorem.