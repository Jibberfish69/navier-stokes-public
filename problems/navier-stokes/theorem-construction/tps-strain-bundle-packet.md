# TPS Strain-Bundle Packet

## Status

Primary strain-side dynamic packet.

This note repackages the `GS.15` branch of
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md)
as the clearest selector-local strain theorem currently visible.

It does **not** replace the coarea / derivative branch `GS.21`. It makes the
strain side concrete enough to serve as the primary realization of that route.

## Purpose

The live target is a selector-local lower bound of the form

```math
P_{N_a}\,\operatorname{Sym}\nabla u(X(a,t),t)\,P_{N_a}
\ge
\big(\lambda_J(t)-\varepsilon_J(t,a)\big)I_{N_a}
\tag{SB.0}
```

on a selector-good set.

Once such a bound holds with positive accumulated rate and integrable selector
error, the measurable linearized flow gives transverse expansion on the bundle,
the good active pairs avoid the shadow tube, and the dynamic endpoint theorem
`TPS-drift-collapse` forces `\Gamma_J\to 0`.

## Geometric setup

Let `X(a,t)` be the live Lagrangian carrier, let `G_J\subseteq\mathcal C_j` be
a selector-good family, and let

```math
a\mapsto N_a\subset\mathbb R^3
```

be a measurable transported transverse bundle of constant rank `d_\perp`.

Write the Eulerian strain tensor

```math
S(x,t):=\operatorname{Sym}\nabla u(x,t).
\tag{SB.1}
```

For each `a\in G_J`, define the bundle-restricted strain form

```math
S_{N_a}(t):=P_{N_a}S(X(a,t),t)P_{N_a}.
\tag{SB.2}
```

Let `\mu_{\min}(S_{N_a}(t))` denote the least eigenvalue of `S_{N_a}(t)` on the
active transverse bundle.

## Hypotheses

Assume:

```math
\frac{\mu_j(\mathcal C_j\setminus G_J)}{\mu_j(\mathcal C_j)}\to 0,
\tag{SB.3}
```

```math
a-b\in N_a,
\qquad
c_{pair}\ell_J\le |a-b|\le C_{pair}\ell_J
\qquad
\text{for every active pair }a\sim b\text{ in }G_J,
\tag{SB.4}
```

the measurable linearized flow exists on `G_J`,

```math
X(t,b)-X(t,a)=W_J(t,a)(b-a)+r_J(t,a,b),
\tag{SB.5}
```

with the remainder negligible in active-pair measure, and there exist
`\lambda_J(t)\ge 0` and `\varepsilon_J(t,a)\ge 0` such that

```math
\mu_{\min}\!\big(S_{N_a}(t)\big)
\ge
\lambda_J(t)-\varepsilon_J(t,a)
\qquad
\text{for a.e. }(t,a)\in[0,T_J]\times G_J.
\tag{SB.6}
```

Assume moreover

```math
\int_0^{T_J}\lambda_J(t)\,dt\to+\infty,
\qquad
\sup_{a\in G_J}\int_0^{T_J}\varepsilon_J(t,a)\,dt\to 0.
\tag{SB.7}
```

This is the selector-local transported-bundle version of a favorable strain
criterion.

## Proposition TPS-strain-bundle-main

Under `(SB.3)`-`(SB.7)`, for every `a\in G_J` and every `0\le t\le T_J`,

```math
s_{\min}\!\big(W_J(t,a)|_{N_a}\big)
\ge
\exp\!\Big(
\int_0^t\lambda_J(s)\,ds
-
\int_0^t\varepsilon_J(s,a)\,ds
\Big).
\tag{SB.8}
```

In particular,

```math
s_{\min}\!\big(W_J(t,a)|_{N_a}\big)
\ge
e_J(t),
\qquad
e_J(t):=
\exp\!\Big(\int_0^t\lambda_J(s)\,ds-o_J(1)\Big),
\tag{SB.9}
```

uniformly on `G_J`.

### Proof

Let `v\in N_a` and set `z(t):=W_J(t,a)v`. Along the linearized flow,

```math
\frac{d}{dt}|z(t)|^2
=
2\langle S(X(a,t),t)z(t),z(t)\rangle.
\tag{SB.10}
```

