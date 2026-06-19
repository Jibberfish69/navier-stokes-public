# MPP Lower-Carrier Interval-Integrability Theorem Program

## Status

Theorem-facing supplier note.

Role: isolate the exact remaining coefficient-side burden beneath
`CSP.A` after the annular defining-function package and the direct
source-to-segment bridge have both been installed.

## Purpose

After:

1. `CSP.B1a`--`CSP.B1c` in
   [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)
   supply the mollified defining function, cutoff commutators, and transported
   packet-factor derivative propagation;
2. `R1.C` in
   [mpp-rung1-to-weighted-segment-control-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-rung1-to-weighted-segment-control-lemma.md)
   absorbs the direct source-to-segment side into `P_F^\ast`;
3. `FCI.A1a` in
   [mpp-fixed-family-and-collar-interval-propagation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fixed-family-and-collar-interval-propagation.md)
   isolates the frozen-family source-only ledger,

the live receiver-side burden is no longer “all of `CSP.B3`.”

It is narrower:

```math
\boxed{
\text{prove that the lower same-fluid carrier family stays integrable on the moving packet collar.}
}
\tag{LCI.1}
```

That is the exact supplier still needed to close the collar packet theorem.

## Exact Remaining Object

Retain the lower-carrier ledger from `(CSP.25b)`:

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
:=
1+
\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(t))}.
\tag{LCI.2}
```

This is the exact coefficient family that feeds:

1. the triangular higher-rung estimates in `CSP.B3`;
2. the transported packet-factor derivative propagation `CSP.B1c`;
3. the annular coefficient reduction `CSP.B3a0`.

So the coefficient-side target isolated here is the conditional lower-carrier
theorem on intervals where the common-label pack gauge is already propagated:

For the live retained receiver route, that theorem-level target is still the
exact frontier item. The installed converse sidecar `CJ.A_low.7` does not
replace the forward burden, and the retained completion packet already treats
the transported-center residual theorem `RCF.A` as an imported upstream
supplier to `LCI.A`. So the smaller packets displayed below, including the
nonlinear estimate `LCI.B2a`, are honest theorem-internal decomposition rather
than separate live frontier primitives.

### Target Theorem `LCI.A` (Conditional lower-carrier interval integrability on the moving collar)

Assume on the same-fluid interval `I` that

```math
\Gamma_\sharp\in L^\infty(I).
\tag{LCI.2a}
```

and that the initial lower-order collar packet is finite:

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)<\infty.
\tag{LCI.2b}
```

Then

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
\tag{LCI.3}
```

## Exact Sharper Slots Beneath `LCI.A`

Retain the lower-order collar packet from `(CSP.25g1)`:

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\alpha=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{\delta}(x)\big)^2
\big|
\nabla^\alpha U_q(x,t)
\big|^2\,dx.
\tag{LCI.3a}
```

Then the carrier-side burden beneath `LCI.A` is concentrated in one dynamic
theorem, with the readout already built into the geometric cutoff.

### Lemma `LCI.B0` (Seed finiteness of the lower-order collar packet)

Assume that at the initial time `t_0` the packet collar sits inside one
classical still-live collar:

```math
\mathcal C_{\rho,\psi}^{\delta}(t_0)\subset Q_{t_0}\Subset Q_{t_0}^+,
\tag{LCI.3b0}
```

and that the classical still-live bound `M_{m+2}` from `SLC.A` is available on
`Q^+`. Then

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)<\infty.
\tag{LCI.3b1}
```

Indeed, for every `0\le q\le m` and `0\le \alpha\le 2`,

```math
\|\nabla^\alpha U_q(\cdot,t_0)\|_{L^\infty(Q_{t_0})}
\le
M_{m+2},
\tag{LCI.3b2}
```

so using `0\le \vartheta_{\rho,\psi,t_0}^{\delta}\le 1` and the finite volume of the
collar support at `t_0`,

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)
\le
C_{m,\rho,\psi,\delta}\,M_{m+2}^2
<
\infty.
\tag{LCI.3b3}
```

So the still-live seed window gives the initial data required by `LCI.B`; it
does not supply interval propagation by itself.

### Target Theorem `LCI.B` (Lower-order collar packet interval propagation)

Assume on `I` that the pack gauge on the common label collar is already
propagated and that the initial lower-order collar packet is finite:

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)<\infty.
\tag{LCI.3c0}
```

Prove

```math
\sup_{t\in I}
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
<
\infty.
\tag{LCI.3c}
```

This is not a softer reformulation. The exact route-native spine beneath
`LCI.B` is:

### Proposition `LCI.B1` (Lower-order moving-collar energy identity)

Write

```math
Z_{\alpha,q}:=\nabla^\alpha U_q
\qquad
(0\le q\le m,\ 0\le \alpha\le 2).
\tag{LCI.3c1}
```

Then the same differentiated same-fluid law used in `CSP.B2` specializes to
the finite family `\{Z_{\alpha,q}\}` and yields

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
+
2\nu\,\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
=
\mathcal P_{N,m}^{low}(t)
+
\mathcal F_{N,m}^{low,press}(t)
+
\mathcal S_{N,m}^{low}(t)
+
\mathcal R_{N,m}^{low}(t)
+
\mathcal C_{N,m}^{low,visc,\delta}(t)
+
\mathcal C_{N,m}^{low,trans,\delta}(t).
\tag{LCI.3c2}
```

This is not a new mechanism. It is the lower-order specialization of the
already-installed collar identity `(CSP.18)`.

### Proposition `LCI.B2` (Coefficient reduction to the route-native packet inequality)

The exact estimate still needed is

```math
\begin{aligned}
&|\mathcal P_{N,m}^{low}(t)|
+|\mathcal F_{N,m}^{low,press}(t)|
+|\mathcal S_{N,m}^{low}(t)|
+|\mathcal R_{N,m}^{low}(t)|
+|\mathcal C_{N,m}^{low,visc,\delta}(t)|
+|\mathcal C_{N,m}^{low,trans,\delta}(t)| \\
&\qquad\le
C_{\rho,\psi,\delta,I}\,
\big(1+\Gamma_\sharp(t)\big)\,
\big(1+\Gamma_{N,m,\rho,\psi}^{low}(t)\big)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t),
\end{aligned}
\tag{LCI.3c3}
```

which is exactly `(CSP.25g2a)` after absorbing the factor `2` in the
dissipation term. So the dynamic wall inside `LCI.B` is no longer vague: it is
the term-by-term proof of `(LCI.3c3)` from `(LCI.3c2)` using `CSP.B1b`,
the sharpened lower-order cutoff bounds `(CSP.25g0d)`--`(CSP.25g0e)`, and the
triangular same-fluid structure from `TC.19`--`TC.31` only after the localized
tower closure has been derived with its flux/cutoff bound. Thus the
term-by-term proof must either prove the `TC.31` / `TC.31a` package on the same
lower-carrier family or replace that citation by the corresponding displayed
LCI flux and commutator estimates.

Within that reduction, the transport and viscous localization commutators are
ordinary lower-order cutoff terms generated by `D_t\vartheta`,
`\nabla\vartheta`, and `\nabla^2\vartheta`, but after the geometric support
repair their coefficient now lives naturally on the transported-center branch:
the exact shell carrier is
`\|U_0\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t))}`, not the
raw collar ledger `\Gamma_{N,m,\rho,\psi}^{low}`. So the nonlinear
strain/cascade block `\mathcal S_{N,m}^{low}+\mathcal R_{N,m}^{low}` is now
the only genuinely nonlinear channel, while the commutator slice is routed
through the transported-center coefficient split `LCI.B2c`--`LCI.B2d`.

### Proposition `LCI.B2a` (Nonlinear lower-order strain/cascade bound)

The exact theorem-internal claim is the displayed packet estimate below. It is
not a generic lower-order dismissal: every term is a finite Leibniz summand with
one factor placed in `\Gamma_{N,m,\rho,\psi}^{low}` and the remaining weighted
`L^2` factor pair placed in `\mathcal G_{N,m,\rho,\psi}^{low,\delta}`.

For almost every `t\in I`,

```math
|\mathcal S_{N,m}^{low}(t)|
+
|\mathcal R_{N,m}^{low}(t)|
\le
C_{m,\rho,\psi,\delta,I}\,
\Gamma_{N,m,\rho,\psi}^{low}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c3a}
```

Hence

```math
|\mathcal S_{N,m}^{low}(t)|
+
|\mathcal R_{N,m}^{low}(t)|
\le
C_{m,\rho,\psi,\delta,I}\,
\big(1+\Gamma_\sharp(t)\big)\,
\big(1+\Gamma_{N,m,\rho,\psi}^{low}(t)\big)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c3b}
```

### Proof

Write

```math
n:=q+\alpha,
\qquad
Z_{\alpha,q}=\nabla^\alpha U_q=U_n.
\tag{LCI.3c3c}
```

Specializing the differentiated same-fluid law from `(CSP.17a)`--`(CSP.17c)`
to the finite lower family gives

```math
[D_t,\nabla^\alpha]U_q
=
-\sum_{\beta=1}^{\alpha}\binom{\alpha}{\beta}\,
U_\beta * \nabla^{\alpha+1-\beta}U_q,
\tag{LCI.3c3d}
```

so the localized strain block is a finite sum of terms of the form

```math
\int
\vartheta_{\rho,\psi,t}^{\delta}(x)^2\,
Z_{\alpha,q}(x,t):
\big(
U_\beta(x,t)*Z_{\alpha+1-\beta,q}(x,t)
\big)\,dx
\qquad
(1\le \beta\le \alpha\le 2).
\tag{LCI.3c3e}
```

Since `\beta\le 2\le m`, the coefficient factor `U_\beta` lies inside the
lower-carrier ledger `\Gamma_{N,m,\rho,\psi}^{low}`. The companion factor
`Z_{\alpha+1-\beta,q}` has total derivative order
`q+\alpha+1-\beta\le q+\alpha\le m+2`, so it is one of the packet fields
already measured by `\mathcal G_{N,m,\rho,\psi}^{low,\delta}`. By Cauchy--
Schwarz,

```math
|\mathcal S_{N,m}^{low}(t)|
\le
C_m\,
\Gamma_{N,m,\rho,\psi}^{low}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c3f}
```

For the cascade block, expand `B_q` from `(TC.15)` and differentiate:

```math
\nabla^\alpha B_q
=
-\sum_{\ell=1}^{q}\binom{q}{\ell}
\sum_{\beta+\gamma=\alpha}\binom{\alpha}{\beta}\,
U_{\ell+\beta}*U_{q+1-\ell+\gamma}.
\tag{LCI.3c3g}
```

Hence `\mathcal R_{N,m}^{low}` is a finite sum of integrals

```math
\int
\vartheta_{\rho,\psi,t}^{\delta}(x)^2\,
Z_{\alpha,q}(x,t):
\big(
U_r(x,t)*U_s(x,t)
\big)\,dx,
\tag{LCI.3c3h}
```

with

```math
r:=\ell+\beta,
\qquad
s:=q+1-\ell+\gamma,
\qquad
r+s=q+1+\alpha\le m+3.
\tag{LCI.3c3i}
```

Because `m\ge 2`, both `r` and `s` cannot exceed `m`: otherwise
`r,s\ge m+1` forces
`r+s\ge 2m+2>m+3`. So every Leibniz summand has one factor of order at most
`m`, which is therefore bounded in `L^\infty` by
`\Gamma_{N,m,\rho,\psi}^{low}(t)`, while the other factor has order at most
`m+2` and is already contained in the lower packet. Using Cauchy--Schwarz on
the remaining two weighted `L^2` factors gives

```math
|\mathcal R_{N,m}^{low}(t)|
\le
C_m\,
\Gamma_{N,m,\rho,\psi}^{low}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c3j}
```

Combining `(LCI.3c3f)` and `(LCI.3c3j)` yields `(LCI.3c3a)`, and
`(LCI.3c3b)` follows because `1+\Gamma_\sharp\ge 1`. ∎

### Corollary `LCI.B2b` (Transport/viscous commutator discharge on the coefficient branch)

Under the finite transported cover `(LCI.3c3l)`, the sharpened geometric-
cutoff commutator bounds `(CSP.25g0d)`--`(CSP.25g0e)` place the transport and
viscous localization packets in the coefficient class `(LCI.3c3k)`.

### Proof

The transport and viscous localization packets are already lower-order
geometric commutators produced by `D_t\vartheta`,
`\nabla\vartheta`, and `\nabla^2\vartheta`. The sharpened transport bound
`(CSP.25g0d)` uses only
`\mathfrak V_{\rho,\psi}^{core}` and the support-shell carrier
`\|U_0\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t))}`. The former
is dominated by `(CSP.25f1)`, while the latter is read off from the transported
centers by `(LCI.3c3o0)` below. Since `1+\Gamma_\sharp\ge 1`, the lower-order
commutators therefore lie in the coefficient class

```math
C_{\rho,\psi,\delta,I}\,
\big(1+\Gamma_\sharp(t)\big)\,
\big(
1
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc}(t)
+
\Gamma_{N,m,\rho,\psi}^{low}(t)
\big)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c3k}
```

This is the exact geometric-cutoff input needed on the transported-center
coefficient branch. The pressure terms remain on the redistribution/flux
channel `(TC.20)`--`(TC.21)`, while Proposition `LCI.B2a` handles the
nonlinear strain/cascade block. ∎

### Proposition `LCI.B2c` (Coefficient-split alternative to direct scalarization)

Assume there exist labels `a^1,\dots,a^J\in A_\sharp` and the collar radius
`r_\delta` from `(CSP.25g3a)` such that

```math
\mathcal C_{\rho,\psi}^{\delta}(t)
\subset
\bigcup_{j=1}^{J}
B(\Phi(a^j,t),r_\delta)
\qquad
\text{for every }t\in I.
\tag{LCI.3c3l}
```

Also set

```math
R_\delta
:=
r_\delta+\frac32\delta.
\tag{LCI.3c3l0}
```

Define the anchored-center ledger

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
:=
1+
\sum_{j=1}^{J}\sum_{q=0}^{m}
|U_q(\Phi(a^j,t),t)|
\tag{LCI.3c3m}
```

and the corresponding collar-oscillation coefficient

```math
\Omega_{N,m,\rho,\psi}^{osc}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{m}
\big\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\big\|_{L^\infty(B(\Phi(a^j,t),2R_\delta))}.
\tag{LCI.3c3n}
```

Then for almost every `t\in I`,

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
\le
C_{m,\rho,\psi,\delta,I}
\Big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc}(t)
\Big),
\tag{LCI.3c3o}
```

and, for every `0\le q\le m`,

```math
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t))}
\le
C_{m,\rho,\psi,\delta,I}
\Big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc}(t)
\Big),
\tag{LCI.3c3o0}
```

and for every `\varepsilon\in(0,\nu]`,

