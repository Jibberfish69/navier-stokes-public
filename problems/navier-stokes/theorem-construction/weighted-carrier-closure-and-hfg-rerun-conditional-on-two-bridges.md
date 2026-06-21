# Weighted Carrier Closure And HFG Rerun Conditional On Two Bridges

## Inputs

The near-diagonal tail-square reserve is installed:

```math
Diag_N\le \varepsilon\nu D_N.
```

Assume the far-separated linear-to-active-square bridge:

```math
\int_0^TFar_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

Then the full tail-square reserve follows:

```math
\int_0^T2^{-2N}E_N(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

The collar product then closes:

```math
\int_0^T\Theta_N^\sharp(t)E_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

For the low-mode product, the Duhamel split gives

```math
\int_0^T\Lambda_N^{tail}(t)E_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N},
```

provided the same tail-square reserve is available. The remaining inherited finite-mode coefficient is

```math
\nu_N^{low}(I)=\int_I(\Lambda_N^{lin}+\Lambda_N^{low-low})(t)dt.
```

Assume the terminal-window coefficient-measure theorem:

```math
\int_0^TE_N(t)d\nu_N^{low}(t)
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Weighted carrier closure

Under the two bridge assumptions above,

```math
\int_0^T(\Lambda_N+\Theta_N^\sharp)(t)E_N(t)dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## HFG rerun

Insert the weighted carrier closure into the repaired dyadic cascade inequality. The coefficient-bearing terms are absorbed by `\varepsilon\nu D_N` and the summable reserve. The high-high and collar packets are already reduced to the same weighted carrier/tail-square framework. Hence the HFG shell estimate closes:

```math
\sum_{j\ge0}2^{3j/2}\|\Delta_j\omega\|_{L_t^1L_x^2}<\infty.
```

## Production replay

By the established production theorem,

```math
HFG\Rightarrow Part+Field+\mathfrak A_{N,Q}.
```

Then

```math
Part+Field+\mathfrak A_{N,Q}
\Rightarrow H1+H2+H6+ORIGIN.Retain.
```

The installed packet replays H3-H5 and yields

```math
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

## Remaining bridge list

The conditional chain now has exactly two remaining bridges:

```math
\text{Bridge 1: far-separated linear-to-active-square tail bridge,}
```

```math
\text{Bridge 2: terminal-window finite-mode coefficient-measure theorem.}
```

Once those two are installed, the weighted carrier route closes HFG and the six-burden replay follows.