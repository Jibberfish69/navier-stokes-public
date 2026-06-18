# MPP LCI.A Fixed-Increment Pressure-Response Note

## Status

Candidate theorem-facing note.

Role: isolate the exact pressure half `FEI.D1` still missing beneath the
fixed-increment source split `FEI.C7`.

This note does **not** claim that the full fixed-increment source law is
closed. It does **not** claim that source localization is the remaining wall.
Its narrower job is:

```math
\boxed{
\text{freeze the exact widened local/harmonic pressure package beneath }FEI.C7
\text{ and reduce it to the narrowest surviving pressure supplier.}
}
\tag{FPR.0}
```

## Installed Inputs

Use only the already-installed pressure and FEI surfaces.

1. [mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md)
2. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
3. [derivative-lp-compatibility-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md)

## Setup

Retain the fixed halo radius from `(FEI.1)`:

```math
\Lambda_{\delta,\rho}^{halo}:=2R_{\delta,\rho}^{halo}.
\tag{FPR.1}
```

Fix one increment `\eta` with `|\eta|\le \Lambda_{\delta,\rho}^{halo}`.
Choose a smooth cutoff `\chi_j^{pr}(\cdot,t)` satisfying

```math
\chi_j^{pr}(\cdot,t)\equiv 1
\text{ on }B(c_j(t),2\Lambda_{\delta,\rho}^{halo}),
\qquad
\operatorname{supp}\chi_j^{pr}(\cdot,t)\subset
B(c_j(t),4\Lambda_{\delta,\rho}^{halo}),
\tag{FPR.2}
```

and construct it by fixing
`\vartheta\in C_c^\infty(B(0,4))` with `\vartheta\equiv1` on `B(0,2)` and
setting

```math
\chi_j^{pr}(x,t)
:=
\vartheta\!\left(\frac{x-c_j(t)}{\Lambda_{\delta,\rho}^{halo}}\right).
\tag{FPR.2a}
```

For every multi-index `\beta` and every `0<\alpha<1`,

```math
\|\nabla^\beta\chi_j^{pr}(\cdot,t)\|_{L^\infty}
\le
C_\beta(\Lambda_{\delta,\rho}^{halo})^{-|\beta|},
\qquad
[\nabla^\beta\chi_j^{pr}(\cdot,t)]_{C^{0,\alpha}}
\le
C_{\beta,\alpha}
(\Lambda_{\delta,\rho}^{halo})^{-|\beta|-\alpha}.
\tag{FPR.2b}
```

For `|\eta|\le\Lambda_{\delta,\rho}^{halo}`,

```math
\|\delta_\eta\nabla^\beta\chi_j^{pr}(\cdot,t)\|_{L^\infty}
\le
C_\beta\,
\min\!\left\{
(\Lambda_{\delta,\rho}^{halo})^{-|\beta|},
|\eta|(\Lambda_{\delta,\rho}^{halo})^{-|\beta|-1}
\right\}.
\tag{FPR.2c}
```

Define the localized pressure potential and harmonic remainder

```math
p_{j,\eta}^{loc}(x,t)
:=
\mathcal N*
\partial_a\partial_b\big(\chi_j^{pr}(\cdot,t)\,u_a u_b(\cdot,t)\big)(x),
\tag{FPR.3}
```

```math
h_{j,\eta}(x,t):=p(x,t)-p_{j,\eta}^{loc}(x,t).
\tag{FPR.4}
```

Because both `c_j(t)` and `c_j(t)+\eta` lie in
`B(c_j(t),\Lambda_{\delta,\rho}^{halo})`, they lie inside the plateau ball
from `(FPR.2)`. Hence `h_{j,\eta}(\cdot,t)` is harmonic on
`B(c_j(t),2\Lambda_{\delta,\rho}^{halo})`.

Define the local and tail pieces of the fixed-increment pressure ledger by

```math
\mathcal S_{N,\eta}^{press,loc,ctr}(t)
:=
\sup_{1\le j\le J}
\left|
2\sum_{k=0}^{N}\lambda_k\,
\delta_\eta U_k(c_j(t),t)\cdot
\delta_\eta\nabla^{k+1}p_{j,\eta}^{loc}(c_j(t),t)
\right|,
\tag{FPR.5}
```

```math
\mathcal S_{N,\eta}^{press,tail,ctr}(t)
:=
\sup_{1\le j\le J}
\left|
2\sum_{k=0}^{N}\lambda_k\,
\delta_\eta U_k(c_j(t),t)\cdot
\delta_\eta\nabla^{k+1}h_{j,\eta}(c_j(t),t)
\right|.
\tag{FPR.6}
```

## Exact Pressure Split

### Proposition `FPR.1a` (The FEI pressure source splits into local response plus harmonic tail)

For every fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and every
time `t\in I`,

