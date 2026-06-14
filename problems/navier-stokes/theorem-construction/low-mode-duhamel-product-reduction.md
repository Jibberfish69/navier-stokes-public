# Low-Mode Duhamel Product Reduction

## Target

The desired conversion was

```math
\int_0^T\Lambda_N(t)E_N(t)dt
\le C_{LM}
\int_0^T2^{-2N}E_N(t)^2dt
+
\varepsilon\nu\int_0^TD_N(t)dt
+C2^{-2\delta N}.
```

Here

```math
\Lambda_N(t)=\|\nabla S_{N-4}u(t)\|_{L^\infty}.
```

## Low-mode Duhamel formula

The low-mode velocity satisfies the projected Duhamel identity

```math
S_{N-4}u(t)=e^{\nu(t-t_0)\Delta}S_{N-4}u(t_0)
-
\int_{t_0}^t e^{\nu(t-s)\Delta}S_{N-4}\mathbb P\nabla\cdot(u\otimes u)(s)ds.
```

Therefore

```math
\Lambda_N(t)\le \Lambda_N^{lin}(t)+\Lambda_N^{nl}(t).
```

The nonlinear piece splits into low-low, low-high, and high-high interactions.

## Tail-generated part

The high-high and low-high feedback pieces contain at least one tail factor. After Bernstein and the heat kernel bound, their product with `E_N` is controlled by

```math
\varepsilon\nu D_N+C_\varepsilon 2^{-2N}E_N^2
```

up to fixed collar constants. Thus the tail-generated part of `\Lambda_NE_N` routes into the same tail-square reserve.

## Obstruction: inherited finite-mode coefficient

The linear piece and the low-low nonlinear piece depend only on finitely many modes below `N`. They produce a coefficient measure

```math
d\nu_N^{low}(t):=\left(\Lambda_N^{lin}(t)+\Lambda_N^{low-low}(t)\right)dt.
```

The product contribution is

```math
\int_0^TE_N(t)d\nu_N^{low}(t).
```

This is not controlled by the tail-square reserve. It closes if one proves either

```math
\nu_N^{low}([0,T])<\infty
\quad\text{and a compatible Gronwall/tail entrance estimate,}
```

or the stronger small-window coefficient estimate

```math
\nu_N^{low}(I)\le \eta_{low}
```

on terminal windows with small high-frequency entrance tail.

## Result

Low-mode Duhamel converts only the tail-generated part of `\Lambda_NE_N` into the tail-square reserve. The inherited finite-mode coefficient remains as an independent measure:

```math
\int_0^TE_N(t)d\nu_N^{low}(t).
```

So the proposed conversion is conditional on a terminal-window coefficient-measure theorem for `\nu_N^{low}`.

## Next target

The exact remaining object is the coefficient-measure theorem

```math
\nu_N^{low}(I)=\int_I\left(\Lambda_N^{lin}+\Lambda_N^{low-low}\right)dt
```

on shrinking terminal windows, paired with small entrance tail `E_N(t_0)`.
