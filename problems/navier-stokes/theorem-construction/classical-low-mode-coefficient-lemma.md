# Classical Low-Mode Coefficient Lemma

## Purpose

This lemma removes one fake source of uncertainty from both the scale-barrier and gradient bridges. The low-mode coefficient `\mathcal{L}_N` is not an extra frontier hypothesis; for each fixed cutoff it is automatically integrable on the classical energy surface.

## Setting

Let `u = u(t,x)` be a classical solution on `(0,T)\times\mathbb{R}^3` with

```math
\sup_{t\in[0,T]}\|u(t)\|_{L^2_x} \le M.
```

For a fixed dyadic cutoff `N`, define

```math
\mathcal{L}_N(t) := 1 + \sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}.
```

The same statement holds uniformly for any classical approximation family `u^{(n)}` with a uniform `L^\infty_tL^2_x` bound.

## Lemma Statement

For every fixed `N`,

```math
\mathcal{L}_N(t)
\le
1 + C\,2^{3N/2} M
```

for almost every `t`, where `C` depends only on the dyadic partition. In particular,

```math
\mathcal{L}_N \in L^\infty(0,T)\cap L^1(0,T),
\qquad
\int_0^T \mathcal{L}_N(t)\,dt \le T\big(1 + C\,2^{3N/2}M\big).
```

## Proof

By frequency localization,

```math
\|\Delta_k u(t)\|_{L^2_x} \le \|u(t)\|_{L^2_x} \le M.
```

Therefore

```math
\sum_{k\le N-4}2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}
\le
M\sum_{k\le N-4}2^{3k/2}
\le
C\,2^{3N/2}M.
```

Adding the constant term `1` gives the pointwise bound for `\mathcal{L}_N(t)`.
Taking the time supremum gives the `L^\infty_t` claim, and integrating in time
gives the `L^1_t` claim.

## Audit Boundary

The proof uses the geometric summability of the dyadic weights

```math
\sum_{k\le N-4}2^{3k/2}<\infty,
```

not a finite-shell argument. The low-mode half-line `k\le N-4` still contains
infinitely many shells, so one should not justify this lemma by saying that
“only finitely many shells lie below `N`.” That finite-shell shortcut is valid
for the completion

```math
\sum_{j<N}2^{2j}\|\Delta_j u\|_{L^2}^2,
```

but not for the coefficient `\mathcal L_N`.

## Output Of This Lemma

The low-mode coefficient is not an independent bridge burden. It is automatic on
the classical energy surface and is one of the exact reasons the Euclidean
Route B packet can stay on the original equation without importing an
`L^\infty` continuation norm.

This lemma is theorem-grade for the fixed-cutoff claim

```math
\mathcal{L}_N \in L^\infty(0,T)\cap L^1(0,T)
\qquad\text{for each fixed }N.
```

Its pointwise bound contains the factor `2^{3N/2}`:

```math
\int_0^T \mathcal{L}_N(t)\,dt
\le
T\big(1 + C\,2^{3N/2}M\big)
```

So by itself it is only a fixed-cutoff admissibility statement.

However, on the exact `4 -> 1` tail-energy surface one does not leave
`\exp(C\int_0^T\mathcal L_N)` as an uncontrolled free factor. The recertification
lemma now keeps the coercive tail dissipation

```math
Q_N(t)\ge c_Q2^{2N}T_N(t),
```

and the corresponding `2^{2N}` damping dominates the `2^{3N/2}` growth coming
from `\mathcal L_N`. So this fixed-cutoff lemma is sufficient both for the
Route B fixed-`N` Gronwall step and for the local same-shape `4 -> 1`
recertification once the high-frequency coercivity is retained.