```math
\mathcal S_{N,\eta}^{press,ctr}(t)
\le
\mathcal S_{N,\eta}^{press,loc,ctr}(t)
+
\mathcal S_{N,\eta}^{press,tail,ctr}(t).
\tag{FPR.7}
```

### Proof

Insert `(FPR.3)`--`(FPR.4)` into `(FEI.5ze)` and use the triangle inequality. ∎

So the fixed-increment pressure wall is not monolithic. It splits into:

1. a localized elliptic response on the transported-center balls;
2. a harmonic tail on the same fixed radius.

## Source Localization Is Not The Live Pressure Wall

### Reduction `FPR.1b` (The derivative-LP source split is already compatible with the local fixed-increment pressure problem)

For each `k`, the localized pressure source behind
`\delta_\eta\nabla^{k+1}p_{j,\eta}^{loc}` is

```math
\delta_\eta\nabla^{k-1}\partial_a\partial_b
\big(\chi_j^{pr}(\cdot,t)\,u_a u_b(\cdot,t)\big)
\qquad (k\ge 1),
\tag{FPR.8}
```

with the low-order `k=0` interpretation obtained by removing the derivative block.

The derivative-LP bridge note supplies the exact shellwise source localization:
strict low-high, strict high-low, and finite-collar resonant packets. So the
remaining local pressure debt is **not** another source-classification problem.
It is the fixed-radius elliptic response that turns those localized packets
into the pointwise increment at the transported centers.

## Exact Successor Theorems For `FEI.D1`

### Target Theorem `FPR.A` (Local fixed-increment pressure-response theorem)

For each fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, prove

```math
\mathcal S_{N,\eta}^{press,loc,ctr}\in L^1(I).
\tag{FPR.A0}
```

This is the local elliptic-response half of `FEI.D1`.

### Target Theorem `FPR.B` (Fixed-increment harmonic-tail theorem)

For each fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, prove

```math
\mathcal S_{N,\eta}^{press,tail,ctr}\in L^1(I).
\tag{FPR.B0}
```

This is the harmonic-tail half of `FEI.D1`.

### Reduction `FPR.B1` (The harmonic tail reduces to an explicit fixed-increment far-field velocity tail)

Define the fixed-increment far-field tail

```math
\mathcal T_{N,\eta}^{press,far}(t)
:=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(c_j(t),t)
\big|
\int_{|y-c_j(t)|>2\Lambda_{\delta,\rho}^{halo}}
\frac{
|\eta|\,|u(y,t)|^2
}{
|y-c_j(t)|^{k+5}
}\,dy.
\tag{FPR.B1a}
```

Then for almost every `t\in I`,

```math
\mathcal S_{N,\eta}^{press,tail,ctr}(t)
\le
C_{N,\rho,\psi,\delta,I}\,
\mathcal T_{N,\eta}^{press,far}(t).
\tag{FPR.B1b}
```

### Proof

Because `1-\chi_j^{pr}` vanishes on
`B(c_j(t),2\Lambda_{\delta,\rho}^{halo})`, the harmonic remainder admits the
far-field representation

```math
h_{j,\eta}(x,t)
=
\partial_a\partial_b\mathcal N*
\big((1-\chi_j^{pr})u_a u_b\big)(x,t)
\qquad
\text{for }x\in B(c_j(t),2\Lambda_{\delta,\rho}^{halo}).
\tag{FPR.B1c}
```

Therefore

```math
\delta_\eta\nabla^{k+1}h_{j,\eta}(c_j(t),t)
=
\int_{|y-c_j(t)|>2\Lambda_{\delta,\rho}^{halo}}
\Big(
\nabla^{k+3}\mathcal N(c_j(t)+\eta-y)
-
\nabla^{k+3}\mathcal N(c_j(t)-y)
\Big)
(1-\chi_j^{pr}(y,t))\,u(y,t)\otimes u(y,t)\,dy.
\tag{FPR.B1d}
```

The mean-value estimate for the Newton kernel gives

```math
\big|
\nabla^{k+3}\mathcal N(c_j(t)+\eta-y)
-
\nabla^{k+3}\mathcal N(c_j(t)-y)
\big|
\le
C_k\,
\frac{|\eta|}{|y-c_j(t)|^{k+5}}.
\tag{FPR.B1e}
```

Insert `(FPR.B1e)` into `(FPR.B1d)`, multiply by
`|\delta_\eta U_k(c_j(t),t)|`, sum in `k`, and take the supremum in `j` to
obtain `(FPR.B1b)`. ∎

### Corollary `FPR.B2` (Under the ordinary energy ledger, the harmonic tail is absorbed into the FEI coefficient class)

Assume the ordinary energy ledger is imported on `I`:

```math
\sup_{t\in I}\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^2<\infty.
\tag{FPR.B2a}
```