```math
|\mathcal S_{N,m}^{low}(t)|
+
|\mathcal R_{N,m}^{low}(t)|
\le
\varepsilon\,
\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
+
C_{\varepsilon,m,\rho,\psi,\delta,I}
\Big(
1+
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)^2
+
\Omega_{N,m,\rho,\psi}^{osc}(t)^2
\Big)
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c3p}
```

### Proof

Fix `t\in I`. For each `y\in\mathcal C_{\rho,\psi}^{\delta}(t)`, choose
`j=j(y,t)` so that `y\in B(\Phi(a^j,t),r_\delta)`. Then

```math
|U_q(y,t)|
\le
|U_q(\Phi(a^j,t),t)|
+
\big\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\big\|_{L^\infty(B(\Phi(a^j,t),2R_\delta))}.
\tag{LCI.3c3q}
```

Taking the supremum in `y` and summing over `q=0,\dots,m` gives
`(LCI.3c3o)`.

Now fix `x\in\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t)`. By
`(CSP.25g0c-shell4)`, choose `y\in\mathfrak P_{\rho,\psi}(t)` with
`|x-y|<\tfrac32\delta`. Since
`\mathfrak P_{\rho,\psi}(t)\subset \mathcal C_{\rho,\psi}^{\delta}(t)`, the
cover hypothesis `(LCI.3c3l)` gives some `j` with
`y\in B(\Phi(a^j,t),r_\delta)`. Then

```math
|x-\Phi(a^j,t)|
\le
|x-y|+|y-\Phi(a^j,t)|
<
\frac32\delta+r_\delta
=
R_\delta,
\tag{LCI.3c3q0}
```

so

```math
|U_q(x,t)|
\le
|U_q(\Phi(a^j,t),t)|
+
\big\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\big\|_{L^\infty(B(\Phi(a^j,t),2R_\delta))}.
\tag{LCI.3c3q1}
```

Taking the supremum in
`x\in\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t)` yields `(LCI.3c3o0)`.

For `(LCI.3c3p)`, choose a smooth partition of unity
`\{\omega_j(\cdot,t)\}_{j=1}^{J}` on `\mathcal C_{\rho,\psi}^{\delta}(t)`
subordinate to the balls `B(\Phi(a^j,t),2r_\delta)`. In each localized strain
or cascade summand, decompose the distinguished low-order coefficient factor
used in the proof of `LCI.B2a` as

```math
U_\beta(x,t)
=
U_\beta(\Phi(a^j,t),t)
+
\big(
U_\beta(x,t)-U_\beta(\Phi(a^j,t),t)
\big)
\tag{LCI.3c3r}
```

or, on the cascade side, the corresponding factor `U_r` with `r\le m`.

For the centered part, the proof of `LCI.B2a` gives terms of the form

```math
|U_\beta(\Phi(a^j,t),t)|
\int
\omega_j\vartheta_{\rho,\psi,t}^{\delta}(x)^2
|Z(x,t)|\,|Z'(x,t)|\,dx,
\tag{LCI.3c3s}
```

where `Z` and `Z'` are packet fields already controlled by
`\mathcal G_{N,m,\rho,\psi}^{low,\delta}` and
`\mathcal D_{N,m,\rho,\psi}^{low,\delta}`. Cauchy--Young yields

```math
|(\text{centered contribution})|
\le
\varepsilon\,
\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
+
C_{\varepsilon}\,
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)^2\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c3t}
```

For the oscillation part, the same argument with
`\Omega_{N,m,\rho,\psi}^{osc}(t)` in place of the point value gives

```math
|(\text{oscillation contribution})|
\le
\varepsilon\,
\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
+
C_{\varepsilon}\,
\Omega_{N,m,\rho,\psi}^{osc}(t)^2\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c3u}
```

There are only finitely many patches and finitely many Leibniz/cascade
summands, all with constants depending only on
`m,\rho,\psi,\delta,I`. Summing `(LCI.3c3t)` and `(LCI.3c3u)` over those
summands gives `(LCI.3c3p)`. ∎

### Corollary `LCI.B2d` (Linear coefficient branch before the direct low-carrier readout)

Under the finite transported cover `(LCI.3c3l)`, for every
`\varepsilon\in(0,\nu]` the lower-order packet satisfies

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
+
(\nu-\varepsilon)\,
\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
\le
\mathfrak B_{N,m,\rho,\psi}^{coef,\varepsilon}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t),
\tag{LCI.3c3v}
```

where

```math
\mathfrak B_{N,m,\rho,\psi}^{coef,\varepsilon}(t)
:=
C_{\varepsilon,m,\rho,\psi,\delta,I}
\Big(
\big(1+\Gamma_\sharp(t)\big)
\big(
1+\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+\Omega_{N,m,\rho,\psi}^{osc}(t)
\big)
+
1+\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)^2
+\Omega_{N,m,\rho,\psi}^{osc}(t)^2
\Big).
\tag{LCI.3c3w}
```

In particular, if

```math
\mathfrak B_{N,m,\rho,\psi}^{coef,\varepsilon}\in L^1(I),
\tag{LCI.3c3x}
```

then `LCI.B` closes by Gronwall without passing through the direct scalar
readout `(LCI.3c5)`.

### Proof

Use `(LCI.3c3o)` to read the lower-carrier coefficient still present in the
pressure redistribution/flux channel, combine that with the commutator class
`(LCI.3c3k)` and the nonlinear estimate `(LCI.3c3p)`, and choose the same
`\varepsilon` in the Young steps. Moving the resulting
`\varepsilon\mathcal D` term to the left gives `(LCI.3c3v)`--`(LCI.3c3w)`.
If `(LCI.3c3x)` holds, Gronwall on `(LCI.3c3v)` yields
`\sup_I\mathcal G_{N,m,\rho,\psi}^{low,\delta}<\infty`, i.e. `LCI.B`. ∎

### Corollary `LCI.B2e` (Exact transported-center sufficient closure on the coefficient branch)

Under the finite transported cover `(LCI.3c3l)`, assume additionally that the
pack-side collar gauge is already bounded on the interval:

```math
\Gamma_\sharp\in L^\infty(I).
\tag{LCI.3c3y0}
```

If the anchored-center ledger and the oscillation coefficient satisfy

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I),
\qquad
\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I),
\tag{LCI.3c3y}
```

then

```math
\mathfrak B_{N,m,\rho,\psi}^{coef,\varepsilon}\in L^1(I),
\tag{LCI.3c3x'}
```

and therefore `LCI.B` closes by Corollary `LCI.B2d`.

### Proof

Let

```math
M_\sharp:=\|\Gamma_\sharp\|_{L^\infty(I)}.
\tag{LCI.3c3z0}
```

Using `s\le \frac12(1+s^2)` for `s\ge 0`, one has

```math
1+\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+\Omega_{N,m,\rho,\psi}^{osc}(t)
\le
2+
\frac12\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)^2
+
\frac12\Omega_{N,m,\rho,\psi}^{osc}(t)^2
\le
2\Big(
1+\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)^2
+\Omega_{N,m,\rho,\psi}^{osc}(t)^2
\Big).
\tag{LCI.3c3z}
```

Insert `(LCI.3c3z)` into `(LCI.3c3w)`. Since `1+\Gamma_\sharp(t)\le 1+M_\sharp`
for a.e. `t\in I`, we obtain

```math
\mathfrak B_{N,m,\rho,\psi}^{coef,\varepsilon}(t)
\le
C_{\varepsilon,m,\rho,\psi,\delta,I}\,
(1+M_\sharp)\,
\Big(
1+
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)^2
+\Omega_{N,m,\rho,\psi}^{osc}(t)^2
\Big)
\quad\text{for a.e. }t\in I.
\tag{LCI.3c3z1}
```

Because `I` is a finite interval and `(LCI.3c3y)` holds, the right-hand side of
`(LCI.3c3z1)` lies in `L^1(I)`. Hence `(LCI.3c3x')` holds, so in particular the
closure hypothesis `(LCI.3c3x)` of Corollary `LCI.B2d` is satisfied. Therefore
`LCI.B` follows from `(LCI.3c3v)` by Gronwall. ∎

### Lemma `LCI.B2f` (Local Holder coefficient sufficient for the oscillation side)

Fix any `\alpha\in(0,1]`. Under the finite transported cover `(LCI.3c3l)`,
define

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{m}
\big[
U_q(\cdot,t)
\big]_{C^{0,\alpha}(B(\Phi(a^j,t),2R_\delta))}.
\tag{LCI.3c3z2}
```

Then for almost every `t\in I`,

```math
\Omega_{N,m,\rho,\psi}^{osc}(t)
\le
(2R_\delta)^\alpha\,
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t).
\tag{LCI.3c3z3}
```

In particular, if `(LCI.3c3y0)` holds together with

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I),
\qquad
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I),
\tag{LCI.3c3z4}
```

then `LCI.B` closes.

### Proof

Fix `t\in I`, `j\in\{1,\dots,J\}`, and `x\in B(\Phi(a^j,t),2R_\delta)`. By the
definition of the local Holder seminorm,

```math
|U_q(x,t)-U_q(\Phi(a^j,t),t)|
\le
|x-\Phi(a^j,t)|^\alpha
\big[
U_q(\cdot,t)
\big]_{C^{0,\alpha}(B(\Phi(a^j,t),2R_\delta))}
\le
(2R_\delta)^\alpha
\big[
U_q(\cdot,t)
\big]_{C^{0,\alpha}(B(\Phi(a^j,t),2R_\delta))}.
\tag{LCI.3c3z5}
```

Taking the `L^\infty` norm in `x`, then summing over `q=0,\dots,m`, and finally
the supremum in `j`, gives `(LCI.3c3z3)`. If `(LCI.3c3z4)` holds, then
`(LCI.3c3y)` follows from `(LCI.3c3z3)`, so Corollary `LCI.B2e` applies and
closes `LCI.B`. ∎

### Obstruction `LCI.B2f1` (The current lower-order packet does not by itself supply the full oscillation balls)

Lemma `LCI.B2f` is only a reduction of the oscillation side. It does not yet
prove `(LCI.3c3z4)` from the currently installed lower-order packet
`\mathcal G_{N,m,\rho,\psi}^{low,\delta}`.

The reason is geometric and exact. The direct packet readout `CSP.B3a2`
supplies a positive cutoff floor only on the small plateau balls

```math
B(y,2r_\delta)\subset
\{\vartheta_{\rho,\psi,t}^{\delta}\ge c_{\Xi,\kappa}\}
\qquad
(y\in\mathcal C_{\rho,\psi}^{\delta}(t)),
\tag{LCI.3c3z5a}
```

whereas the transported-center oscillation coefficient and Holder ledger are
defined on the much larger balls

```math
B(\Phi(a^j,t),2R_\delta),
\qquad
R_\delta=r_\delta+\frac32\delta.
\tag{LCI.3c3z5b}
```

So the present lower-order packet gives no theorem on disk that the full balls
`B(\Phi(a^j,t),2R_\delta)` lie inside a region where one has an unweighted
`H^2` or `C^{0,\alpha}` control from `\mathcal G_{N,m,\rho,\psi}^{low,\delta}`.

Therefore the exact oscillation-side supplier still missing on this route is a
center-ball extension theorem of the form

```math
\mathfrak J_{N,m,\rho,\psi}^{ctr,osc,\alpha}\in L^2(I)
\Longrightarrow
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I),
\tag{LCI.3c3z5c}
```

where `\mathfrak J_{N,m,\rho,\psi}^{ctr,osc,\alpha}` must be built from a
route-native control on the full transported-center balls, not merely from the
plateau balls in `(LCI.3c3z5a)`.

### Candidate Reduction `LCI.B2f2` (A widened oscillation shell reaches the full transported-center balls)

The clean upward repair is to stop asking the present lower-order cutoff
`\vartheta_{\rho,\psi,t}^{\delta}` to do a job it was not designed to do. Keep
the same defining function `d_{\rho,\psi}`, but introduce a companion
oscillation cutoff

```math
\vartheta_{\rho,\psi,t}^{osc,\delta}(x)
:=
\Xi_\delta^{osc}(d_{\rho,\psi}(x,t)),
\tag{LCI.3c3z5d}
```

with

```math
0\le \Xi_\delta^{osc}\le 1,
\qquad
\Xi_\delta^{osc}(s)=1 \text{ for } s\le 5\delta,
\qquad
\Xi_\delta^{osc}(s)=0 \text{ for } s\ge \frac{11}{2}\delta,
\tag{LCI.3c3z5e}
```

and the same derivative scale

```math
\|(\Xi_\delta^{osc})'\|_{L^\infty}\le C_{\Xi,1}\delta^{-1},
\qquad
\|(\Xi_\delta^{osc})''\|_{L^\infty}\le C_{\Xi,2}\delta^{-2}.
\tag{LCI.3c3z5f}
```

Because every center `c_j(t)=\Phi(a^j,t)` lies in
`\mathcal C_{\rho,\psi}^{\delta}(t)` and
`|x-c_j(t)|\le 2R_\delta=2r_\delta+3\delta`, one has

```math
d_{\rho,\psi}^{raw}(x,t)

\le
d_{\rho,\psi}^{raw}(c_j(t),t)+|x-c_j(t)|
<
\delta+2R_\delta
<
5\delta
\tag{LCI.3c3z5g}
```

for every `x\in B(c_j(t),2R_\delta)`. Hence

```math
B(c_j(t),2R_\delta)
\subset
\{\vartheta_{\rho,\psi,t}^{osc,\delta}=1\}
\qquad
(1\le j\le J,\ t\in I).
\tag{LCI.3c3z5h}
```

Define the companion oscillation-shell packet

```math
\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{osc,\delta}(x)\big)^2
\big|\nabla^\beta U_q(x,t)\big|^2\,dx.
\tag{LCI.3c3z5i}
```

and the companion widened-shell dissipation packet

```math
\mathcal D_{N,m,\rho,\psi}^{osc,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{osc,\delta}(x)\big)^2
\big|\nabla^{\beta+1}U_q(x,t)\big|^2\,dx.
\tag{LCI.3c3z5ia}
```

Write the widened support shell as

```math
\mathcal C_{\rho,\psi}^{osc,\delta}(t)
:=
\big\{
x\in\mathbf R^3:
d_{\rho,\psi}(x,t)<\tfrac{11}{2}\delta
\big\}.
\tag{LCI.3c3z5i0}
```

and the corresponding widened-shell carrier ledger

```math
\Gamma_{N,m,\rho,\psi}^{osc,sh}(t)
:=
1+
\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{osc,\delta}(t))}.
\tag{LCI.3c3z5i1}
```

### Reduction `LCI.B2f2a` (The widened-shell propagation theorem reduces to the outer-shell carrier)

