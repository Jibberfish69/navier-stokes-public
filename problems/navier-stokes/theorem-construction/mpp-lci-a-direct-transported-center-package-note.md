# MPP LCI.A Direct Transported-Center Package Note

## Status

Theorem-facing route repair.

Role: replace the receiver-loop shortcuts beneath the uniform lower-carrier
closure with a direct transported-center positive-estimate package.

This note is the non-smuggling correction to the route:

```math
EOC.Ca,\quad WRR.A,\quad U2H.A
```

are valid receiver reductions, but they all spend lower-carrier or collar data.
They are therefore disallowed when the purpose is to supply the transported-center
package that feeds the lower-carrier theorem itself.

## Allowed and Disallowed Inputs

Allowed inputs are:

```math
\Gamma_\sharp\in L^\infty(I),
\tag{DTC.0a}
```

finite seed data at `t_0`,

```math
c_j(t)=\Phi(a^j,t),
\tag{DTC.0b}
```

the pressure equation

```math
-\Delta p=\partial_a\partial_b(u_a u_b),
\tag{DTC.0c}
```

the transported-center tower law

```math
\frac{d}{dt}U_q(c_j(t),t)=K_q(c_j(t),t)+B_q(c_j(t),t),
\tag{DTC.0d}
```

and direct localized estimates on transported-center balls.

Disallowed inputs are:

```math
LCI.A,\quad LCI.B,\quad CSP.A,\quad
CSP.A_{\delta+\delta_{seg}},\quad OFP.A,\quad Field.
\tag{DTC.0e}
```

## Direct Center-Ball Radius

For each required lower-carrier parameter

```math
\mathfrak p=(n,\mu,\Delta)\in\mathscr P_{\rm req},
\tag{DTC.1}
```

set

```math
R_{\mathfrak p}^{TC}
:=
\max\left\{
2R_\Delta^{osc},\,
2R_{\delta,\rho}^{halo},\,
R_\Delta,\,
R_\Delta/2
\right\}.
\tag{DTC.2}
```

This radius is chosen only to dominate the transported-center balls used by the
`EOC`, `AFD`, and `RCF` package at the same parameter instance.

Define the direct transported-center Sobolev packet

```math
\mathcal Z_{\mathfrak p}^{TC}(t)
:=
\sum_{j=1}^{J}
\sum_{q=0}^{\mu+2}
\sum_{|\beta|\le 2}
\int_{B(c_j(t),R_{\mathfrak p}^{TC})}
\left|\nabla^\beta U_q(x,t)\right|^2\,dx.
\tag{DTC.3}
```

## Theorem Target `DTC.A`

For each `\mathfrak p=(n,\mu,\Delta)`, the direct transported-center package is
the following positive-estimate packet:

```math
DTC.A_{\mathfrak p}:
\qquad
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I),
\tag{DTC.4}
```

```math
\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I),
\qquad
\mathfrak T_{1,\rho,\psi}^{press,far}\in L^1(I),
\qquad
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I),
\tag{DTC.5}
```

and

```math
\mathfrak K_{n,\mu,\rho,\psi}^{press,ctr}\in L^1(I),
\qquad
\mathfrak K_{n,\mu,\rho,\psi}^{visc,top,ctr}\in L^1(I).
\tag{DTC.6}
```

Equivalently, `(DTC.6)` gives the residual center-forcing ledger

```math
\mathfrak F_{n,\mu,\rho,\psi}^{ctr,res}
:=
\mathfrak K_{n,\mu,\rho,\psi}^{press,ctr}
+
\mathfrak K_{n,\mu,\rho,\psi}^{visc,top,ctr}
\in L^1(I).
\tag{DTC.7}
```

The shorter packet containing only `\mathcal Z^{TC}`, the far pressure tail, and
the top residual forcing is not sufficient: `AFD.A` also spends
`\mathfrak K_0^{ctr}` and `\mathfrak K_1^{visc,ctr}`. Those ledgers must be
direct estimates, not inherited from `LCI.A`, `CSP.A`, or a collar closure.

## Direct Moving-Center Estimate Still Needed

The actual new PDE estimate inside `DTC.A_{\mathfrak p}` is the following
moving-center local energy inequality:

```math
\frac{d}{dt}\mathcal Z_{\mathfrak p}^{TC}(t)
+
\nu\mathcal Y_{\mathfrak p}^{TC}(t)
\le
B_{\mathfrak p}^{TC}(t)\mathcal Z_{\mathfrak p}^{TC}(t)
+
F_{\mathfrak p}^{TC}(t),
\tag{DTC.7a}
```

with

```math
B_{\mathfrak p}^{TC},F_{\mathfrak p}^{TC}\in L^1(I).
\tag{DTC.7b}
```

Here `\mathcal Y_{\mathfrak p}^{TC}` is the corresponding localized dissipative
packet on the same transported-center balls. The proof of `(DTC.7a)`--`(DTC.7b)`
must use only the classical Navier-Stokes equations, the pressure Poisson law,
finite seed data, finite energy, the bounded pack gauge `\Gamma_\sharp`, and
direct center-ball localization.

The formal multiplier structure of `(DTC.7a)` is:

```math
B_{\mathfrak p}^{TC}(t)
=
C_{\mathfrak p}
\left(
1+
\mathcal V_{\mathfrak p}^{TC}(t)
+
\mathcal M_{\mathfrak p}^{TC}(t)
+
\mathcal P_{\mathfrak p}^{TC}(t)
\right),
\tag{DTC.7b1}
```

where `\mathcal V_{\mathfrak p}^{TC}` is the moving-center velocity increment
coefficient, `\mathcal P_{\mathfrak p}^{TC}` is the local pressure-response
coefficient, and

```math
\mathcal M_{\mathfrak p}^{TC}(t)
:=
1+
\sum_j
\sum_{q\le\mu+2}
\left|U_q(\cdot,t)\right|_{L^\infty(B(c_j(t),R_{\mathfrak p}^{TC}))}.
\tag{DTC.7b2}
```

The dangerous coefficient is `\mathcal M_{\mathfrak p}^{TC}`. Reading it only
from `\mathcal Z_{\mathfrak p}^{TC}` gives the old superlinear estimate

```math
\frac{d}{dt}\mathcal Z
\lesssim
\left(1+\mathcal Z^{1/2}\right)\mathcal Z+F,
\tag{DTC.7b3}
```

which is precisely the Osgood-type obstruction. Therefore the direct
transported-center theorem must supply

```math
\mathcal M_{\mathfrak p}^{TC}\in L^1(I)
\tag{DTC.7b4}
```

from outside the receiver/collar conclusion, together with the `L^1` bounds for
`\mathcal V_{\mathfrak p}^{TC}`, `\mathcal P_{\mathfrak p}^{TC}`, and
`F_{\mathfrak p}^{TC}`.

Gronwall gives

```math
\mathcal Z_{\mathfrak p}^{TC}(t)
\le
\left(
\mathcal Z_{\mathfrak p}^{TC}(t_0)
+
\int_{t_0}^{t}F_{\mathfrak p}^{TC}(s)\,ds
\right)
\exp\left(
\int_{t_0}^{t}B_{\mathfrak p}^{TC}(s)\,ds
\right),
\tag{DTC.7c}
```

hence

```math
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I).
\tag{DTC.7d}
```

Together with direct estimates for the ledgers in `(DTC.5)`--`(DTC.6)`, this
closes `DTC.A_{\mathfrak p}`. Therefore the positive-estimate core of Block 1
is:

```math
\boxed{
(DTC.7a)+(DTC.7b)
\quad\text{plus direct ledger estimates for }(DTC.5)\text{--}(DTC.6)
\Longrightarrow
DTC.A_{\mathfrak p}.
}
\tag{DTC.7e}
```

Equivalently, the exact live obstruction inside Block 1 is:

```math
\boxed{
B_{\mathfrak p}^{TC},F_{\mathfrak p}^{TC}\in L^1(I)
\text{ for every }\mathfrak p\in\mathscr P_{\rm req},
\text{ without }LCI.A,\ CSP.A,\ OFP.A,\text{ or }Field.
}
\tag{DTC.7f}
```

We name the noncircular version of this target:

```math
DTC.PRE_{\mathfrak p}:
\qquad
B_{\mathfrak p}^{pre}\in L^1(I),
\qquad
F_{\mathfrak p}^{pre}\in L^1(I),
\tag{DTC.PRE}
```

where the pre-coefficients are supplied directly without spending

```math
EOC.A,\quad AFD.A,\quad RCF.A,\quad LCI.A,\quad CSP.A,\quad OFP.A,\quad Field.
\tag{DTC.PRE0}
```

This is the clean live theorem target. Any proposed replacement for the
coefficient bundle must prove `(DTC.PRE)` directly.

### Coefficient Bundle Cells

Equivalently, `(DTC.7f)` is the four-cell coefficient bundle:

```math
DTC.V_{\mathfrak p}:
\qquad
\mathcal V_{\mathfrak p}^{TC}\in L^1(I),
\tag{DTC.V}
```

where `\mathcal V_{\mathfrak p}^{TC}` is the moving-cutoff coefficient produced
by

```math
D_t\chi_j
=
\big(u(x,t)-u(c_j(t),t)\big)\cdot\nabla\chi_j.
\tag{DTC.V1}
```

```math
DTC.M_{\mathfrak p}:
\qquad
\mathcal M_{\mathfrak p}^{TC}\in L^1(I),
\tag{DTC.M}
```

where `\mathcal M_{\mathfrak p}^{TC}` is the local tower `L^\infty`
coefficient in `(DTC.7b2)`. This is the dangerous Osgood-risk cell.

```math
DTC.P_{\mathfrak p}:
\qquad
\mathcal P_{\mathfrak p}^{TC}\in L^1(I),
\tag{DTC.P}
```

where `\mathcal P_{\mathfrak p}^{TC}` is the localized pressure-response
coefficient coming from

```math
-\Delta p=\partial_a\partial_b(u_a u_b).
\tag{DTC.P1}
```

```math
DTC.F_{\mathfrak p}:
\qquad
F_{\mathfrak p}^{TC}\in L^1(I),
\tag{DTC.F}
```

where `F_{\mathfrak p}^{TC}` is the residual source ledger collecting the
center-pressure, harmonic-tail, and top-viscous forcing terms.

Thus the first terminal proof bundle is:

```math
\boxed{
DTC.V_{\mathfrak p}
+
DTC.M_{\mathfrak p}
+
DTC.P_{\mathfrak p}
+
DTC.F_{\mathfrak p}
\quad
(\mathfrak p\in\mathscr P_{\rm req}).
}
\tag{DTC.Live}
```

Once these four cells are supplied for every required parameter instance,
`B_{\mathfrak p}^{TC},F_{\mathfrak p}^{TC}\in L^1(I)` follows, Gronwall gives
`\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I)`, and the rest of `DTC.A` is the
direct ledger package `(DTC.5)`--`(DTC.6)`.