Then for every fixed increment `|\eta|\le \Lambda_{\delta,\rho}^{halo}` and
every time `t\in I`,

```math
\mathcal S_{N,\eta}^{press,tail,ctr}(t)
\le
C_{N,\lambda,\rho,\psi,\delta,I}
\big(1+\mathcal I_{N,\eta}^{ctr}(t)\big).
\tag{FPR.B2b}
```

In particular, under `(FPR.B2a)` the harmonic-tail half is no longer an
external FEI wall; it is absorbed into the coefficient side of `(FEI.5y)`
plus the finite interval source term coming from the energy bound.

### Proof

From `(FPR.B1a)` and `|\eta|\le \Lambda_{\delta,\rho}^{halo}`,

```math
\int_{|y-c_j(t)|>2\Lambda_{\delta,\rho}^{halo}}
\frac{
|\eta|\,|u(y,t)|^2
}{
|y-c_j(t)|^{k+5}
}\,dy
\le
C_{k,\rho,\psi,\delta,I}\,
\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^2.
\tag{FPR.B2c}
```

So `(FPR.B1b)` yields

```math
\mathcal S_{N,\eta}^{press,tail,ctr}(t)
\le
C_{N,\lambda,\rho,\psi,\delta,I}\,
\|u(\cdot,t)\|_{L^2}^2
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(c_j(t),t)
\big|.
\tag{FPR.B2d}
```

By Cauchy--Schwarz in the finite `k`-sum,

```math
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(c_j(t),t)
\big|
\le
C_{N,\lambda}\,
\mathcal I_{N,\eta}^{ctr}(t)^{1/2}.
\tag{FPR.B2e}
```

Insert `(FPR.B2a)` and `(FPR.B2e)` into `(FPR.B2d)`, then use
`s^{1/2}\le 1+s` for `s\ge 0` to obtain `(FPR.B2b)`. ∎

### Corollary `FPR.C` (Closing the FEI pressure half)

If `FPR.A` and `FPR.B` hold for every net increment `\eta^\ell` from
`(FEI.5a)`, then

```math
\sum_{\ell=1}^{M_\varepsilon}
\mathcal S_{N,\eta^\ell}^{press,ctr}\in L^1(I),
\tag{FPR.C0}
```

so the pressure half of `(FEI.5zg)` is closed.

### Proposition `FPR.C1` (The local pressure response reduces to a localized increment-source ledger)

Fix `0<\alpha\le 1` and define

```math
\mathfrak Q_{N,\eta}^{press,loc,src,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\Big(
\|\delta_\eta \nabla^k(\chi_j^{pr} u\otimes u)(\cdot,t)\|_{L^\infty(B(c_j(t),4\Lambda_{\delta,\rho}^{halo}))}
+
[\delta_\eta \nabla^k(\chi_j^{pr} u\otimes u)(\cdot,t)]_{C^{0,\alpha}(B(c_j(t),4\Lambda_{\delta,\rho}^{halo}))}
\Big)^2.
\tag{FPR.C1a}
```

Then

```math
\mathcal S_{N,\eta}^{press,loc,ctr}(t)
\le
\mathcal I_{N,\eta}^{ctr}(t)
+
C_{\alpha,N,\lambda,\rho,\psi,\delta,I}\,
\mathfrak Q_{N,\eta}^{press,loc,src,\alpha}(t).
\tag{FPR.C1b}
```

### Proof

For each `k`, the localized pressure field satisfies

```math
\nabla^{k+1}p_{j,\eta}^{loc}
=
T_k\big(\nabla^k(\chi_j^{pr}u\otimes u)\big),
\tag{FPR.C1c}
```

where `T_k` is the translation-invariant Calderon--Zygmund operator obtained by
composing `\partial^{k+1}` with `\partial_a\partial_b(-\Delta)^{-1}`. Hence

```math
\delta_\eta \nabla^{k+1}p_{j,\eta}^{loc}(c_j(t),t)
=
T_k\!\big(\delta_\eta \nabla^k(\chi_j^{pr}u\otimes u)\big)(c_j(t),t).
\tag{FPR.C1d}
```

The local Schauder/CZ estimate on the fixed-radius ball
`B(c_j(t),4\Lambda_{\delta,\rho}^{halo})` gives

```math
\big|\delta_\eta \nabla^{k+1}p_{j,\eta}^{loc}(c_j(t),t)\big|
\le
C_{\alpha,k,\rho,\psi,\delta,I}
\Big(
\|\delta_\eta \nabla^k(\chi_j^{pr}u\otimes u)\|_{L^\infty}
+
[\delta_\eta \nabla^k(\chi_j^{pr}u\otimes u)]_{C^{0,\alpha}}
\Big),
\tag{FPR.C1e}
```