If one replays the lower-order moving-collar identity `LCI.B1` with
`\vartheta_{\rho,\psi,t}^{osc,\delta}` in place of
`\vartheta_{\rho,\psi,t}^{\delta}`, then the same differentiated same-fluid
law, the same pressure redistribution/flux channel, and the same geometric
commutator algebra reduce the widened-shell packet to the coefficient law

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)
+
(\nu-\varepsilon)\,
\mathcal D_{N,m,\rho,\psi}^{osc,\delta}(t)
\le
C_{\varepsilon,m,\rho,\psi,\delta,I}\,
\big(1+\Gamma_\sharp(t)\big)\,
\big(1+\Gamma_{N,m,\rho,\psi}^{osc,sh}(t)\big)\,
\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t).
\tag{LCI.3c3z5j}
```

So below `LCI.B2f2` there is no new nonlinear family and no hidden new source
ledger. The only genuinely new coefficient object is the widened-shell carrier
`(LCI.3c3z5i1)`.

### Lemma `LCI.B2f2b` (The widened-shell carrier reads off from enlarged transported-center balls)

Set

```math
R_\delta^{osc}
:=
r_\delta+\frac{11}{2}\delta.
\tag{LCI.3c3z5j0}
```

and define the enlarged oscillation coefficient

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{m}
\big\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\big\|_{L^\infty(B(\Phi(a^j,t),2R_\delta^{osc}))}.
\tag{LCI.3c3z5j1}
```

Then for almost every `t\in I`,

```math
\Gamma_{N,m,\rho,\psi}^{osc,sh}(t)
\le
C_{m,\rho,\psi,\delta,I}
\Big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)
\Big).
\tag{LCI.3c3z5j2}
```

### Proof

Fix `t\in I` and `x\in\mathcal C_{\rho,\psi}^{osc,\delta}(t)`. By
`(CSP.14e)` there exists `y\in\mathfrak P_{\rho,\psi}(t)` with
`|x-y|<\tfrac{11}{2}\delta`. Because
`\mathfrak P_{\rho,\psi}(t)\subset\mathcal C_{\rho,\psi}^{\delta}(t)`, the
finite transported cover `(LCI.3c3l)` gives some `j=j(y,t)` with
`y\in B(\Phi(a^j,t),r_\delta)`. Therefore

```math
|x-\Phi(a^j,t)|
\le
|x-y|+|y-\Phi(a^j,t)|
<
\frac{11}{2}\delta+r_\delta
=
R_\delta^{osc}
<
2R_\delta^{osc}.
\tag{LCI.3c3z5j3}
```

Hence

```math
|U_q(x,t)|
\le
|U_q(\Phi(a^j,t),t)|
+
\big\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\big\|_{L^\infty(B(\Phi(a^j,t),2R_\delta^{osc}))}.
\tag{LCI.3c3z5j4}
```

Taking the supremum over
`x\in\mathcal C_{\rho,\psi}^{osc,\delta}(t)`, summing over `q=0,\dots,m`, and
using `(LCI.3c3m)` yields `(LCI.3c3z5j2)`. ∎

### Obstruction `LCI.B2f2c` (One widened shell does not yet read its own enlarged carrier)

Lemma `LCI.B2f2b` isolates the exact remaining subslot inside the widened-shell
route: place `\Omega_{N,m,\rho,\psi}^{osc,\sharp}` or an equivalent enlarged
local Holder ledger on `B(\Phi(a^j,t),2R_\delta^{osc})` into `L^2(I)`.

The present readout proposition `LCI.B2f3` does **not** yet do that. It gives
local `C^{0,\alpha}` control only on the smaller balls
`B(\Phi(a^j,t),2R_\delta)` because the plateau `(LCI.3c3z5h)` only proves
`\vartheta_{\rho,\psi,t}^{osc,\delta}\equiv 1` there. For the enlarged radius
from `(LCI.3c3z5j0)`,

```math
\delta+2R_\delta^{osc}
=
\delta+2r_\delta+11\delta
>
5\delta,
\tag{LCI.3c3z5j5}
```

so the argument behind `(LCI.3c3z5h)` does not show that
`B(\Phi(a^j,t),2R_\delta^{osc})` stays inside the plateau
`\{\vartheta_{\rho,\psi,t}^{osc,\delta}=1\}`. Therefore the widened-shell
packet identity and the present plateau readout do **not** yet close the
interval theorem by themselves.

The exact oscillation-side wall is now sharper:

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}\in L^2(I)
\tag{LCI.3c3z5j6}
```

or, equivalently, an enlarged local Holder ledger on the balls
`B(\Phi(a^j,t),2R_\delta^{osc})`.

The theorem-facing version of this exact subslot is now isolated in
[mpp-lci-a-enlarged-ball-oscillation-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-enlarged-ball-oscillation-closure-note.md),
whose target theorem `EOC.A` is precisely `(LCI.3c3z5j6)`.

Corollary `OFP.C3a` in the one-field note shows that a *fully propagated*
one-field coherence regime forces `(LCI.3c3z5j6)`. But
Obstruction `OFP.C3b` records why that implication cannot be imported here on
the present route: `OFP.B4` already spends the collar supplier `OFP.C2`, and
`OFP.C2` consumes `CSP.A`, while `LCI.B2f2c` is still one of the receiver-side
suppliers beneath `CSP.A`. But the route has already sharpened further: once
the widened receiver-side packet `(EOC.27)` is granted, Corollary `EOC.Ca`
shows that the enlarged-ball theorem is already downstream of `CSP.A`
instantiated at thickness
`\delta+\delta_{seg}`, rather than remaining an independent pre-`CSP.A`
obligation. In the one-field note, `OFP.C1b`--`OFP.C1c` now reduce
that non-circular supplier further to the centerwise transported defect
density `\mathfrak D_{N,\rho}^{ctr}`, the pointwise packing-mismatch
coefficient `P_{F,\rho}^{ctr,\sharp}`, and the centerwise next-rung segment
density `\mathfrak M_{N+1,\rho}^{seg,ctr}`. The subsequent reductions
`OFP.C1d`--`OFP.C1g` then sharpen this again: the segment-density branch is now
absorbed into the thickened collar envelope
`\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}`. After the exact
deformation-law propagation step `OFP.C1i`--`OFP.C1j`, the pack-oscillation
modulus `\mathfrak O_{F,\rho}^{ctr}` is no longer primitive either. But the
route has now advanced one step further on disk: once the widened receiver-side
packet `(EOC.27)` is granted, Corollary `EOC.C` makes the old halo/increment
supplier pair already downstream. So the live oscillation-side receiver at the
`EOC` surface is now the common thickened collar consumer
`\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}` together with that widened
return package, not a separate unresolved halo/increment split. The honest
remaining geometry behind that compression is still `OFP.C1k`: the reverse
image of the label halo is already contained in the variable-radius ball
`B(c_j(t),\Gamma_\sharp(t)\rho)`, but the present enlarged-ball supplier only
reads the fixed radius `2R_\delta^{osc}`. So the dedicated geometric wall is
still the variable-radius center-ball theorem `VCB.A` on
[mpp-lci-a-variable-radius-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-variable-radius-center-ball-note.md)
for `\mathfrak U_{1,\rho}^{halo,ctr}`, even though the live `EOC` receiver is
no longer `VCB.A` by itself.

Once the widened-shell interval theorem genuinely closes, fixed-radius local
Sobolev/Hölder on the balls from `(LCI.3c3z5h)` gives

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)
\le
C_{\alpha,m,\rho,\psi,\delta,I}
\Big(
1+\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)^{1/2}
\Big),
\tag{LCI.3c3z5k}
```

so on the finite interval `I`,

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
\tag{LCI.3c3z5l}
```

The oscillation-side wall therefore requires a companion widened-shell packet
that actually reaches the full transported-center balls. The smaller plateau
packet is not proof input beyond its geometric range.

### Proposition `LCI.B2f3` (Widened-shell packet readout gives the local Holder ledger)

Fix `0<\alpha\le \frac12`. Assume the widened-shell packet from
`(LCI.3c3z5i)` obeys

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)<\infty.
\tag{LCI.3c3z5m}
```

Then

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^\infty(I)\subset L^2(I).
\tag{LCI.3c3z5n}
```

### Proof

Fix `t\in I`, `j\in\{1,\dots,J\}`, and `0\le q\le m`. By `(LCI.3c3z5h)`,
`\vartheta_{\rho,\psi,t}^{osc,\delta}\equiv 1` on `B(c_j(t),2R_\delta)`. Hence
for every `0\le \beta\le 2`,

```math
\|\nabla^\beta U_q(\cdot,t)\|_{L^2(B(c_j(t),2R_\delta))}
\le
\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)^{1/2}.
\tag{LCI.3c3z5o}
```

Because the radius `2R_\delta` is fixed, local Sobolev/Morrey on the ball
`B(c_j(t),2R_\delta)` gives, for `0<\alpha\le \frac12`,

```math
\big[
U_q(\cdot,t)
\big]_{C^{0,\alpha}(B(c_j(t),2R_\delta))}
\le
C_{\alpha,m,\rho,\psi,\delta,I}
\sum_{\beta=0}^{2}
\|\nabla^\beta U_q(\cdot,t)\|_{L^2(B(c_j(t),2R_\delta))}.
\tag{LCI.3c3z5p}
```

Insert `(LCI.3c3z5o)` into `(LCI.3c3z5p)`, sum over `q=0,\dots,m`, and take
the supremum over `j=1,\dots,J` to obtain

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)
\le
C_{\alpha,m,\rho,\psi,\delta,I}
\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)^{1/2}.
\tag{LCI.3c3z5q}
```

Now `(LCI.3c3z5m)` yields `(LCI.3c3z5n)`. ∎

### Proposition `LCI.B2g` (Exact transported-center triangular system for the absolute center ledgers)

Under the finite transported cover `(LCI.3c3l)`, write

```math
c_j(t):=\Phi(a^j,t),
\qquad
1\le j\le J,
\tag{LCI.3c3z6}
```

and define the rungwise absolute-center ledgers

```math
\mathfrak A_{q,\rho,\psi}^{ctr}(t)
:=
\sum_{j=1}^{J}|U_q(c_j(t),t)|
\qquad
(0\le q\le m),
\tag{LCI.3c3z6a}
```