### Reduction of the Coefficient Bundle to `DTC.M`

The preceding four-cell presentation is not the sharp endpoint. The moving
cutoff, pressure-response, and residual-forcing cells are formal consequences
of the local tower carrier once the tower carrier is controlled in the stronger
pointwise-in-time form.

For

```math
B_j(t):=B(c_j(t),R_{\mathfrak p}^{TC}),
\tag{DTC.M0}
```

write

```math
\mathcal M_{\mathfrak p}^{TC}(t)
:=
1+
\sum_{j=1}^{J}
\sum_{q=0}^{\mu+2}
\left|U_q(\cdot,t)\right|_{L^\infty(B_j(t))}.
\tag{DTC.M1}
```

The sharpened core cell is:

```math
DTC.M_{\mathfrak p}^{\infty}:
\qquad
\mathcal M_{\mathfrak p}^{TC}\in L^\infty(I).
\tag{DTC.M2}
```

This implies the old coefficient cell
`\mathcal M_{\mathfrak p}^{TC}\in L^1(I)` because `I` is finite.

First, the moving-cutoff coefficient satisfies

```math
\mathcal V_{\mathfrak p}^{TC}(t)
\le
C_{\mathfrak p}\mathcal M_{\mathfrak p}^{TC}(t),
\tag{DTC.V2}
```

by the fundamental theorem of calculus on each transported center ball and
`U_1=\nabla u`. Hence

```math
DTC.M_{\mathfrak p}^{\infty}
\Longrightarrow
DTC.V_{\mathfrak p}.
\tag{DTC.V3}
```

Second, the local pressure split `p=p_j^{loc}+h_j` gives the fixed-ball
Calderon-Zygmund/Schauder estimate

```math
\mathcal P_{\mathfrak p}^{TC}(t)
\le
C_{\mathfrak p}
\left(
1+
\mathcal M_{\mathfrak p}^{TC}(t)^2
+
\left|u(\cdot,t)\right|_{L^2}^2
\right).
\tag{DTC.P2}
```

The harmonic tail is bounded by the far-field kernel and the energy inequality,
so the `L^2` term is uniformly bounded by the seed energy. Therefore

```math
DTC.M_{\mathfrak p}^{\infty}
\Longrightarrow
DTC.P_{\mathfrak p}.
\tag{DTC.P3}
```

Third, the residual source ledger decomposes into center-pressure,
harmonic-tail, and top-viscous terms. The same pressure bound controls the
first two pieces, while the top-viscous endpoint uses the included
`q\le\mu+2` tower range:

```math
F_{\mathfrak p}^{TC}(t)
\le
C_{\mathfrak p}
\left(
1+
\mathcal M_{\mathfrak p}^{TC}(t)
+
\mathcal M_{\mathfrak p}^{TC}(t)^2
+
\left|u_0\right|_{L^2}^2
\right).
\tag{DTC.F2}
```

Thus

```math
DTC.M_{\mathfrak p}^{\infty}
\Longrightarrow
DTC.F_{\mathfrak p}.
\tag{DTC.F3}
```

Consequently the direct transported-center coefficient bundle reduces to the
single strengthened tower-carrier theorem:

```math
DTC.M_{\mathfrak p}^{\infty}
\Longrightarrow
DTC.V_{\mathfrak p}
+
DTC.M_{\mathfrak p}
+
DTC.P_{\mathfrak p}
+
DTC.F_{\mathfrak p}
\Longrightarrow
DTC.PRE_{\mathfrak p}.
\tag{DTC.M3}
```

Reading `\mathcal M_{\mathfrak p}^{TC}` back from
`\mathcal Z_{\mathfrak p}^{TC}` alone gives only the superlinear model

```math
\frac{d}{dt}\mathcal Z_{\mathfrak p}^{TC}
\lesssim
\left(1+\mathcal Z_{\mathfrak p}^{TC}\right)
\mathcal Z_{\mathfrak p}^{TC}
+
F,
\tag{DTC.M4}
```

which is the Osgood-risk obstruction and does not close on an arbitrary finite
interval.

The genuine noncircular analytic theorem is therefore:

```math
DTC.M\text{-}Linear_{\mathfrak p}:
\quad
\exists\,
\mathcal B_{\mathfrak p}^{aff},\mathcal F_{\mathfrak p}^{aff}\in L^1(I)
\text{ supplied directly before }DTC.A
\tag{DTC.M5}
```

such that

```math
\left|
\mathcal T_{\mathfrak p}^{tower}
\right|
+
\left|
\mathcal T_{\mathfrak p}^{mov}
\right|
+
\left|
\mathcal T_{\mathfrak p}^{press}
\right|
\le
\varepsilon\mathcal Y_{\mathfrak p}^{TC}
+
\mathcal B_{\mathfrak p}^{aff}(t)\mathcal Z_{\mathfrak p}^{TC}(t)
+
\mathcal F_{\mathfrak p}^{aff}(t),
\tag{DTC.M6}
```

without spending

```math
EOC.A,\quad AFD.A,\quad RCF.A,\quad LCI.A,\quad CSP.A,\quad OFP.A,\quad Field.
\tag{DTC.M7}
```

Then Gronwall gives `\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I)`, local
Sobolev/Morrey gives `DTC.M_{\mathfrak p}^{\infty}`, and `(DTC.M3)` gives
`DTC.PRE_{\mathfrak p}`. This is the current hard analytic core of the direct
transported-center block.

## Conditional Linearized Route `DTC.LINEAR`

There is a tempting affine-frame linearized route. In each transported-center
frame set

```math
A_j(t):=U_1(c_j(t),t),
\qquad
\dot G_j=A_jG_j,
\qquad
G_j(t_0)=I,
\tag{DTC.LIN0}
```

so that

```math
G_j(t)=F(a^j,t)F(a^j,t_0)^{-1}.
\tag{DTC.LIN1}
```

In the affine-normalized coordinate

```math
y=G_j(t)^{-1}(x-c_j(t)),
\tag{DTC.LIN2}
```

the endpoint `U_1U_q` terms cancel exactly as in
`(LCI.3c3z19az19)`. If the remaining terms can be bounded by the affine defect,
oscillation, residual center forcing, and far pressure tail, one obtains the
conditional estimate

```math
\frac{d}{dt}\mathcal Z_{\mathfrak p}^{TC}
+
c_\nu\mathcal Y_{\mathfrak p}^{TC}
\le
B_{\mathfrak p}^{lin}(t)\mathcal Z_{\mathfrak p}^{TC}(t)
+
F_{\mathfrak p}^{lin}(t),
\tag{DTC.LINEAR}
```

with

```math
B_{\mathfrak p}^{lin}
=
C_{\mathfrak p}
\left(
1+
\mathfrak D_{1,\rho,\psi}^{aff}
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha\,2}
+
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}
+
\mathfrak T_{1,\rho,\psi}^{press,far}
\right).
\tag{DTC.LIN3}
```

If all entries in `(DTC.LIN3)` and `F_{\mathfrak p}^{lin}` are supplied in
`L^1(I)` by direct, pre-`DTC.A` estimates, then Gronwall gives
`\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I)` and hence `DTC.A_{\mathfrak p}`.

### Boundary of `DTC.LINEAR`

As a closure proof, `DTC.LINEAR` is **not** currently installed. On the present
route,

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)
```

is the target of `AFD.A`,

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I)
```

is the oscillation output of `EOC.A`, and

```math
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I)
```

is the residual-forcing input in `RCF.A`. Therefore using these ledgers as
unproved coefficients inside `DTC.LINEAR` would reintroduce the same
transported-center package that `DTC.A` is supposed to supply.

Thus `DTC.LINEAR` is a conditional bridge, not a closed direct
transported-center theorem. The honest linearized theorem target is exactly
`DTC.PRE`:

```math
\boxed{
\text{prove the coefficients in }(DTC.LIN3)\text{ and }F_{\mathfrak p}^{lin}
\text{ by direct pre-}DTC.A\text{ estimates.}
}
\tag{DTC.LIN4}
```

Only after `(DTC.LIN4)` / `DTC.PRE` lands may `DTC.LINEAR` replace the four-cell bundle
`DTC.V+DTC.M+DTC.P+DTC.F`.

## Affine-Normalized `DTC.M` Upgrade Candidate

The correct upgrade of the preceding conditional route is not the raw
transported-center packet. It is the affine-normalized local packet. This is
the concrete candidate realization of `DTC.M-Linear`, but it is still a target
theorem until its coefficients are proved by direct pre-`DTC.A` estimates.

For each transported center,

```math
c_j(t)=\Phi(a^j,t),
\qquad
A_j(t):=U_1(c_j(t),t),
\tag{DTC.AFF0}
```

set

```math
\dot G_j(t)=A_j(t)G_j(t),
\qquad
G_j(t_0)=I.
\tag{DTC.AFF1}
```

The deformation identity gives

```math
G_j(t)=F(a^j,t)F(a^j,t_0)^{-1},
\tag{DTC.AFF2}
```

so the bounded pack gauge gives

```math
|G_j(t)|+|G_j(t)^{-1}|\le C_\sharp.
\tag{DTC.AFF3}
```

Use affine coordinates

```math
x=c_j(t)+G_j(t)y.
\tag{DTC.AFF4}
```

For `q\ge 0`, define the affine-normalized local remainder

```math
R_{q,j}(y,t)
:=
\mathcal C_{G_j(t)}^{-1}
\left(
U_q(c_j(t)+G_j(t)y,t)-U_q(c_j(t),t)
\right).
\tag{DTC.AFF5}
```

For `q=1`, this subtracts the complete center affine part:

```math
R_{1,j}(y,t)
=
\mathcal C_{G_j(t)}^{-1}
\left(
U_1(c_j(t)+G_j(t)y,t)-A_j(t)
\right).
\tag{DTC.AFF6}
```

Let

```math
\widetilde U_{q,j}(t):=
\mathcal C_{G_j(t)}^{-1}U_q(c_j(t),t).
\tag{DTC.AFF7}
```

For a fixed cutoff `\zeta` supported on the affine center ball, define

```math
\mathcal E_{\mathfrak p}^{aff}(t)
:=
\sum_{j=1}^{J}
\sum_{q=0}^{\mu+2}
\sum_{|\beta|\le2}
\int
\zeta(y)^2
|\nabla_y^\beta R_{q,j}(y,t)|^2\,dy
+
\sum_{j=1}^{J}
\sum_{q=0}^{\mu+2}
|\widetilde U_{q,j}(t)|^2.
\tag{DTC.AFF8}
```

Let `\mathcal D_{\mathfrak p}^{aff}` be the corresponding one-derivative-higher
localized packet.

### Target Theorem `DTC.M-Affine`

The affine-normalized replacement for raw `DTC.M` is:

```math
DTC.M\text{-}Affine_{\mathfrak p}:
\qquad
\frac{d}{dt}\mathcal E_{\mathfrak p}^{aff}
+
c_\nu\mathcal D_{\mathfrak p}^{aff}
\le
B_{\mathfrak p}^{aff}(t)\mathcal E_{\mathfrak p}^{aff}(t)
+
F_{\mathfrak p}^{aff}(t),
\tag{DTC.AFF9}
```

with

```math
B_{\mathfrak p}^{aff},F_{\mathfrak p}^{aff}\in L^1(I)
\tag{DTC.AFF10}
```

and with `B_{\mathfrak p}^{aff}`, `F_{\mathfrak p}^{aff}` supplied without
spending

```math
EOC.A,\quad AFD.A,\quad RCF.A,\quad LCI.A,\quad CSP.A,\quad OFP.A,\quad Field.
\tag{DTC.AFF11}
```

### Why This Is the Right `DTC.M` Object

The raw transported-center obstruction is the endpoint first-rung coefficient

```math
\mathfrak A_{1}^{ctr}\mathfrak A_q^{ctr}.
\tag{DTC.AFF12}
```

In affine coordinates the exact endpoint action is carried by `G_j`, and the
higher center equation has the affine-frame form

```math
\frac{d}{dt}\widetilde U_q^{\,j}
=
\widetilde K_q^{\,j}
+
\widetilde B_{q,\mathrm{mid}}^{\,j}.
\tag{DTC.AFF13}
```

The endpoint `U_1U_q` term is absent. The remaining first-rung contribution is
only the affine defect

```math
\mathfrak D_{1,\rho,\psi}^{aff}
=
\sum_j
\left(
|\mathcal E_j^{(1)}|
+
\sup_{B(c_j,2R)}
|U_1(x,t)-A_j(t)|
\right).
\tag{DTC.AFF14}
```

The moving cutoff is also affine-normalized. Since `x=c_j+G_jy`,

```math
D_t y
=
G_j^{-1}
\left(
u(x,t)-u(c_j,t)-A_j(x-c_j)
\right),
\tag{DTC.AFF15}
```

so the cutoff sees the same affine defect:

```math
|D_t\zeta(y)|
\le
C_{\mathfrak p}
\sup_{B(c_j,2R)}
|U_1(x,t)-A_j(t)|.
\tag{DTC.AFF16}
```

Thus the theorem-facing estimate has the schematic form

```math
|\mathcal T_{\mathfrak p}^{tower}|
+
|\mathcal T_{\mathfrak p}^{mov}|
+
|\mathcal T_{\mathfrak p}^{press}|
+
|\mathcal T_{\mathfrak p}^{visc}|
\le
\varepsilon\mathcal D_{\mathfrak p}^{aff}
+
B_{\mathfrak p}^{aff}(t)\mathcal E_{\mathfrak p}^{aff}
+
F_{\mathfrak p}^{aff}(t).
\tag{DTC.AFF17}
```

### Lemma `DTC.AFF-L1` (Affine Local Equation)

The structural gate for `DTC.M-Affine` is the affine local equation. Let
`\mathcal C_{G_j}` be the natural tensor representation of the affine frame on
the `q`-th tower rung, so that its infinitesimal derivative subtracts the
center first-rung action:

```math
\frac{d}{dt}
\left(
\mathcal C_{G_j(t)}^{-1}W(t)
\right)
=
\mathcal C_{G_j(t)}^{-1}
\left(
\frac{dW}{dt}
-
A_j(t)\cdot_q W(t)
\right).
\tag{DTC.AFF-L1a}
```

Here `A_j\cdot_q` denotes the endpoint first-rung action on the `q`-th tower
tensor. This is the representation-compatibility condition needed for the
affine cancellation.

At fixed affine coordinate `y`,

```math
\partial_t\big|_y
=
\partial_t
+
\left(
u(c_j(t),t)+A_j(t)(x-c_j(t))
\right)\cdot\nabla_x.
\tag{DTC.AFF-L1b}
```

Since the material derivative is `D_t=\partial_t+u(x,t)\cdot\nabla_x`, this is

```math
\partial_t\big|_y
=
D_t
-
\left(
u(x,t)-u(c_j(t),t)-A_j(t)(x-c_j(t))
\right)\cdot\nabla_x.
\tag{DTC.AFF-L1c}
```

Equivalently, along a material trajectory,

```math
D_t y
=
G_j(t)^{-1}
\left(
u(x,t)-u(c_j(t),t)-A_j(t)(x-c_j(t))
\right).
\tag{DTC.AFF-L1d}
```

Therefore the affine-local equation for the remainders has the form

```math
\partial_t R_{q,j}
-
\nu\,\operatorname{div}_y
\left(
A_j^{aff}\nabla_y R_{q,j}
\right)
=
\mathcal M_{q,j}^{aff}
+
\mathcal P_{q,j}^{aff}
+
\mathcal C_{q,j}^{aff}
+
\mathcal F_{q,j}^{aff},
\tag{DTC.AFF-L1e}
```

where

```math
A_j^{aff}:=G_j^{-1}G_j^{-T}.
\tag{DTC.AFF-L1f}
```

The pack gauge bound `(DTC.AFF3)` gives uniform ellipticity for
`A_j^{aff}`. The commutator term `\mathcal C_{q,j}^{aff}` includes the residual
affine transport

```math
-
\left(D_ty\right)\cdot\nabla_yR_{q,j}
\tag{DTC.AFF-L1g}
```

and the cutoff/frame commutators.

Crucially, the endpoint contribution

```math
A_j(t)\cdot_q U_q
\tag{DTC.AFF-L1h}
```

does not appear as an unpaired coefficient in `(DTC.AFF-L1e)`: it is canceled by
the derivative of `\mathcal C_{G_j(t)}^{-1}` in `(DTC.AFF-L1a)`. The first-rung
terms that remain are only affine-defect terms of the form

```math
\left(U_1(x,t)-A_j(t)\right)\cdot_{\ell}(\cdots)
\tag{DTC.AFF-L1i}
```

and the residual affine transport `(DTC.AFF-L1d)`.

Thus Lemma 1 passes the structural break test:

```math
\text{no term }
|U_1(c_j,t)|\,\|R_{q,j}\|_{H^2_y}^2
\text{ is produced by the affine local equation.}
\tag{DTC.AFF-L1j}
```

The remaining proof burden is therefore analytic, not structural: estimate the
middle block, pressure/forcing block, and moving affine cutoff block in the
energy identity for `(DTC.AFF-L1e)`. If the representation condition
`(DTC.AFF-L1a)` is not installed for the repo's tower tensors, then
`DTC.AFF-L1a` becomes the first sub-obligation before the affine route can be
used.

### Lemma `DTC.AFF-L2` (Middle-Block Triangularity)

The middle-block structural test also passes, but only at the algebraic level.
The installed center-mode cancellation `(LCI.3c3z19az19)`--`(LCI.3c3z19az26)`
shows that, after removing the endpoint `\ell=1` and `\ell=q` interactions,
the remaining tower block for `q\ge2` is

```math
B_{q,\mathrm{mid}}
=
\sum_{\ell=2}^{q-1}
U_\ell*U_{q+1-\ell}.
\tag{DTC.AFF-L2a}
```

Thus

```math
q=2:\quad B_{2,\mathrm{mid}}=0,
\tag{DTC.AFF-L2b}
```

and for `q\ge3` every factor in `(DTC.AFF-L2a)` has rung at most `q-1`.
After subtracting center values and conjugating by `\mathcal C_{G_j}^{-1}`, the
local affine middle block has the schematic form

```math
\mathcal M_{q,j}^{aff}
=
\sum_{\ell=2}^{q-1}
\mathcal B_{q,\ell}
\left(
\widetilde U_{\ell,j}+R_{\ell,j},
\widetilde U_{q+1-\ell,j}+R_{q+1-\ell,j}
\right)
-
\text{center-mode part}.
\tag{DTC.AFF-L2c}
```

Consequently no genuine same-rung quadratic term appears:

```math
R_{q,j}R_{q,j}
\quad\text{does not occur in }\mathcal M_{q,j}^{aff}.
\tag{DTC.AFF-L2d}
```

The middle-block break test therefore passes:

```math
\text{there is no unabsorbed same-rung quadratic obstruction in the affine
middle block.}
\tag{DTC.AFF-L2e}
```

This does **not** by itself prove
`B_{\mathrm{mid}}^{aff},F_{\mathrm{mid}}^{aff}\in L^1(I)`. The estimate

```math
\sum_{q=2}^{\mu+2}\omega_q
\sum_j
\left|
\left\langle
R_{q,j},\mathcal M_{q,j}^{aff}
\right\rangle_{H^2_y}
\right|
\le
\varepsilon\nu\mathcal D_{\mathfrak p}^{aff}
+
B_{\mathrm{mid}}^{aff}(t)\mathcal E_{\mathfrak p}^{aff}
+
F_{\mathrm{mid}}^{aff}(t)
\tag{DTC.AFF-L2f}
```

still requires a noncircular lower-rung induction or a dissipative absorption
argument of the `ACT.E1` / `ACT.E2` type. Reading the needed lower-rung
`L^\infty` coefficients from the desired `\mathcal E_{ACT}\in L^\infty`
conclusion would recreate the circular bootstrap marked in `(ACT.Bad)`.

### Lemma `DTC.AFF-L3` (Pressure and Top-Forcing Gate)

The pressure and forcing gate is noncircular only if it uses the local Poisson
split and the included top rungs, not the collar theorem. On each center ball,
write

```math
p=p_j^{loc}+h_j,
\qquad
-\Delta p_j^{loc}
=
\partial_a\partial_b(\eta_j u_a u_b),
\tag{DTC.AFF-L3a}
```

with `h_j` harmonic on the local ball. The local part is assigned to the
affine local packet through fixed-ball pressure response. The harmonic part is
assigned to the far-field pressure tail:

```math
\left|\nabla^{q+1}h_j(c_j,t)\right|
\le
C_{\mathfrak p}\mathfrak T_{q,\rho,\psi}^{press,far}(t).
\tag{DTC.AFF-L3b}
```

For the first pressure tail,

```math
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
\le
C_{\rho,\psi,\delta}
\left|u(\cdot,t)\right|_{L^2}^2
\le
C_{\rho,\psi,\delta}\left|u_0\right|_{L^2}^2.
\tag{DTC.AFF-L3c}
```

The top-viscous contribution is read from the included `m+2` tower range:

```math
\mathfrak K_{m-1,\rho,\psi}^{visc,ctr}
+
\mathfrak K_{m,\rho,\psi}^{visc,ctr}
\le
C
\sum_j
\left(
\left|U_{m+1}(c_j,t)\right|
+
\left|U_{m+2}(c_j,t)\right|
\right).
\tag{DTC.AFF-L3d}
```