with norms taken on `B(c_j(t),4\Lambda_{\delta,\rho}^{halo})`. Multiply by
`|\delta_\eta U_k(c_j(t),t)|`, sum in `k`, take the supremum in `j`, and use
`2ab\le a^2+b^2`. The `a^2` contribution is exactly
`\mathcal I_{N,\eta}^{ctr}(t)`, while the `b^2` contribution is bounded by
`(FPR.C1a)`. This yields `(FPR.C1b)`. ∎

So the local FEI pressure wall is no longer an opaque elliptic-response theorem.
It is one exact localized increment-source ledger on the widened
transported-center balls.

### Proposition `FPR.C2` (The fixed-increment harmonic tail reduces to an explicit far-field velocity tail)

Define the far-field increment tail ledger

```math
\mathfrak T_{N,\eta}^{press,far,ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{k=0}^{N}\lambda_k
\left(
\int_{|y-c_j(t)|>2\Lambda_{\delta,\rho}^{halo}}
\frac{|\eta|\,|u(y,t)|^2}{|y-c_j(t)|^{k+5}}\,dy
\right)^2.
\tag{FPR.C2a}
```

Then

```math
\mathcal S_{N,\eta}^{press,tail,ctr}(t)
\le
\mathcal I_{N,\eta}^{ctr}(t)
+
C_{N,\lambda,\rho,\psi,\delta,I}\,
\mathfrak T_{N,\eta}^{press,far,ctr}(t).
\tag{FPR.C2b}
```

If, in addition, the ordinary interval energy ledger is available, then

```math
\mathfrak T_{N,\eta}^{press,far,ctr}(t)
\le
C_{N,\lambda,\rho,\psi,\delta,I}\,
\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^4.
\tag{FPR.C2c}
```

### Proof

Fix `j` and `k`. Since

```math
h_{j,\eta}
=
\partial_a\partial_b\mathcal N*
\big((1-\chi_j^{pr})u_a u_b\big),
\tag{FPR.C2d}
```

one has

```math
\delta_\eta\nabla^{k+1}h_{j,\eta}(c_j(t),t)
=
\int
\Big(
K_k(c_j(t)+\eta-y)-K_k(c_j(t)-y)
\Big)
(1-\chi_j^{pr}(y,t))\,u(y,t)\otimes u(y,t)\,dy,
\tag{FPR.C2e}
```

where `K_k=\nabla^{k+3}\mathcal N` is the Newton kernel differentiated
`k+3` times. Hence, away from the origin,
`|K_k(z)|\le C_k |z|^{-(k+4)}` and
`|\nabla K_k(z)|\le C_k' |z|^{-(k+5)}`.
On the support of `1-\chi_j^{pr}`, one has
`|y-c_j(t)|>2\Lambda_{\delta,\rho}^{halo}`. Since
`|\eta|\le \Lambda_{\delta,\rho}^{halo}`, the mean-value theorem gives

```math
\big|
K_k(c_j(t)+\eta-y)-K_k(c_j(t)-y)
\big|
\le
C_{k,\rho,\psi,\delta,I}\,
\frac{|\eta|}{|y-c_j(t)|^{k+5}}.
\tag{FPR.C2f}
```

Substituting `(FPR.C2f)` into `(FPR.C2e)` yields

```math
\big|\delta_\eta\nabla^{k+1}h_{j,\eta}(c_j(t),t)\big|
\le
C_{k,\rho,\psi,\delta,I}
\int_{|y-c_j(t)|>2\Lambda_{\delta,\rho}^{halo}}
\frac{|\eta|\,|u(y,t)|^2}{|y-c_j(t)|^{k+5}}\,dy.
\tag{FPR.C2g}
```

Multiply by `|\delta_\eta U_k(c_j(t),t)|`, sum in `k`, take the supremum in
`j`, and again use `2ab\le a^2+b^2`. This gives `(FPR.C2b)`. The conditional
bound `(FPR.C2c)` is obtained from
`|\eta|\,|y-c_j(t)|^{-(k+5)}
\le
\Lambda_{\delta,\rho}^{halo}(2\Lambda_{\delta,\rho}^{halo})^{-(k+5)}`
on the integration region and then squaring the resulting `L^2`-energy bound
in `(FPR.C2a)`. ∎

So, once the ordinary energy ledger is imported, the harmonic-tail half of the
FEI pressure wall is no longer independent.

### Corollary `FPR.C3` (Under interval energy, the FEI pressure half reduces to the localized increment-source ledger)

Assume the ordinary interval energy ledger is available. Then `(FPR.7)`,
`(FPR.C1b)`, and `(FPR.C2b)`--`(FPR.C2c)` imply

```math
\mathcal S_{N,\eta}^{press,ctr}(t)
\le
2\,\mathcal I_{N,\eta}^{ctr}(t)
+
C_{\alpha,N,\lambda,\rho,\psi,\delta,I}
\Big(
\mathfrak Q_{N,\eta}^{press,loc,src,\alpha}(t)
+
1+\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^4
\Big).
\tag{FPR.C3}
```

