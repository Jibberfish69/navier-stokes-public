# A1c_R Direct Whole-Space Hs Control: Reduction And Obstruction

## Status

Theorem-facing reduction and obstruction note for the realized classical carrier branch.

## Target

For a maximal classical solution on `R^3`, prove

```math
A1c_R:
\qquad
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb R^3)}<\infty,
\qquad s>5/2.
```

## Reduction

On the realized classical carrier,

```math
X=u,
\qquad
\mathcal C=Id,
\qquad
H_D^s=H^s_\sigma(\mathbb R^3).
```

Thus full-data lift and exact strict-shadow descent collapse to identity facts. The whole-space branch reduces to `A1c_R`.

## Hs Energy Identity

For integer `s>5/2`, the Kato--Ponce `H^s` commutator estimate gives

```math
\frac12\frac d{dt}\|u(t)\|_{H^s}^2
+\nu\|\nabla u(t)\|_{H^s}^2
\le
C_s\|\nabla u(t)\|_{L^\infty}\|u(t)\|_{H^s}^2.
```

Hence

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty
\Longrightarrow
A1c_R.
```

The Serrin criterion gives another sufficient route:

```math
u\in L^p_tL^q_x,
\qquad
\frac2p+\frac3q\le1,
\qquad q>3
\Longrightarrow
A1c_R.
```

## Energy-Level Obstruction

The Leray energy layer gives

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

These bounds control the global energy and enstrophy budget. They give neither the `L^1_tL^\infty_x` strain integral nor a Serrin-class improvement. Therefore energy/enstrophy alone leaves `A1c_R` open.

## Exact Missing Theorem

A direct proof of `A1c_R` needs one of the following whole-space estimates:

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty,
```

or

```math
u\in L^p(0,T_*;L^q(\mathbb R^3)),
\qquad
\frac2p+\frac3q\le1,
\quad q>3,
```

or an equivalent global `H^s` tower closure.

## Boundary

This note gives the exact direct whole-space burden. It records the continuation-grade estimate needed for the realized carrier route; the estimate itself remains the central whole-space analytic theorem.
