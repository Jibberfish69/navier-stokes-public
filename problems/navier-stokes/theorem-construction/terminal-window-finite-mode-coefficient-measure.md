# Terminal-Window Finite-Mode Coefficient Measure

## Coefficient measure

The low-mode Duhamel split leaves the finite-mode coefficient measure

```math
d\nu_N^{low}(t)=\big(\Lambda_N^{lin}(t)+\Lambda_N^{low-low}(t)\big)dt.
```

For fixed `N`, Bernstein and the energy bound give

```math
\Lambda_N^{lin}(t)+\Lambda_N^{low-low}(t)
\le B_N(C_E,T),
```

on every finite classical interval. Hence

```math
\nu_N^{low}([a,b])\le B_N(C_E,T)(b-a).
```

Therefore, for every `\kappa>0`, there is a terminal window `I=[t_0,T)` with

```math
\nu_N^{low}(I)\le \kappa.
```

## Tail inequality with finite-mode measure

On the upgraded weighted surface, after the tail-generated low-mode terms, collar terms, and high-side packet are handled, the tail inequality on `I` has the Stieltjes form

```math
dE_N(t)+(1-\eta)\nu D_N(t)dt
\le
C E_N(t)d\nu_N^{low}(t)+R_N(t)dt,
```

where

```math
\int_I R_N(t)dt\le C_*2^{-2\delta N}.
```

## Stieltjes-Gronwall estimate

Integrating and applying Gronwall with respect to the measure `\nu_N^{low}` gives

```math
\sup_{t\in I}E_N(t)
+(1-\eta)\nu\int_I D_N(t)dt
\le
\exp(C\nu_N^{low}(I))
\left(E_N(t_0)+\int_I R_N(t)dt\right).
```

Choose the terminal window so that `C\nu_N^{low}(I)\le \log 2`. Then

```math
\sup_{t\in I}E_N(t)
+
u\int_I D_N(t)dt
\le
C\left(E_N(t_0)+C_*2^{-2\delta N}\right).
```

Since `t_0<T` is regular, the high-frequency entrance tail satisfies

```math
E_N(t_0)\to0
\qquad (N\to\infty).
```

Thus, after choosing `N` large on the terminal window,

```math
\int_I E_N(t)d\nu_N^{low}(t)
\le
\nu_N^{low}(I)\,\sup_{t\in I}E_N(t)
\le
\varepsilon\nu\int_I D_N(t)dt+C_\varepsilon2^{-2\delta N}.
```

## Result

The terminal-window finite-mode coefficient measure closes under the standard terminal-window entrance-tail condition:

```math
E_N(t_0)+2^{-2\delta N}\ll1,
\qquad
\nu_N^{low}([t_0,T))\ll1.
```

This is the needed finite-mode coefficient theorem for the low-mode Duhamel product route on shrinking terminal windows.

## Boundary

The theorem is terminal-window local. A global interval statement requires a partition into finitely many windows with controlled entrance tails or a uniform-in-time coefficient theorem.