So on the installed energy-conditioned branch, the exact remaining FEI pressure
wall is the localized increment-source ledger `(FPR.C1a)`, not a separate
two-piece "local response plus tail" pair.

### Proposition `FPR.C4` (The localized increment-source ledger reduces to a widened local increment carrier plus a widened collar carrier)

Define the widened local increment/Holder carrier

```math
\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{N}
\Big(
\|\delta_\eta U_q(\cdot,t)\|_{L^\infty(B(c_j(t),4\Lambda_{\delta,\rho}^{halo}))}
+
[\delta_\eta U_q(\cdot,t)]_{C^{0,\alpha}(B(c_j(t),4\Lambda_{\delta,\rho}^{halo}))}
\Big)^2
\tag{FPR.C4a}
```

and the widened collar envelope

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)
:=
\sup_{d_{\rho,\psi}^{raw}(x,t)<\delta+4\Lambda_{\delta,\rho}^{halo}}
\sum_{q=0}^{N}\lambda_q\,|U_q(x,t)|^2.
\tag{FPR.C4b}
```

Then

```math
\mathfrak Q_{N,\eta}^{press,loc,src,\alpha}(t)
\le
C_{\alpha,N,\lambda,\rho,\psi,\delta,I}\,
\big(
1+\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)
\big)\,
\big(
1+\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}(t)
\big).
\tag{FPR.C4c}
```

### Proof

Expand `\delta_\eta \nabla^k(\chi_j^{pr}u\otimes u)` by Leibniz:

```math
\delta_\eta \nabla^k(\chi_j^{pr}u\otimes u)
=
\sum_{\beta+\ell+m=k}
C_{k,\beta,\ell,m}\,
\delta_\eta\big(
\nabla^\beta \chi_j^{pr}\,U_\ell*U_m
\big).
\tag{FPR.C4d}
```

For each summand,

```math
\delta_\eta\big(
\nabla^\beta \chi_j^{pr}\,U_\ell*U_m
\big)
=
(\delta_\eta\nabla^\beta \chi_j^{pr})\,\tau_\eta(U_\ell*U_m)
+
\nabla^\beta \chi_j^{pr}\,\delta_\eta(U_\ell*U_m),
\tag{FPR.C4e}
```

and

```math
\delta_\eta(U_\ell*U_m)
=
(\delta_\eta U_\ell)*\tau_\eta U_m
+
U_\ell * \delta_\eta U_m.
\tag{FPR.C4f}
```

Because `\chi_j^{pr}` is supported on `B(c_j(t),4\Lambda_{\delta,\rho}^{halo})`
and `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, every point sampled on the
right-hand side lies inside the widened raw collar
`d_{\rho,\psi}^{raw}<\delta+4\Lambda_{\delta,\rho}^{halo}`. The cutoff bounds
`(FPR.2b)`--`(FPR.2c)` give the exact finite-radius price for every derivative
or increment falling on `\chi_j^{pr}`:

```math
\|\nabla^\beta\chi_j^{pr}\|_{L^\infty}
+\|\delta_\eta\nabla^\beta\chi_j^{pr}\|_{L^\infty}
\le
C_\beta(\Lambda_{\delta,\rho}^{halo})^{-|\beta|},
\tag{FPR.C4g}
```

and the `C^{0,\alpha}` contribution costs at most
`C_{\beta,\alpha}(\Lambda_{\delta,\rho}^{halo})^{-|\beta|-\alpha}`. Therefore
each `L^\infty` or `C^{0,\alpha}` norm entering `(FPR.C1a)` is bounded by a
finite sum of the following exact types:

1. one absolute carrier factor controlled by
   `\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)^{1/2}`;
2. one increment/Holder factor controlled by
   `\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}(t)^{1/2}`;
3. a pure cutoff-shift term with no field increment, controlled by the widened
   collar carrier alone.

After summing over the finitely many derivative splits `\beta+\ell+m=k` and
then over `k=0,\dots,N`, this yields `(FPR.C4c)`. ∎

So the local FEI pressure wall is now narrower again: it is not a primitive
source ledger, but a widened local increment/Holder carrier together with a
widened collar envelope.

### Proposition `FPR.C5` (If the FEI local radius fit inside the installed enlarged-ball radius, the widened local increment carrier would be downstream)

Assume

```math
N\le m,
\qquad
5\Lambda_{\delta,\rho}^{halo}\le 2R_\delta^{osc}.
\tag{FPR.C5a}
```

Then for every fixed `|\eta|\le \Lambda_{\delta,\rho}^{halo}`,

```math
\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}(t)
\le
C_{N,\alpha}\,
\Big(
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)^2
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\sharp,\alpha}(t)^2
\Big).
\tag{FPR.C5b}
```

