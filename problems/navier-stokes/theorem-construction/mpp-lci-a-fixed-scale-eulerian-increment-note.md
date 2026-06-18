# MPP LCI.A Fixed-Scale Eulerian Increment Note

## Status

Candidate theorem-facing note.

Role: isolate the exact transported-center increment supplier still missing
beneath the halo-shell theorem `HSP.A`.

This note does **not** widen the one-field / lower-carrier route into the
compressed `OFP.D1` program. It does **not** claim that transported defect
packet control is already equivalent to the needed Eulerian increment envelope.
Its narrower job is:

```math
\boxed{
\text{freeze the exact fixed-scale Eulerian increment theorem still needed to close the halo-shell carrier.}
}
\tag{FEI.0}
```

## Installed Inputs

Use only the already-installed one-field / comparison surfaces.

1. [mpp-lci-a-halo-shell-propagation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-propagation-note.md)
2. [mpp-one-field-forward-preservation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md)
3. [mpp-eulerian-to-transported-comparison-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-eulerian-to-transported-comparison-lemma.md)

## Fixed Scale

Retain the halo-shell radius from `HSP.B2`:

```math
R_{\delta,\rho}^{halo}
:=
r_\delta+2\delta+R_{\rho}^{halo,\ast},
\qquad
\Lambda_{\delta,\rho}^{halo}
:=
2R_{\delta,\rho}^{halo}.
\tag{FEI.1}
```

The exact transported-center increment supplier isolated by `HSP.B3` is

```math
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{|\eta|\le \Lambda_{\delta,\rho}^{halo}}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(c_j(t),t)
\big|^2.
\tag{FEI.2}
```

## Target Statement

### Target Theorem `FEI.A` (Fixed-scale transported-center Eulerian increment integrability)

On the same-fluid interval `I`, prove

```math
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}\in L^1(I).
\tag{FEI.A0}
```

This is the exact supplier theorem still missing beneath `HSP.A`.

## Downstream Use

By `HSP.B3`,

```math
\Omega_{N,m,\rho,\psi}^{halo,sh}(t)^2
\le
C_{N,m,\lambda}\,
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}(t),
\tag{FEI.3}
```

so `(FEI.A0)` yields

```math
\Omega_{N,m,\rho,\psi}^{halo,sh}\in L^1(I)
\tag{FEI.4}
```

on the finite interval `I`.

Then `HSP.B2` gives

```math
\Gamma_{N,m,\rho,\psi}^{halo,sh}(t)
\le
C_{m,\rho,\psi,\delta,I}
\Big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{halo,sh}(t)
\Big).
\tag{FEI.5}
```

So `(FEI.A0)`, together with the already-existing anchored-center ledger on the
center branch, places the halo-shell carrier in the integrable class needed by
`(HSP.8)`. That closes `HSP.A`, hence `VCB.A`, and then the oscillation-side
chain continues through `OFP.C1j` to `EOC.A`.

## Exact Finite-Net Reduction

The fixed scale `(FEI.1)` is now time-independent on `I`, so the first honest
reduction is no longer geometric. It is a finite-net interpolation on the
transported-center increment ball.

Choose a finite `\varepsilon`-net of the fixed Eulerian ball

```math
\Xi_{\delta,\rho}^{halo,\varepsilon}
:=
\big\{\eta^\ell\big\}_{\ell=1}^{M_\varepsilon}
\subset
\big\{
\eta\in\mathbf R^3:|\eta|\le \Lambda_{\delta,\rho}^{halo}
\big\},
\tag{FEI.5a}
```

with

```math
\forall\,|\eta|\le \Lambda_{\delta,\rho}^{halo}
\quad
\exists\,\eta^\ell\in\Xi_{\delta,\rho}^{halo,\varepsilon}
\text{ such that }
|\eta-\eta^\ell|\le \varepsilon.
\tag{FEI.5b}
```

Define the fixed finite centerwise increment family

```math
\mathcal F_{N,\delta,\rho}^{ctr,\varepsilon}(t)
:=
\sum_{\ell=1}^{M_\varepsilon}
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_{\eta^\ell}U_k(c_j(t),t)
\big|^2,
\tag{FEI.5c}
```