Thus the pressure/forcing break test passes at the structural level:

```math
\text{the pressure gate need not spend }CSP.A\text{ or any collar theorem.}
\tag{DTC.AFF-L3e}
```

The estimate

```math
\sum_{q,j}\omega_q
\left|
\left\langle
R_{q,j},\mathcal P_{q,j}^{aff}
\right\rangle_{H^2_y}
\right|
\le
\varepsilon\nu\mathcal D_{\mathfrak p}^{aff}
+
B_{\mathrm{press}}^{aff}(t)\mathcal E_{\mathfrak p}^{aff}
+
F_{\mathrm{press}}^{aff}(t)
\tag{DTC.AFF-L3f}
```

with `L^1` coefficients remains part of the noncircular `ACT.E1` / `ACT.E2`
term expansion. If the local pressure response invokes `CSP.A`, the affine
route is circular and `DTC.M-Affine` fails in its current form.

### Lemma `DTC.AFF-L4` (Moving Affine Cutoff Gate)

The moving cutoff gate is already encoded in `(DTC.AFF-L1d)`. Since

```math
D_ty
=
G_j^{-1}
\left(
u(x,t)-u(c_j,t)-A_j(x-c_j)
\right),
\tag{DTC.AFF-L4a}
```

the cutoff derivative satisfies

```math
\left|D_t\zeta(y)\right|
\le
C_{\mathfrak p}
\sup_{B(c_j,2R)}
\left|U_1(x,t)-A_j(t)\right|.
\tag{DTC.AFF-L4b}
```

Thus the moving-cutoff break test passes:

```math
\text{the cutoff sees affine defect, not the full center amplitude }
\left|U_1(c_j,t)\right|.
\tag{DTC.AFF-L4c}
```

The estimate

```math
\left|\mathcal C_{\mathrm{cut}}^{aff}\right|
\le
\varepsilon\nu\mathcal D_{\mathfrak p}^{aff}
+
B_{\mathrm{cut}}^{aff}(t)\mathcal E_{\mathfrak p}^{aff}
+
F_{\mathrm{cut}}^{aff}(t)
\tag{DTC.AFF-L4d}
```

still requires the affine-defect ledger to be supplied inside the noncircular
`ACT.E1` / `ACT.E2` proof, rather than read back from `AFD.A`.

### Finite-Stage `ACT.E2` Assembly

The noncircular completion of `DTC.AFF-L2`--`DTC.AFF-L4` is graded. Define
`\mathcal E_{\le r}^{aff}` as the affine packet restricted to rungs
`q\le r`. At stage `r`, the permitted coefficients are direct ledgers and
already-controlled lower affine rungs:

```math
\mathcal E_{\le r-1}^{aff}\in L^\infty(I).
\tag{DTC.AFF-S0}
```

The stage target is

```math
D^+\mathcal E_{\le r}^{aff}
+
c_r\nu\mathcal D_{\le r}^{aff}
\le
B_r(t)\mathcal E_{\le r}^{aff}
+
F_r(t),
\qquad
B_r,F_r\in L^1(I).
\tag{DTC.AFF-S1}
```

The base stages `r=0,1` must be supplied by direct zero-rung forcing, finite
seed data, the affine frame equation, and the first-rung affine-defect equation.
The triangular middle-block argument begins at `r=2`.

The middle block is triangular by `DTC.AFF-L2`: `q=2` has no middle term and
the rung-`r` middle block uses only lower affine rungs. Therefore

```math
\mathcal T_{mid,r}^{aff}
\le
\varepsilon\nu\mathcal D_r^{aff}
+
B_{mid,r}(t)\mathcal E_r^{aff}
+
F_{mid,r}(t),
\tag{DTC.AFF-S2}
```

with `L^1` coefficients after `DTC.AFF-S0`.

The pressure estimate must have the same stage form:

```math
\mathcal T_{press,r}^{aff}
\le
\varepsilon\nu\mathcal D_r^{aff}
+
B_{press,r}(t)\mathcal E_r^{aff}
+
F_{press,r}(t),
\tag{DTC.AFF-S3}
```

where local same-rung derivative factors are absorbed by
`\mathcal D_r^{aff}` and harmonic tails are supplied by far-tail ledgers. If
the local pressure response uses `CSP.A`, this stage estimate is circular.

The cutoff/frame estimate is

```math
\mathcal T_{cut,r}^{aff}
+
\mathcal T_{frame,r}^{aff}
\le
\varepsilon\nu\mathcal D_r^{aff}
+
B_{cut,r}(t)\mathcal E_r^{aff}
+
F_{cut,r}(t),
\tag{DTC.AFF-S4}
```

using the affine velocity
`D_ty=G_j^{-1}(u-u(c_j)-A_j(x-c_j))`, not the full center amplitude.

Combining `(DTC.AFF-S2)`--`(DTC.AFF-S4)` gives `(DTC.AFF-S1)`. Gronwall gives
`\mathcal E_{\le r}^{aff}\in L^\infty(I)`. Since the tower depth is finite,
iteration through `r=m+2` gives the intended noncircular `ACT.E2` theorem
provided the stage pressure and cutoff/frame estimates are actually proved:

```math
ACT.Stage(0),\ldots,ACT.Stage(m+2)
\Longrightarrow
ACT.E2.
\tag{DTC.AFF-S5}
```

### Scale-Small Affine Excess Route `ACT.ScaleSmall`

There is a second sufficient route to `ACT.E1` / `ACT.E2`: replace the raw
`L^1` coefficient demand by a scale-small affine-excess absorption. This route
is conditional and must not be read as an unconditional closure.

Define a scale-normalized affine excess on one affine center cylinder by

```math
\mathcal X_j^{exc}(t)
:=
\sum_{q=0}^{m+2}
\sum_{|\beta|\le2}
R^{2|\beta|-1}
\int_{B_R}
\zeta^2|\nabla_y^\beta R_{q,j}|^2\,dy,
\qquad
\mathcal X^{exc}:=\sum_j\mathcal X_j^{exc}.
\tag{DTC.AFF-X0}
```

Carry the center zero modes separately, with the pre-pressure coefficient modes
split from the top-viscous buffer modes:

```math
\mathcal A_{\mathrm{core}}^{ctr}(t)
:=
1+
\sum_{j=1}^J
\sum_{q=0}^{m}
\left|\widetilde U_{q,j}(t)\right|^2.
\tag{DTC.AFF-X1}
```

and

```math
\mathcal A_{\mathrm{buf}}^{ctr}(t)
:=
\sum_{j=1}^J
\left(
\left|\widetilde U_{m+1,j}(t)\right|^2
+
\left|\widetilde U_{m+2,j}(t)\right|^2
\right),
\qquad
\mathcal A_{\mathfrak p}^{ctr}
=
\mathcal A_{\mathrm{core}}^{ctr}
+
\mathcal A_{\mathrm{buf}}^{ctr}.
\tag{DTC.AFF-X1a}
```

This separation is essential. If the center modes are included in the small
quantity, then the `q=0` term `R^{-1}|\widetilde U_{0,j}|^2` is generally not
made small by taking `R` small. If the top buffer modes are made part of the
pre-pressure Gronwall ledger, the route asks for the next two forcing rungs and
recreates rung creep. Thus the scale-small branch uses a core center-amplitude
ledger governed by the rule

```math
\frac{d}{dt}\mathcal A_{\mathrm{core}}^{ctr}
\le
L_A(t)\mathcal A_{\mathrm{core}}^{ctr}
+
F_A(t),
\qquad
L_A,F_A\in L^1(I).
\tag{DTC.AFF-X1b}
```

Then `\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I)` by Gronwall. The core
center ledger travels in the `L,F` side of the affine excess estimate; it is
not part of the small factor. The full readout packet is

```math
\mathcal Y^{read}
:=
\mathcal A_{\mathrm{core}}^{ctr}
+
\mathcal A_{\mathrm{buf}}^{ctr}
+
\mathcal X^{exc}.
\tag{DTC.AFF-X1c}
```

Call the pre-pressure live estimate `ACT.Actr_core`. It is not bookkeeping: it
must be proved from the affine-center zero-mode equations or explicitly paid
for in the `L,F` budget before `ACT.X-Press` is promoted.

For `ACT.Actr_core`, the core ledger is:

```math
\mathcal A_{\mathrm{core}}^{ctr}
:=
1+\sum_j\sum_{q=0}^{m}|\widetilde U_{q,j}|^2.
\tag{DTC.AFF-Actr0a}
```

The lower forcing ledger is

```math
\mathcal K_{\le m}^{ctr}(t)
:=
\sum_j |K_0(c_j,t)|
+
\sum_j |\mathcal E_j^{(1)}(t)|
+
\sum_{q=2}^{m}\sum_j |\widetilde K_{q,j}(t)|.
\tag{DTC.AFF-Actr0b}
```

The honest noncircular theorem target is:

```math
ACT.Actr_{\mathrm{core}}:
\quad
\mathcal K_{\le m}^{ctr}\in L^1(I)
\Longrightarrow
\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I).
\tag{DTC.AFF-Actr1}
```

The buffer modes are not a pre-pressure coefficient ledger. They are readout
and top-viscous buffer modes inside `\mathcal Y^{read}`:

```math
ACT.X\text{-}Boot
+
ACT.Actr_{\mathrm{core}}
\Longrightarrow
\mathcal A_{\mathfrak p}^{ctr}\in L^\infty(I)
\quad\text{through }\mathcal Y^{read}.
\tag{DTC.AFF-Actr1a}
```

If one insists on proving `\mathcal A_{\mathrm{buf}}^{ctr}` before
`ACT.X-Boot`, then an additional external top-forcing input is required:

```math
\sum_{q=m+1}^{m+2}\sum_j|\widetilde K_{q,j}|^2\in L^1(I).
\tag{DTC.AFF-Actr1b}
```

That stronger pre-boot route risks requiring `m+4` data and is not the live
`ACT.Actr_core` obligation. Proof outline. For `q=0`, the transported center
law gives

```math
\frac{d}{dt}U_0(c_j,t)=K_0(c_j,t),
\qquad
\frac{d}{dt}|U_0(c_j,t)|^2
\le
|K_0(c_j,t)|(1+|U_0(c_j,t)|^2).
\tag{DTC.AFF-Actr2}
```

For `q=1`, the affine-frame identity gives

```math
\ddot G_j=\mathcal E_j^{(1)}G_j,
\qquad
A_j=\dot G_jG_j^{-1}.
\tag{DTC.AFF-Actr3}
```

The pack gauge bounds `G_j` and `G_j^{-1}`. Thus
`\sum_j|\mathcal E_j^{(1)}|\in L^1(I)` and finite seed data give
`\mathfrak A_1^{ctr}\in L^\infty(I)`.

For `q\ge2`,

