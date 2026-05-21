# PositiveCarrierAbsoluteValueStep.Audit

## Status

This note audits the absolute-value branch of the lifted weighted remainder route.  It gives a valid positive replacement and identifies the exact extra reserve it requires.

## Positive carrier calculation

Let

```math
G_N^{lift,\sigma}
```

be the lifted weighted remainder.  After absolute values, the commutator estimate gives the carrier

```math
|G_N^{lift,\sigma}(t)|
\le
C\sum_{k>N}2^k a_k(t)U_k(t),
```

where

```math
a_k(t)=2^{3k/2}\|\Delta_k u(t)\|_2,
\qquad
U_k(t)=\sum_{\ell>k+4}D_\ell(t).
```

Young splitting gives

```math
2^k a_kU_k
\le
\varepsilon 2^kU_k^2+C_\varepsilon 2^ka_k^2.
```

Since

```math
2^ka_k^2=D_k,
```

we obtain

```math
|G_N^{lift,\sigma}(t)|
\le
\varepsilon\sum_{k>N}2^kU_k(t)^2
+C_\varepsilon\sum_{k>N}D_k(t).
```

## Meaning

The second term is a first-moment dissipation tail.  The first term is stronger:

```math
\sum_{k>N}2^k\left(\sum_{\ell>k+4}D_\ell(t)\right)^2.
```

This is the active-square upper-tail carrier.

## Exact requirement

The absolute-value route closes only with

```math
ActiveSquareUpperTailCarleson.A
```

or the equivalent shell gain

```math
ActiveShellAmplitudeGain.A:
\quad
2^{-j}D_j(t)^2\le \varepsilon\nu D_j(t)+r_j(t),
```

with summable reserve on the selected terminal family.

## Verdict

The positive carrier replacement is valid.  It shifts the proof burden to active-square upper-tail control.  This is the residual-tail side of the current source-wall split.