### Proof

Fix `j`, `0\le q\le N`, and `x\in B(c_j(t),4\Lambda_{\delta,\rho}^{halo})`.
Since `|\eta|\le \Lambda_{\delta,\rho}^{halo}`, one has

```math
|x+\eta-c_j(t)|
\le
|x-c_j(t)|+|\eta|
\le
5\Lambda_{\delta,\rho}^{halo}
\le
2R_\delta^{osc}.
\tag{FPR.C5c}
```

Hence both `x` and `x+\eta` lie in `B(c_j(t),2R_\delta^{osc})`, so

```math
|\delta_\eta U_q(x,t)|
\le
|U_q(x+\eta,t)-U_q(c_j(t),t)|
+
|U_q(x,t)-U_q(c_j(t),t)|
\le
2\,
\|U_q-U_q(c_j(t),t)\|_{L^\infty(B(c_j(t),2R_\delta^{osc}))}.
\tag{FPR.C5d}
```

Likewise, for `x,y\in B(c_j(t),4\Lambda_{\delta,\rho}^{halo})`,

```math
|\delta_\eta U_q(x,t)-\delta_\eta U_q(y,t)|
\le
|U_q(x+\eta,t)-U_q(y+\eta,t)|
+
|U_q(x,t)-U_q(y,t)|
\le
2\,
[U_q]_{C^{0,\alpha}(B(c_j(t),2R_\delta^{osc}))}
|x-y|^\alpha.
\tag{FPR.C5e}
```

Taking the supremum in `x,y`, then the supremum in `j`, and summing over
`q=0,\dots,N\le m` yields `(FPR.C5b)`. ∎

### Obstruction `FPR.C5c` (The installed enlarged-ball theorem can never directly discharge the FEI widened local increment carrier)

With the current definitions,

```math
\Lambda_{\delta,\rho}^{halo}
=
2R_{\delta,\rho}^{halo}
=
2r_\delta+4\delta+2R_{\rho}^{halo,\ast},
\tag{FPR.C5f}
```

while

```math
2R_\delta^{osc}
=
2r_\delta+11\delta.
\tag{FPR.C5g}
```

Therefore

```math
5\Lambda_{\delta,\rho}^{halo}-2R_\delta^{osc}
=
8r_\delta+9\delta+10R_{\rho}^{halo,\ast}
>
0.
\tag{FPR.C5h}
```

So the compatibility hypothesis `(FPR.C5a)` is impossible on the installed
route. The enlarged-ball theorem `EOC.A` is therefore not the direct supplier
for `\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}`.

### Lemma `FPR.C6` (A sufficiently thick common collar would supply the widened collar half)

If the common thickened-collar scale satisfies

```math
\delta_{seg}\ge 4\Lambda_{\delta,\rho}^{halo},
\tag{FPR.C6a}
```

then

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}(t)
\le
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t).
\tag{FPR.C6b}
```

### Proof

This follows from the inclusion of the underlying raw collar sets. ∎

So the widened collar half is only a radius-comparison issue. The genuine new
pressure-side obstruction is the absolute fixed-radius `5\Lambda`
center-ball oscillation/Holder supplier isolated below, and `EOC.A` cannot
remove it directly because of `(FPR.C5h)`.

### Proposition `FPR.C7` (The widened local increment/Holder carrier is an absolute fixed-radius center-ball carrier at radius `5\Lambda`)

Define the absolute fixed-radius oscillation carrier

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{N}
\left\|
U_q(\cdot,t)-U_q(c_j(t),t)
\right\|_{L^\infty(B(c_j(t),5\Lambda_{\delta,\rho}^{halo}))}
\tag{FPR.C7a}
```