and the corresponding next-rung center-ball carrier

```math
\mathfrak C_{N+1,\delta,\rho}^{ctr,ball}(t)
:=
\sup_{1\le j\le J}
\sup_{|x-c_j(t)|\le \Lambda_{\delta,\rho}^{halo}}
\sum_{k=0}^{N}\lambda_k
\big|U_{k+1}(x,t)\big|^2.
\tag{FEI.5d}
```

### Lemma `FEI.B1` (Finite-net interpolation for the fixed-scale transported-center increment envelope)

For every `t\in I`,

```math
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}(t)
\le
2\,\mathcal F_{N,\delta,\rho}^{ctr,\varepsilon}(t)
+
2\,\varepsilon^2\,
\mathfrak C_{N+1,\delta,\rho}^{ctr,ball}(t).
\tag{FEI.5e}
```

### Proof

Fix `j` and `|\eta|\le \Lambda_{\delta,\rho}^{halo}`. Choose `\eta^\ell` by
`(FEI.5b)`. Then for each `k`,

```math
\delta_\eta U_k(c_j(t),t)-\delta_{\eta^\ell}U_k(c_j(t),t)
=
\int_0^1
(\eta-\eta^\ell)\cdot
U_{k+1}(c_j(t)+\eta^\ell+\theta(\eta-\eta^\ell),t)\,d\theta.
\tag{FEI.5f}
```

Because `|\eta^\ell|\le \Lambda_{\delta,\rho}^{halo}` and
`|\eta|\le \Lambda_{\delta,\rho}^{halo}`, the whole segment
`\eta^\ell+\theta(\eta-\eta^\ell)` stays inside the convex ball
`\{|\zeta|\le \Lambda_{\delta,\rho}^{halo}\}`. Hence every interpolation point
lies in `B(c_j(t),\Lambda_{\delta,\rho}^{halo})`, and therefore

```math
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(c_j(t),t)-\delta_{\eta^\ell}U_k(c_j(t),t)
\big|^2
\le
\varepsilon^2\,
\mathfrak C_{N+1,\delta,\rho}^{ctr,ball}(t).
\tag{FEI.5g}
```

Using `(u+v)^2\le 2u^2+2v^2`, taking the supremum over `|\eta|\le
\Lambda_{\delta,\rho}^{halo}` and `j`, and bounding the resulting finite
maximum by the sum in `(FEI.5c)`, gives `(FEI.5e)`. ∎

### Lemma `FEI.B2` (The center-ball next-rung carrier is downstream of a thickened collar envelope)

For every `t\in I`,

```math
\mathfrak C_{N+1,\delta,\rho}^{ctr,ball}(t)
\le
\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FEI.5h}
```

### Proof

Each transported center satisfies `d_{\rho,\psi}^{raw}(c_j(t),t)<\delta`. So if
`|x-c_j(t)|\le \Lambda_{\delta,\rho}^{halo}`, then

```math
d_{\rho,\psi}^{raw}(x,t)
\le
d_{\rho,\psi}^{raw}(c_j(t),t)+|x-c_j(t)|
<
\delta+\Lambda_{\delta,\rho}^{halo}.
\tag{FEI.5i}
```

Hence `x\in\mathcal C_{\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)`,
and taking the supremum over `j` and `x` gives `(FEI.5h)`. ∎

### Corollary `FEI.B3` (The fixed-scale increment theorem reduces to a finite centerwise family plus a thickened collar envelope)

If

```math
\mathcal F_{N,\delta,\rho}^{ctr,\varepsilon}\in L^1(I)
\qquad\text{and}\qquad
\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}\in L^1(I),
\tag{FEI.5j}
```

then

```math
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}\in L^1(I).
\tag{FEI.5k}
```

So the fixed-scale transported-center increment theorem `(FEI.A0)` is reduced to
one bounded finite centerwise fixed-increment family and one thickened collar
next-rung envelope.

## Exact Fixed-Family Successor

The remaining live burden inside `(FEI.5j)` is not a generic integrability
request. It is the interval propagation of a finite family of fixed increments
evaluated at the transported centers.