so that

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
:=
1+\sum_{q=0}^{m}\mathfrak A_{q,\rho,\psi}^{ctr}(t).
\tag{LCI.3c3z6b}
```

Define also the rungwise center-carrier forcing ledgers

```math
\mathfrak K_{q,\rho,\psi}^{ctr}(t)
:=
\sum_{j=1}^{J}|K_q(c_j(t),t)|
\qquad
(0\le q\le m),
\tag{LCI.3c3z7a}
```

and the total center-carrier forcing ledger

```math
\mathfrak K_{N,m,\rho,\psi}^{ctr}(t)
:=
\sum_{q=0}^{m}\mathfrak K_{q,\rho,\psi}^{ctr}(t).
\tag{LCI.3c3z7}
```

Then for each `0\le q\le m` and almost every `t\in I`,

```math
\frac{d}{dt}\mathfrak A_{q,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{q,\rho,\psi}^{ctr}(t)
+
C_q\,
\sum_{\ell=1}^{q}
\mathfrak A_{\ell,\rho,\psi}^{ctr}(t)\,
\mathfrak A_{q+1-\ell,\rho,\psi}^{ctr}(t).
\tag{LCI.3c3z8a}
```

Equivalently, on every `[t_1,t_2]\subset I`,

```math
\mathfrak A_{q,\rho,\psi}^{ctr}(t_2)
\le
\mathfrak A_{q,\rho,\psi}^{ctr}(t_1)
+
\int_{t_1}^{t_2}
\mathfrak K_{q,\rho,\psi}^{ctr}(s)\,ds
+
C_q\int_{t_1}^{t_2}
\sum_{\ell=1}^{q}
\mathfrak A_{\ell,\rho,\psi}^{ctr}(s)\,
\mathfrak A_{q+1-\ell,\rho,\psi}^{ctr}(s)\,ds.
\tag{LCI.3c3z8b}
```

### Proof

Because each `c_j(t)=\Phi(a^j,t)` is transported by the same velocity field,
the derivative along the center trajectory is the material derivative:

```math
\frac{d}{dt}U_q(c_j(t),t)
=
D_t U_q(c_j(t),t).
\tag{LCI.3c3z10}
```

Applying the tower law `(TC.14)` at `x=c_j(t)` gives

```math
\frac{d}{dt}U_q(c_j(t),t)
=
K_q(c_j(t),t)+B_q(c_j(t),t).
\tag{LCI.3c3z11}
```

Hence

```math
\frac{d}{dt}|U_q(c_j(t),t)|
\le
|K_q(c_j(t),t)|+|B_q(c_j(t),t)|.
\tag{LCI.3c3z12}
```

Expanding `B_q` by `(TC.15)`, every Leibniz summand at the center `c_j(t)` is a
contraction of two center values `U_\ell(c_j(t),t)` and
`U_{q+1-\ell}(c_j(t),t)` with `1\le \ell\le q`. Therefore

```math
|B_q(c_j(t),t)|
\le
C_q
\sum_{\ell=1}^{q}
|U_\ell(c_j(t),t)|\,
|U_{q+1-\ell}(c_j(t),t)|.
\tag{LCI.3c3z13}
```

Summing `(LCI.3c3z12)` and `(LCI.3c3z13)` over `j=1,\dots,J` gives

```math
\frac{d}{dt}\mathfrak A_{q,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{q,\rho,\psi}^{ctr}(t)
+
C_q
\sum_{\ell=1}^{q}
\sum_{j=1}^{J}
|U_\ell(c_j(t),t)|\,|U_{q+1-\ell}(c_j(t),t)|.
\tag{LCI.3c3z14}
```

For each `\ell`, use
`\sum_j |a_j b_j|\le (\sum_j |a_j|)(\sum_j |b_j|)` with
`a_j=U_\ell(c_j(t),t)` and `b_j=U_{q+1-\ell}(c_j(t),t)`. This yields
`(LCI.3c3z8a)`, and integrating in time gives `(LCI.3c3z8b)`. ∎

### Corollary `LCI.B2g1` (Coarse total Riccati collapse of the center system)

Under the same hypotheses, for almost every `t\in I`,

```math
\frac{d}{dt}\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{N,m,\rho,\psi}^{ctr}(t)
+
C_m\,
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)^2.
\tag{LCI.3c3z8}
```

Equivalently, on every `[t_1,t_2]\subset I`,

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t_2)
\le
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t_1)
+
\int_{t_1}^{t_2}
\mathfrak K_{N,m,\rho,\psi}^{ctr}(s)\,ds
+
C_m\int_{t_1}^{t_2}
\mathfrak A_{N,m,\rho,\psi}^{ctr}(s)^2\,ds.
\tag{LCI.3c3z9}
```

### Proof

Sum `(LCI.3c3z8a)` over `q=0,\dots,m` and use
`\mathfrak A_{q,\rho,\psi}^{ctr}\le \mathfrak A_{N,m,\rho,\psi}^{ctr}`. ∎

### Corollary `LCI.B2g2` (Only the first nontrivial center rung is self-quadratic)

The rungwise system `(LCI.3c3z8a)` gives:

```math
\frac{d}{dt}\mathfrak A_{0,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{0,\rho,\psi}^{ctr}(t),
\tag{LCI.3c3z15}
```

```math
\frac{d}{dt}\mathfrak A_{1,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{1,\rho,\psi}^{ctr}(t)
+
C_1\,
\mathfrak A_{1,\rho,\psi}^{ctr}(t)^2,
\tag{LCI.3c3z16}
```

and for every `2\le q\le m`,

```math
\frac{d}{dt}\mathfrak A_{q,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{q,\rho,\psi}^{ctr}(t)
+
C_q\,
\mathfrak A_{1,\rho,\psi}^{ctr}(t)\,
\mathfrak A_{q,\rho,\psi}^{ctr}(t)
+
C_q\sum_{\ell=2}^{q-1}
\mathfrak A_{\ell,\rho,\psi}^{ctr}(t)\,
\mathfrak A_{q+1-\ell,\rho,\psi}^{ctr}(t).
\tag{LCI.3c3z17}
```

So the transported-center system is triangular: the only genuinely
self-quadratic center rung is `q=1`. Every higher center rung is linear in its
own size once `\mathfrak A_{1,\rho,\psi}^{ctr}` and the lower center rungs are
already controlled.

### Proof

For `q=0`, the sum in `(LCI.3c3z8a)` is empty because `B_0=0`, yielding
`(LCI.3c3z15)`. For `q=1`, the only term is `\ell=1`, giving
`(LCI.3c3z16)`. For `q\ge 2`, the endpoint terms `\ell=1` and `\ell=q` both
contribute `\mathfrak A_{1,\rho,\psi}^{ctr}\mathfrak A_{q,\rho,\psi}^{ctr}`,
which can be absorbed into the single coefficient `C_q`; the remaining terms
have indices between `2` and `q-1`, giving `(LCI.3c3z17)`. ∎

### Corollary `LCI.B2g3` (Higher center rungs collapse once the first center rung is controlled)

Assume finite seed center data at `t_0\in I`, and assume

```math
\mathfrak A_{1,\rho,\psi}^{ctr}\in L^1(I),
\qquad
\mathfrak K_{q,\rho,\psi}^{ctr}\in L^1(I)
\quad
(0\le q\le m).
\tag{LCI.3c3z18}
```

Then

```math
\sup_{t\in I}\mathfrak A_{q,\rho,\psi}^{ctr}(t)<\infty
\qquad
(q=0,2,\dots,m).
\tag{LCI.3c3z19}
```

So, under carrier-forcing integrability, the absolute-center branch is reduced
to the first nontrivial center rung `\mathfrak A_{1,\rho,\psi}^{ctr}`. No
higher center rung is an independent nonlinear wall.

### Proof

For `q=0`, `(LCI.3c3z15)` and `\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I)` give
`\sup_I\mathfrak A_{0,\rho,\psi}^{ctr}<\infty`.

Fix `q\ge 2` and assume inductively that
`\sup_I\mathfrak A_{r,\rho,\psi}^{ctr}<\infty` for every `0\le r\le q-1`,
`r\neq 1`. Then in `(LCI.3c3z17)`:

1. `\mathfrak K_{q,\rho,\psi}^{ctr}` lies in `L^1(I)` by hypothesis;
2. the coefficient `\mathfrak A_{1,\rho,\psi}^{ctr}` lies in `L^1(I)` by
   hypothesis;
3. every product
   `\mathfrak A_{\ell,\rho,\psi}^{ctr}\mathfrak A_{q+1-\ell,\rho,\psi}^{ctr}`
   with `2\le \ell\le q-1` lies in `L^1(I)` because both factors are bounded on
   the finite interval `I` by the induction hypothesis.

Therefore `(LCI.3c3z17)` is a linear Gronwall inequality for
`\mathfrak A_{q,\rho,\psi}^{ctr}` with `L^1` coefficient and `L^1` source, so
`\sup_I\mathfrak A_{q,\rho,\psi}^{ctr}<\infty`. Induction in `q` gives
`(LCI.3c3z19)`. ∎

### Proposition `LCI.B2g4` (Exact pressure-viscosity split of the center-carrier forcing)

Under the same transported-center hypotheses, define

```math
\mathfrak K_{q,\rho,\psi}^{press,ctr}(t)
:=
\sum_{j=1}^{J}
\big|
\nabla^{q+1}p(c_j(t),t)
\big|,
\tag{LCI.3c3z19a}
```

and

```math
\mathfrak K_{q,\rho,\psi}^{visc,ctr}(t)
:=
\nu\sum_{j=1}^{J}
\big|
\Delta U_q(c_j(t),t)
\big|.
\tag{LCI.3c3z19b}
```

Then for each `0\le q\le m`,

```math
\mathfrak K_{q,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{q,\rho,\psi}^{press,ctr}(t)
+
\mathfrak K_{q,\rho,\psi}^{visc,ctr}(t).
\tag{LCI.3c3z19c}
```

Moreover, for every lower viscous rung `0\le q\le m-2`,

```math
\mathfrak K_{q,\rho,\psi}^{visc,ctr}(t)
\le
C_q\,\nu\,
\mathfrak A_{q+2,\rho,\psi}^{ctr}(t).
\tag{LCI.3c3z19d}
```

So the lower-rung viscous center forcing is already downstream of the exact
center system itself. What remains genuinely unreduced on the current
lower-order surface is:

1. the pressure-center readout
   `\mathfrak K_{q,\rho,\psi}^{press,ctr}` for every `0\le q\le m`;
2. the top-two viscous center ledgers
   `\mathfrak K_{m-1,\rho,\psi}^{visc,ctr}` and
   `\mathfrak K_{m,\rho,\psi}^{visc,ctr}`.

### Proof

The tower carrier definition `(TC.12)` gives

```math
K_q
=
-\nabla^{q+1}p+\nu\Delta U_q.
\tag{LCI.3c3z19e}
```

Evaluating `(LCI.3c3z19e)` at the transported centers `c_j(t)` and summing the
triangle inequality over `j=1,\dots,J` yields `(LCI.3c3z19c)`.

For `0\le q\le m-2`, the identity `U_{q+2}=\nabla^2 U_q` makes each component of
`\Delta U_q` the coordinate trace of the corresponding two derivative slots in
`U_{q+2}`. Hence

```math
\big|
\Delta U_q(c_j(t),t)
\big|
\le
C_q
\big|
U_{q+2}(c_j(t),t)
\big|.
\tag{LCI.3c3z19f}
```

Summing `(LCI.3c3z19f)` over `j` gives `(LCI.3c3z19d)`. The final statement is
just the exact interpretation of `(LCI.3c3z19c)`--`(LCI.3c3z19d)`: every lower
viscous rung `q\le m-2` recycles into the center system through
`\mathfrak A_{q+2,\rho,\psi}^{ctr}`, while the pointwise pressure-center
readout is still external at every rung and the top-two viscous center ledgers
are still outside the present lower-order packet readout. ∎

### Candidate Reduction `LCI.B2g5` (Reopen the first center rung before scalar Riccati collapse)

For each transported center `c_j(t)=\Phi(a^j,t)`, the exact `q=1` center law is

```math
\frac{d}{dt}U_1(c_j(t),t)
=
-\nabla^2 p(c_j(t),t)
+\nu\Delta U_1(c_j(t),t)
-U_1(c_j(t),t)^2.
\tag{LCI.3c3z19g}
```

This is just `(TC.12)`, `(TC.14)`, and `(TC.15)` specialized to `q=1` along
the center trajectory. The scalar Riccati bound `(LCI.3c3z16)` is obtained only
after taking absolute values and summing over `j`, so it discards the matrix
structure of the quadratic term `-U_1^2`.

Therefore a sharper closure route for the first center rung is:

1. discharge the top-two viscous center ledgers
   `\mathfrak K_{m-1,\rho,\psi}^{visc,ctr}` and
   `\mathfrak K_{m,\rho,\psi}^{visc,ctr}` by a separate center-ball readout;
2. prove a local pressure-center response theorem that converts localized
   pressure source information on the transported center balls into pointwise
   bounds for `\nabla^2 p(c_j(t),t)`;
3. derive a first-rung center functional from `(LCI.3c3z19g)` that keeps the
   exact quadratic structure longer than the crude scalar collapse
   `(LCI.3c3z16)`.

So the honest remaining first-rung wall is not merely "integrate the Riccati
law harder." It is: find a pressure-center response theorem and a sharper
first-rung carrier functional before absolute values destroy the exact `q=1`
structure.

### Lemma `LCI.B2g5a` (Top-two viscous center ledgers are conditionally downstream of the higher-rung collar packet)

Assume the higher-rung collar packet is propagated on `I`:

```math
\sup_{t\in I}\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)<\infty.
\tag{LCI.3c3z19h}
```

Then the top-two viscous center ledgers satisfy

```math
\mathfrak K_{m-1,\rho,\psi}^{visc,ctr},
\quad
\mathfrak K_{m,\rho,\psi}^{visc,ctr}
\in
L^\infty(I).
\tag{LCI.3c3z19i}
```

### Proof

For `q=m-1`, each component of `\Delta U_{m-1}` is the coordinate trace of the
two derivative slots in `U_{m+1}`. Likewise, each component of `\Delta U_m` is
the coordinate trace of the two derivative slots in `U_{m+2}`. Hence

```math
\big|\Delta U_{m-1}(c_j(t),t)\big|
\le
C_m\,|U_{m+1}(c_j(t),t)|,
\qquad
\big|\Delta U_{m}(c_j(t),t)\big|
\le
C_m\,|U_{m+2}(c_j(t),t)|.
\tag{LCI.3c3z19j}
```

In the higher-rung packet notation `(CSP.3)`, the fields `U_{m+1}` and
`U_{m+2}` appear as

```math
U_{m+1}=W_{m,0},
\qquad
U_{m+2}=W_{m,1},
\tag{LCI.3c3z19k}
```

provided `N\ge 1` for the second identity. The collar embedding slot `(CSP.5)`
therefore gives a uniform local pointwise bound for both center values on the
packet collar, and each transported center `c_j(t)=\Phi(a^j,t)` lies inside the
same collar cover used throughout `LCI.B2c`. Thus there is a constant
`C_{m,\rho,\psi,\delta,I}` such that

```math
\sum_{j=1}^{J}|U_{m+1}(c_j(t),t)|
+
\sum_{j=1}^{J}|U_{m+2}(c_j(t),t)|
\le
C_{m,\rho,\psi,\delta,I}\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)^{1/2}.
\tag{LCI.3c3z19l}
```

Combining `(LCI.3c3z19j)` and `(LCI.3c3z19l)` yields `(LCI.3c3z19i)`. ∎

So the top-two viscous center ledgers are not an independent first-rung wall
once `CSP.A` is available. Their only remaining role here is pre-`CSP.A`:
without a separate center-ball readout, they cannot yet be removed purely on
the lower-order receiver surface.

### Candidate Reduction `LCI.B2g5b` (Local source-plus-harmonic-tail decomposition for the first center-pressure rung)

Fix one transported center `c_j(t)=\Phi(a^j,t)` and the radius `R_\delta` from
`(LCI.3c3l0)`. Choose a smooth cutoff `\eta_j(\cdot,t)` such that

```math
0\le \eta_j\le 1,
\qquad
\eta_j\equiv 1 \text{ on } B(c_j(t),R_\delta),
\qquad
\operatorname{supp}\eta_j\subset B(c_j(t),2R_\delta),
\tag{LCI.3c3z19m}
```

and

```math
|\nabla^\ell\eta_j(\cdot,t)|
\le
C_\ell R_\delta^{-\ell}
\qquad
(\ell=1,2,3,4).
\tag{LCI.3c3z19n}
```

Define the localized pressure source potential

```math
p_j^{loc}(x,t)
:=
\mathcal N*
\partial_a\partial_b\big(\eta_j(\cdot,t)\,u_a u_b(\cdot,t)\big)(x),
\tag{LCI.3c3z19o}
```

where `\mathcal N(x)=1/(4\pi|x|)` is the Newton kernel, and define the local
harmonic remainder

```math
h_j(x,t):=p(x,t)-p_j^{loc}(x,t).
\tag{LCI.3c3z19p}
```

Then `h_j(\cdot,t)` is harmonic on `B(c_j(t),R_\delta)`, and

```math
|\nabla^2 p(c_j(t),t)|
\le
|\nabla^2 p_j^{loc}(c_j(t),t)|
+
C\,R_\delta^{-2}
\fint_{B(c_j(t),R_\delta)}
|h_j(x,t)|\,dx.
\tag{LCI.3c3z19q}
```

Consequently, if we define the first-rung local pressure-response ledger

```math
\mathfrak P_{1,\rho,\psi}^{loc,ctr}(t)
:=
\sum_{j=1}^{J}
|\nabla^2 p_j^{loc}(c_j(t),t)|,
\tag{LCI.3c3z19r}
```

and the first-rung harmonic-tail ledger

```math
\mathfrak H_{1,\rho,\psi}^{press,tail}(t)
:=
R_\delta^{-2}
\sum_{j=1}^{J}
\fint_{B(c_j(t),R_\delta)}
|h_j(x,t)|\,dx,
\tag{LCI.3c3z19s}
```

then the first center-pressure rung obeys

```math
\mathfrak K_{1,\rho,\psi}^{press,ctr}(t)
\le
\mathfrak P_{1,\rho,\psi}^{loc,ctr}(t)
+
C\,\mathfrak H_{1,\rho,\psi}^{press,tail}(t).
\tag{LCI.3c3z19t}
```

### Proof

Because `-\Delta p=\partial_a\partial_b(u_a u_b)` in the classical still-live
regime, the localized potential `(LCI.3c3z19o)` satisfies

```math
-\Delta p_j^{loc}
=
\partial_a\partial_b\big(\eta_j u_a u_b\big).
\tag{LCI.3c3z19u}
```

Hence

```math
-\Delta h_j
=
\partial_a\partial_b\big((1-\eta_j)u_a u_b\big).
\tag{LCI.3c3z19v}
```

Since `1-\eta_j` vanishes on `B(c_j(t),R_\delta)`, the right-hand side of
`(LCI.3c3z19v)` is zero there, so `h_j` is harmonic on that ball.

Now write

```math
\nabla^2 p(c_j(t),t)
=
\nabla^2 p_j^{loc}(c_j(t),t)
+
\nabla^2 h_j(c_j(t),t).
\tag{LCI.3c3z19w}
```

The harmonic interior estimate on `B(c_j(t),R_\delta)` gives

```math
|\nabla^2 h_j(c_j(t),t)|
\le
C\,R_\delta^{-2}
\fint_{B(c_j(t),R_\delta)}
|h_j(x,t)|\,dx.
\tag{LCI.3c3z19x}
```

Combining `(LCI.3c3z19w)` and `(LCI.3c3z19x)` yields `(LCI.3c3z19q)`, and
summing over `j=1,\dots,J` gives `(LCI.3c3z19t)`. ∎

So the first center-pressure wall itself splits into two exact local pieces:

1. a localized pressure-response term `\mathfrak P_{1,\rho,\psi}^{loc,ctr}`;
2. a harmonic-tail ledger `\mathfrak H_{1,\rho,\psi}^{press,tail}`.

The real remaining theorem is therefore no longer “bound pointwise Hessian of
pressure somehow.” It is: control the local source-response term and the
harmonic tail on the transported center balls.

This also clarifies the relation to the derivative--LP bridge note. The source
surface in
[derivative-lp-compatibility-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md)
is compatible with `(LCI.3c3z19o)`: it localizes the pressure **source** into
strict low-high / high-low packets plus a finite-collar resonant packet. But
that note stops before the center-ball elliptic **response** step. So on the
current route the source localization is no longer the live issue; the live
pressure wall is the local response theorem for
`\mathfrak P_{1,\rho,\psi}^{loc,ctr}` together with the harmonic-tail control
`\mathfrak H_{1,\rho,\psi}^{press,tail}`.

### Candidate Reduction `LCI.B2g5c` (Source localization is already compatible with the first center-pressure wall)

Retain the localized pressure-source potential `(LCI.3c3z19o)`. The
derivative--LP bridge note implies that the source

```math
\partial_a\partial_b\big(\eta_j u_a u_b\big)
\tag{LCI.3c3z19y}
```

admits the same strict low-high / high-low / finite-collar resonant split as
the derivative pressure source in `(DLP.6)`, now on the center-ball scale
selected by `\eta_j`.

So the first center-pressure wall is not blocked by source localization
anymore. After `(LCI.3c3z19y)` is decomposed into those three packet classes,
the remaining unresolved step is purely on the **response** side:

1. prove a local elliptic response theorem turning those localized source
   packets into the center-point bound
   `|\nabla^2 p_j^{loc}(c_j(t),t)|`;
2. control the harmonic-tail ledger
   `\mathfrak H_{1,\rho,\psi}^{press,tail}`.

In particular, the current pressure wall is no longer "find a better pressure
source split." The source split is already compatible with the existing bridge
note. The live debt is the local center-ball elliptic response plus harmonic
tail.

### Candidate Reduction `LCI.B2g5d` (Local Holder response theorem for the localized first pressure rung)

Assume `0<\alpha\le 1` and retain the local Holder ledger
`\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)` from `(LCI.3c3z2)`. Then for
almost every `t\in I`,

```math
\mathfrak P_{1,\rho,\psi}^{loc,ctr}(t)
\le
C_{\alpha,\rho,\psi,\delta,I}
\Big(
1+
\mathfrak A_{0,\rho,\psi}^{ctr}(t)^2
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2
\Big).
\tag{LCI.3c3z19z}
```

### Proof

Fix `j`. By `(LCI.3c3z5)` with `q=0`, every `x\in B(c_j(t),2R_\delta)`
satisfies

```math
|u(x,t)|
\le
|u(c_j(t),t)|
+
(2R_\delta)^\alpha
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t).
\tag{LCI.3c3z19aa}
```

Hence the localized source

```math
F_j(x,t):=\eta_j(x,t)\,u(x,t)\otimes u(x,t)
\tag{LCI.3c3z19ab}
```

obeys

```math
\|F_j(\cdot,t)\|_{L^\infty(B(c_j(t),2R_\delta))}
+
[F_j(\cdot,t)]_{C^{0,\alpha}(B(c_j(t),2R_\delta))}
\le
C_{\alpha,\rho,\psi,\delta,I}
\Big(
|u(c_j(t),t)|^2
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2
\Big).
\tag{LCI.3c3z19ac}
```

Now

```math
p_j^{loc}
=
\partial_a\partial_b\mathcal N * F_{j,ab},
\tag{LCI.3c3z19ad}
```

so the Hessian of `p_j^{loc}` is the value at `c_j(t)` of a classical
Calderon--Zygmund operator applied to the compactly supported Holder datum
`F_j`. The local Schauder/CZ estimate on the fixed-radius ball
`B(c_j(t),2R_\delta)` therefore gives

```math
|\nabla^2 p_j^{loc}(c_j(t),t)|
\le
C_{\alpha,\rho,\psi,\delta,I}
\Big(
\|F_j(\cdot,t)\|_{L^\infty}
+
[F_j(\cdot,t)]_{C^{0,\alpha}}
\Big).
\tag{LCI.3c3z19ae}
```

Combining `(LCI.3c3z19ac)` and `(LCI.3c3z19ae)`, then summing over
`j=1,\dots,J`, yields `(LCI.3c3z19z)`. ∎

So the localized pressure-response term is already downstream of the existing
transported-center package: center values of `u` plus the local Holder
oscillation ledger.

### Candidate Reduction `LCI.B2g5e` (Smaller-ball harmonic tail reduces to an explicit far-field velocity tail)

For each transported center `c_j(t)`, define the smaller-ball harmonic-tail
ledger

```math
\widetilde{\mathfrak H}_{1,\rho,\psi}^{press,tail}(t)
:=
R_\delta^{-2}
\sum_{j=1}^{J}
\fint_{B(c_j(t),R_\delta/2)}
|h_j(x,t)|\,dx.
\tag{LCI.3c3z19af}
```

Then

```math
|\nabla^2 h_j(c_j(t),t)|
\le
C\,R_\delta^{-2}
\fint_{B(c_j(t),R_\delta/2)}
|h_j(x,t)|\,dx,
\tag{LCI.3c3z19ag}
```

and, because `1-\eta_j` vanishes on `B(c_j(t),R_\delta)`, one has the direct
far-field representation bound

```math
\fint_{B(c_j(t),R_\delta/2)}
|h_j(x,t)|\,dx
\le
C
\int_{|y-c_j(t)|>R_\delta}
\frac{|u(y,t)|^2}{|y-c_j(t)|^3}\,dy.
\tag{LCI.3c3z19ah}
```

Therefore, with the explicit far-field pressure-tail ledger

```math
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
:=
\sum_{j=1}^{J}
\int_{|y-c_j(t)|>R_\delta}
\frac{|u(y,t)|^2}{|y-c_j(t)|^3}\,dy,
\tag{LCI.3c3z19ai}
```

the harmonic contribution satisfies

```math
\widetilde{\mathfrak H}_{1,\rho,\psi}^{press,tail}(t)
\le
C_{\rho,\psi,\delta,I}\,
\mathfrak T_{1,\rho,\psi}^{press,far}(t).
\tag{LCI.3c3z19aj}
```

If, in addition, a finite-energy velocity ledger is available on `I`, then
`|y-c_j(t)|^{-3}\le R_\delta^{-3}` on the integration region gives the
conditional bound

```math
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
\le
C_{\rho,\psi,\delta,I}\,
\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^2.
\tag{LCI.3c3z19ak}
```

So the harmonic tail is reducible to a concrete far-field velocity tail, and
conditionally to the ordinary energy ledger when that ledger is available on
the interval.

### Proof

The interior harmonic estimate on the smaller ball gives `(LCI.3c3z19ag)`.
For `x\in B(c_j(t),R_\delta/2)` and `y` in the support of `1-\eta_j`, one has
`|y-c_j(t)|\ge R_\delta`, hence
`|x-y|\ge |y-c_j(t)|/2`. Since
`h_j=\partial_a\partial_b\mathcal N * ((1-\eta_j)u_a u_b)`, the kernel bound
`|\partial_a\partial_b\mathcal N(x-y)|\le C_{\mathcal N}|x-y|^{-3}` yields
`(LCI.3c3z19ah)`. Summing over `j` gives `(LCI.3c3z19aj)`, and
`(LCI.3c3z19ak)` comes from
`|y-c_j(t)|^{-3}\le R_\delta^{-3}` on the integration region. ∎

### Candidate Reduction `LCI.B2g5f` (Return to the exact unsquared first center-rung law)

For each transported center `c_j(t)=\Phi(a^j,t)`, combine `(LCI.3c3z19g)` with
the decomposition

```math
\nabla^2 p(c_j(t),t)
=
\nabla^2 p_j^{loc}(c_j(t),t)
+
\nabla^2 h_j(c_j(t),t)
\tag{LCI.3c3z19al}
```

to obtain

```math
\frac{d}{dt}U_1(c_j(t),t)
=
-\nabla^2 p_j^{loc}(c_j(t),t)
-\nabla^2 h_j(c_j(t),t)
+\nu\Delta U_1(c_j(t),t)
-U_1(c_j(t),t)^2.
\tag{LCI.3c3z19am}
```

By `LCI.B2g5a`, `LCI.B2g5d`, and `LCI.B2g5e`, the right-hand side is now split
into four exact pieces:

1. a localized pressure-response term controlled by center values plus the
   local Holder ledger;
2. a harmonic-tail term controlled by the far-field pressure-tail ledger, and
   conditionally by the ordinary energy ledger when available;
3. a top-viscous technical remainder, conditionally downstream of `CSP.A`;
4. the exact quadratic matrix term `-U_1(c_j(t),t)^2`.

So the first center-rung wall is no longer a scalar Riccati question. The
route has now returned to the genuine unsquared matrix law `(LCI.3c3z19am)`,
with every forcing piece except the quadratic matrix interaction rewritten into
explicit local or technical ledgers.

### Candidate Reduction `LCI.B2g5g` (Explicit lower-order forcing package for the unsquared first center-rung law)

For each transported center `c_j(t)=\Phi(a^j,t)`, define the first-rung forcing
matrix

```math
\mathcal E_j^{(1)}(t)
:=
-\nabla^2 p_j^{loc}(c_j(t),t)
-\nabla^2 h_j(c_j(t),t)
+\nu\Delta U_1(c_j(t),t).
\tag{LCI.3c3z19an}
```

Then `(LCI.3c3z19am)` takes the exact form

```math
\frac{d}{dt}U_1(c_j(t),t)
=
-U_1(c_j(t),t)^2
+
\mathcal E_j^{(1)}(t).
\tag{LCI.3c3z19ao}
```

Moreover, `LCI.B2g5a`, `LCI.B2g5d`, and `LCI.B2g5e` imply the pointwise bound

```math
|\mathcal E_j^{(1)}(t)|
\le
C_{\alpha,\rho,\psi,\delta,I}
\Big(
1
+
|u(c_j(t),t)|^2
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2
+
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
\Big)
+
\nu\big|\Delta U_1(c_j(t),t)\big|,
\tag{LCI.3c3z19ap}
```

and, if the energy ledger is available on `I`, `(LCI.3c3z19ak)` upgrades this
to

```math
|\mathcal E_j^{(1)}(t)|
\le
C_{\alpha,\rho,\psi,\delta,I}
\Big(
1
+
|u(c_j(t),t)|^2
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2
+
\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^2
\Big)
+
\nu\big|\Delta U_1(c_j(t),t)\big|.
\tag{LCI.3c3z19aq}
```

So the genuine remaining theorem is no longer another pressure-source or tail
split. The route has now isolated the exact first-rung matrix law
`(LCI.3c3z19ao)` together with the explicit lower-order forcing package
`(LCI.3c3z19ap)`--`(LCI.3c3z19aq)`. The remaining theorem is a matrix
coercivity estimate on the full first-rung carrier: the exact quadratic term
`-U_1^2` must dominate the displayed forcing package without replacing the
matrix law by a sign-destroying scalar estimate.

### Obstruction `LCI.B2g5h` (Bare first-rung matrix coercivity fails on the full carrier)

There is no universal comparison theorem that controls the full first-rung
size `|U_1(c_j(t),t)|` solely by the sign of the exact quadratic term
`-U_1(c_j(t),t)^2` in `(LCI.3c3z19ao)`.

More precisely, let

```math
N:=e_1\otimes e_2
=
\begin{pmatrix}
0&1&0\\
0&0&0\\
0&0&0
\end{pmatrix},
\qquad
N^2=0,
\qquad
\operatorname{tr}N=0.
\tag{LCI.3c3z19ar}
```

For any amplitude `M>0`, the matrix `A_M:=MN` is traceless and nilpotent, so
the unforced matrix law

```math
\dot A=-A^2
\tag{LCI.3c3z19as}
```

admits the stationary solution

```math
A(t)\equiv A_M,
\qquad
|A_M|=M|N|.
\tag{LCI.3c3z19at}
```

This branch is not merely algebraic: it is realized by the exact steady
incompressible shear flow

```math
u_M(x)
:=
(Mx_2,0,0),
\qquad
p_M\equiv 0,
\tag{LCI.3c3z19au}
```

for which

```math
\nabla u_M\equiv A_M,
\qquad
\Delta \nabla u_M\equiv 0,
\qquad
\nabla^2 p_M\equiv 0.
\tag{LCI.3c3z19av}
```

So on this exact same-fluid branch the first-rung law `(LCI.3c3z19ao)` reads

```math
\frac{d}{dt}U_1(c_j(t),t)=0
\qquad
\text{while}
\qquad
|U_1(c_j(t),t)|=M|N|
\text{ is arbitrarily large.}
\tag{LCI.3c3z19aw}
```

Consequently, if `\Phi` is any nonnegative functional on the full first-rung
carrier with `\Phi(A_M)\to\infty` as `M\to\infty`, there do not exist
constants `c>0` and `C<\infty` such that every solution of
`(LCI.3c3z19ao)` obeys a universal coercive comparison

```math
D^+\Phi(U_1(c_j(t),t))
\le
-c\,\Phi(U_1(c_j(t),t))^2
+
C\big|\mathcal E_j^{(1)}(t)\big|
\tag{LCI.3c3z19ax}
```

or any stronger domination statement with vanishing forcing.

### Proof

Apply `(LCI.3c3z19ax)` to the exact shear branch
`U_1(c_j(t),t)\equiv A_M`, `\mathcal E_j^{(1)}\equiv 0` from
`(LCI.3c3z19aw)`. Then the left-hand side vanishes identically, so

```math
0
\le
-c\,\Phi(A_M)^2
\qquad
\text{for every }M>0,
\tag{LCI.3c3z19ay}
```

which forces `\Phi(A_M)=0` for every `M`. This contradicts
`\Phi(A_M)\to\infty` as `M\to\infty`. Therefore no such full-carrier matrix
coercivity theorem can hold. ∎

So the exact quadratic self-interaction is **not** coercive on the whole first
center-rung carrier. Large nilpotent shear states are lawful smooth states for
which the first-rung size can be arbitrarily large while the quadratic term
vanishes exactly. Therefore the remaining first-rung wall is not a bare matrix
comparison theorem on `|U_1|`; it must either:

1. quotient out the affine/shear gauge sector; or
2. introduce an additional defect functional that vanishes on that nilpotent
   branch and measures only the genuinely dangerous first-rung modes.

### Necessary Condition `LCI.B2g5i` (Any replacement first-rung defect must annihilate the nilpotent shear branch)

Let `\mathfrak D_1` be any candidate first-rung defect intended to replace the
full carrier size `|U_1|` in a direct comparison theorem for
`(LCI.3c3z19ao)`. If `\mathfrak D_1(A_M)\to\infty` along the nilpotent shear
branch `A_M=MN`, then the contradiction from `LCI.B2g5h` persists. Therefore
any such replacement defect must satisfy at least one of the following
necessary properties on the branch `A_M=MN`:

```math
\sup_{M>0}\mathfrak D_1(A_M)<\infty,
\qquad\text{or more sharply}\qquad
\mathfrak D_1(A_M)=0
\ \text{for every }M>0.
\tag{LCI.3c3z19az}
```

In particular, no first-rung defect equivalent to the full matrix norm can
close the receiver-side wall on the current route.

### Candidate Reduction `LCI.B2g5j` (A first-rung defect alone does not yet replay the higher-rung collapse)

The nilpotent-shear obstruction `LCI.B2g5h` shows that the full carrier norm
`|U_1|` cannot be the right coercive first-rung object. But replacing it by a
defect `\mathfrak D_1` is not by itself enough to recover `LCI.B2g3`, because
the higher-rung system `(LCI.3c3z17)` still carries the coefficient

```math
\mathfrak A_{1,\rho,\psi}^{ctr}(t)\,
\mathfrak A_{q,\rho,\psi}^{ctr}(t)
\qquad
(2\le q\le m).
\tag{LCI.3c3z19az0}
```

So any successful first-rung repair must provide not only a defect theorem for
the exact unsquared law `(LCI.3c3z19ao)`, but also a defect-to-higher-rung
handoff that replaces the full-carrier coefficient in `(LCI.3c3z17)` by the
displayed center-rung product bound below.

At minimum, the needed replacement has the form: for each `2\le q\le m`,

```math
\mathfrak A_{1,\rho,\psi}^{ctr}(t)\,
\mathfrak A_{q,\rho,\psi}^{ctr}(t)
\le
B_{q,\rho,\psi}^{def}(t)\,
\mathfrak A_{q,\rho,\psi}^{ctr}(t)
+
S_{q,\rho,\psi}^{def}(t),
\tag{LCI.3c3z19az1}
```

with

```math
B_{q,\rho,\psi}^{def}\in L^1(I),
\qquad
S_{q,\rho,\psi}^{def}\in L^1(I),
\tag{LCI.3c3z19az2}
```

and where `B_{q,\rho,\psi}^{def}` is controlled by the replacement first-rung
defect together with the already-explicit center forcing ledgers.

Only after `(LCI.3c3z19az1)`--`(LCI.3c3z19az2)` are installed can the induction
in `LCI.B2g3` be replayed with the defect in place of the full first-rung
carrier. So the true first-rung wall is now a pair:

1. a defect or quotient theorem for the exact first-rung matrix law
   `(LCI.3c3z19ao)` that annihilates the affine/shear gauge branch;
2. a linearizing handoff from that defect to the higher-rung coefficient slot
   `(LCI.3c3z19az0)`.

### Candidate Reduction `LCI.B2g5k` (Affine-frame first-rung defect for the exact center law)

The clean repair is to quotient the exact center law by the affine flow already
generated by the center matrix itself. For each transported center, set

```math
A_j(t):=U_1(c_j(t),t),
\qquad
\dot G_j(t)=A_j(t)\,G_j(t),
\qquad
G_j(t_0)=I.
\tag{LCI.3c3z19az3}
```

Here `G_j` is the exact affine frame generated by the first center rung. On the
nilpotent shear branch from `LCI.B2g5h`, `A_j(t)\equiv A_M` and this frame is
the whole affine motion, so anything defined modulo `G_j` vanishes on
that branch.

The right first-rung defect is therefore not a size functional of `A_j` itself.
It is the affine-frame defect

```math
\mathfrak D_{1,j}^{aff}(t)
:=
|\mathcal E_j^{(1)}(t)|
+
\sup_{x\in B(c_j(t),2R_\delta)}
|U_1(x,t)-A_j(t)|,
\tag{LCI.3c3z19az4}
```

where `\mathcal E_j^{(1)}` is the exact forcing matrix from
`(LCI.3c3z19an)`. This defect vanishes on every exact affine same-fluid branch:
if `u(x,t)=A(t)x+b(t)` with `\dot A=-A^2`, then `U_1(\cdot,t)\equiv A(t)` and
`\mathcal E_j^{(1)}\equiv 0`, so

```math
\mathfrak D_{1,j}^{aff}(t)\equiv 0.
\tag{LCI.3c3z19az5}
```

So the theorem-facing first-rung target is:

```math
\sum_{j=1}^{J}\mathfrak D_{1,j}^{aff}\in L^1(I)
\quad\text{or}\quad
L^\infty(I),
\tag{LCI.3c3z19az6}
```

with the oscillation part fed by the center-ball supplier from
`LCI.B2f2` and the forcing part fed by the already-isolated package
`(LCI.3c3z19ap)`--`(LCI.3c3z19aq)`.

### Candidate Reduction `LCI.B2g5l` (Affine-frame handoff to the higher center rungs)

Once `G_j` is installed, the proposed higher-center-rung handoff transports the
higher rungs in that affine frame. Writing

```math
\widetilde U_q^{\,j}(t)
:=
\mathcal C_{G_j(t)}^{-1}\big(U_q(c_j(t),t)\big)
\qquad
(q\ge 2),
\tag{LCI.3c3z19az7}
```

for the rank-`q` tensor action of `G_j`, differentiating and using the center
law `(TC.14)` removes the exact linear action of `A_j(t)` from the higher-rung
equations. The remaining coefficient is no longer the full carrier
`|A_j(t)|`, but only the failure of the true field to match its affine center
model, namely `\mathfrak D_{1,j}^{aff}(t)`.

So the desired handoff theorem is the replacement of `(LCI.3c3z19az1)` by

```math
\mathfrak A_{1,\rho,\psi}^{ctr}(t)\,
\mathfrak A_{q,\rho,\psi}^{ctr}(t)
\leadsto
B_{q,\rho,\psi}^{aff}(t)\,
\mathfrak A_{q,\rho,\psi}^{ctr}(t)
+
S_{q,\rho,\psi}^{aff}(t),
\tag{LCI.3c3z19az8}
```

with

```math
B_{q,\rho,\psi}^{aff}(t)
\le
C_{aff,q,\rho,\psi}
\sum_{j=1}^{J}\mathfrak D_{1,j}^{aff}(t),
\qquad
S_{q,\rho,\psi}^{aff}\in L^1(I),
\tag{LCI.3c3z19az9}
```

so that the induction behind `LCI.B2g3` replays in the affine-quotiented
frame.

The first-center-rung package is therefore one coupled repair:

1. prove the widened-shell oscillation theorem `LCI.B2f2`;
2. use it together with `(LCI.3c3z19ap)`--`(LCI.3c3z19aq)` to control the
   affine-frame defect `\mathfrak D_{1,j}^{aff}`;
3. conjugate the higher center rungs by `G_j` and replay the triangular
   Gronwall step with `B_q^{aff}` in place of the false full-carrier
   coefficient.

### Proposition `LCI.B2g5m` (The explicit first-rung forcing package controls the affine-frame defect)

Define the total affine-frame defect ledger by

```math
\mathfrak D_{1,\rho,\psi}^{aff}(t)
:=
\sum_{j=1}^{J}\mathfrak D_{1,j}^{aff}(t).
\tag{LCI.3c3z19az10}
```

Assume `0<\alpha\le \frac12`, the local Holder ledger
`\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}` from `(LCI.3c3z2)`, the far-field
tail ledger `\mathfrak T_{1,\rho,\psi}^{press,far}`, and the viscous first-rung
center ledger `\mathfrak K_{1,\rho,\psi}^{visc,ctr}`.

Then for almost every `t\in I`,

```math
\mathfrak D_{1,\rho,\psi}^{aff}(t)
\le
C_{\alpha,\rho,\psi,\delta,I}
\Big(
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)
+
\mathfrak A_{0,\rho,\psi}^{ctr}(t)^2
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2
+
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
+
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t)
\Big).
\tag{LCI.3c3z19az11}
```

Consequently, if

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I),
\qquad
\mathfrak A_{0,\rho,\psi}^{ctr}\in L^2(I),
\qquad
\mathfrak T_{1,\rho,\psi}^{press,far}\in L^1(I),
\qquad
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I),
\tag{LCI.3c3z19az12}
```

then

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
\tag{LCI.3c3z19az13}
```

