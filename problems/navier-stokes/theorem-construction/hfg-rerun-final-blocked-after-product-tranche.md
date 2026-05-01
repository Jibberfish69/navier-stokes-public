# HFG Rerun Final Blocked After Product Tranche

## Product tranche status

The weighted product tranche tested five routes.

### Threshold collar

```math
\int_0^T\Theta_N^\sharp E_Ndt
```

reduced to the reserve

```math
\int_0^T2^{-2N}E_N^2dt.
```

### Low-mode coefficient

```math
\int_0^T\Lambda_NE_Ndt
```

reduced to `E_N\in L^2_t`, `\Lambda_N\in L^\infty_t`, or low-mode strain suppression.

### Mixed enstrophy-gradient

```math
\int_0^T\|\omega\|_2\|\nabla\omega\|_2dt
```

reduced to an enstrophy barrier or equivalent critical continuation estimate.

### Absorbable weighted form

The natural reserve is

```math
R_N=2^{-2N}(\Lambda_N+\Theta_N^\sharp)^2E_N.
```

This reserve needs additional product control.

### Lifted packet

The lifted packet closes conditionally under same-scale weighted carrier control plus far-corona closure:

```math
CTS\Rightarrow FCTS\Rightarrow Car\Rightarrow FC
```

or fallback `LPAS`.

## Result

No tested channel currently closes unconditionally. Therefore `HFG` cannot be rerun from this tranche.

## Remaining live blockers

The exact blockers are

```math
\int_0^T\Lambda_NE_Ndt,
\qquad
\int_0^T\Theta_N^\sharp E_Ndt,
\qquad
\int_0^T\|\omega\|_2\|\nabla\omega\|_2dt,
```

and the far-corona closure theorem

```math
CTS/FCTS/Car\Rightarrow FC
```

or `LPAS`.

Until one closes, production, `H1-H6`, `ORIGIN.Retain`, and the six-burden stack remain conditional on `HFG`.