For each fixed increment `\eta`, define the centerwise fixed-increment energy

```math
\mathcal I_{N,\eta}^{ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(c_j(t),t)
\big|^2.
\tag{FEI.5l}
```

Then `(FEI.5c)` is the finite family aggregate defined by

```math
\mathcal F_{N,\delta,\rho}^{ctr,\varepsilon}(t)
=
\sum_{\ell=1}^{M_\varepsilon}
\mathcal I_{N,\eta^\ell}^{ctr}(t).
\tag{FEI.5m}
```

### Target Theorem `FEI.C` (Finite centerwise fixed-increment family propagation)

On the same-fluid interval `I`, prove

```math
\sup_{t\in I}
\mathcal F_{N,\delta,\rho}^{ctr,\varepsilon}(t)
<
\infty.
\tag{FEI.5n}
```

Together with the thickened collar envelope from `(FEI.5j)`, this closes
`FEI.A`.

### Lemma `FEI.C1` (Exact kinematic identity for a fixed Eulerian increment at a transported center)

Fix `j`, `k`, and a time-independent increment `\eta`. Then along the
transported center `c_j(t)`,

```math
\frac{d}{dt}\,
\delta_\eta U_k(c_j(t),t)
=
\delta_\eta(D_tU_k)(c_j(t),t)
-
\big(\delta_\eta u(c_j(t),t)\big)\cdot
U_{k+1}(c_j(t)+\eta,t).
\tag{FEI.5o}
```

### Proof

Because `\dot c_j(t)=u(c_j(t),t)`,

```math
\frac{d}{dt}U_k(c_j(t),t)=D_tU_k(c_j(t),t).
\tag{FEI.5p}
```

For the shifted point `c_j(t)+\eta`,

```math
\frac{d}{dt}U_k(c_j(t)+\eta,t)
=
\partial_tU_k(c_j(t)+\eta,t)
+
u(c_j(t),t)\cdot\nabla U_k(c_j(t)+\eta,t).
\tag{FEI.5q}
```

Adding and subtracting `u(c_j(t)+\eta,t)\cdot\nabla U_k(c_j(t)+\eta,t)` gives

```math
\frac{d}{dt}U_k(c_j(t)+\eta,t)
=
D_tU_k(c_j(t)+\eta,t)
-
\big(u(c_j(t)+\eta,t)-u(c_j(t),t)\big)\cdot
\nabla U_k(c_j(t)+\eta,t).
\tag{FEI.5r}
```

Subtracting `(FEI.5p)` from `(FEI.5r)` yields `(FEI.5o)` because
`\nabla U_k=U_{k+1}`. ∎

### Reduction `FEI.C2` (The finite centerwise family wall is a fixed-increment transport law plus the thickened collar envelope)

Lemma `FEI.C1` shows the exact propagation task beneath `(FEI.5n)`:
for each net increment `\eta^\ell`, replay the same differentiated tower law
inside `\delta_{\eta^\ell}(D_tU_k)` and control the extra drift-mismatch term

```math
\big(\delta_{\eta^\ell} u(c_j(t),t)\big)\cdot
U_{k+1}(c_j(t)+\eta^\ell,t)
\tag{FEI.5s}
```

by the paired objects
`\mathcal I_{N,\eta^\ell}^{ctr}(t)` and
`\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)`.

So the exact successor to `FEI.B3` is not a new comparison slogan. It is one
finite family of fixed-increment transported-center propagation laws on the net
`\Xi_{\delta,\rho}^{halo,\varepsilon}`.

### Lemma `FEI.C3` (The drift-mismatch term is already downstream of the thickened collar envelope)

For every fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and every
time `t\in I`,

```math
\sup_{1\le j\le J}
\left|
\sum_{k=0}^{N}\lambda_k\,
\delta_\eta U_k(c_j(t),t)\cdot
\Big(
\big(\delta_\eta u(c_j(t),t)\big)\cdot
U_{k+1}(c_j(t)+\eta,t)
\Big)
\right|
\le
C_{N,\lambda}\,
\big(
1+\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
\big)\,
\mathcal I_{N,\eta}^{ctr}(t).
\tag{FEI.5t}
```

