# Low-Mode Product Closure From Duhamel And Installed Tail-Square

## Inputs

The Duhamel split gives

```math
\Lambda_N=\Lambda_N^{tail}+\Lambda_N^{low},
\qquad
\Lambda_N^{low}:=\Lambda_N^{lin}+\Lambda_N^{low-low}.
```

The tail-generated part satisfies

```math
\Lambda_N^{tail}E_N
\le
\varepsilon_1\nu D_N+C_{\varepsilon_1}2^{-2N}E_N^2.
```

The installed tail-square reserve gives

```math
2^{-2N}E_N^2\le \varepsilon_2\nu D_N.
```

The finite-mode coefficient-measure theorem gives, on shrinking terminal windows,

```math
\int_I E_N(t)\Lambda_N^{low}(t)dt
\le
\varepsilon_3\nu\int_I D_N(t)dt+C2^{-2\delta N}.
```

## Theorem

On such a terminal window,

```math
\int_I\Lambda_N(t)E_N(t)dt
\le
\varepsilon\nu\int_I D_N(t)dt+C_\varepsilon2^{-2\delta N}.
```

## Proof

For the tail part, insert the tail-square reserve:

```math
\Lambda_N^{tail}E_N
\le
(\varepsilon_1+C_{\varepsilon_1}\varepsilon_2)\nu D_N.
```

Choose `\varepsilon_1` and `\varepsilon_2` so this contribution is at most half the desired dissipation budget. Integrate over `I`.

For the finite-mode part, apply the terminal coefficient-measure theorem with the remaining half of the budget. Add both estimates.

## Consequence

The low-mode product closes on terminal windows once the installed tail-square reserve and finite-mode coefficient-measure theorem are available.