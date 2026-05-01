# Integrable Label-Modulus Strain Test

## Status

Conditional theorem proved; original-data supply remains open.

## Target

Let

```math
s(a,t):=
\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

Seek a condition implying

```math
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)\,dt<\infty.
```

## Conditional label-modulus theorem

Assume `A_Q` is compact and there exist `\delta>0`, a finite `\delta`-net

```math
\{a_1,\dots,a_J\}\subset A_Q,
```

and an integrable label modulus `\omega_t(\delta)` such that

```math
|s(a,t)-s(b,t)|\le \omega_t(\delta)
\qquad\text{whenever }d(a,b)\le\delta,
```

with

```math
\int_{t_0}^{T_*}\omega_t(\delta)\,dt<\infty.
```

Then for every `a\in A_Q`, choose `a_j` with `d(a,a_j)\le\delta`. Hence

```math
s(a,t)
\le
s(a_j,t)+\omega_t(\delta).
```

Taking the supremum over `a`,

```math
\sup_{a\in A_Q}s(a,t)
\le
\max_{1\le j\le J}s(a_j,t)+\omega_t(\delta)
\le
\sum_{j=1}^{J}s(a_j,t)+\omega_t(\delta).
```

If `\mathcal S_\infty=\varnothing`, then each selector label has finite strain integral:

```math
\int_{t_0}^{T_*}s(a_j,t)dt<\infty.
```

Therefore

```math
\int_{t_0}^{T_*}\sup_{a\in A_Q}s(a,t)dt<\infty.
```

This gives

```math
UniformStrainTail.TTU
```

under the integrable label-modulus hypothesis.

## Original-data test

Compact-time smoothness gives continuity of `s(\cdot,t)` for each `t<T_*`. It does not give the terminal integrable modulus

```math
\int_{t_0}^{T_*}\omega_t(\delta)dt<\infty.
```

A moving-spike pattern can keep every label integral finite while forcing the supremal integral to diverge. The integrable modulus is precisely the condition that rules out such moving spikes.

## Verdict

The label-modulus theorem is valid conditionally:

```math
\mathcal S_\infty=\varnothing
+
\int\omega_t(\delta)dt<\infty
\Longrightarrow
Pack.TTU.
```

The unresolved theorem is original-data supply of the integrable terminal label modulus.