### Proof

Fix `j`. Since `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, the shifted point
`c_j(t)+\eta` lies in the thickened collar
`\mathcal C_{\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)` by the same
geometry used in `(FEI.5h)`. Hence

```math
\sum_{k=0}^{N}\lambda_k
\big|U_{k+1}(c_j(t)+\eta,t)\big|^2
\le
\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FEI.5u}
```

Also,

```math
\big|\delta_\eta u(c_j(t),t)\big|^2
\le
\lambda_0^{-1}\,
\mathcal I_{N,\eta}^{ctr}(t).
\tag{FEI.5v}
```

Therefore, by Cauchy--Schwarz in `k`,

```math
\left|
\sum_{k=0}^{N}\lambda_k\,
\delta_\eta U_k(c_j(t),t)\cdot
\Big(
\big(\delta_\eta u(c_j(t),t)\big)\cdot
U_{k+1}(c_j(t)+\eta,t)
\Big)
\right|
\le
C_{N,\lambda}\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)^{1/2}
\mathcal I_{N,\eta}^{ctr}(t).
\tag{FEI.5w}
```

Since `s^{1/2}\le 1+s` for `s\ge 0`, `(FEI.5w)` implies `(FEI.5t)`. ∎

### Corollary `FEI.C4` (Exact remaining fixed-increment source law)

For each fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, define the
centerwise fixed-increment source ledger

```math
\mathcal S_{N,\eta}^{ctr}(t)
:=
\sup_{1\le j\le J}
\left|
2\sum_{k=0}^{N}\lambda_k\,
\delta_\eta U_k(c_j(t),t)\cdot
\delta_\eta(D_tU_k)(c_j(t),t)
\right|.
\tag{FEI.5x}
```

Then `FEI.C1` and `FEI.C3` give the pointwise energy inequality

```math
D^+\mathcal I_{N,\eta}^{ctr}(t)
\le
\mathcal S_{N,\eta}^{ctr}(t)
+
C_{N,\lambda}\,
\big(
1+\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
\big)\,
\mathcal I_{N,\eta}^{ctr}(t).
\tag{FEI.5y}
```

So the live content of `FEI.C` is now completely explicit: the only undeclared
part is the fixed-increment source ledger `\mathcal S_{N,\eta}^{ctr}`, not the
drift mismatch.

### Lemma `FEI.C5` (Tower-law split of the fixed-increment source ledger)

Write

```math
\mathcal S_{N,\eta}^{K,ctr}(t)
:=
\sup_{1\le j\le J}
\left|
2\sum_{k=0}^{N}\lambda_k\,
\delta_\eta U_k(c_j(t),t)\cdot
\delta_\eta K_k(c_j(t),t)
\right|,
\tag{FEI.5z}
```

```math
\mathcal S_{N,\eta}^{B,ctr}(t)
:=
\sup_{1\le j\le J}
\left|
2\sum_{k=0}^{N}\lambda_k\,
\delta_\eta U_k(c_j(t),t)\cdot
\delta_\eta B_k(c_j(t),t)
\right|.
\tag{FEI.5za}
```

Then

```math
\mathcal S_{N,\eta}^{ctr}(t)
\le
\mathcal S_{N,\eta}^{K,ctr}(t)
+
\mathcal S_{N,\eta}^{B,ctr}(t).
\tag{FEI.5zb}
```

### Proof

Insert `(TC.14)` into `(FEI.5x)` and use the triangle inequality. ∎

### Lemma `FEI.C6` (The cascade source is already downstream of the thickened collar envelope)

For every fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and every
time `t\in I`,

```math
\mathcal S_{N,\eta}^{B,ctr}(t)
\le
C_{N,\lambda}\,
\big(
1+\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
\big)\,
\mathcal I_{N,\eta}^{ctr}(t).
\tag{FEI.5zc}
```

### Proof

Expand `B_k` by `(TC.15)`. Each Leibniz summand in
`\delta_\eta B_k(c_j(t),t)` takes the form

```math
\delta_\eta\!\big(U_\ell*U_{k+1-\ell}\big)(c_j(t),t)
=
\big(\delta_\eta U_\ell(c_j(t),t)\big)*U_{k+1-\ell}(c_j(t)+\eta,t)
+
U_\ell(c_j(t),t)*\big(\delta_\eta U_{k+1-\ell}(c_j(t),t)\big).
\tag{FEI.5zd}
```

Both `c_j(t)` and `c_j(t)+\eta` lie in the thickened collar
`\mathcal C_{\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)`, so every
non-increment factor on the right-hand side is controlled by
`\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)^{1/2}`.
Pairing the result with `\delta_\eta U_k(c_j(t),t)` and using
Cauchy--Schwarz in the finite `k`-sum yields `(FEI.5zc)` after
`s^{1/2}\le 1+s`. ∎

### Corollary `FEI.C7` (The source ledger reduces to pressure increments plus the top viscous increment)

Define the pressure-increment source ledger

```math
\mathcal S_{N,\eta}^{press,ctr}(t)
:=
\sup_{1\le j\le J}
\left|
2\sum_{k=0}^{N}\lambda_k\,
\delta_\eta U_k(c_j(t),t)\cdot
\delta_\eta\nabla^{k+1}p(c_j(t),t)
\right|,
\tag{FEI.5ze}
```

the top viscous increment ledger

```math
\mathcal S_{N,\eta}^{visc,top,ctr}(t)
:=
\sup_{1\le j\le J}
\left|
2\nu\lambda_N\,
\delta_\eta U_N(c_j(t),t)\cdot
\delta_\eta\Delta U_N(c_j(t),t)
\right|,
\tag{FEI.5zf}
```

and the summed net source ledger

```math
\mathcal S_{N,\delta,\rho}^{ctr,\varepsilon}(t)
:=
\sum_{\ell=1}^{M_\varepsilon}
\Big(
\mathcal S_{N,\eta^\ell}^{press,ctr}(t)
+
\mathcal S_{N,\eta^\ell}^{visc,top,ctr}(t)
\Big).
\tag{FEI.5zg}
```

Then for every fixed `|\eta|\le \Lambda_{\delta,\rho}^{halo}`,

```math
\mathcal S_{N,\eta}^{ctr}(t)
\le
\mathcal S_{N,\eta}^{press,ctr}(t)
+
\mathcal S_{N,\eta}^{visc,top,ctr}(t)
+
C_{N,\lambda}\,
\big(
1+\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
\big)\,
\mathcal I_{N,\eta}^{ctr}(t).
\tag{FEI.5zh}
```

### Proof

By `(TC.12)`,

```math
\delta_\eta K_k
=
-\delta_\eta\nabla^{k+1}p+\nu\,\delta_\eta\Delta U_k.
\tag{FEI.5zi}
```

For `0\le k\le N-1`, each component of `\Delta U_k` is the coordinate trace of
the two derivative slots in `U_{k+2}=\nabla^2U_k`. Since `k+2\le N+1`, the values
`U_{k+2}(c_j(t),t)` and `U_{k+2}(c_j(t)+\eta,t)` both lie inside the thickened
collar envelope, so those lower viscous increments contribute only to the same
coefficient class as `(FEI.5zc)`. The only viscous increment not absorbed that
way is the top rung `k=N`, namely `(FEI.5zf)`. Combining this with
`(FEI.5zb)` and `(FEI.5zc)` yields `(FEI.5zh)`. ∎

## Exact Successor Source Theorems

The surviving FEI wall is now two-source, not amorphous.

### Target Theorem `FEI.D1` (Fixed-increment pressure-response theorem on the transported-center balls)

For each fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, prove

```math
\mathcal S_{N,\eta}^{press,ctr}\in L^1(I)
\tag{FEI.5zi0}
```

by a local/harmonic pressure decomposition on the balls
`B(c_j(t),\Lambda_{\delta,\rho}^{halo})`:

```math
p = p_{j,\eta}^{loc}+h_{j,\eta}^{tail},
\tag{FEI.5zi1}
```

with the local part driven by the fixed-increment quadratic source and the
harmonic tail controlled by the same thickened collar geometry.

The theorem-facing surface for this pressure half is now isolated in
[mpp-lci-a-fixed-increment-pressure-response-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-response-note.md),
which widens the local/harmonic split so it is uniform on the pair
`c_j(t), c_j(t)+\eta`, sends the harmonic tail downstream under the ordinary
energy ledger, and reduces the surviving pressure wall first to the absolute
fixed-radius `5\Lambda` pair in the pressure-response note and then sharply to
the fixed-ball Holder theorem `FPC.H` for the carrier
`\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}` in
[mpp-lci-a-fixed-radius-pressure-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-center-ball-note.md),
with the widened collar envelope
`\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}` still on
the coefficient side. The larger-radius transported-center envelope
`\mathfrak e_{N,5\Lambda}^{Eul,ctr}` from `(FPR.C8b)` is now downstream of the
direct Holder theorem `FPC.H` through `LRE.C1`, so `(FPR.C10)` remains only an
FEI-local obstruction if one insists on `FEI.A` alone. The fixed-ball Sobolev
theorem `FPC.A` and the one-derivative-lower direct sufficient route `FPS.H`
remain intermediate routes beneath that direct Holder theorem, while `FPL.C`
is the deeper exact still-local direct sufficient theorem, with the route-native
collar return from that local stack now exposed at the frontier by `FPC.Bc`
and on the deeper local chain by `FPL.G`. The
[mpp-lci-a-larger-radius-shifted-center-envelope-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-larger-radius-shifted-center-envelope-note.md)
now isolates that FEI-local sub-obstruction and the downstream collapse
`FPC.H \Rightarrow (FPR.C10b)`. The
sharper exact packet floor beneath `FPR.C3` is now recorded separately in
[mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md),
which splits the localized increment-source ledger into strict low-high /
strict high-low / finite-collar resonant packet ledgers and already isolates
the sharper same-depth source-side split `(FSP.C1)`, with only the resonant
packet genuinely same-depth, without replacing the installed direct route
through `FPR.C4c`.

### Target Theorem `FEI.D2` (Top viscous fixed-increment readout)

For each fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, prove

```math
\mathcal S_{N,\eta}^{visc,top,ctr}\in L^1(I).
\tag{FEI.5zi2}
```

This is exactly the missing one-rung-higher viscous readout on the shifted
center balls. If the present collar package is insufficient, the precise
missing object is the fixed-increment top-rung difference
`\delta_\eta U_{N+2}(c_j(t),t)`. The dedicated theorem-facing surface for this
viscous half is now
[mpp-lci-a-fixed-increment-top-viscous-readout-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-top-viscous-readout-note.md),
which reduces `FEI.D2` first to the fixed-radius transported-center top-rung
Sobolev packet theorem `FVR.F`, then to the top-rung carrier theorem `FVR.D`,
then to the one-rung-higher shifted-center readout `FVR.A`, and records the
coarser one-rung-higher collar sufficient form `FVR.B`. The companion note
[mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md)
adds a still-local one-rung-lower sufficient packet for `FVR.F`, phrased
through `U_{N+1}` on the same fixed halo balls, and isolates the intermediate
lower supplier theorem there as `FTS.C`. Its own companion
[mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md)
now pushes that one step deeper to the one-rung-higher local `L^2` theorem
`FTL.C`, with direct sufficient packet form `(FTL.H0)`.

### Reduction `FEI.D3` (Closing `FEI.C`)

If `FEI.D1` and `FEI.D2` hold for every net increment `\eta^\ell`, then the
summed source ledger `(FEI.5zg)` lies in `L^1(I)`, and the finite-family
energy law `(FEI.5y)` closes `FEI.C` by scalar Gronwall on each fixed net
increment followed by summation in `\ell`.

### Corollary `FEI.Bc` (The widened route-native lower-order collar packet already implies the fixed-scale increment theorem)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FEI.Bc0}
```