```math
\frac{d}{dt}\widetilde U_{q,j}
=
\widetilde K_{q,j}
+
\widetilde B_{q,\mathrm{mid},j},
\tag{DTC.AFF-Actr4}
```

with

```math
\widetilde B_{2,\mathrm{mid},j}=0,
\qquad
|\widetilde B_{q,\mathrm{mid},j}|
\le
C_q
\sum_{\ell=2}^{q-1}
|\widetilde U_{\ell,j}|
|\widetilde U_{q+1-\ell,j}|
\quad(q\ge3).
\tag{DTC.AFF-Actr5}
```

Finite-depth triangular induction makes the middle block an already-controlled
`L^1` coefficient for the lower rungs `2\le q\le m`. Pairing with
`\widetilde U_{q,j}` and applying Gronwall gives
`\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I)` from
`\mathcal K_{\le m}^{ctr}\in L^1(I)`. The top rungs `m+1,m+2` are not licensed
as pre-pressure coefficients by that lower induction. The remaining live
obligation under `ACT.Actr_core` is exactly
`\mathcal K_{\le m}^{ctr}\in L^1(I)`.

Let

```math
\mathcal X(t):=\mathcal X^{exc}(t)
\quad\text{for the absorbable excess part}
\tag{DTC.AFF-X2}
```

and define the scale-normalized dissipation

```math
\mathcal N(t)
:=
\sum_{j,q,|\beta|\le2}
R^{2|\beta|+1}
\int_{B_R}
\zeta^2|\nabla_y^{\beta+1}R_{q,j}|^2\,dy.
\tag{DTC.AFF-X3}
```

The scale-small target inequality is:

```math
\frac{d}{dt}\mathcal X(t)
+
c_\nu\mathcal N(t)
\le
L(t)\mathcal X(t)
+
C\mathcal X(t)^{1/2}\mathcal N(t)
+
F(t),
\qquad
L,F\in L^1(I).
\tag{DTC.AFF-X4}
```

The middle block, moving cutoff, pressure response, and top-viscous terms are
allowed to contribute to `(DTC.AFF-X4)` as follows:

```math
S_{\mathrm{mid}}^{aff}
\le
L_{\mathrm{mid}}(t)\mathcal X(t),
\tag{DTC.AFF-X5}
```

using finite-depth triangularity and already-controlled lower affine rungs;

```math
Cut_{\mathrm{osc}}^{aff}
\le
C_{cut}\mathcal X(t)^{1/2}\mathcal N(t),
\tag{DTC.AFF-X6}
```

because

```math
D_ty
=
G_j^{-1}
\left(
u(x,t)-u(c_j,t)-A_j(x-c_j)
\right),
\qquad
R|R_{1,j}|_{L^\infty(B_R)}
\lesssim
\mathcal X_j(t)^{1/2};
\tag{DTC.AFF-X7}
```

and

```math
S_{\mathrm{press}}^{aff}
+
S_{\mathrm{top\text{-}visc}}^{aff}
\le
\varepsilon\mathcal N
+
L_{\mathrm{press}}(t)\mathcal X
+
C_{press}\mathcal X^{1/2}\mathcal N
+
F_{\mathrm{press}}(t),
\tag{DTC.AFF-X8}
```

where the local pressure response is fixed-ball affine Poisson response and the
harmonic tail is supplied by far-field energy. No `CSP.A`, `LCI.A`, `OFP.A`, or
`Field` input is allowed in `(DTC.AFF-X5)`--`(DTC.AFF-X8)`.

Choose `\varepsilon_\ast>0` so that

```math
C_\ast(2\varepsilon_\ast)^{1/2}
\le
\frac{c_\nu}{4}.
\tag{DTC.AFF-X9}
```

where

```math
C_\ast:=C_{cut}+C_{press}.
\tag{DTC.AFF-X9a}
```

If on the interval under consideration

```math
\left(
\mathcal X(t_0)+\int_{t_0}^{t_1}F(s)\,ds
\right)
\exp\left(
\int_{t_0}^{t_1}L(s)\,ds
\right)
<
2\varepsilon_\ast,
\tag{DTC.AFF-X10}
```

and `\mathcal X(t_0)\le\varepsilon_\ast`, then the first-exit argument gives

```math
\sup_{t\in[t_0,t_1]}\mathcal X(t)\le2\varepsilon_\ast,
\qquad
\int_{t_0}^{t_1}\mathcal N(t)\,dt<\infty.
\tag{DTC.AFF-X11}
```

Indeed, before the first time when `\mathcal X=2\varepsilon_\ast`,
`(C_{cut}+C_{press})\mathcal X^{1/2}\mathcal N` is absorbed into the left side of
`(DTC.AFF-X4)`, and Gronwall plus `(DTC.AFF-X10)` prevents the exit.

Therefore:

```math
ACT.ScaleSmall:
\quad
(DTC.AFF-X4)+(DTC.AFF-X9)+(DTC.AFF-X10)
\Longrightarrow
\mathcal X^{exc}\in L^\infty
\quad\text{and}\quad
\mathcal N\in L^1
\text{ on the chosen affine interval.}
\tag{DTC.AFF-X12}
```

#### Named `ACT.X-*` Subtheorem Ledger

The scale-small branch should be recorded as a sequence of named atoms. The
important correction is that the full readout packet and the small bootstrap
packet are different objects.

`ACT.X-Def` defines the normalized affine excess. With

```math
\nabla_R^\beta:=R^{|\beta|}\nabla_y^\beta,
\qquad
\|f\|_{\bar L^2_y}^2:=R^{-3}\int |f(y)|^2\,dy,
\tag{DTC.AFF-XDef0}
```

the small packet is

```math
\mathcal X^{exc}(t)
:=
\sum_{j=1}^{J}\sum_{q=0}^{m+2}
\sum_{|\beta|\le2}
\|\zeta\nabla_R^\beta R_{q,j}(t)\|_{\bar L^2_y}^2.
\tag{DTC.AFF-XDef1}
```

The full readout packet is

```math
\mathcal Y^{read}(t)
:=
\mathcal A_{\mathrm{core}}^{ctr}(t)
+
\mathcal A_{\mathrm{buf}}^{ctr}(t)
+
\mathcal X^{exc}(t).
\tag{DTC.AFF-XDef2}
```

Only `\mathcal X^{exc}` is the smallness variable. The center zero modes in
`\mathcal A_{\mathrm{core}}^{ctr}+\mathcal A_{\mathrm{buf}}^{ctr}` are
retained for raw tower readout but are not part of the quantity absorbed by
small affine excess.

The normalized dissipation is

```math
\mathcal N(t)
:=
\sum_{j=1}^{J}\sum_{q=0}^{m+2}
\sum_{|\beta|\le2}
\|\zeta\nabla_R^\beta\nabla_R R_{q,j}(t)\|_{\bar L^2_y}^2.
\tag{DTC.AFF-XDef3}
```

`ACT.X-Energy` is the affine excess inequality

```math
\frac{d}{dt}\mathcal X^{exc}
+
c_\nu\mathcal N
\le
L(t)\mathcal X^{exc}
+
C_\ast(\mathcal X^{exc})^{1/2}\mathcal N
+
F(t),
\qquad
L,F\in L^1(I).
\tag{DTC.AFF-XEnergy}
```

It is proved by the four estimates:

```math
ACT.X\text{-}Mid:
\quad
|\mathcal T_{mid}|
\le
\varepsilon\mathcal N
+
L_{mid}(t)\mathcal X^{exc}
+
F_{mid}(t),
\tag{DTC.AFF-XMid}
```

```math
ACT.X\text{-}Cut:
\quad
|\mathcal T_{cut}|
\le
C_{cut}(\mathcal X^{exc})^{1/2}\mathcal N
+
L_{cut}(t)\mathcal X^{exc}
+
F_{cut}(t),
\tag{DTC.AFF-XCut}
```

```math
ACT.X\text{-}Press:
\quad
|\mathcal T_{press}|
\le
\varepsilon\mathcal N
+
C_{press}(\mathcal X^{exc})^{1/2}\mathcal N
+
L_{press}(t)\mathcal X^{exc}
+
F_{press}(t),
\tag{DTC.AFF-XPress}
```

and

```math
ACT.X\text{-}TopVisc:
\quad
|\mathcal T_{topvisc}|
\le
\varepsilon\mathcal N
+
L_{top}(t)\mathcal X^{exc}
+
F_{top}(t).
\tag{DTC.AFF-XTop}
```

#### Theorem `AXE.A` (Affine-Excess Energy Assembly)

The four local atoms used to prove `ACT.X-Energy` are:

```math
AXE.1:
\quad
|\mathcal T_{mid}|
\le
\varepsilon\mathcal N
+
L_{mid}(t)\mathcal X^{exc}
+
F_{mid}(t),
\qquad
L_{mid},F_{mid}\in L^1(I).
\tag{AXE.1}
```

Here the endpoint `U_1(c_j)U_q` action is absent by the affine-frame
cancellation, `q=0,1,2` have no middle block, and for `q\ge3` every middle
interaction contains only lower affine rungs. The weight choice in the finite
depth tower is used only to keep those lower-rung products subordinated to the
already-controlled part of the packet; it is not a license to read back the
same-rung `\mathcal X^{exc}` as an `L^1` coefficient.

```math
AXE.2:
\quad
|\mathcal T_{press}|
+
|\mathcal T_{topvisc}|
\le
\varepsilon\mathcal N
+
C_{press}(\mathcal X^{exc})^{1/2}\mathcal N
+
L_{press}(t)\mathcal X^{exc}
+
F_{press}(t),
\qquad
L_{press},F_{press}\in L^1(I).
\tag{AXE.2}
```

The pressure part is the atom `ACT.X-Press`. Use the local split
`p=p_j^{loc}+h_j`, with

```math
-\Delta p_j^{loc}
=
\partial_a\partial_b(\eta_j u_a u_b).
\tag{AXE.2a}
```

On the affine ball, the fixed-ball pressure response target is

```math
\|\zeta\nabla^{q+1}p_j^{loc}\|_{H^1_y}
\le
C\mathcal X^{1/2}\mathcal N^{1/2}
+
L_{press}^{loc}(t)\mathcal X^{1/2}
+
F_{press}^{loc}(t)^{1/2}.
\tag{AXE.2b}
```

This is obtained by writing

```math
u(x,t)=u(c_j,t)+A_j(x-c_j)+w_j(x,t),
\qquad
w_j:=u-u(c_j)-A_j(x-c_j),
\tag{AXE.2c}
```

and routing center/affine coefficients through
`\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I)`. The product expansion

```math
u\otimes u
=
(u(c_j)+A_j(x-c_j))^{\otimes2}
+
2(u(c_j)+A_j(x-c_j))\otimes w_j
+
w_j\otimes w_j
\tag{AXE.2c1}
```

