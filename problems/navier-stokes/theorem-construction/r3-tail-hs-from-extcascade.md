# Tail.Hs_R3 From ExtCascade_s_R3

## Status

Conditional theorem note.

## Theorem

Assume `s>5/2` and assume the exterior cascade theorem

```math
ExtCascade_s^{R3}:
\int_0^{T_*}\mathcal E_s^{tail}(R,t)dt\to0.
```

Then

```math
Tail.Hs_{R3}:
\lim_{R\to\infty}\sup_{t<T_*}\|\eta_Ru(t)\|_{H^s(R^3)}=0.
```

## Proof

Let

```math
H_R(t)=\|\eta_R\Lambda^s u(t)\|_2^2.
```

The exterior high-order identity gives

```math
\frac d{dt}H_R(t)
\le a(t)H_R(t)+C\mathcal E_s^{tail}(R,t),
```

where `a` is the coefficient supplied inside the cascade package. In the conditional theorem, `ExtCascade_s_R3` includes the integrable majorant required for this inequality and the convergence of the tail ledger.

Since `u_0 in H^s(R^3)`,

```math
H_R(0)\to0.
```

Gronwall yields

```math
\sup_{t<T_*}H_R(t)
\le
\exp\left(\int_0^{T_*}a(t)dt\right)
\left(H_R(0)+C\int_0^{T_*}\mathcal E_s^{tail}(R,t)dt\right).
```

Both terms inside the parentheses tend to zero as `R->infty`. Therefore

```math
\sup_{t<T_*}\|\eta_Ru(t)\|_{H^s}\to0.
```

This proves `Tail.Hs_R3` conditional on `ExtCascade_s_R3`.

## Boundary

This theorem converts a cascade ledger into exterior `H^s` tightness. It does not prove `ExtCascade_s_R3` from original data.