Then

```math
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}\in L^1(I).
\tag{FEI.Bc1}
```

### Proof

Corollary `FCL.Bc` gives

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
\tag{FEI.Bc2}
```

Then Corollary `FCL.H` yields

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I).
\tag{FEI.Bc3}
```

Because `\Lambda_{\delta,\rho}^{halo}\le 5\Lambda_{\delta,\rho}^{halo}`, one has
for every `t\in I`

```math
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}(t)
\le
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t).
\tag{FEI.Bc4}
```

Integrating `(FEI.Bc4)` on `I` and using `(FEI.Bc3)` gives `(FEI.Bc1)`. ∎

The companion widened-receiver return note
[mpp-lci-a-widened-receiver-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-widened-receiver-return-note.md)
records the exact provenance of the hypothesis `(FEI.Bc0)`: it is not a new
route-native widened-return theorem, but the old lower-order collar packet
theorem `LCI.B` at enlarged depth `N+4` and thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}`.

## Nearest Existing Comparison Surface

The closest on-disk comparison object is not the transported packet
`\widetilde E_{N,r,\psi}` itself. It is the integrated comparison packet

```math
\widehat{\mathcal E}^{cmp}_{N,\rho,\psi}(t)
:=
\sup_{0<|r|\le\rho}
\int
\psi(a)^2
\sup_{\eta\in\mathcal R_r(t;\psi)}
\sum_{k=0}^{N}\lambda_k
\big|\delta_\eta U_k(X(a,t),t)\big|^2\,da,
\tag{FEI.6}
```

from `(EC.10)`.

That surface is relevant because `EC.12` yields transported packet control once
`\widehat{\mathcal E}^{cmp}` is uniformly bounded. But it is only an adjacent
comparison object, not the fixed-scale centerwise theorem `(FEI.A0)`.

## Adjacent Frozen-Family Surface

There is also an older adjacent theorem line: the frozen fixed-increment packet
family from
[mpp-fixed-family-and-collar-interval-propagation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-fixed-family-and-collar-interval-propagation.md).

For the same fixed net `(FEI.5a)`, that older line propagates the packet family

```math
\sum_{\ell=1}^{M_\varepsilon}E_N(\eta^\ell,t;\psi).
\tag{FEI.6a}
```

But that packet-integrated family is not the sharp direct successor on the
current receiver branch. The direct FEI route already passes through the
transported-center source split `(FEI.C7)` and the successor theorems
`FEI.D1`--`FEI.D2`, so the older
frozen-family packet theorem is only adjacent context here, not the live wall.

## Boundary

This note does **not** prove `FEI.A`.

It also does **not** claim any on-disk theorem of the form

```math
\widehat{\mathcal E}^{cmp}_{N,\rho,\psi}
\Longrightarrow
\mathfrak e_{N,\Lambda}^{Eul,ctr}
\quad\text{or}\quad
\widetilde E_{N,r,\psi}
\Longrightarrow
\mathfrak e_{N,\Lambda}^{Eul,ctr}
\tag{FEI.7}
```

in the direction and class needed here.

So the exact live split is:

```math
\boxed{
\text{the honest direct successor beneath }FEI.A\text{ is the transported-center source split }(FEI.C7),
\newline
\text{with the thickened collar envelope }
\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}
\text{ already on the coefficient side,}
\newline
\text{while the sharper route-native nonlocal return is the widened lower-order moving-collar packet }(FEI.Bc0),
\newline
\text{and the older local floors }FPL.C,\ FTL.C,\ FCL.C,\ \text{and the shifted-slab residue now carry the sharper route-native suppliers }
(FPL.Bc0),\ (FTL.Bc0),\ (FCL.Bc0),\ (FTOC.Bf0),
\newline
\text{so those local packets are no longer the first nonlocal theorem-facing walls and have returned to the receiver-side collar burden }CSP.B3a1,
\newline
\text{with the adjacent comparison packet } \widehat{\mathcal E}^{cmp}
\text{ and the older frozen packet family } \sum_{\ell}E_N(\eta^\ell,t;\psi)
\text{ only side surfaces and not the sharp direct route.}
}
\tag{FEI.8}
```

On the top-viscous side, the direct branch still runs through `FVR.F`, but its
branch-local still-local wall is now explicit on disk as `FTL.C` in
[mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md),
with
[mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md)
keeping `FTS.C` as the intermediate one-rung-lower Sobolev route inside the
same local stack. The installed packet-level implications into `FTL.C` are the
sharper route-native moving-collar corollary `(FTL.Bc0)`, the adjacent
thickened-collar comparison `FTL.B`, and the wider common route `FTL.Ba`, with
`FVR.G` now exposing the direct route-native collar return at the frontier level
and `FTL.G` the same return from the deeper local stack to `CSP.B3a1`, with
`(FTL.Bb0)` recording that the wider common route is
again just `CSP.A` at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}` and higher depth, while the coarser
adjacent bypasses `FVR.B` and `FVR.C` skip that local stack rather than
implying it.