### Proof

Fix `j`. By the definition `(LCI.3c3z19az4)` and the local Holder seminorm,
for every `x\in B(c_j(t),2R_\delta)`,

```math
|U_1(x,t)-A_j(t)|
\le
(2R_\delta)^\alpha
\big[U_1(\cdot,t)\big]_{C^{0,\alpha}(B(c_j(t),2R_\delta))}.
\tag{LCI.3c3z19az14}
```

Taking the supremum in `x`, then summing over `j=1,\dots,J`, gives

```math
\sum_{j=1}^{J}
\sup_{x\in B(c_j(t),2R_\delta)}
|U_1(x,t)-A_j(t)|
\le
C_{\alpha,\rho,\psi,\delta,I}\,
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t).
\tag{LCI.3c3z19az15}
```

Next sum the explicit forcing estimate `(LCI.3c3z19ap)` over
`j=1,\dots,J`. Because `J<\infty`,

```math
\sum_{j=1}^{J}|u(c_j(t),t)|^2
\le
\Big(\sum_{j=1}^{J}|u(c_j(t),t)|\Big)^2
=
\mathfrak A_{0,\rho,\psi}^{ctr}(t)^2,
\tag{LCI.3c3z19az16}
```

and the common oscillation term contributes only another fixed factor times
`\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2`. The far-field tail and viscous
terms sum to `\mathfrak T_{1,\rho,\psi}^{press,far}(t)` and
`\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t)`. Hence

