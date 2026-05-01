# Weighted Carrier Coefficient Closure From Tail-Square Bypass

## Inputs

The collar product is installed:

```math
\int_I \Theta_N^\sharp(t)E_N(t)dt
\le
\varepsilon_1\nu\int_I D_N(t)dt.
```

The low-mode product is installed on terminal windows:

```math
\int_I \Lambda_N(t)E_N(t)dt
\le
\varepsilon_2\nu\int_I D_N(t)dt+C2^{-2\delta N}.
```

## Theorem

On the same terminal window and for large `N`,

```math
\int_I(\Lambda_N+\Theta_N^\sharp)(t)E_N(t)dt
\le
\varepsilon\nu\int_I D_N(t)dt+C_\varepsilon2^{-2\delta N}.
```

## Proof

Add the two installed estimates and choose `\varepsilon_1+\varepsilon_2\le\varepsilon`.

## Consequence

The coefficient-bearing weighted carrier term is closed on terminal windows. The remaining HFG check is the lifted-packet/far-corona component, whose active-square closure is LPAS/FC.