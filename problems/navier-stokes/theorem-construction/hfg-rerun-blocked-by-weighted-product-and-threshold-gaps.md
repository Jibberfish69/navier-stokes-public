# HFG Rerun Blocked By Weighted Product And Threshold Gaps

## Rerun condition

The HFG rerun requires one of the following inputs.

### Weighted carrier closure

```math
\int_0^T\widetilde\Lambda_N^\sharp(t)E_N(t)dt<\infty
```

or an absorbable form

```math
\widetilde\Lambda_N^\sharp E_N\le \varepsilon\nu D_N+C_\varepsilon R_N.
```

### Dynamic-threshold low block closure

The low block below the active threshold must satisfy

```math
\sum_{j<J(t)}2^{3j/2}\|\Delta_j\omega\|_{L^1_tL^2_x}<\infty.
```

## Current status

The weighted carrier route failed at the product terms

```math
\int_0^T\Lambda_NE_Ndt,
\qquad
\int_0^T\Theta_N^\sharp E_Ndt.
```

The dynamic-threshold route previously reduced to the residual mixed estimate

```math
\int_0^T\|\omega(t)\|_2\|\nabla\omega(t)\|_2dt<\infty
```

or one of its residual-family variants. That estimate is not installed.

## Result

HFG cannot be rerun unconditionally at the current state. The active blockers are exactly:

```math
\Lambda_NE_N,
\qquad
\Theta_N^\sharp E_N,
\qquad
\|\omega\|_2\|\nabla\omega\|_2.
```

A future HFG rerun must close one of those product channels.