```math
\sum_{j=1}^{J}|\mathcal E_j^{(1)}(t)|
\le
C_{\alpha,\rho,\psi,\delta,I}
\Big(
\mathfrak A_{0,\rho,\psi}^{ctr}(t)^2
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2
+
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
+
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t)
\Big).
\tag{LCI.3c3z19az17}
```

Combine `(LCI.3c3z19az15)` and `(LCI.3c3z19az17)` with the definition
`(LCI.3c3z19az10)` to obtain `(LCI.3c3z19az11)`. The integrability statement
`(LCI.3c3z19az13)` is `(LCI.3c3z19az12)` integrated on the finite
interval `I`. ∎

### Proposition `LCI.B2g5n` (Exact affine-frame cancellation of the endpoint first-rung action)

For `q\ge 2`, let `\mathcal L_q(A_j)` denote the linear action of the center
matrix `A_j(t)=U_1(c_j(t),t)` on rank-`q` tensors generated by the endpoint
terms `\ell=1` and `\ell=q` in `(TC.15)`, and let
`\mathcal C_{G_j(t)}^{-1}` be the corresponding tensor action of `G_j(t)^{-1}`.
Define

```math
\widetilde U_q^{\,j}(t)
:=
\mathcal C_{G_j(t)}^{-1}\big(U_q(c_j(t),t)\big),
\qquad
\widetilde K_q^{\,j}(t)
:=
\mathcal C_{G_j(t)}^{-1}\big(K_q(c_j(t),t)\big).
\tag{LCI.3c3z19az18}
```

Then the exact center law `(TC.14)` implies

```math
\frac{d}{dt}\widetilde U_q^{\,j}(t)
=
\widetilde K_q^{\,j}(t)
+
\widetilde B_{q,\mathrm{mid}}^{\,j}(t),
\tag{LCI.3c3z19az19}
```

where `\widetilde B_{q,\mathrm{mid}}^{\,j}` is the affine-frame image of the
middle Leibniz block

```math
\sum_{\ell=2}^{q-1} U_\ell(c_j(t),t)*U_{q+1-\ell}(c_j(t),t).
\tag{LCI.3c3z19az20}
```

So the exact endpoint `U_1*U_q` and `U_q*U_1` interactions are removed from the
transformed higher-rung equations.

### Proof

Evaluate `(TC.14)` at `x=c_j(t)` and separate the endpoint and middle terms in
`B_q`:

```math
\frac{d}{dt}U_q(c_j(t),t)
=
K_q(c_j(t),t)
-\mathcal L_q(A_j(t))\,U_q(c_j(t),t)
+
B_{q,\mathrm{mid}}^{\,j}(t).
\tag{LCI.3c3z19az21}
```

Because `\dot G_j=A_jG_j`, the inverse tensor action satisfies

```math
\frac{d}{dt}\mathcal C_{G_j(t)}^{-1}
=
-\mathcal C_{G_j(t)}^{-1}\circ \mathcal L_q(A_j(t)).
\tag{LCI.3c3z19az22}
```

Differentiate `(LCI.3c3z19az18)` and use `(LCI.3c3z19az21)`--`(LCI.3c3z19az22)`.
The two `\mathcal L_q(A_j)` terms cancel exactly, leaving
`(LCI.3c3z19az19)` with
`\widetilde B_{q,\mathrm{mid}}^{\,j}
=
\mathcal C_{G_j(t)}^{-1}(B_{q,\mathrm{mid}}^{\,j})`. ∎

### Corollary `LCI.B2g5o` (Higher-rung induction replays in the affine frame)

For `q\ge 2`, define the transformed higher-rung ledgers

```math
\widetilde{\mathfrak A}_{q,\rho,\psi}^{ctr}(t)
:=
\sum_{j=1}^{J}|\widetilde U_q^{\,j}(t)|,
\qquad
\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}(t)
:=
\sum_{j=1}^{J}|\widetilde K_q^{\,j}(t)|.
\tag{LCI.3c3z19az23}
```

If

```math
\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}\in L^1(I)
\qquad
(2\le q\le m),
\tag{LCI.3c3z19az24}
```

and the lower transformed rungs are bounded on `I`, then the same induction as
in `LCI.B2g3` yields

```math
\sup_{t\in I}\widetilde{\mathfrak A}_{q,\rho,\psi}^{ctr}(t)<\infty
\qquad
(2\le q\le m).
\tag{LCI.3c3z19az25}
```

### Proof

Sum `(LCI.3c3z19az19)` over `j=1,\dots,J`, use the triangle inequality on the
middle block `(LCI.3c3z19az20)`, and note that there is no endpoint
`\widetilde{\mathfrak A}_{1,\rho,\psi}^{ctr}\,
\widetilde{\mathfrak A}_{q,\rho,\psi}^{ctr}` coefficient anymore. So for each
`q\ge 2`,