One step deeper, the companion note
[mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md)
now records the common still-local fixed-radius packet `FCL.C` beneath the
sharp direct pair itself. That packet implies both branch-local theorems
`FPL.C` and `FTL.C`, so the direct pair `(FPC.H,FVR.F)` no longer bottoms out
at two separate unrelated local `L^2` packets. Relative to the pressure branch,
the companion note
[mpp-lci-a-fixed-radius-common-local-top-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-residue-note.md)
now sharpens that common floor further: `(FTR.A2)` splits `FCL.C` exactly into
the already-isolated pressure wall `FPL.C` plus the enlarged-radius top-tail
residue `FTR.C`. Relative to the top-viscous branch, the companion note
[mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md)
sharpens that residue further: `(FTSR.A0)` reduces `FTR.C` to the
already-installed top branch-local wall `FTL.C` plus the annular shell theorem
`FTSR.C`. Its own companion
[mpp-lci-a-fixed-radius-common-local-top-shell-offset-cover-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-offset-cover-note.md)
now rewrites that shell as the finite shifted-center cover theorem `FTOC.C`,
then more sharply through the shifted-center slab theorem `FTOC.D` and the
shifted-center top-rung Sobolev slab theorem `FTOC.E` to the one-rung-lower
shifted-slab Sobolev theorem `FTOC.F`, with `(FTOC.Bf0)` the sharper
route-native moving-collar packet supplier from `CSP.B3a1` for that extra
shifted-slab residue, with `(FTOC.Bc0)` only the weaker predecessor-side corollary,
and with `(FTOC.B0)` only the coarser widened-thickness collar fallback there.
On the present on-disk route, `FCL.C` remains the exact common still-local
theorem, while `FTOC.F` is only the sharpest extra direct local object visible
inside the companion stack, not an independent live theorem burden on the
installed route. `(FTOC.Bf0)` is exactly `CSP.B3a1` at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}`, so this shifted-slab branch no longer
leaves an independent live theorem burden on the installed route: it has
returned to the receiver-side collar theorem `CSP.B3a1`, while the common floor
still also spends the branch-local top wall `FTL.C` and the pressure wall
`FPL.C`, and globally to `CSP.A` only once that receiver-side theorem is paired
with `(FCI.5f)`.

At the packet-sufficient level, the two direct siblings now share one common
route-native lower-order moving-collar route, already theorem-facing through
`(FCL.Bc0)` in
[mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md):
the single common lower-order moving-collar packet at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}` and depth `N+4` implies the common local
packet `FCL.C`, hence both branch-local terminal walls `FPL.C` and `FTL.C`,
while `(FCL.B0)` remains only the coarser widened-thickness `CSP.A` fallback.
So the adjacent sufficient form beneath the sharp direct pair `(FPC.H,FVR.F)`
has collapsed to a single common route-native moving-collar packet, even
though the direct FEI wall remains `(FPC.H,FVR.F)`.

The companion return-instance note
[mpp-csp-b3a1-fei-return-instance-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-csp-b3a1-fei-return-instance-note.md)
now freezes the sharper branch-local statement too: the pressure-side return
`(FPL.Bc0)` and the top-viscous return `(FTL.Bc0)` are each exact parameter
reads of the old receiver theorem `CSP.B3a1`, so no FEI-specific collar theorem
family survives below those local returns.

So the live wall beneath `HSP.A` is exactly the fixed-scale Eulerian increment
supplier, now sharpened further to the pressure-increment and top-viscous
increment ledgers on the finite centerwise net, with the thickened collar
envelope already on the coefficient side. It is not a generic comparison slogan
and not the older frozen-family packet law by itself.