and the absolute fixed-radius Holder carrier

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{N}
\big[
U_q(\cdot,t)
\big]_{C^{0,\alpha}(B(c_j(t),5\Lambda_{\delta,\rho}^{halo}))}.
\tag{FPR.C7b}
```

Then for every fixed `|\eta|\le \Lambda_{\delta,\rho}^{halo}`,

```math
\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}(t)
\le
C_{N,\alpha}\,
\Big(
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)^2
+
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)^2
\Big).
\tag{FPR.C7c}
```

### Proof

Fix `j`, `0\le q\le N`, and `x\in B(c_j(t),4\Lambda_{\delta,\rho}^{halo})`.
Since `|\eta|\le \Lambda_{\delta,\rho}^{halo}`,

```math
|x+\eta-c_j(t)|
\le
|x-c_j(t)|+|\eta|
\le
5\Lambda_{\delta,\rho}^{halo}.
\tag{FPR.C7d}
```

Hence both `x` and `x+\eta` lie in `B(c_j(t),5\Lambda_{\delta,\rho}^{halo})`,
and therefore

```math
|\delta_\eta U_q(x,t)|
\le
|U_q(x+\eta,t)-U_q(c_j(t),t)|
+
|U_q(x,t)-U_q(c_j(t),t)|
\le
2\,
\left\|
U_q-U_q(c_j(t),t)
\right\|_{L^\infty(B(c_j(t),5\Lambda_{\delta,\rho}^{halo}))}.
\tag{FPR.C7e}
```

Likewise, for `x,y\in B(c_j(t),4\Lambda_{\delta,\rho}^{halo})`,

```math
|\delta_\eta U_q(x,t)-\delta_\eta U_q(y,t)|
\le
|U_q(x+\eta,t)-U_q(y+\eta,t)|
+
|U_q(x,t)-U_q(y,t)|
\le
2\,
[U_q]_{C^{0,\alpha}(B(c_j(t),5\Lambda_{\delta,\rho}^{halo}))}
|x-y|^\alpha.
\tag{FPR.C7f}
```

Taking the supremum in `x,y`, then the supremum in `j`, and summing over
`q=0,\dots,N` yields `(FPR.C7c)`. ∎

So the genuine new pressure-side object is no longer an increment carrier at
all. It is an absolute fixed-radius center-ball oscillation/Holder theorem at
radius `5\Lambda_{\delta,\rho}^{halo}`.

### Proposition `FPR.C8` (The absolute fixed-radius `5\Lambda` oscillation carrier is downstream of a larger-radius transported-center FEI envelope)

Define the adjacent larger-radius transported-center envelope

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{|\eta|\le 5\Lambda_{\delta,\rho}^{halo}}
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t),t)\big|^2.
\tag{FPR.C8a}
```

Then

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}(t)^2
\le
\Big(\sum_{q=0}^{N}\lambda_q^{-1}\Big)\,
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t).
\tag{FPR.C8b}
```

### Proof

Fix `j` and `x\in B(c_j(t),5\Lambda_{\delta,\rho}^{halo})`, and set
`\eta:=x-c_j(t)`. Then `|\eta|\le 5\Lambda_{\delta,\rho}^{halo}`, so by
`(FPR.C8a)`

```math
\sum_{q=0}^{N}\lambda_q
\big|U_q(x,t)-U_q(c_j(t),t)\big|^2
=
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t),t)\big|^2
\le
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t).
\tag{FPR.C8c}
```

Taking the supremum in `x` gives

```math
\sum_{q=0}^{N}\lambda_q
\left\|
U_q(\cdot,t)-U_q(c_j(t),t)
\right\|_{L^\infty(B(c_j(t),5\Lambda_{\delta,\rho}^{halo}))}^2
\le
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t).
\tag{FPR.C8d}
```

Now apply Cauchy-Schwarz with weights `\lambda_q`:

```math
\left(
\sum_{q=0}^{N}
\left\|
U_q(\cdot,t)-U_q(c_j(t),t)
\right\|_{L^\infty(B(c_j(t),5\Lambda_{\delta,\rho}^{halo}))}
\right)^2
\le
\Big(\sum_{q=0}^{N}\lambda_q^{-1}\Big)\,
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t).
\tag{FPR.C8e}
```

Taking the supremum in `j` yields `(FPR.C8b)`. ∎

### Corollary `FPR.C9` (If the larger-radius transported-center envelope were integrable, the absolute `5\Lambda` oscillation carrier would be downstream)

If

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I),
\tag{FPR.C9a}
```

then

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}\in L^2(I)\subset L^1(I).
\tag{FPR.C9b}
```

### Proof

Integrating `(FPR.C8b)` over the finite interval `I` gives the `L^2(I)` bound,
and the inclusion `L^2(I)\subset L^1(I)` on finite intervals gives the second
statement. ∎

### Obstruction `FPR.C10` (The installed FEI theorem does not yet supply the larger-radius envelope)

The theorem isolated in
[mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md)
currently targets only

```math
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}\in L^1(I),
\tag{FPR.C10a}
```

not the stronger larger-radius statement

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I).
\tag{FPR.C10b}
```

So `(FPR.C9b)` is only an adjacent larger-radius FEI export if one insists on
the unshifted FEI theorem `FEI.A` alone.

The exact larger-radius upgrade is now isolated in
[mpp-lci-a-larger-radius-shifted-center-envelope-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-larger-radius-shifted-center-envelope-note.md):
that note first proves the larger-radius envelope `(FPR.C10b)` would follow
from a shifted-center `\Lambda`-increment theorem on offsets `|z|\le 4\Lambda`,
then proves that the direct Holder theorem `FPC.H` supplies exactly that
shifted-center chain. So `FPR.C10` is an honest FEI-local obstruction, but once
`FPC.H` is available it is already downstream and no longer a separate direct
pressure burden.

### Corollary `FPR.C3a` (Intermediate energy-conditioned export before the widened local carrier reduction)

