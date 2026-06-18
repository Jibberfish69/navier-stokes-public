# Littlewood-Paley Tail Estimate For Active Readout Result

## Target

The active-readout subordination theorem needs a core/tail estimate of the form

```math
\|\widetilde Q_i(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
C\Phi_*(\mathcal E_D(X)).
\tag{LPT.1}
```

## Kernel tail setup

Let `P_{\le j}` be a smooth Littlewood-Paley multiplier with Schwartz kernel

```math
P_{\le j}f(x)=\int 2^{3j}K(2^j(x-y))f(y)\,dy,
\qquad K\in\mathcal S.
\tag{LPT.2}
```

Let `\mathfrak C_j(t)` be the persistent carrier core and assume the active input `v` is supported in `\mathfrak C_j(t)`. Let

```math
\mathfrak C_{j,R}(t):=\mathfrak C_j(t)^{+R2^{-j}}.
\tag{LPT.3}
```

Define the tail outside `\mathfrak C_{j,R}` by

```math
(P_{\le j}v)_{tail}
:=(1-\mathbf 1_{\mathfrak C_{j,R}})P_{\le j}v.
\tag{LPT.4}
```

## Tail bound

For every integer `N`, Schwartz decay gives

```math
|K(z)|+|\nabla K(z)|\le C_N(1+|z|)^{-N}.
\tag{LPT.5}
```

For `x\notin\mathfrak C_{j,R}` and `y\in\mathfrak C_j`, one has

```math
2^j|x-y|\ge R.
\tag{LPT.6}
```

Therefore

```math
\|(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
C_N2^jR^{-N}\|v\|_{L^\infty}
\tag{LPT.7}
```

up to the fixed dimensional kernel constants. If readout Sobolev comparison gives

```math
\|v\|_{L^\infty}
\le
C_s\|Y\|_{H_D^s},
\tag{LPT.8}
```

then

```math
\|(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
C_{N,s}2^jR^{-N}\|Y\|_{H_D^s}.
\tag{LPT.9}
```

Multiplication by the bounded localizer `\widetilde Q_i` changes only the fixed constant, assuming `\|\widetilde Q_i\|_{W^{1,
\infty}}` is controlled at the active scale.

## Tail Absorption Condition

The tail is absorbed into the `\Phi_*` residual whenever

```math
C_{N,s}2^jR^{-N}\|Y\|_{H_D^s}
\le
C\Phi_*(\mathcal E_D(X)).
\tag{LPT.10}
```

Equivalently, choose the core radius parameter `R=R_j` so that

```math
R_j^N
\ge
C_{N,s}2^j\|Y\|_{H_D^s}\Phi_*(\mathcal E_D(X))^{-1}.
\tag{LPT.11}
```

## Result

Smooth Littlewood-Paley tails are controlled by the displayed tail condition
`(LPT.10)` after enlarging the carrier core by a sufficiently large fixed or
active radius `R_j2^{-j}`. For fixed `R`, the result holds on regimes where
`2^jR^{-N}\|Y\|_{H_D^s}` satisfies `(LPT.10)`. For arbitrary high precision,
choose `N` and `R_j` according to `(LPT.11)`.

## Boundary

A fixed-radius core gives uniform tail smallness only relative to a bounded active class. Full arbitrary-amplitude readouts require either normalized testing, an active-radius choice, or inclusion of the tail size in `\Phi_*`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/active-readout-subordination-to-persistent-carrier-core-result.md`
- `problems/navier-stokes/theorem-construction/global-selector-plateau-core-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`