splits the local pressure atom into affine-affine, affine-remainder, and
remainder-remainder pieces. The affine-affine piece contributes only an
`L^1` coefficient against `\mathcal X`; the affine-remainder piece is absorbed
by Young into `\varepsilon\mathcal N+L(t)\mathcal X+F(t)`. The
remainder-remainder piece is the same scale-small obstruction as the moving
cutoff:

```math
|\mathcal T_{press}^{ww}|
\le
C_{press}(\mathcal X^{exc})^{1/2}\mathcal N
+
L_{ww}(t)\mathcal X^{exc}
+
F_{ww}(t).
\tag{AXE.2c2}
```

Pairing gives

```math
|\mathcal T_{press}^{loc}|
\le
\varepsilon\mathcal N
+
C_{press}(\mathcal X^{exc})^{1/2}\mathcal N
+
L_{press}^{loc}(t)\mathcal X
+
F_{press}^{loc}(t).
\tag{AXE.2d}
```

For the harmonic tail,

```math
|\nabla^{q+1}h_j(c_j,t)|
\le
C_{\mathfrak p}
\mathfrak T_{q,\rho,\psi}^{press,far}(t).
\tag{AXE.2e}
```

For finite `q`, the harmonic kernel estimate gives

```math
|\nabla^{q+1}h_j(c_j,t)|
\le
C_{\mathfrak p}
\int_{|y-c_j|>R}
\frac{|u(y,t)|^2}{|y-c_j|^{q+3}}\,dy
\le
C_{\mathfrak p,R}
\|u(\cdot,t)\|_{L^2}^2.
\tag{AXE.2f}
```

The energy ledger therefore gives every finite far-tail required by the packet:

```math
\mathcal T_{\mathfrak p}^{press,far}
:=
\sum_{q\le m}
\mathfrak T_{q,\rho,\psi}^{press,far}
\in L^\infty(I)\subset L^1(I).
\tag{AXE.2f1}
```

Thus

```math
ACT.X\text{-}Press:
\quad
ACT.Actr_{\mathrm{core}}
+
\text{local fixed-ball pressure response}
\Longrightarrow
|\mathcal T_{press}|
\le
\varepsilon\mathcal N
+
C_{press}(\mathcal X^{exc})^{1/2}\mathcal N
+
L_{press}(t)\mathcal X
+
F_{press}(t).
\tag{AXE.2g}
```

The far-tail half of `ACT.X-Press` is handled by energy; the live pressure wall
is the local fixed-ball pressure response.

The top-viscous part of `AXE.2` is separate: it is read from the included
`m+2` buffer modes inside `\mathcal Y^{read}`. Those buffer modes are not
licensed as pre-pressure coefficients by `ACT.Actr_core`. No `LCI.A`, `CSP.A`,
`OFP.A`, or `Field` input is allowed in either pressure or top-viscous estimate.

```math
AXE.3:
\quad
|\mathcal T_{cut,mov}|
\le
C_{cut}(\mathcal X^{exc})^{1/2}\mathcal N
+
F_{cut}(t),
\qquad
F_{cut}\in L^1(I).
\tag{AXE.3}
```

This is the moving affine cutoff estimate. It uses

```math
D_ty
=
G_j^{-1}\bigl(u(x,t)-u(c_j,t)-A_j(x-c_j)\bigr),
\tag{AXE.3a}
```

so the cutoff sees only affine excess. The center modes are not part of the
small factor; any center contribution is routed through `\mathcal A_{\mathfrak
p}^{ctr}` and its direct Gronwall ledger.

```math
AXE.4:
\quad
|\mathcal T_{cut,visc}|
\le
\varepsilon\mathcal N
+
C_\varepsilon\mathcal X^{exc}
+
F_{cut,visc}(t),
\qquad
F_{cut,visc}\in L^1(I).
\tag{AXE.4}
```

This is the static viscous cutoff commutator estimate from derivatives of
`\zeta`; it is handled by Cauchy--Young and the fixed affine ball constants.

Adding `(AXE.1)`--`(AXE.4)` and choosing `\varepsilon` small enough to absorb
all dissipative pieces gives:

```math
AXE.A:
\quad
AXE.1+AXE.2+AXE.3+AXE.4
\Longrightarrow
ACT.X\text{-}Energy.
\tag{AXE.A}
```

Thus `AXE.A` is the current theorem-facing wall beneath `AXP.A`. It is not a
new readout theorem: it proves the affine-excess differential inequality only.

The only atoms allowed to keep a nonlinear scale-small excess factor are the
moving cutoff atom and the local pressure remainder-remainder atom. The cutoff
contribution comes from

```math
D_ty
=
G_j^{-1}
\left(
u(x,t)-u(c_j,t)-A_j(x-c_j)
\right),
\qquad
|D_t\zeta|
\lesssim
(\mathcal X^{exc})^{1/2}.
\tag{DTC.AFF-XCut0}
```

The pressure atom contributes the matching term
`C_{press}(\mathcal X^{exc})^{1/2}\mathcal N`, so the bootstrap constant is

```math
C_X:=C_{cut}+C_{press}.
\tag{DTC.AFF-XBoot0}
```

The correct seed input is not retained smoothness itself, but the scale-small
seed theorem proved from retained smoothness:

```math
ACT.X\text{-}Scale:
\quad
\forall s_a\in I,\ \forall \eta_X>0,\ \exists R_a>0
\quad\text{such that}\quad
\mathcal X^{exc}(s_a;R_a)\le\eta_X,
\tag{DTC.AFF-XScale0}
```

with admissibility

```math
B(c_j(s_a),2R_a)\subset Q_{s_a}^{rec,+}
\qquad(1\le j\le J).
\tag{DTC.AFF-XScale1}
```

Retained smooth center-ball regularity is the proof source for
`ACT.X-Scale`: for each fixed retained time, center, finite rung, and
derivative in the packet, the affine remainder is locally continuous after the
center and affine part are subtracted, so
`\mathcal X^{exc}(s_a;R)\to0` as `R\downarrow0`; finite centers and rungs allow
one common admissible `R_a`.

`ACT.X-Boot` consumes only the resulting scale seed. Set

```math
\eta_X:=\left(\frac{c_\nu}{4C_X}\right)^2,
\qquad
\text{barrier}=4\eta_X.
\tag{DTC.AFF-XBoot1}
```

The boot theorem is the three-part theorem

```math
ACT.X\text{-}Seed
+
ACT.X\text{-}Sched
+
ACT.X\text{-}Absorb
\Longrightarrow
\mathcal X^{exc}\in L^\infty(I),
\qquad
\mathcal N\in L^1(I).
\tag{DTC.AFF-XBoot2}
```

`ACT.X-Seed` is exactly

```math
\mathcal X^{exc}(s_a;R_a)\le\eta_X
\tag{DTC.AFF-XSeed}
```

at every retained restart, supplied by `ACT.X-Scale`. The center modes are not
in `\mathcal X^{exc}`; they remain in the core/buffer center ledger.

`ACT.X-Sched` chooses a finite retained partition

```math
I=\bigcup_a I_a,
\qquad
I_a=[s_a,s_{a+1}],
\tag{DTC.AFF-XSched0}
```

such that

```math
\left(
\eta_X+\int_{I_a}F(t)\,dt
\right)
\exp\left(\int_{I_a}L(t)\,dt\right)
\le
2\eta_X
\tag{DTC.AFF-XSched1}
```

on every `I_a`. This partition uses only the `L^1` budgets after the small
starts are supplied.

`ACT.X-Absorb` fixes one retained interval and lets `T_\ast` be the first time
with

```math
\mathcal X^{exc}(T_\ast)=4\eta_X.
\tag{DTC.AFF-XAbs0}
```

Before `T_\ast`,

```math
C_X(\mathcal X^{exc})^{1/2}
\le
C_X(4\eta_X)^{1/2}
=
\frac{c_\nu}{2},
\tag{DTC.AFF-XAbs1}
```

so

```math
\frac{d}{dt}\mathcal X^{exc}
+
\frac{c_\nu}{2}\mathcal N
\le
L(t)\mathcal X^{exc}+F(t).
\tag{DTC.AFF-XAbs2}
```

Gronwall plus `(DTC.AFF-XSched1)` gives
`\mathcal X^{exc}(t)\le2\eta_X`, contradicting the first exit at `4\eta_X`.
Hence `\sup_{I_a}\mathcal X^{exc}\le2\eta_X`, and integrating
`(DTC.AFF-XAbs2)` gives `\mathcal N\in L^1(I_a)`. Summing over the finite
retained partition gives `(DTC.AFF-XBoot2)`.

`ACT.X-Readout` then uses the full readout packet `\mathcal Y^{read}`: local
Morrey gives `\mathfrak H^{osc,\alpha}\in L^2(I)`, the affine first-rung
response gives `\mathfrak D_1^{aff}\in L^1(I)`, and the local
pressure/top-viscous response through the included `m+2` center modes gives
`\mathfrak F^{ctr,res}\in L^1(I)`, provided the separate center-amplitude
core ledger satisfies `ACT.Actr_core` and the buffer modes are recovered through
the bounded readout packet `\mathcal Y^{read}` rather than smuggled into the
pre-pressure Gronwall step.

#### Theorem `AXP.A` (Affine-Excess Propagation)

The scale-small branch is most cleanly recorded as the following theorem. On an
affine retained interval, assume:

```math
ACT.X\text{-}Def
+
ACT.X\text{-}Energy
\tag{AXP.0}
```

with `L,F\in L^1` and with the center zero modes separated into the
core/buffer readout ledger rather than included in the small excess. Choose
`\eta_X=(c_\nu/(4C_X))^2`, assume `ACT.X-Scale` supplies the seed radius at
`t_0`, and assume the small-budget condition

```math
\mathcal X^{exc}(t_0;R_0)\le\eta_X,
\qquad
\left(
\eta_X+\int_{t_0}^{t_1}F(s)\,ds
\right)
\exp\left(\int_{t_0}^{t_1}L(s)\,ds\right)
\le
2\eta_X.
\tag{AXP.1}
```

Then the first-exit argument gives

```math
\mathcal X^{exc}\in L^\infty([t_0,t_1]),
\qquad
\mathcal N\in L^1([t_0,t_1]).
\tag{AXP.2}
```