Assume the ordinary interval energy ledger is available. Then combining
`(FEI.5y)`, `(FEI.5zh)`, and `(FPR.C3)` yields

```math
D^+\mathcal I_{N,\eta}^{ctr}(t)
\le
\mathcal S_{N,\eta}^{visc,top,ctr}(t)
+
C_{N,\lambda,\rho,\psi,\delta,I}
\Big(
1+
\mathfrak C_{N+1,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
\Big)
\mathcal I_{N,\eta}^{ctr}(t)
+
C_{\alpha,N,\lambda,\rho,\psi,\delta,I}
\Big(
\mathfrak Q_{N,\eta}^{press,loc,src,\alpha}(t)
+
1+\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^4
\Big).
\tag{FPR.C3a}
```

So this is only the intermediate energy-conditioned FEI export stage. The
pressure side continues through `(FPR.C4c)` to the widened local
increment/collar pair, then through `(FPR.C7c)` and `(FPR.C8b)` to the sharper
fixed-radius `5\Lambda` package recorded in the boundary below.

## Boundary

This note does **not** prove `FPR.A`.

The exact packet geometry beneath `(FPR.C3)` is now isolated separately in
[mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-source-packet-reduction-note.md):
that note records the strict low-high / strict high-low / finite-collar
resonant packet split of the localized increment-source ledger, and its sharper
same-depth source-side readout `(FSP.C1)` already confines genuinely
same-depth pressure difficulty to the resonant packet while the strict
low-high / high-low packets remain coefficient-side companions. The installed
direct FEI route here still continues through the stronger sufficient collapse
`(FPR.C4c)` to the widened local increment/collar carrier pair.

The sharper direct successor beneath the absolute fixed-radius `5\Lambda` pair
is now isolated in
[mpp-lci-a-fixed-radius-pressure-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-center-ball-note.md),
which now records the exact sharp split: the direct fixed-ball pressure theorem
is the Holder theorem `FPC.H` for the carrier
`\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}`, the oscillation half is
already downstream of that Holder theorem through `LRE.C2`, and the fixed-ball
Sobolev theorem `FPC.A` is a sharp sufficient route beneath that direct Holder
theorem.

The companion note
[mpp-lci-a-fixed-radius-pressure-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-sobolev-supplier-note.md)
now records a still-local one-derivative-lower sufficient packet beneath
`FPC.A`, phrased through `U_1,\dots,U_{N+1}` on the same fixed `5\Lambda`
balls. Its own companion
[mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md)
now pushes that one step lower to a one-rung-higher local `L^2` packet on the
same fixed balls.

It isolates the exact remaining pressure wall:

```math
\boxed{
\text{on the exact source side beneath }FPR.C3,\text{ only the finite-collar resonant packet from }(FSP.C1)\text{ is genuinely same-depth,}
\newline
\text{while the strict low-high / high-low packets are coefficient-side companions,}
\newline
\text{after the widened local/harmonic split, the explicit far-field tail reduction, and the fixed-radius reductions }(FPR.C4c),\ (FPR.C7c),}
\newline
\text{the sharp direct FEI pressure wall is the fixed-radius Holder carrier }
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha},
\text{ and the widened collar envelope }
\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}},
\newline
\text{because the absolute fixed-radius oscillation half is already downstream of the Holder theorem itself: }FPC.H\Rightarrow LRE.C1\Rightarrow(FPR.C9b),}
\text{ while the Holder half remains the fixed-radius local object, with its route-native collar return now exposed by }FPC.Bc\text{ / }FPL.G,}
\text{ while the harmonic tail is already energy-downstream by }(FPR.C2c),}
\newline
\text{the widened collar half is only a possible radius comparison by }(FPR.C6b),}
\newline
\text{and the installed enlarged-ball theorem cannot directly discharge the local increment half because }(FPR.C5h)\text{ makes the needed radius fit impossible.}
}
\tag{FPR.9}
```

The full fixed-ball Sobolev collapse of the `5\Lambda` package is now isolated
separately in
[mpp-lci-a-fixed-radius-pressure-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-center-ball-note.md),
but that note is only a stronger sufficient companion. The sharper direct route
recorded here now treats the larger-radius transported-center envelope
`\mathfrak e_{N,5\Lambda}^{Eul,ctr}` as downstream of the direct Holder theorem
through `LRE.C`, rather than as an independent pressure-side wall.

So the direct successor to `FEI.C7` on the pressure side is now the bounded
fixed-radius Holder / widened-collar package, while `FEI.D2` remains the
separate top-viscous sibling. On the installed route, these are still only the
local FEI descendants beneath `FEI.C7`: once they are paired with the exact FEI
return instances already recorded on the companion return notes, the branch
reopens only returned lower-carrier reads and feeds back into the already-
installed `LCI.A` route rather than creating a new external supplier family or
remaining a separate receiver-side wall.