Since `z(t)` stays in the transported transverse cone modulo negligible
selector error, `(SB.6)` gives

```math
\frac{d}{dt}|z(t)|^2
\ge
2(\lambda_J(t)-\varepsilon_J(t,a))|z(t)|^2.
\tag{SB.11}
```

Gronwall yields `(SB.8)`, and `(SB.9)` follows from `(SB.7)`.

## Uniform-in-time corollary

Because `\lambda_J(t)\ge 0` and the full time-integrated selector error tends
to `0`, `(SB.8)` also gives the uniform lower bound

```math
\inf_{a\in G_J}\inf_{0\le t\le T_J}
s_{\min}\!\big(W_J(t,a)|_{N_a}\big)
\ge
\exp(-o_J(1)).
\tag{SB.12}
```

So for the infimum-in-time shadowing bad set, the correct scale consequence is
not merely a terminal-time condition. A sufficient time-uniform exclusion
condition is

```math
\frac{\sigma_J}{\ell_J\inf_{0\le t\le T_J}e_J(t)}\to 0.
\tag{SB.13}
```

Under `(SB.12)`, this is implied by the simpler selector scale relation

```math
\frac{\sigma_J}{\ell_J}\to 0.
\tag{SB.14}
```

## Corollary TPS-strain-bundle-ns

Assume in addition `(SB.13)`. Then the Lagrangian nonshadowing bad set obeys

```math
\frac{\mu_j(E_J^{ns}(\sigma_J))}{\mu_j(\mathcal C_j)}\to 0.
\tag{SB.15}
```

Therefore `(TPS.4i)` holds, and the endpoint collapse theorem gives

```math
\Gamma_J\to 0.
\tag{SB.16}
```

### Proof

For good active pairs outside the negligible linearization-remainder set,
`(SB.5)` and `(SB.8)` yield

```math
|X(t,b)-X(t,a)|
\ge
\ell_J\,\inf_{0\le s\le T_J}e_J(s)-o(\ell_J)
\tag{SB.17}
```

uniformly on `[0,T_J]`. The scale condition `(SB.13)` therefore excludes
shadowing at radius `\sigma_J` on the entire interval. Adding back the
vanishing bad bulk and negligible linearization exception gives `(SB.15)`.

## Derived label layer

Once `(SB.8)` is established, any measurable chart covector field `\eta_J(a)`
with

```math
|\eta_J(a)\cdot v|\ge c_\eta|v|
\qquad
(v\in N_a)
\tag{SB.18}
```

produces a derived chart label

```math
\alpha_j(a,t):=\eta_J(a)\cdot X(a,t).
\tag{SB.19}
```

Then on good active pairs,

```math
|\alpha_j(a,t)-\alpha_j(b,t)|
\ge
c_\alpha
|X(a,t)-X(b,t)|.
\tag{SB.20}
```

So scalar selector labels sit in the correct place: downstream witnesses of
bundle strain coercivity, not primitive dynamic inputs.

## Open burden

The exact strain-side open theorem is now:

```math
\boxed{
\text{construct }G_J\text{ and }N_a\text{ so that the selector-local bundle lower bound }(SB.6)\text{ holds with }(SB.7).
}
\tag{SB.21}
```

This is the transported-bundle strain theorem that would discharge the `GS.15`
branch.

## Meaning

The route is now:

```math
\boxed{
\text{bundle-localized strain coercivity}
\Longrightarrow
\text{good-set transverse expansion}
\Longrightarrow
\text{nonshadowing}
\Longrightarrow
TPS\text{-}drift\text{-}collapse.
}
\tag{SB.22}
```

This packet is the cleanest current realization of the strain-side dynamic
route.

## Literature fit

The internet-backed route judgment for this packet is recorded in
[tps-dynamic-source-fit-and-open-frontier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-dynamic-source-fit-and-open-frontier.md).

The important outcome is:

- measurable-good-set linearization is increasingly source-backed;
- strain-based continuation criteria support the type of mechanism in this
  packet, but not the selector-local theorem itself;
- the most plausible first attack is the coarse-field bundle variant
  `CF-bundle-coercive`, not a raw full-field pointwise lower bound.