If in addition `ACT.X-Readout` is supplied for the same affine packet, then

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2([t_0,t_1]),
\qquad
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1([t_0,t_1]),
\qquad
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1([t_0,t_1]).
\tag{AXP.3}
```

So the theorem-facing contraction is

```math
AXP.A:
\quad
ACT.X\text{-}Def
+
ACT.X\text{-}Energy
+
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
ACT.X\text{-}Readout
\Longrightarrow
\left(
\mathfrak H^{osc,\alpha}\in L^2
\wedge
\mathfrak D_1^{aff}\in L^1
\wedge
\mathfrak F^{ctr,res}\in L^1
\right).
\tag{AXP.A}
```

This is a propagation theorem for the `DTC.MA-Energy` subledger. It does not
prove `ACT.X-Energy`, does not install `(FCI.5f)`, and does not discharge the
endpoint matrix. For a full strip, `AXP.A` needs `ACT.X-Scale` at each retained
restart together with the scheduler budget condition, or a direct proof that
`(AXP.1)` holds on all retained affine intervals.

Proof. Let

```math
T_\ast
:=
\inf\left\{
t\in[t_0,t_1]:
\mathcal X^{exc}(t)=4\eta_X
\right\}.
\tag{AXP.4}
```

On `[t_0,T_\ast)`, `(DTC.AFF-XAbs1)` gives

```math
C_X(\mathcal X^{exc})^{1/2}\mathcal N
\le
\frac{c_\nu}{2}\mathcal N.
\tag{AXP.5}
```

Absorbing this term in `ACT.X-Energy` yields

```math
\frac{d}{dt}\mathcal X^{exc}
+
\frac{c_\nu}{2}\mathcal N
\le
L(t)\mathcal X^{exc}
+
F(t).
\tag{AXP.6}
```

Gronwall and `(AXP.1)` imply `\mathcal X^{exc}(t)\le2\eta_X` before
the putative exit, so `T_\ast` cannot occur. Integrating `(AXP.6)` then gives
`\mathcal N\in L^1([t_0,t_1])`. The readouts in `(AXP.3)` are exactly the
`ACT.X-Readout` hypotheses applied to the bounded full readout packet
`\mathcal Y^{read}=\mathcal A_{\mathrm{core}}^{ctr}
+\mathcal A_{\mathrm{buf}}^{ctr}+\mathcal X^{exc}`. This proves `AXP.A`.

Thus the corrected chain is:

```math
ACT.Actr_{\mathrm{core}}
+
ACT.X\text{-}Def
+
AXE.A
+
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
ACT.X\text{-}Readout
\Longrightarrow
AXP.A
\Longrightarrow
ACT.A.
\tag{DTC.AFF-XChain}
```

Equivalently, the eleven-item completion ledger is:

```text
1. ACT.Actr_core: lower center-amplitude Gronwall rule.
2. ACT.X-Def: define X_exc, N, and Y_read = A_core^ctr + A_buf^ctr + X_exc.
3. AXE.A: AXE.1--AXE.4 assemble ACT.X-Energy.
4. ACT.X-Cut: cutoff sees affine defect, not full center U_1.
5. ACT.X-Press: local Poisson response plus energy-controlled far-tail; pressure adds a C_press X_exc^(1/2) N term.
6. ACT.X-Mid: triangular finite-depth middle block.
7. ACT.X-TopVisc: buffer m+2 center modes are readout modes, not pre-pressure ACT.Actr_core data.
8. ACT.X-Scale: retained smooth center-ball regularity supplies a radius R_a with X_exc(s_a;R_a) <= eta_X at each restart.
9. ACT.X-Boot: ACT.X-Seed + ACT.X-Sched + ACT.X-Absorb propagates X_exc and N after ACT.X-Scale supplies small starts.
10. ACT.X-Readout: X_exc + A_core^ctr + A_buf^ctr gives D_1^aff, F_ctr_res, H_osc^alpha.
11. ACT.A -> RCF.A -> LCI.A, while FCI.5f and endpoint cleanup remain separate.
```

This ledger is a proof plan, not a discharge. The sharp next proof targets are
`ACT.Actr_core`, `AXE.2` / `ACT.X-Press`, and `ACT.X-Scale`; `ACT.X-Cut` is
structurally favorable because the moving cutoff sees the affine defect.

For a full interval `I`, this branch additionally needs `ACT.X-Scale` at every
retained restart plus the scheduler budget condition. Finiteness of `F,L` alone
is not the same as `ACT.X-Seed`.

#### Theorem `ACT.X-Boot` (Seed + Scheduler + Absorption)

The retained-window scheduler naming is now decomposed into three atoms:

```math
ACT.X\text{-}Seed
+
ACT.X\text{-}Sched
+
ACT.X\text{-}Absorb
\Longrightarrow
\mathcal X^{exc}\in L^\infty(I),
\qquad
\mathcal N\in L^1(I).
\tag{DTC.AFF-XSched0}
```

`ACT.X-Seed` is supplied by `ACT.X-Scale`:

```math
\mathcal X^{exc}(s_a;R_a)\le\eta_X
\qquad\text{at every retained restart }s_a.
\tag{DTC.AFF-XSeed2}
```

`ACT.X-Sched` chooses the retained intervals so

```math
\left(
\eta_X+\int_{I_a}F(t)\,dt
\right)
\exp\left(\int_{I_a}L(t)\,dt\right)
\le
2\eta_X.
\tag{DTC.AFF-XSched2}
```

`ACT.X-Absorb` is the first-exit proof with barrier `4\eta_X`. On the interval
before first exit,

```math
C_X(\mathcal X^{exc})^{1/2}\mathcal N
\le
\frac{c_\nu}{2}\mathcal N,
\tag{DTC.AFF-XAbs3}
```

so Gronwall gives `\mathcal X^{exc}\le2\eta_X`, contradicting an exit at
`4\eta_X`. Integrating the absorbed inequality gives `\mathcal N\in L^1` on
each retained interval, and the finite sum over intervals gives

```math
\mathcal X^{exc}\in L^\infty(I),
\qquad
\mathcal N\in L^1(I).
\tag{ACT.XBoot}
```

The scheduler obstruction is therefore not `RWS.B`; it is the seed theorem
`ACT.X-Scale`. Retained smooth center-ball regularity is the proof source for
`ACT.X-Scale`, and `ACT.X-Boot` consumes only the resulting seed inequality.

With this bridge, the local analytic route is:

```math
AXE.A
+
ACT.X\text{-Scale}
+
ACT.X\text{-Boot}
+
ACT.Actr_{\mathrm{core}}
+
ACT.X\text{-Readout}
\Longrightarrow
AXP.A.
\tag{DTC.AFF-XSched3}
```

The expected coefficient surface is

```math
B_{\mathfrak p}^{aff}
=
C_{\mathfrak p}
\left(
1
+
\mathfrak D_{1,\rho,\psi}^{aff}
+
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}
+
(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha})^2
+
\mathfrak T_{1,\rho,\psi}^{press,far}
+
(\mathfrak A_{0,\rho,\psi}^{ctr})^2
\right),
\tag{DTC.AFF18}
```

plus the corresponding affine pressure and top-viscous forcing terms in
`F_{\mathfrak p}^{aff}`.

### Consequence If `DTC.M-Affine` Is Proved

If `(DTC.AFF9)`--`(DTC.AFF10)` are proved with direct pre-`DTC.A` coefficients,
then Gronwall gives

```math
\mathcal E_{\mathfrak p}^{aff}\in L^\infty(I).
\tag{DTC.AFF19}
```

By the frame equivalence `(DTC.AFF3)`, this gives the raw transported-center
packet and multiplier readouts:

```math
\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I),
\qquad
\mathcal M_{\mathfrak p}^{TC}\in L^\infty(I).
\tag{DTC.AFF20}
```

Therefore

```math
DTC.M\text{-}Affine_{\mathfrak p}
\Longrightarrow
DTC.M_{\mathfrak p}^{\infty}
\Longrightarrow
DTC.PRE_{\mathfrak p}.
\tag{DTC.AFF21}
```

This is the useful part of the proposed route. It upgrades `DTC.M-Linear` from a
bare coefficient slogan to a concrete affine packet theorem.

### Bridge-License Boundary

The affine packet does **not** by itself install the source-side theorem
`(FCI.5f)`. To promote the source side, one must prove a separate bridge

```math
DTC.M\text{-}Affine
\Longrightarrow
FPCR.C+FSCR.C+FCC.C1
\Longrightarrow
(FCI.5f),
\tag{DTC.AFF22}
```

without importing the receiver conclusion back into the source ledger.

The affine packet also does **not** install the endpoint block. The endpoint
status remains:

```math
END.Exh+END.TowerAmp+END.Cross
\tag{DTC.AFF23}
```

with `END.TowerBound` formal only after `END.TowerAmp` supplies the actual
finite-depth tower amplitude bound, and `END.Cross` formal only after the
cross-entry certificate reductions are installed. The already-installed entry
is still `(Part,Dead)`, not the full endpoint matrix.

## Theorem `DTC.B` (`DTC.A` supplies the transported-center package)

For every `\mathfrak p=(n,\mu,\Delta)\in\mathscr P_{\rm req}`,

```math
DTC.A_{\mathfrak p}
\Longrightarrow
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}.
\tag{DTC.8}
```

Here `RCF.A_{\mathfrak p}` means that the residual-forcing conclusion needed by
the transported-center package is discharged at the same parameter instance.

### Proof: `DTC.A -> EOC.A`

By local Sobolev/Morrey on the finite family of transported-center balls, for
`0<\alpha\le 1/2`,

```math
\left[
U_q(\cdot,t)
\right]_{C^{0,\alpha}(B(c_j(t),2R_\Delta^{osc}))}
\le
C_{\mathfrak p}
\left(
\sum_{|\beta|\le2}
\int_{B(c_j(t),R_{\mathfrak p}^{TC})}
\left|\nabla^\beta U_q(x,t)\right|^2\,dx
\right)^{1/2}.
\tag{DTC.9}
```

Therefore

```math
\mathfrak H_{n,\mu,\rho,\psi}^{osc,\sharp,\alpha}(t)^2
\le
C_{\mathfrak p}\mathcal Z_{\mathfrak p}^{TC}(t).
\tag{DTC.10}
```

The enlarged-ball oscillation readout gives

```math
\Omega_{n,\mu,\rho,\psi}^{osc,\sharp}(t)
\le
(2R_\Delta^{osc})^\alpha
\mathfrak H_{n,\mu,\rho,\psi}^{osc,\sharp,\alpha}(t).
\tag{DTC.11}
```

Hence

```math
\Omega_{n,\mu,\rho,\psi}^{osc,\sharp}(t)^2
\le
C_{\mathfrak p}\mathcal Z_{\mathfrak p}^{TC}(t).
\tag{DTC.12}
```

Since `I` is finite and `\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I)`,

```math
\Omega_{n,\mu,\rho,\psi}^{osc,\sharp}\in L^2(I).
\tag{DTC.13}
```

This is `EOC.A_{\mathfrak p}` and spends no collar theorem.

### Proof: `DTC.A + EOC.A -> AFD.A`

The affine-frame defect estimate on disk is:

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
\tag{AFD.4}
```

`EOC.A_{\mathfrak p}` supplies the oscillation terms in `L^2(I)`, hence also
in `L^1(I)` on finite `I` after squaring. The direct package supplies
`\mathfrak T_{1,\rho,\psi}^{press,far}` and
`\mathfrak K_{1,\rho,\psi}^{visc,ctr}` in `L^1(I)`.