```math
\frac{d}{dt}\widetilde{\mathfrak A}_{q,\rho,\psi}^{ctr}(t)
\le
\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}(t)
+
C_q\sum_{\ell=2}^{q-1}
\widetilde{\mathfrak A}_{\ell,\rho,\psi}^{ctr}(t)\,
\widetilde{\mathfrak A}_{q+1-\ell,\rho,\psi}^{ctr}(t).
\tag{LCI.3c3z19az26}
```

This is the same triangular Gronwall induction as `LCI.B2g3`, now with the
endpoint first-rung coefficient removed. Induction in `q` gives
`(LCI.3c3z19az25)`. ∎

So the higher-rung induction itself is no longer the honest first-rung wall.
After the affine-frame rewrite, the remaining exact issue is the frame-weighted
forcing bridge `(LCI.3c3z19az24)`: one must compare the transformed forcing
ledgers `\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}` back to route-native
same-fluid ledgers strongly enough to feed the coefficient branch without
reintroducing an uncontrolled affine-frame weight.

### Proposition `LCI.B2g5p` (The affine frame is exactly the center deformation frame)

For each center label `a^j`, write

```math
F_j(t):=F(a^j,t)\,F(a^j,t_0)^{-1}.
\tag{LCI.3c3z19az27}
```

Then

```math
G_j(t)\equiv F_j(t)
\qquad
(1\le j\le J,\ t\in I).
\tag{LCI.3c3z19az28}
```

Consequently, for every rank `q`,

```math
\|\mathcal C_{G_j(t)}^{-1}\|
+
\|\mathcal C_{G_j(t)}\|
\le
C_{q}\,
\Gamma_\sharp(t)^{q}\,
\Gamma_\sharp(t_0)^{q},
\tag{LCI.3c3z19az29}
```

and therefore

```math
\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}(t)
\le
C_{q}\,
\Gamma_\sharp(t)^{q}\,
\Gamma_\sharp(t_0)^{q}\,
\mathfrak K_{q,\rho,\psi}^{ctr}(t).
\tag{LCI.3c3z19az30}
```

In particular, if

```math
\Gamma_\sharp\in L^\infty(I)
\qquad\text{and}\qquad
\mathfrak K_{q,\rho,\psi}^{ctr}\in L^1(I),
\tag{LCI.3c3z19az31}
```

then

```math
\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}\in L^1(I).
\tag{LCI.3c3z19az32}
```

### Proof

Along the transported center `c_j(t)=\Phi(a^j,t)`, the deformation gradient
satisfies

```math
\frac{d}{dt}F(a^j,t)
=
U_1(c_j(t),t)\,F(a^j,t)
=
A_j(t)\,F(a^j,t).
\tag{LCI.3c3z19az33}
```

Therefore `F_j(t)=F(a^j,t)F(a^j,t_0)^{-1}` obeys

```math
\frac{d}{dt}F_j(t)=A_j(t)\,F_j(t),
\qquad
F_j(t_0)=I.
\tag{LCI.3c3z19az34}
```

This is exactly the defining ODE for `G_j` in `(LCI.3c3z19az3)`, so uniqueness
gives `(LCI.3c3z19az28)`.

Now `\Gamma_\sharp` bounds both `|F|` and `|F^{-1}|` on the common label collar,
and each `a^j` lies in that collar. Hence

```math
|G_j(t)|+|G_j(t)^{-1}|
\le
C\,\Gamma_\sharp(t)\,\Gamma_\sharp(t_0),
\tag{LCI.3c3z19az35}
```

which yields `(LCI.3c3z19az29)` under the rank-`q` tensor action.
Applying this operator norm bound to the definition
`(LCI.3c3z19az18)` gives `(LCI.3c3z19az30)`, and `(LCI.3c3z19az32)` is
`(LCI.3c3z19az31)` evaluated with that bound. ∎

### Corollary `LCI.B2g5q` (The frame-weighted forcing bridge is downstream of the pack gauge)

Under the bounded pack-side gauge `(LCI.3c3y0)` and the center-forcing package
`(LCI.3c3z21)`, the transformed forcing condition `(LCI.3c3z19az24)` required
by Corollary `LCI.B2g5o` already holds.

So after the affine-frame rewrite, the higher-rung induction itself is no
longer blocked by a new frame-weighted forcing theorem. The remaining
first-center-rung burden is exactly the affine-frame defect integrability from
`LCI.B2g5m`, fed by the widened-shell oscillation theorem `LCI.B2f2`.

The theorem-facing version of this exact first-rung residual core is now
isolated in
[mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md)
as `AFD.A`.

### Corollary `LCI.B2h` (Receiver-side coefficient branch reduces to the first center rung)

Assume finite seed center data at `t_0\in I`, the bounded pack-side gauge
`(LCI.3c3y0)`, and the local Holder oscillation ledger

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
\tag{LCI.3c3z20}
```

Assume also

```math
\mathfrak K_{q,\rho,\psi}^{ctr}\in L^1(I)
\qquad
(0\le q\le m),
\tag{LCI.3c3z21}
```

and

```math
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)<\infty.
\tag{LCI.3c3z22}
```

Then `LCI.B` closes.

### Proof

Since `I` is finite, `(LCI.3c3z22)` implies
`\mathfrak A_{1,\rho,\psi}^{ctr}\in L^2(I)`. Corollary `LCI.B2g3` and
`(LCI.3c3z21)` give
`\sup_I\mathfrak A_{q,\rho,\psi}^{ctr}<\infty` for `q=0,2,\dots,m`, hence also
`\mathfrak A_{q,\rho,\psi}^{ctr}\in L^2(I)` for those `q`. Therefore

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I).
\tag{LCI.3c3z23}
```

By `(LCI.3c3z20)` and Lemma `LCI.B2f`, one has
`\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I)`. Together with `(LCI.3c3z23)` and the
bounded pack-side gauge `(LCI.3c3y0)`, Corollary `LCI.B2e` applies and closes
`LCI.B`. ∎

### Separate theorem-facing reduction note

The transported-center sufficient closure beneath `LCI.A` is now promoted into
[mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md).
That note freezes the theorem-facing package bounded pack-side gauge
`(LCI.3c3y0)`, local Holder oscillation `(LCI.3c3z20)`, and first
center-rung bound `(LCI.3c3z22)`, then isolates one residual center-forcing
theorem `RCF.A`. After Proposition `LCI.B2g4`, the residual forcing ledger is
exactly the pressure-center readout at every rung together with the top-two
viscous center ledgers, so on the transported-center surface the honest
remaining wall is no longer the coarse scalar / Osgood obstruction.

### Proposition `LCI.B3` (The direct-readout branch now has a front-end shell bridge before the Osgood wall)

Because Corollary `LCI.B2b` now uses the sharpened support-shell carrier
`\|U_0\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t))}`, the old
direct scalar law `(LCI.3c4)` is no longer automatic from `CSP.B3a2` alone.
To recover that direct branch, one first needs a shell-to-collar scalar bridge
such as

```math
\|U_0(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t))}\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\le
B_{\rho,\psi,\delta,I}^{sh}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\;+\;
\varepsilon\,\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t),
\qquad
B_{\rho,\psi,\delta,I}^{sh}\in L^1(I).
\tag{LCI.3c3k0}
```

If such a shell bridge is installed and one then spends the direct geometric
readout `CSP.B3a2`, the lower-order packet satisfies the route-native scalar law

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
+
\nu\,\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t)
\le
C_{\rho,\psi,\delta,I}\,
\big(1+\Gamma_\sharp(t)\big)\,
\big(1+\Gamma_{N,m,\rho,\psi}^{low}(t)\big)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c4}
```

and by `CSP.B3a2`,

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
\le
1+
C_{m,\rho,\psi,\delta,I}\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{1/2}
\qquad
\text{for a.e. }t\in I.
\tag{LCI.3c5}
```

After renormalizing constants, `(LCI.3c4)`--`(LCI.3c5)` take the comparison
form

```math
\frac{d}{dt}\mathcal G(t)
\le
a(t)\big(1+\mathcal G(t)^{1/2}\big)\mathcal G(t),
\qquad
a(t):=C_{\rho,\psi,\delta,I}\big(1+\Gamma_\sharp(t)\big).
\tag{LCI.3c5a}
```

If `\mathcal G(t_0)=0`, then the zero function already solves
`(LCI.3c5a)`, and scalar comparison for `(LCI.3c5a)` yields
`\mathcal G\equiv 0` on `I`. So only the nontrivial case
`\mathcal G(t_0)>0` needs further analysis.

Set `y(t):=\mathcal G(t)^{1/2}`. Then

```math
y'(t)
\le
\frac12\,a(t)\,y(t)\big(1+y(t)\big).
\tag{LCI.3c5b}
```

For the equality model, `w:=1/y` satisfies

```math
w'(t)=-\frac12\,a(t)\big(1+w(t)\big),
\tag{LCI.3c5c}
```

so if `A_+(t):=\int_{t_0}^t a_+(s)\,ds`, comparison gives

```math
\mathcal G(t)^{1/2}
\le
\Big(
\big(1+\mathcal G(t_0)^{-1/2}\big)e^{-A_+(t)/2}-1
\Big)^{-1}
\tag{LCI.3c5d}
```

while the denominator stays positive. Consequently, `a\in L^1(I)` and finite
initial packet size do **not** by themselves imply
`\sup_I\mathcal G_{N,m,\rho,\psi}^{low,\delta}<\infty` on an arbitrary finite
interval. This comparison route closes only under the additional smallness
threshold

```math
\int_I a_+(t)\,dt
<
2\log\!\Big(1+\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)^{-1/2}\Big),
\tag{LCI.3c5e}
```

or under a scalar reduction that replaces the self-coupled term by an
Osgood-safe linear coefficient. One sufficient theorem-facing bridge is an
estimate of the form

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\le
B_{\rho,\psi,\delta,I}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\;+\;
\varepsilon\,\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t),
\qquad
B_{\rho,\psi,\delta,I}\in L^1(I),
\tag{LCI.3c5f}
```

because then `(LCI.3c4)` becomes linear after absorbing the
`\varepsilon\mathcal D` term. So the direct-readout branch now has two exact
scalar subslots:

1. the front-end shell bridge `(LCI.3c3k0)` needed to re-enter `(LCI.3c4)`;
2. after that, the Osgood-safe linearizing bridge `(LCI.3c5f)`.

The nonlinear strain/cascade estimate is no longer the issue on that branch. ∎

### Proposition `LCI.B3a` (Transported-center direct realization of both scalar bridges)

Assume the finite transported cover `(LCI.3c3l)`. Then for almost every
`t\in I`,

```math
\|U_0(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta,\vartheta}(t))}\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\le
C_{m,\rho,\psi,\delta,I}\,
\big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc}(t)
\big)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t),
\tag{LCI.3c5h}
```

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\le
C_{m,\rho,\psi,\delta,I}\,
\big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc}(t)
\big)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t).
\tag{LCI.3c5i}
```

Define

```math
B_{\rho,\psi,\delta,I}^{ctr,osc}(t)
:=
C_{m,\rho,\psi,\delta,I}\,
\big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc}(t)
\big).
\tag{LCI.3c5j}
```

If the absolute anchored-center ledger satisfies

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I),
\tag{LCI.3c5k}
```

and the explicit oscillation ledger satisfies

```math
\Omega_{N,m,\rho,\psi}^{osc}\in L^1(I),
\tag{LCI.3c5k0}
```

then `B_{\rho,\psi,\delta,I}^{ctr,osc}\in L^1(I)`, the front-end shell bridge
`(LCI.3c3k0)` holds, and the scalar linearizing bridge `(LCI.3c5f)` holds.

### Proof

Multiply the transported-center shell readout `(LCI.3c3o0)` by
`\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)` to obtain `(LCI.3c5h)`.
Multiply the transported-center readout `(LCI.3c3o)` by
`\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)` to obtain `(LCI.3c5i)`. Under
`(LCI.3c5k)` and `(LCI.3c5k0)`, the coefficient
`B_{\rho,\psi,\delta,I}^{ctr,osc}` lies in `L^1(I)`, so both `(LCI.3c3k0)` and
`(LCI.3c5f)` follow with the admissible extra
`\varepsilon\mathcal D` term set equal to `0`. ∎

### Corollary `LCI.B3a1` (The Apr 19 transported-center package already installs both scalar bridges)

Assume finite seed center data at `t_0\in I`, the finite transported cover
`(LCI.3c3l)`, the bounded pack-side gauge `(LCI.3c3y0)`, the local Holder
oscillation ledger `(LCI.3c3z20)`, the center-forcing package `(LCI.3c3z21)`,
and the first center-rung bound `(LCI.3c3z22)`. Then `(LCI.3c5k)` and
`(LCI.3c5k0)` both hold, so both `(LCI.3c3k0)` and `(LCI.3c5f)` follow from
Proposition `LCI.B3a`.

### Proof

Because `I` is finite, `(LCI.3c3z20)` and Lemma `LCI.B2f` give
`\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I)\subset L^1(I)`, i.e. `(LCI.3c5k0)`.
The same finiteness of `I` turns the bounded first
center-rung hypothesis `(LCI.3c3z22)` into
`\mathfrak A_{1,\rho,\psi}^{ctr}\in L^1(I)`, so Corollary `LCI.B2g3`,
together with the center-forcing package `(LCI.3c3z21)`, yields
`\sup_I\mathfrak A_{q,\rho,\psi}^{ctr}<\infty` for `q=0,2,\dots,m`; on the
finite interval `I`, this implies `(LCI.3c5k)`. Proposition `LCI.B3a` now
gives both `(LCI.3c3k0)` and `(LCI.3c5f)`. ∎

### Proposition `LCI.B3b` (If the oscillation ledger is collapsed to the rough packet readout, the superlinear remainder reappears)

Assume the finite transported cover `(LCI.3c3l)`. If, instead of retaining the
explicit oscillation ledger `\Omega_{N,m,\rho,\psi}^{osc}`, one spends the
rough collar-packet readout from `CSP.B3a2`, then for almost every `t\in I`,

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
\le
C_{m,\rho,\psi,\delta,I}
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
C_{m,\rho,\psi,\delta,I}\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{1/2}.
\tag{LCI.3c5l}
```

