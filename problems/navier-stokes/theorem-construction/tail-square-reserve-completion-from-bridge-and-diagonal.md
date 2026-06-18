# Tail-Square Reserve Completion From Bridge And Diagonal

## Inputs

The near-diagonal estimate gives, for every `N\ge N_{\mathrm{diag}}(\varepsilon_1)`,

```math
\int_0^T Diag_N(t)dt\le \varepsilon_1\nu\int_0^TD_N(t)dt.
```

The far-separated bridge gives

```math
\int_0^T Far_N(t)dt
\le
\eta\int_0^TLPAS_N(t)dt+C_\eta2^{-7N}.
```

Assume the active-square far-corona closure

```math
\int_0^TLPAS_N(t)dt
\le
\varepsilon_2\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Theorem

Under these inputs,

```math
\int_0^T2^{-2N}E_N(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C_\varepsilon2^{-2\delta N}.
```

## Proof

Split the tail square:

```math
2^{-2N}E_N^2=Diag_N+Far_N.
```

Integrate. The diagonal term is controlled by the near-diagonal estimate. For
the far term, insert the bridge and then the LPAS/FC bound:

```math
\int_0^TFar_Ndt
\le
\eta\varepsilon_2\nu\int_0^TD_Ndt+C2^{-2\delta N}+C_\eta2^{-7N}.
```

The term `2^{-7N}` is dominated by `2^{-2\delta N}` for the barrier exponents used here. Choose `\varepsilon_1`, `\eta`, and `\varepsilon_2` so the total dissipation fraction is `\varepsilon`. This proves the claim.

## Boundary

This completes the tail-square reserve conditionally on the active-square far-corona closure `LPAS`, equivalently an installed `CTS/FCTS/Car/FC` theorem.