For the rung-zero center ledger, the tower law gives

```math
\frac{d}{dt}\mathfrak A_{0,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{0,\rho,\psi}^{ctr}(t).
\tag{DTC.14}
```

With finite seed data and
`\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I)`, this yields

```math
\mathfrak A_{0,\rho,\psi}^{ctr}\in L^\infty(I).
\tag{DTC.15}
```

Substitution into `(AFD.4)` gives

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I),
\tag{DTC.16}
```

which is `AFD.A_{\mathfrak p}`.

The installed affine-defect bridge then gives

```math
AFD.A_{\mathfrak p}
\Longrightarrow
AFD.B_{\mathfrak p}.
\tag{DTC.17}
```

### Proof: `DTC.A + AFD.A/AFD.B -> RCF.A`

By `(DTC.7)`, the residual center-forcing ledger of `(RCF.7)` is integrable:

```math
\mathfrak F_{n,\mu,\rho,\psi}^{ctr,res}\in L^1(I).
\tag{DTC.18}
```

The installed bridge `AFD.B_{\mathfrak p}` supplies the first center rung in
the form needed by the transported-center residual package:

```math
\mathfrak A_{1,\rho,\psi}^{ctr}\in L^\infty(I)
\subset L^2(I).
\tag{DTC.18a}
```

Now run the center-system induction directly. The rung-zero estimate is
`(DTC.14)`. For the transformed higher rungs, the affine-frame cancellation
removes the endpoint `U_1U_q` term and gives the triangular inequality recorded
as `(LCI.3c3z19az26)`:

```math
\frac{d}{dt}
\widetilde{\mathfrak A}_{q,\rho,\psi}^{ctr}(t)
\le
\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}(t)
+
C_q
\sum_{\ell=2}^{q-1}
\widetilde{\mathfrak A}_{\ell,\rho,\psi}^{ctr}(t)
\widetilde{\mathfrak A}_{q+1-\ell,\rho,\psi}^{ctr}(t).
\tag{DTC.18b}
```

The frame-weighted forcing bridge `(LCI.3c3z19az31)`--`(LCI.3c3z19az32)` is
downstream only of the bounded pack gauge and the direct center-forcing ledgers.
The lower-rung viscous terms are recycled by the center-carrier inequalities,
so the only external forcing left after `LCI.B2g4` is exactly the residual
ledger `(DTC.18)`.

Induction in `q` therefore gives

```math
\sup_{t\in I}
\widetilde{\mathfrak A}_{q,\rho,\psi}^{ctr}(t)
<\infty
\qquad
(2\le q\le\mu).
\tag{DTC.18c}
```

The affine frame is the center deformation frame, and `(LCI.3c3z19az35)` gives
equivalence of transformed and untransformed center ledgers under
`\Gamma_\sharp\in L^\infty(I)`. Combining this with `(DTC.15)` and `(DTC.18a)`
yields

```math
\mathfrak A_{n,\mu,\rho,\psi}^{ctr}\in L^\infty(I)
\subset L^2(I).
\tag{DTC.19}
```

Thus the transported-center residual package closes without spending `LCI.A`,
`LCI.B`, `CSP.A`, or the scalar Riccati closure.

## Corollary `DTC.C` (Non-smuggling input for uniform lower-carrier closure)

For the finite required parameter set,

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
DTC.A_{\mathfrak p}
\Longrightarrow
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right).
\tag{DTC.20}
```

Combining `(DTC.20)` with the uniform lower-carrier theorem `ULCI.A` gives
`ULCI(\mathscr P_{\rm req})` without hidden receiver-loop inputs.

## Remaining Analytic Burden

Everything now rests on the direct positive-estimate theorem

```math
\boxed{
DTC.A_{\mathfrak p}
\quad
(\mathfrak p\in\mathscr P_{\rm req}).
}
\tag{DTC.21}
```

That theorem must be proved from the classical equations, the pressure Poisson
response, finite energy, and direct localized estimates on transported-center
balls. It cannot cite `LCI.A`, `LCI.B`, `CSP.A`,
`CSP.A_{\delta+\delta_{seg}}`, `OFP.A`, or the field predicate.

For the compactness, scaling, same-family, and endpoint-circularity audit gates
that this positive-estimate theorem must pass before it can be promoted as a
non-smuggling receiver supplier, see
[mpp-ofp-dtc-compactness-scaling-circularity-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-ofp-dtc-compactness-scaling-circularity-audit-note.md).

## Receiver-Side Formal Assembly After `DTC.A`

Once `DTC.A_{\mathfrak p}` is proved for every
`\mathfrak p\in\mathscr P_{\rm req}`, Corollary `DTC.C` gives

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right).
\tag{DTC.22}
```

The uniform lower-carrier theorem then gives

```math
ULCI(\mathscr P_{\rm req}).
\tag{DTC.23}
```

Consequently the required lower-carrier instances are available:

```math
LCI.A_{\delta+\delta_{seg}},
\qquad
LCI.B_{N+4,N+4,\delta+5\Lambda_{\delta,\rho}^{halo}},
\qquad
LCI.A_{\delta}.
\tag{DTC.24}
```

With the old non-thickness `WTC.1` slots retained, and with the source ledger
`(FCI.5f)`, the thickened receiver collar follows:

```math
LCI.A_{\delta+\delta_{seg}}
+
(FCI.5f)
\Longrightarrow
CSP.A_{\delta+\delta_{seg}}.
\tag{DTC.25}
```

Then

```math
CSP.A_{\delta+\delta_{seg}}
+
(EOC.27)
+
(OFP.10cb)
\Longrightarrow
EOC.A.
\tag{DTC.26}
```

This step is now a formal receiver readback, not the supplier of the
transported-center package.

The base receiver readout continues:

```math
LCI.A_{\delta}
+
(FCI.5f)
\Longrightarrow
CSP.A_{\delta},
\tag{DTC.27}
```

```math
CSP.A_{\delta}
+
(FCI.5f)
\Longrightarrow
OFP.A,
\tag{DTC.28}
```

and

```math
OFP.A+CFI.B1+CFI.B2
\Longrightarrow
CFI.A.
\tag{DTC.29}
```

The terminal certificate remains:

```math
CFI.A+\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time NS class exit}.
\tag{DTC.30}
```

Here `(Part,Dead)` is installed inside `\mathsf{End}_{NS}`. The remaining
endpoint entries are:

```math
(Pack,\text{packing-detached}),
\qquad
(Field,\text{Jump}),
\qquad
tower\text{-}blown,
\qquad
cross\text{-entries}.
\tag{DTC.31}
```

Thus the receiver side has one remaining positive-estimate block:

```math
\boxed{
DTC.A_{\mathfrak p}
\quad
(\mathfrak p\in\mathscr P_{\rm req}).
}
\tag{DTC.32}
```

For the full lane, the exact terminal statement is:

```math
\boxed{
DTC.A_{\mathfrak p}\ \text{for all }\mathfrak p\in\mathscr P_{\rm req}
}
+
\boxed{(FCI.5f)}
+
\boxed{\mathsf{End}_{NS}}
\Longrightarrow
\text{no finite-time class exit}.
\tag{DTC.33}
```

If `(FCI.5f)` is treated as already installed from the source-side branch, then
the remaining theorem blocks reduce exactly to:

```math
\boxed{
DTC.A_{\mathfrak p}
\text{ for every }
\mathfrak p\in\mathscr P_{\rm req}
}
\qquad\text{and}\qquad
\boxed{\mathsf{End}_{NS}}.
\tag{DTC.34}
```

The endpoint block `\mathsf{End}_{NS}` is recorded in
[mpp-class-membership-endpoint-matrix-closure-contract-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-matrix-closure-contract-note.md):
`(Part,Dead)` is installed, while `END.Exh`, `END.Pack`, `END.Field`,
`END.Tower`, and `END.Cross` remain open. The two sharp analytic residues are
the direct `L^1` coefficient theorem `(DTC.7f)` and the endpoint-matrix package
`END.Exh + \mathfrak A_{N,Q}\in L^\infty(I) + END.Cross`, with the simple
bounded-gauge exclusions `END.Pack` and `END.Field` formal once their inputs are
installed.

## Current Formal Breakdown

The receiver-side chain is now:

```math
DTC.LINEAR_{\mathfrak p}
+
DTC.PRE_{\mathfrak p}
\Longrightarrow
DTC.A_{\mathfrak p}.
\tag{DTC.35}
```

Here `DTC.LINEAR` is the direct moving-center differential inequality and
`DTC.PRE` is the noncircular `L^1` coefficient package. If the moving-center
identity/commutator estimate is treated as a formal PDE computation, then the
remaining coefficient work is exactly:

```math
DTC.PRE_{\mathfrak p}
\equiv
DTC.V_{\mathfrak p}
+
DTC.M_{\mathfrak p}
+
DTC.P_{\mathfrak p}
+
DTC.F_{\mathfrak p}.
\tag{DTC.36}
```

The sharper reduction is:

```math
DTC.M\text{-}Linear_{\mathfrak p}
\Longrightarrow
DTC.M_{\mathfrak p}^{\infty}
\Longrightarrow
DTC.V_{\mathfrak p}
+
DTC.M_{\mathfrak p}
+
DTC.P_{\mathfrak p}
+
DTC.F_{\mathfrak p}
\Longrightarrow
DTC.PRE_{\mathfrak p}.
\tag{DTC.36a}
```

Thus `DTC.M-Linear`, not the whole four-cell list, is the surviving hard
analytic theorem in the direct transported-center block.

Across the finite required parameter set,

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
DTC.A_{\mathfrak p}
\Longrightarrow
ULCI(\mathscr P_{\rm req}).
\tag{DTC.37}
```

Consequently the receiver side is formal after
`DTC.LINEAR + DTC.M-Linear`. The full lane then still spends `(FCI.5f)` in the
collar/one-field assembly unless that source-side theorem is separately
promoted as installed.

With `(FCI.5f)` installed, the remaining theorem work is:

```math
\boxed{
DTC.M\text{-}Linear
}
\qquad
\text{and}
\qquad
\boxed{
END.Exh+END.TowerAmp+END.Cross.
}
\tag{DTC.38}
```

Without that source-side promotion, the honest terminal list is:

```math
\boxed{DTC.M\text{-}Linear}
+
\boxed{(FCI.5f)}
+
\boxed{END.Exh+END.TowerAmp+END.Cross}.
\tag{DTC.39}
```

Here `END.TowerAmp` denotes the actual tower-amplitude input
`\mathfrak A_{N,Q}\in L^\infty(I)`. The definition-level implication
`END.TowerAmp => \neg tower-blown` is formal and recorded in the endpoint
matrix note as `END.TowerBound`.