Consequently,

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\le
C_{m,\rho,\psi,\delta,I}\,
\big(1+\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)\big)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
+
C_{m,\rho,\psi,\delta,I}\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{3/2}.
\tag{LCI.3c5m}
```

### Proof

Fix `t\in I`, `y\in\mathcal C_{\rho,\psi}^{\delta}(t)`, and choose `j` so that

```math
y\in B(\Phi(a^j,t),r_\delta).
\tag{LCI.3c5m1}
```

Set `c_j(t):=\Phi(a^j,t)` and, for each `0\le q\le m`,

```math
V_{j,q}(x,t):=U_q(x,t)-U_q(c_j(t),t).
\tag{LCI.3c5m2}
```

Because `c_j(t)\in B(y,r_\delta)`, the pair `\{y,c_j(t)\}` lies inside the
fixed-radius ball `B(y,2r_\delta)`. The local Sobolev embedding
`H^2(B(y,2r_\delta))\hookrightarrow L^\infty(B(y,r_\delta))`, together with the
anchored fixed-radius Poincare inequality for functions vanishing at the point
`c_j(t)`, gives

```math
\|V_{j,q}(\cdot,t)\|_{L^\infty(B(y,r_\delta))}
\le
C_{r_\delta}
\sum_{\alpha=1}^{2}
\|\nabla^\alpha U_q(\cdot,t)\|_{L^2(B(y,2r_\delta))}.
\tag{LCI.3c5m3}
```

Evaluating at `x=y` yields

```math
|U_q(y,t)|
\le
|U_q(c_j(t),t)|
+
C_{r_\delta}
\sum_{\alpha=1}^{2}
\|\nabla^\alpha U_q(\cdot,t)\|_{L^2(B(y,2r_\delta))}.
\tag{LCI.3c5m4}
```

By `(CSP.25g3)`, the ball `B(y,2r_\delta)` lies inside the region where
`\vartheta_{\rho,\psi,t}^{\delta}=1`, so

```math
\sum_{\alpha=1}^{2}
\|\nabla^\alpha U_q(\cdot,t)\|_{L^2(B(y,2r_\delta))}
\le
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{1/2}.
\tag{LCI.3c5m5}
```

Substituting `(LCI.3c5m5)` into `(LCI.3c5m4)`, then summing over
`q=0,\dots,m` and taking the supremum in
`y\in\mathcal C_{\rho,\psi}^{\delta}(t)`, gives `(LCI.3c5l)`. Multiplying by
`\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)` yields `(LCI.3c5m)`. ∎

### Corollary `LCI.B3c` (The `\mathcal G^{3/2}` wall is only a fallback after rough readout)

Proposition `LCI.B3b` shows that the superlinear remainder
`\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{3/2}` is **not** a primitive
transported-center scalar obstruction. It appears only if the explicit
oscillation ledger `\Omega_{N,m,\rho,\psi}^{osc}` is collapsed to the rough
packet readout `\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{1/2}`.

On that downgraded route the outstanding oscillation-side remainder is exactly
the superlinear term in `(LCI.3c5m)`, so the branch closes only if that
remainder is itself linearized, for example by an estimate of the form

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{3/2}
\le
B_{\rho,\psi,\delta,I}^{osc}(t)\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
\;+\;
\varepsilon\,
\mathcal D_{N,m,\rho,\psi}^{low,\delta}(t),
\qquad
B_{\rho,\psi,\delta,I}^{osc}\in L^1(I).
\tag{LCI.3c5n}
```

Together with the absolute anchored-center ledger `(LCI.3c5k)`, this recovers
the Osgood-safe linear bridge `(LCI.3c5f)`. So `(LCI.3c5n)` is a
fallback repair for the rough readout in Proposition `LCI.B3b`, not the
primary transported-center scalar wall once the explicit oscillation ledger is
kept on the theorem surface.

### Proposition `LCI.C` (Direct readout from the geometric lower-order cutoff)

The geometric lower-order cutoff `\vartheta_{\rho,\psi,t}^{\delta}` from
`(CSP.25g0b)` is already normalized so that `CSP.B3a2` applies directly. Hence

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
\le
1+
C_{m,\rho,\psi,\delta,I}\,
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)^{1/2}
\qquad
\text{for a.e. }t\in I.
\tag{LCI.3d}
```

In particular, `LCI.B` plus the direct geometric readout imply

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
\tag{LCI.3d1}
```

So `LCI.B` and `LCI.C` imply `LCI.A`.

## Exact Downstream Role Once `LCI.B` Closes

Once the remaining scalar closure of `LCI.B` is supplied, the downstream route
resumes. Proposition `LCI.C` gives
`\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I)`, and Corollary `CSP.B3a0a` then gives
the packet-local stretching gauge

```math
\Gamma_{\rho,\psi}^{pkt}\in L^\infty(I),
\tag{LCI.4}
```

together with

```math
\Gamma_{\rho,\psi,\delta}^{ann}\in L^1(I).
\tag{LCI.5}
```

So the packet-local pack-side input needed by the collar route is no longer an
independent sibling theorem once `LCI.A` lands. It is produced internally from
the lower-carrier ledger on the moving packet collar.

Hence Lemma `CSP.B3a` gives

```math
\mathfrak L_{N,m,\rho,\psi}^{sf}\in L^1(I),
\tag{LCI.6}
```

and, together with the source-only fixed-family input `(FCI.5f)`,

```math
\mathfrak S_{N,m,\rho,\psi}^{pkt}\in L^1(I).
\tag{LCI.7}
```

Then `CSP.B4` closes:

```math
\sup_{t\in I}\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)<\infty.
\tag{LCI.8}
```

So on the packet-local one-field branch the exact chain is:

```math
\boxed{
LCI.A
\;+\;
FCI.5f
\Longrightarrow
CSP.A.
}
\tag{LCI.9}
```

This does **not** discharge the full global pack-side theorem `CFI.C1b` on the
whole common label collar. It only removes the packet-local stretching gauge as
an independent burden inside the collar/one-field supplier route.

## Proof Shape

The clean intended proof shape is now:

1. seed `\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t_0)` from a classical
   still-live collar via `LCI.B0`;
2. specialize the collar identity `CSP.B2` to the lower family
   `Z_{\alpha,q}=\nabla^\alpha U_q`, giving `(LCI.3c2)`;
3. prove the route-native coefficient estimate `(LCI.3c3)`, i.e.
   `(CSP.25g2a)`, instead of appealing to generic smoothness of a still-live
   window;
4. either stay on the sharper coefficient branch and prove
   `\mathfrak B_{N,m,\rho,\psi}^{coef,\varepsilon}\in L^1(I)` in
   `(LCI.3c3x)`; on the transported-center realization with bounded pack-side
   gauge this is already reduced further to the square-integrability pair
   `(LCI.3c3y)`, with the oscillation side reduced by `LCI.B2f` to the local
   Holder ledger `(LCI.3c3z4)` and then, more sharply, by
   `LCI.B2f2a`--`LCI.B2f2c` to the enlarged transported-center balls
   `B(\Phi(a^j,t),2R_\delta^{osc})`, while the absolute-center side is now
   governed by the local pressure / harmonic reductions `LCI.B2g5b`--`LCI.B2g5f`
   and the affine-defect / affine-frame package `LCI.B2g5m`--`LCI.B2g5q`; or,
   on the direct-readout branch, keep the transported-center oscillation
   ledger explicit so that Proposition `LCI.B3a` recovers both the
   support-shell bridge `(LCI.3c3k0)` and the linearizing bridge
   `(LCI.3c5f)` directly from the absolute anchored-center ledger
   `(LCI.3c5k)` and the oscillation ledger `(LCI.3c5k0)`; only if one
   collapses that oscillation ledger to the rough packet readout does the
   fallback linearization `(LCI.3c5n)` reappear;
5. read out `(LCI.2)` directly from the geometric cutoff by `CSP.B3a2`.

So this is not a new proof program. It is the lower-order carrier part of the
existing collar packet route, isolated as its own exact theorem burden.

## Honest Boundary

This note now closes the nonlinear subestimate that `chat25` isolated:
Proposition `LCI.B2a` proves the lower-order strain/cascade block stays inside
the carrier packet, Corollary `LCI.B2b` honestly discharges the
transport/viscous commutator slice on the transported-center coefficient
branch, and Proposition `LCI.B3a` shows that once the transported-center
oscillation ledger is kept explicit, the coarser scalar branch no longer halts
at either of its two scalar subslots: the front-end shell bridge
`(LCI.3c3k0)` and the Osgood-safe linearizing bridge `(LCI.3c5f)` are both
downstream of the same transported-center coefficient package. From there the
note exposes two receiver-side closure branches: the sharper coefficient
branch `(LCI.3c3v)`--`(LCI.3c3x)`, and the coarser direct-readout scalar
branch viewed through Proposition `LCI.B3a`.

What this note does **not** yet prove is the target theorem `LCI.A`. On the
live retained receiver route that theorem remains the active frontier burden:
the smaller statements below describe honest internal proof organization
beneath `LCI.A`, not a sharper surviving live frontier primitive. Within this
note, the remaining internal proof work can be organized in two honest forms:

1. the sharper coefficient branch: prove
   `\mathfrak B_{N,m,\rho,\psi}^{coef,\varepsilon}\in L^1(I)` in
   `(LCI.3c3x)`; under the bounded pack-side gauge `(LCI.3c3y0)` and the
   finite transported cover `(LCI.3c3l)`, Corollary `LCI.B2e` reduces this
   branch to the square-integrability pair `(LCI.3c3y)`. The theorem-facing
   transported-center sufficient closure of `(LCI.3c3y)` is now isolated in
   [mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md),
   which packages bounded pack-side gauge `(LCI.3c3y0)`, local Holder
   oscillation `(LCI.3c3z20)`, and first center-rung bound `(LCI.3c3z22)`,
   then leaves one residual center-forcing theorem `RCF.A`. Proposition
   `LCI.B2g4` identifies that residual forcing exactly as the pressure-center
   readout at every rung together with the top-two viscous center ledgers.
   Upstream on the present lower-order surface, the missing suppliers for that
   imported package now split more sharply: on the oscillation side,
   `LCI.B2f2a`--`LCI.B2f2c` reduce the widened-shell theorem to the enlarged
   transported-center balls `B(\Phi(a^j,t),2R_\delta^{osc})`, and the
   theorem-facing version of that exact oscillation-side supplier is still
   isolated in
   [mpp-lci-a-enlarged-ball-oscillation-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-enlarged-ball-oscillation-closure-note.md)
   as `EOC.A`, but Corollary `EOC.Ca` already shows that its honest
   route-native wall is the widened receiver-side return `(EOC.27)` together
   with `CSP.A` at thickness `\delta+\delta_{seg}`, not a separate unresolved
   halo/increment theorem; the companion widened-receiver / widened-thickness
   notes now reduce those two receiver objects further to old `LCI`-family
   theorems, and the companion fixed-point note records the exact consequence:
   on the installed route-native branch this receiver compression terminates at
   an `EOC` / `LCI` fixed point rather than producing a genuinely external
   supplier; the companion FEI-return instance note now records the same
   conservative read on the branch-local FEI returns: the returned collar
   instances `(FTL.Bc0)` and `(FPL.Bc0)` reopen no new lower-carrier family, but
   exactly the old returned reads `LCI.A[N+4,N+4,\delta+\Lambda_{\delta,\rho}^{halo}]`
   and `LCI.A[N+2,N+2,\delta+5\Lambda_{\delta,\rho}^{halo}]`, with the former
   the smaller-thickness conservative read; that same companion note also makes
   the terminal point explicit: after those reads are identified, the FEI-return
   branch feeds back into the already-installed lower-carrier route rather than
   opening any new lower-carrier supplier architecture; the finite-parameter
   Gronwall closure for all these returned lower-carrier instances is now
   isolated in
   [mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md),
   which proves the uniform `LCI.B2d` / `LCI.C` step from the corresponding
   transported-center ledgers; the non-smuggling direct supplier for those
   ledgers is now isolated in
   [mpp-lci-a-direct-transported-center-package-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-direct-transported-center-package-note.md)
   as `DTC.A_{\mathfrak p}`; on the
   first-center-rung side, the local pressure / harmonic reductions
   `LCI.B2g5b`--`LCI.B2g5f` and the affine-defect / affine-frame package
   `LCI.B2g5m`--`LCI.B2g5q` remain the live supplier chain, with the
   theorem-facing residual core now isolated in
   [mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md)
   as `AFD.A`. The old frame-weighted forcing bridge is no longer a separate
   wall after `LCI.B2g5p`--`LCI.B2g5q`; more sharply, the honest upstream
   theorem-facing reopening beneath the residual note is the explicit supplier
   split `(AFS.A0)` beneath `AFD.A`; and on the energy-conditioned halo-shell
   branch with `m\ge 3`, the stronger lower-order packet `HSP.A0a` now feeds
   `AFS.C`, while Proposition `AFB.A` upgrades that directly to the frozen
   first-center import `(RCF.2)` recorded as `(RCF.1b)` on the residual note;
2. the direct scalar branch: Proposition `LCI.B3a` reduces both scalar
   subslots `(LCI.3c3k0)` and `(LCI.3c5f)` to the absolute anchored-center
   ledger `(LCI.3c5k)` and the explicit oscillation ledger `(LCI.3c5k0)`,
   while Corollary `LCI.B3a1` reduces those two scalar inputs to the Apr 19
   transported-center package `(LCI.3c3z20)`--`(LCI.3c3z22)`;

The frozen-family source-only interval-integrability burden `(FCI.5f)` remains
the separate non-receiver-side input to the collar route.

The Osgood comparison `(LCI.3c5d)` still shows that `a\in L^1(I)` and finite
initial packet size do not, by themselves, force
`\sup_I\mathcal G_{N,m,\rho,\psi}^{low,\delta}<\infty` on an arbitrary finite
interval if one insists on the rough self-coupled readout
`(LCI.3c4)`--`(LCI.3c5)`. But Proposition `LCI.B3a` shows that this Osgood
obstruction is no longer the honest theorem stop on the transported-center
scalar route. So `LCI.A` is not yet closed on disk because its receiver-side
closure remains the upstream transported-center package, not because
the Osgood comparison itself is terminal. On the theorem-facing
transported-center surface, the honest remaining statement is now
`RCF.A` from
[mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md),
not the older coarse scalar obstruction. That note packages bounded pack-side
gauge `(LCI.3c3y0)`, local Holder oscillation `(LCI.3c3z20)`, and first
center-rung control `(LCI.3c3z22)`, then leaves one precise residual
center-forcing statement built from the pressure-center readout at every rung
together with the top-two viscous center ledgers. What remains upstream on the
present lower-order route is to supply the imported Holder and first-center
package via the enlarged-ball oscillation theorem isolated in
`LCI.B2f2a`--`LCI.B2f2c` and the first-rung supplier chain
`LCI.B2g5b`--`LCI.B2g5f`, `LCI.B2g5m`--`LCI.B2g5q`, not to reopen the old
scalar wall.

The coarser scalar branch no longer honestly halts at two separate scalar
subslots once the transported-center oscillation ledger is kept explicit:
Proposition `LCI.B3a` and Corollary `LCI.B3a1` show that both
`(LCI.3c3k0)` and `(LCI.3c5f)` are already downstream of the same Apr 19
package `(LCI.3c3z20)`--`(LCI.3c3z22)`, while the fallback oscillation
linearization `(LCI.3c5n)` survives only on the downgraded rough readout of
Proposition `LCI.B3b`. The packet-local pack-side
input to the collar route is now
downstream of `LCI.A` by `CSP.B3a0a`, so it is no longer an independent theorem
wall on this receiver-side branch.
