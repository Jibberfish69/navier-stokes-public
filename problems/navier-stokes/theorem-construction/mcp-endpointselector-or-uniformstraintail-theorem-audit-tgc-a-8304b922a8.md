# EndpointSelector Or UniformStrainTail Theorem Audit

Status: failed as an unconditional theorem. Conditional sufficiency is recorded.

## Target

Close the continuum-label obstruction behind full direct `Pack.TTU` by proving either

```math
EndpointSelector.TTU
```

or

```math
UniformStrainTail.TTU.
```

Let

```math
s(a,t)=\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

The desired consequence is

```math
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)dt<\infty.
```

## EndpointSelector.TTU test

Current endpoint definitions supply threshold selectors: for each threshold there may be a label witnessing large strain or pack distortion. They do not force a fixed finite set of labels to witness all terminal thresholds.

A finite-complexity theorem would be sufficient:

```math
\exists C_1,\dots,C_J,
\quad
\sup_{a\in C_j}s(a,t)
\le C s(a_j,t)+e_j(t),
\qquad
\sum_j\int e_j(t)dt<\infty.
```

Then a fixed finite selector controls the supremal strain integral. This theorem is not supplied by the current endpoint definitions.

## UniformStrainTail.TTU test

An integrable label modulus is also sufficient. If for some finite `delta`-net `{a_j}`,

```math
|s(a,t)-s(b,t)|\le\omega_t(\delta)
\qquad d(a,b)\le\delta,
```

and

```math
\int_{t_0}^{T_*}\omega_t(\delta)dt<\infty,
```

then

```math
\sup_{a\in A_Q}s(a,t)
\le
\sum_{j=1}^J s(a_j,t)+\omega_t(\delta).
```

Together with labelwise finite strain integrals, this gives `Pack.TTU`.

## Moving-spike obstruction

Without finite complexity or an integrable label modulus, a moving-spike pattern on compact `A_Q` can satisfy

```math
\int s(a,t)dt<\infty
\quad\text{for every fixed }a,
```

while

```math
\int \sup_a s(a,t)dt=\infty.
```

The same construction defeats every fixed finite selector.

## Verdict

The direct continuum-label branch remains open at:

```math
FiniteComplexity.TTU
\quad\text{or}\quad
\int\omega_t(\delta)dt<\infty.
```

Equivalently, full direct `Pack.TTU` remains open for continuum active label families.

The averaged route avoids this obstruction by routing moving bad packets into `Jump_avg` through `TGC.A`.