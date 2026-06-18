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

The displayed multiplier structure of `(DTC.7a)` is:

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
\le
C_{\mathrm{DTC,old}}
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
cutoff, pressure-response, and residual-forcing cells are conditional
consequences of the local tower carrier once the tower carrier is controlled
in the stronger pointwise-in-time form.

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
\le
C_{\mathrm{DTC,M}}
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
unproved coefficients inside `DTC.LINEAR` reintroduces the same
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

Thus the theorem-facing estimate has the form

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
local affine middle block has the form

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
conclusion recreates the circular bootstrap marked in `(ACT.Bad)`.

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

where local same-rung derivative factors are controlled by Young inequalities
whose total dissipative leakage is part of the displayed
`\varepsilon\nu\mathcal D_r^{aff}` margin, and harmonic tails are supplied by
far-tail ledgers. If the local pressure response uses `CSP.A`, this stage
estimate is circular.

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
`L^1` coefficient demand by a scale-small affine-excess coefficient margin. This route
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

Call the pre-pressure bridge `ACT.Actr_core`. It is not bookkeeping: it is the
conditional affine-center Gronwall theorem that converts the direct lower
center-forcing ledger `ACT.Kcore` into the bounded core center-amplitude
coefficient spent by `ACT.X-Press_energy`.

For `ACT.Actr_core`, the core ledger is:

```math
\mathcal A_{\mathrm{core}}^{ctr}
:=
1
+
\mathfrak A_{0,\rho,\psi}^{ctr}
+
\mathfrak A_{1,\rho,\psi}^{ctr}
+
\sum_{q=2}^{m}\sum_j|\widetilde U_{q,j}|.
\tag{DTC.AFF-Actr0a}
```

Here

```math
\mathfrak A_{0,\rho,\psi}^{ctr}:=\sum_j|U_0(c_j,t)|,
\qquad
\mathfrak A_{1,\rho,\psi}^{ctr}:=\sum_j|A_j(t)|,
\qquad
A_j(t):=U_1(c_j(t),t).
\tag{DTC.AFF-Actr0a1}
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

The honest noncircular theorem is:

```math
ACT.Actr_{\mathrm{core}}:
\quad
\text{finite seed center data}
+
\Gamma_\sharp\in L^\infty(I)
+
\mathcal K_{\le m}^{ctr}\in L^1(I)
\Longrightarrow
\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I).
\tag{DTC.AFF-Actr1}
```

The buffer modes are not a pre-pressure coefficient ledger. They are readout
and top-viscous buffer modes inside `\mathcal Y^{read}`:

```math
ACT.KX
+
ACT.Actr_{\mathrm{core}}
\Longrightarrow
\mathcal A_{\mathfrak p}^{ctr}\in L^\infty(I)
\quad\text{through }\mathcal Y^{read}.
\tag{DTC.AFF-Actr1a}
```

If one insists on proving `\mathcal A_{\mathrm{buf}}^{ctr}` before
`ACT.KX`, then an additional external top-forcing input is required:

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
\frac{d}{dt}|U_0(c_j,t)|
\le
|K_0(c_j,t)|.
\tag{DTC.AFF-Actr2}
```

For `q=1`, the affine-frame identity gives

```math
\dot A_j=-A_j^2+\mathcal E_j^{(1)},
\qquad
\ddot G_j=\mathcal E_j^{(1)}G_j,
\qquad
A_j=\dot G_jG_j^{-1}.
\tag{DTC.AFF-Actr3}
```

The pack gauge bounds `G_j` and `G_j^{-1}`. Thus
`\sum_j|\mathcal E_j^{(1)}|\in L^1(I)` gives `\ddot G_j\in L^1(I)`;
finite seed data gives `\dot G_j\in L^\infty(I)`, and therefore
`\mathfrak A_1^{ctr}\in L^\infty(I)` from `A_j=\dot G_jG_j^{-1}`.

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

For `q=2`, the middle sum is empty, so
`\sum_j|\widetilde U_{2,j}|` is bounded by finite seed data plus
`\int_I\sum_j|\widetilde K_{2,j}|`. Inductively, once all lower rungs
`2,\ldots,q-1` are in `L^\infty(I)`, every product in `(DTC.AFF-Actr5)` is
integrable on the finite interval, and
`\sum_j|\widetilde K_{q,j}|\in L^1(I)` gives
`\sum_j|\widetilde U_{q,j}|\in L^\infty(I)`. This closes
`2\le q\le m` and proves `ACT.Actr_core`.

The top rungs `m+1,m+2` are not licensed as pre-pressure coefficients by this
lower induction. This proves the bridge
`\mathcal K_{\le m}^{ctr}\in L^1(I) => \mathcal A_{\mathrm{core}}^{ctr}\in
L^\infty(I)` under finite seed center data and `\Gamma_\sharp\in L^\infty(I)`.
The remaining live obligation beneath `ACT.Actr_core` is exactly the direct
lower center-forcing statement `\mathcal K_{\le m}^{ctr}\in L^1(I)`.

Name the supplier for this forcing ledger:

```math
ACT.Kcore:
\quad
\mathcal K_{\le m}^{ctr}\in L^1(I).
\tag{DTC.AFF-Kcore0}
```

Its native split is

```math
ACT.Kcore
=
K0.Core
+
E1.Aff
+
Kmid.Core.
\tag{DTC.AFF-Kcore1}
```

The native forcing bridge beneath this ledger is:

```math
NKF.A:
\quad
\mathcal P_{\le m}^{ctr,nat}\in L^1(I_r)
\Longrightarrow
K0.Core+E1.Aff+Kmid.Core\in L^1(I_r).
\tag{DTC.AFF-NKF1}
```

Here `\mathcal P_{\le m}^{ctr,nat}` is the retained-window center forcing
packet built from the native local pressure response, harmonic tail, and
viscous center readout:

```math
\mathcal P_{\le m}^{ctr,nat}
:=
\mathcal P_{\le m}^{cell}
+
\sum_j\left(|\nabla h_j(c_j)|+|\nabla^2h_j(c_j)|\right)
+
\sum_{q=2}^{m}\sum_j
|\mathcal C_{G_j}^{-1}\nabla^{q+1}h_j(c_j)|
+
K_{\mathrm{visc},core}^{ctr}
+
K_{\mathrm{visc},top}^{ctr}
+
\nu\sum_j\left(|U_2(c_j)|+|U_3(c_j)|\right).
\tag{DTC.AFF-NKF2}
```

The implication `(DTC.AFF-NKF1)` is the direct algebraic consequence of

```math
K_q(c_j)
=
-\nabla^{q+1}p(c_j)+\nu\Delta U_q(c_j)
\tag{DTC.AFF-NKF3}
```

and the bounded frame equivalence from `\Gamma_\sharp\in L^\infty(I_r)`.
For `q=0` this reads `K_0=-\nabla p+\nu\Delta u`; for the first rung the
affine cancellation isolates `\mathcal E_j^{(1)}` from the `-A_j^2` endpoint
term; for `2\le q\le m`, `|\widetilde K_{q,j}|\le C_\sharp |K_q(c_j)|`.

The live PDE content is not `(DTC.AFF-NKF1)` itself but the native pointwise
forcing assertion

```math
NKF.Native:
\quad
\mathcal P_{\le m}^{ctr,nat}\in L^1(I_r).
\tag{DTC.AFF-NKF4}
```

This is a genuine retained-center local forcing theorem, not a consequence of
finite energy alone. The scaling obstruction is direct: take divergence-free
`v\in C_c^\infty(\mathbb R^3)` with
`\nabla^{q+1}R_iR_j(v_iv_j)(0)\ne0` and set
`u_\lambda(x)=\lambda^{3/2}v(\lambda x)`. Then
`\|u_\lambda\|_{L^2}=\|v\|_{L^2}`, while
`p_\lambda=\lambda^3p_v(\lambda x)` and

```math
|\nabla^{q+1}p_\lambda(0)|
=
\lambda^{q+4}|\nabla^{q+1}p_v(0)|
\to\infty.
\tag{DTC.AFF-NKF4scale}
```

Thus finite energy plus `-\Delta p=\partial_i\partial_j(u_iu_j)` cannot bound
the point-center pressure derivatives in `\mathcal P_{\le m}^{ctr,nat}`.

A direct sufficient retained-center condition is:

```math
\sum_j
\|u\|_{L^1_t C^{m+2,\alpha}(B(c_j,r))}
+
\sum_j
\|p\|_{L^1_t C^{m+1,\alpha}(B(c_j,r))}
<\infty.
\tag{DTC.AFF-NKF4ret}
```

The named retained smooth center-ball certificate is the following point-forcing
theorem.

```math
RSCB.NKF:
\qquad
\text{retained smooth center-ball regularity}
\Longrightarrow
\mathcal P_{\le m}^{ctr,nat}\in L^1(I_r).
\tag{DTC.AFF-RSCB0}
```

On a retained window `I_r`, assume there is `\rho_r>0` such that each
transported center tube

```math
B_j(t):=B(c_j(t),2\rho_r),
\qquad
c_j(t)=\Phi(a^j,t),
\tag{DTC.AFF-RSCB0a}
```

stays inside a retained smooth region and

```math
\sum_j
\|u\|_{L^1_t C^{m+2,\alpha}(B_j(t))}
+
\sum_j
\|p\|_{L^1_t C^{m+1,\alpha}(B_j(t))}
<\infty.
\tag{DTC.AFF-RSCB0b}
```

For this certificate, read the native center forcing packet as the point
pressure/viscous package

```math
\mathcal P_{\le m}^{ctr,nat}(t)
:=
\sum_{j=1}^{J}\sum_{q=0}^{m}
\left(
|\nabla^{q+1}p(c_j(t),t)|
+
\nu|\Delta U_q(c_j(t),t)|
\right).
\tag{DTC.AFF-RSCB0c}
```

Then, for `0\le q\le m`,

```math
|\nabla^{q+1}p(c_j(t),t)|
\le
\|p(\cdot,t)\|_{C^{m+1}(B(c_j(t),2\rho_r))},
\tag{DTC.AFF-RSCB1}
```

and, using the repo tower convention that `U_q` is the `q`-th spatial derivative
tower rung,

```math
|\Delta U_q(c_j(t),t)|
\le
C_q\|u(\cdot,t)\|_{C^{q+2}(B(c_j(t),2\rho_r))}
\le
C_q\|u(\cdot,t)\|_{C^{m+2}(B(c_j(t),2\rho_r))}.
\tag{DTC.AFF-RSCB2}
```

Summing in `j` and `q` gives

```math
\mathcal P_{\le m}^{ctr,nat}(t)
\le
C_{m,J,\nu}
\left(
\sum_j\|p(\cdot,t)\|_{C^{m+1}(B(c_j(t),2\rho_r))}
+
\sum_j\|u(\cdot,t)\|_{C^{m+2}(B(c_j(t),2\rho_r))}
\right),
\tag{DTC.AFF-RSCB3}
```

which is integrable on `I_r` by `(DTC.AFF-NKF4ret)`. Thus
`RSCB.NKF` proves `\mathcal P_{\le m}^{ctr,nat}\in L^1(I_r)`. Since

```math
K_q(c_j)
=
-\nabla^{q+1}p(c_j)+\nu\Delta U_q(c_j),
\tag{DTC.AFF-RSCB4}
```

and the affine frame conversion is bounded by `\Gamma_\sharp`, this gives

```math
K0.Core+E1.Aff+Kmid.Core
\le
C_\sharp\mathcal P_{\le m}^{ctr,nat}.
\tag{DTC.AFF-RSCB5}
```

Therefore

```math
RSCB.NKF
\Longrightarrow
ACT.Kcore
\Longrightarrow
ACT.Actr_{\mathrm{core}}.
\tag{DTC.AFF-RSCB6}
```

`RSCB.NKF` is the live certificate for the native forcing packet. The mollified
route below is a compatible realization/check of the same retained center
forcing input without treating pointwise pressure derivatives as finite-energy
consequences.

The noncircular sufficient route is a mollified forcing bridge plus retained
smooth point recovery:

```math
NKF.Moll:
\quad
\mathcal K_{\le m}^{ctr,[r]}\in L^1(I_r),
\qquad
NKF.Point:
\quad
\mathcal K_{\le m}^{ctr,[r]}\to\mathcal K_{\le m}^{ctr}
\text{ in }L^1(I_r),
\tag{DTC.AFF-NKF4a}
```

Fix a retained window `I_r=[a,b]` and a radius `\rho_r>0` such that
`B(c_j(t),2\rho_r)` stays inside the retained smooth region for
`t\in I_r`. For `0<r<\rho_r`, define transported mollifiers

```math
\varphi_{j,r}(x,t)=r^{-3}\varphi((x-c_j(t))/r).
\tag{DTC.AFF-NKF4b}
```

For any field `f`, write

```math
f_j^{[r]}(t):=\int\varphi_{j,r}(x,t)f(x,t)\,dx.
\tag{DTC.AFF-NKF4b1}
```

The mollified core forcing ledger is

```math
\mathcal K_{\le m}^{ctr,[r]}(t)
:=
\sum_j|K_{0,j}^{[r]}|
+
\sum_j|\mathcal E_j^{(1),[r]}|
+
\sum_{q=2}^{m}\sum_j|\widetilde K_{q,j}^{[r]}|.
\tag{DTC.AFF-NKF4b2}
```

For the pressure part of `K_q=-\nabla^{q+1}p+\nu\Delta U_q`,

```math
P_{q,j}^{[r]}
:=
\int \varphi_{j,r}\nabla^{q+1}p
=
(-1)^{q+1}\int \nabla^{q+1}\varphi_{j,r}\,p,
\tag{DTC.AFF-NKF4c}
```

and retained smoothness directly gives

```math
|P_{q,j}^{[r]}(t)|
\le
\|\nabla^{q+1}p(\cdot,t)\|_{L^\infty(B(c_j,r))}
\le
\|p(\cdot,t)\|_{C^{m+1}(B(c_j,2\rho_r))}.
\tag{DTC.AFF-NKF4c1}
```

Equivalently, the local split `p=p_{j,r}^{loc}+h_{j,r}` gives a fixed-radius
Calderon-Zygmund response for the local term and the energy-controlled far-tail
estimate

```math
|\nabla^{q+1}h_{j,r}|
\le
C_{q,r}\|u(\cdot,t)\|_{L^2}^2.
\tag{DTC.AFF-NKF4d}
```

For the viscous part, either estimate directly from retained smoothness or
integrate by parts onto the mollifier:

```math
\nu\int\varphi_{j,r}\Delta U_q
=
\nu\int\Delta\varphi_{j,r}\,U_q,
\tag{DTC.AFF-NKF4e}
```

and

```math
\left|\int\varphi_{j,r}\Delta U_q\right|
\le
\|\Delta U_q(\cdot,t)\|_{L^\infty(B(c_j,r))}
\le
\|u(\cdot,t)\|_{C^{q+2}(B(c_j,2\rho_r))}.
\tag{DTC.AFF-NKF4e1}
```

The retained condition `(DTC.AFF-NKF4ret)` therefore gives
`\mathcal K_{\le m}^{ctr,[r]}\in L^1(I_r)` for each fixed
`0<r<\rho_r`.

For point recovery, if `f\in L^1_tC^{0,\alpha}(B(c_j,\rho_r))`, then

```math
|f(c_j(t),t)-f_j^{[r]}(t)|
\le
C r^\alpha [f(\cdot,t)]_{C^{0,\alpha}(B(c_j,r))}.
\tag{DTC.AFF-NKF4f}
```

Apply this to the finitely many components of `K_q`, to
`\mathcal E_j^{(1)}`, and to the bounded affine-frame transformed center
components. Retained smoothness gives the required `L^1_tC^{0,\alpha}`
seminorms, so choose `r` so that

```math
\|\mathcal K_{\le m}^{ctr}-\mathcal K_{\le m}^{ctr,[r]}\|_{L^1(I_r)}
<\epsilon.
\tag{DTC.AFF-NKF4f1}
```

Thus

```math
RSCB.NKF
\Longrightarrow
NKF.Moll+NKF.Point
\Longrightarrow
NKF.Native
\Longrightarrow
NKF.A
\Longrightarrow
ACT.Kcore.
\tag{DTC.AFF-NKF4g}
```

This route uses retained smooth center-ball regularity plus direct local
pressure/viscous response, without spending `ACT.Actr_core`, `AXP.A`, `LCI.A`,
`CSP.A`, `OFP.A`, or `Field`.

The pressure-core dependency order is not a strictly pre-bootstrap
`ACT.X-Press_cell => ACT.Kcore` chain. The pre-bootstrap object is the native
normal-form identity and its in-bootstrap estimates:

```math
NKF.Native
\quad+\quad
NKF.Ann
\quad+\quad
NKF.Quad
\Longrightarrow
ACT.X\text{-}Press_{cell}\ \text{after }ACT.KX.
\tag{DTC.AFF-Kcore1a}
```

The cell form of the pressure theorem is:

```math
ACT.X\text{-}Press_{cell}:
\quad
\mathcal P_{\le m}^{cell}\in L^1(I),
\tag{DTC.AFF-Kcore1b}
```

It is now understood as a post-`ACT.KX` `L^1` readout from the native
normal-form pressure identity, not as a pre-bootstrap supplier and not as a
closed consequence of finite energy alone.

Fix one center and write

```math
z:=x-c_j(t),
\qquad
u_j^{aff}(x,t):=u(c_j,t)+A_j(t)z,
\qquad
A_j(t):=U_1(c_j(t),t).
\tag{DTC.AFF-Kcore1b0}
```

Define

```math
w_j(x,t):=u(x,t)-u_j^{aff}(x,t),
\qquad
w_j(c_j,t)=0,
\qquad
\nabla w_j(c_j,t)=0.
\tag{DTC.AFF-Kcore1b1}
```

Use the pressure split

```math
p=p_j^{loc}+h_j,
\qquad
-\Delta p_j^{loc}
=
\partial_a\partial_b(\eta_j u_a u_b).
\tag{DTC.AFF-Kcore1b2}
```

Define the native affine pressure model by matching center-cell functionals,
not merely by solving for the pure affine polynomial pressure. Let

```math
\Lambda_{r,j}f:=\nabla^r f(c_j).
\tag{DTC.AFF-Kcore1b3}
```

The normal-form pressure `p_j^{aff}` is defined by

```math
\Lambda_{r,j}p_j^{aff}
=
\Lambda_{r,j}
(-\Delta)^{-1}\partial_a\partial_b
\left[
\eta_j
\left(
u_j^{aff}\otimes u_j^{aff}
+
2u_j^{aff}\odot w_j
\right)
\right],
\qquad
0\le r\le m+1.
\tag{DTC.AFF-Kcore1b4}
```

Thus `p_j^{aff}` annihilates both the affine and affine-linear pressure modes in
the center-cell functionals. Define

```math
\pi_j^{loc}:=p_j^{loc}-p_j^{aff}.
\tag{DTC.AFF-Kcore1b5}
```

The native residual cell identity is

```math
\Lambda_{r,j}\pi_j^{loc}
=
\Lambda_{r,j}
(-\Delta)^{-1}\partial_a\partial_b
\left(\eta_j w_j\otimes w_j\right)
+
\Lambda_{r,j}\Pi_j^{ann},
\qquad
0\le r\le m+1.
\tag{DTC.AFF-Kcore1b6}
```

Here `\Pi_j^{ann}` is the projected annular remainder of
`\eta_j w_j\otimes w_j`, after native affine and affine-linear pressure modes
are removed. Harmonic/far-tail terms are assigned to their separate energy
ledger. This is the noncircular pressure-core rule: the `A_jw_j` cross
coefficient is removed from the cell estimate, so `ACT.X-Press_cell` does not
spend `ACT.Actr_core`.

With

```math
\mathcal P_{\le m}^{cell}
:=
\sum_j|\nabla\pi_j^{loc}(c_j)|
+
\sum_j|\nabla^2\pi_j^{loc}(c_j)|
+
\sum_{q=2}^{m}\sum_j
|\mathcal C_{G_j}^{-1}\nabla^{q+1}\pi_j^{loc}(c_j)|
+
\mathcal T_{\le m}^{press,far}.
\tag{DTC.AFF-Kcore1c}
```

The projected annular cutoff ledger is defined by

```math
\mathcal P_{\mathfrak p}^{ann,proj}(t)
:=
\sum_j
\sum_{r=0}^{m+1}
\sum_{|\gamma|\le r+2}
\left\|
\nabla^\gamma
\left(w_j\otimes w_j\right)
\right\|_{L^1(A_j^{ann})},
\qquad
A_j^{ann}:=\operatorname{supp}\nabla\eta_j.
\tag{DTC.AFF-Kcore1d}
```

Since `A_j^{ann}` is separated from the center by a fixed fraction of the
pressure radius, the pressure kernel is smooth there. Thus

```math
\sum_{j,r}|\Lambda_{r,j}\Pi_j^{ann}|
\le
C_{\mathfrak p}\mathcal P_{\mathfrak p}^{ann,proj}(t).
\tag{DTC.AFF-Kcore1d1}
```

The finite annular product estimate gives

```math
\mathcal P_{\mathfrak p}^{ann,proj}(t)
\le
C_{\mathfrak p}
\left(
X_{exc}^{1/2}N^{1/2}
+
X_{exc}
\right).
\tag{DTC.AFF-Kcore1d1a}
```

Hence the in-bootstrap annular cell is

```math
NKF.Ann:
\quad
\sum_{j,r}|\Lambda_{r,j}\Pi_j^{ann}|
\le
\varepsilon N
+
C_\varepsilon X_{exc}.
\tag{DTC.AFF-Kcore1d1b}
```

For the native residual core, define `\pi_j^{quad}` by

```math
-\Delta\pi_j^{quad}
=
\partial_a\partial_b(\eta_j w_{j,a}w_{j,b}).
\tag{DTC.AFF-Kcore1d2}
```

Fixed-ball Calderon-Zygmund plus the finite product estimate gives the
pointwise-in-time in-bootstrap quadratic cell

```math
NKF.Quad:
\quad
|\nabla^r\pi_j^{quad}(c_j)|
\le
C_{\mathfrak p}
\|w_j\otimes w_j\|_{H^{r+1}(B_j)}
\le
C_{\mathfrak p}
X_{exc}^{1/2}N^{1/2}.
\tag{DTC.AFF-Kcore1d3}
```

The harmonic/far-tail ledger satisfies

```math
\mathcal T_{\le m}^{press,far}
\le
C_{\mathfrak p,R}\|u(\cdot,t)\|_{L^2}^2
\in L^\infty(I)\subset L^1(I).
\tag{DTC.AFF-Kcore1e}
```

Combining `NKF.Quad`, `NKF.Ann`, and the far-tail bound gives the pointwise cell
estimate

```math
\mathcal P_{\le m}^{cell}
\le
C_{\mathfrak p}X_{exc}^{1/2}N^{1/2}
+
C_{\mathfrak p}X_{exc}
+
C_{\mathfrak p}\|u(\cdot,t)\|_{L^2}^2.
\tag{DTC.AFF-Kcore1f}
```

Therefore the `L^1` cell theorem is a bootstrap readout:

```math
ACT.X\text{-}Boot
\quad+\quad
NKF.Ann
\quad+\quad
NKF.Quad
\quad+\quad
\text{energy far-tail}
\Longrightarrow
ACT.X\text{-}Press_{cell},
\tag{DTC.AFF-Kcore1g0}
```

or explicitly,

```math
X_{exc}\in L^\infty(I),
\qquad
N\in L^1(I)
\Longrightarrow
\mathcal P_{\le m}^{cell}\in L^1(I).
\tag{DTC.AFF-Kcore1g}
```

This is the pressure component of `NKF.Native`: the center pressure-cell
functionals annihilate the affine and affine-linear source modes, leaving only
quadratic affine excess plus projected annular/harmonic/far-tail terms.
`NKF.Ann` and `NKF.Quad` are in-bootstrap estimates; their `L^1` consequences
are not available before `ACT.KX`.

Equivalently, the solved pressure-cell block is

```math
NKF.Native
+
NKF.Ann
+
NKF.Quad
+
ACT.X\text{-}Boot
+
\text{energy far-tail}
\Longrightarrow
ACT.X\text{-}Press_{cell}.
\tag{DTC.AFF-Kcore1h}
```

The zero-rung supplier is

```math
K0.Core:
\quad
\sum_j|\nabla\pi_j^{loc}(c_j)|
+
\sum_j|\nabla h_j(c_j)|
+
\nu\sum_j|U_2(c_j)|
\in L^1(I).
\tag{DTC.AFF-Kcore2}
```

The first-rung affine supplier is

```math
E1.Aff:
\quad
\sum_j|\nabla^2\pi_j^{loc}(c_j)|
+
\sum_j|\nabla^2h_j(c_j)|
+
\nu\sum_j|U_3(c_j)|
\in L^1(I).
\tag{DTC.AFF-Kcore3}
```

The lower center forcing supplier is

```math
Kmid.Core:
\quad
K_{\mathrm{press},\le m}^{ctr}
+
K_{\mathrm{visc},core}^{ctr}
+
K_{\mathrm{visc},top}^{ctr}
\in L^1(I).
\tag{DTC.AFF-Kcore4}
```

Here

```math
K_{\mathrm{press},\le m}^{ctr}
:=
\sum_{q=2}^{m}
\sum_j
|\mathcal C_{G_j}^{-1}\nabla^{q+1}\pi_j^{loc}(c_j)|
+
\sum_{q=2}^{m}
\sum_j
|\mathcal C_{G_j}^{-1}\nabla^{q+1}h_j(c_j)|
\tag{DTC.AFF-Kcore5}
```

belongs to `ACT.X-Press_cell`,

```math
K_{\mathrm{visc},core}^{ctr}
:=
\nu
\sum_{q=2}^{m-2}
\sum_j
|\mathcal C_{G_j}^{-1}\Delta U_q(c_j)|
\tag{DTC.AFF-Kcore6}
```

is core-controlled through the `q+2` rungs, and

```math
K_{\mathrm{visc},top}^{ctr}
:=
\nu\sum_j
\left(
|U_{m+1}(c_j)|
+
|U_{m+2}(c_j)|
\right)
\tag{DTC.AFF-Kcore7}
```

is a forcing/readout supplier, not a pre-pressure amplitude ledger. This is the
point of the core/buffer split: `A_buf` is not promoted to `ACT.Actr_core`.

Thus `ACT.Kcore` is a ledger identity plus three supplier cells:

```math
\boxed{
K0.Core+E1.Aff+Kmid.Core
\Longrightarrow
\mathcal K_{\le m}^{ctr}\in L^1(I).
}
\tag{DTC.AFF-Kcore8}
```

Combined with the conditional core-amplitude theorem,

```math
ACT.Kcore
\Longrightarrow
\mathcal K_{\le m}^{ctr}\in L^1(I)
\Longrightarrow
ACT.Actr_{\mathrm{core}}.
\tag{DTC.AFF-Kcore9}
```

The pressure cells in `K0.Core`, `E1.Aff`, and
`K_{\mathrm{press},\le m}^{ctr}` are discharged only after `ACT.KX`
converts `NKF.Quad` into an `L^1` pressure-cell ledger. The energy form
`ACT.X-Press_energy` is therefore an in-bootstrap atom of `AXE.A`, not a theorem
that waits for `ACT.Actr_core`.

Route-license caution. The bound

```math
K0.Core+E1.Aff+Kmid.Core
\le
C_{\mathrm{Kcore}}
\left(
1+(\mathcal A_{\mathrm{core}}^{ctr})^2
+(\mathfrak H^{osc,\alpha})^2
+Y_{\mathrm{read}}
+|u_0|_{L^2}^2
\right)
\tag{DTC.AFF-Kcore10}
```

is a valid post-readout estimate after `ACT.Actr_core`, `AXP.A`, and
`Y_{\mathrm{read}}\in L^\infty` are already available. It is not a proof of the
pre-pressure supplier `ACT.Kcore`, because the ordered route uses `ACT.Kcore`
to obtain `ACT.Actr_core`. Promoting `(DTC.AFF-Kcore10)` to `ACT.Kcore` spends
the core amplitude and readout package that `ACT.Kcore` is supposed to
feed. A noncircular closure must either prove the native supplier cells
`K0.Core`, `E1.Aff`, and `Kmid.Core` directly before `ACT.Actr_core`, or replace
the ordered route by an explicitly named simultaneous core/excess bootstrap
theorem.

Let

```math
\mathcal X(t):=\mathcal X^{exc}(t)
\quad\text{for the first-exit small excess part}
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
\le
C_{\mathrm{X7}}
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

Set

```math
\eta_X:=\left(\frac{c_\nu}{4(C_{cut}+C_{press})}\right)^2.
\tag{DTC.AFF-X9}
```

If on the interval under consideration

```math
\left(
\eta_X+\int_{t_0}^{t_1}F(s)\,ds
\right)
\exp\left(
\int_{t_0}^{t_1}L(s)\,ds
\right)
\le
2\eta_X,
\tag{DTC.AFF-X10}
```

and `\mathcal X(t_0)\le\eta_X`, then the first-exit argument gives

```math
\sup_{t\in[t_0,t_1]}\mathcal X(t)\le2\eta_X,
\qquad
\int_{t_0}^{t_1}\mathcal N(t)\,dt<\infty.
\tag{DTC.AFF-X11}
```

Indeed, before the first time when `\mathcal X=4\eta_X`, the definition
`(DTC.AFF-X9)` gives
```math
(C_{cut}+C_{press})\mathcal X^{1/2}
\le
(C_{cut}+C_{press})(4\eta_X)^{1/2}
=\frac{c_\nu}{2}.
```
Thus the square-root excess term moves to the dissipative side of
`(DTC.AFF-X4)` with half of the \(c_\nu\mathcal N\) margin left, and Gronwall
plus `(DTC.AFF-X10)` prevents the exit.

Therefore:

```math
ACT.ScaleSmall:
\quad
(DTC.AFF-X4)+(DTC.AFF-X9)+(DTC.AFF-X10)+ACT.X\text{-}Scale
\Longrightarrow
\mathcal X^{exc}\in L^\infty
\quad\text{and}\quad
\mathcal N\in L^1
\text{ on the chosen affine interval.}
\tag{DTC.AFF-X12}
```

#### Named `ACT.X-*` Subtheorem Ledger

The scale-small branch is recorded as a sequence of named atoms. The important
correction is that the full readout packet and the small bootstrap packet are
different objects.

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
retained for raw tower readout but are not part of the first-exit smallness
variable. The only smallness spend is the first-exit condition
`(C_{cut}+C_{press})(\mathcal X^{exc})^{1/2}\le c_\nu/2`.

The normalized dissipation is

```math
\mathcal N(t)
:=
\sum_{j=1}^{J}\sum_{q=0}^{m+2}
\sum_{|\beta|\le2}
\|\zeta\nabla_R^\beta\nabla_R R_{q,j}(t)\|_{\bar L^2_y}^2.
\tag{DTC.AFF-XDef3}
```

The affine-excess line inside `ACT.KX` is

```math
\frac{d}{dt}\mathcal X^{exc}
+
c_\nu\mathcal N
\le
\left(
L_0(t)+C\mathcal A_{\mathrm{core}}^{ctr}(t)
\right)\mathcal X^{exc}
+
C_X(\mathcal X^{exc})^{1/2}\mathcal N
+
F_0(t),
\qquad
L_0,F_0\in L^1(I).
\tag{DTC.AFF-XEnergy}
```

It is proved by the four estimates:

```math
ACT.X\text{-}MidRaw:
\quad
|\mathcal T_{mid}|
\le
\varepsilon\mathcal N
+
\left(
L_{mid,0}(t)+C\mathcal A_{\mathrm{core}}^{ctr}(t)
\right)\mathcal X^{exc}
+
F_{mid,0}(t),
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
ACT.X\text{-}Press_{energy}:
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
\tag{DTC.AFF-XPressEnergy}
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

#### Theorem `AXE.A` (Affine-Excess Line Inside `ACT.KX`)

The four local atoms used to prove the affine-excess line of `ACT.KX` are:

```math
AXE.1=ACT.X\text{-}MidRaw:
\quad
|\mathcal T_{mid}|
\le
\varepsilon\mathcal N
+
\left(
L_{mid,0}(t)
+
C\mathcal A_{\mathrm{core}}^{ctr}(t)
\right)
\mathcal X^{exc}
+
F_{mid,0}(t),
\qquad
L_{mid,0},F_{mid,0}\in L^1(I).
\tag{AXE.1}
```

Here the endpoint `U_1(c_j)U_q` action is absent by the affine-frame
cancellation, `q=0,1,2` have no middle block, and for `q\ge3` every middle
interaction is finite-depth triangular. However the local remainder expansion
contains genuine zero-mode linear terms

```math
\widetilde U_{\ell,j}R_{q+1-\ell,j}
+
R_{\ell,j}\widetilde U_{q+1-\ell,j}.
\tag{AXE.1a}
```

These terms are coefficients in the affine-excess equation. They are controlled
by the live core center amplitude in the same theorem block, not by pretending
they are external `L^1` data. A theorem `ACT.X-MidNF` that removes these terms by
a new nonlinear normal form is a separate possible route; it is not installed in
the present packet.

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

The pressure part of `AXE.2` is the in-bootstrap energy form
`ACT.X-Press_energy`. It uses the same native normal-form identity as
`NKF.Quad`; it does not wait for `ACT.Kcore` or `ACT.Actr_core`. Use the local split
`p=p_j^{loc}+h_j`, with

```math
-\Delta p_j^{loc}
=
\partial_a\partial_b(\eta_j u_a u_b).
\tag{AXE.2a}
```

On the affine ball, write

```math
u(x,t)
=
b_j(t)+A_j(t)(x-c_j(t))+w_j(x,t),
\qquad
b_j(t):=u(c_j(t),t),
\quad
A_j(t):=U_1(c_j(t),t),
\tag{AXE.2b}
```

where

```math
w_j(c_j(t),t)=0,
\qquad
\nabla w_j(c_j(t),t)=0.
\tag{AXE.2c}
```

The first-rung affine excess represents `w_j` in the frame coordinates. In the
scale-normalized affine packet,

```math
\|w_j\|_{H^2(B_j)}
+
\|\nabla w_j\|_{H^1(B_j)}
\le
C(\mathcal X_j^{exc})^{1/2},
\qquad
\|w_j\|_{H^{q+2}(B_j)}
\le
C\left(\mathcal N_j^{1/2}+(\mathcal X_j^{exc})^{1/2}\right)
\tag{AXE.2c0}
```

for the finite pressure depths used in the packet. The center-affine
coefficients are not spent as pressure coefficients here: the native normal
form removes their center-cell pressure modes, and the annular remnant is
carried by the projected annular pressure ledger.

After native affine normal-form subtraction, the local pressure variable in the
energy atom is the residual

```math
\pi_j^{loc}=p_j^{loc}-p_j^{aff},
\qquad
\Lambda_{r,j}p_j^{aff}
=
\Lambda_{r,j}(-\Delta)^{-1}\partial_a\partial_b
\left[
\eta_j\left(u_j^{aff}\otimes u_j^{aff}
+2u_j^{aff}\odot w_j\right)
\right].
\tag{AXE.2c1}
```

Thus the center-cell pressure functionals have no affine-affine or
affine-remainder core. The residual equation is

```math
\Lambda_{r,j}\pi_j^{loc}
=
\Lambda_{r,j}(-\Delta)^{-1}\partial_a\partial_b
\left(\eta_j w_j\otimes w_j\right)
+
\Lambda_{r,j}\Pi_j^{ann}.
\tag{AXE.2c2}
```

For the quadratic residual piece, the fixed-ball product estimate gives

```math
\|P_{quad}\|_{H^{q+2}(2B_j)}
\le
C_{\mathfrak p,q}
\|w_j\|_{H^2(B_j)}
\|w_j\|_{H^{q+2}(B_j)}
\le
C_{\mathfrak p,q}
(\mathcal X_j^{exc})^{1/2}\mathcal N_j^{1/2}
+
C_{\mathfrak p,q}\mathcal X_j^{exc}.
\tag{AXE.2c3}
```

After pairing with `R_{q,j}`, the first term is bounded by
`C\mathcal X_j^{exc}\mathcal N_j^{1/2}`. The anchored scale-normalized
Poincare estimate in `ACT.X-Def` gives
`\mathcal X_j^{exc}\le C_R\mathcal N_j` on the supported affine excess, hence

```math
|\mathcal T_{press}^{quad}|
\le
C_{\mathrm{press}}(\mathcal X_j^{exc})^{1/2}\mathcal N_j
+
L_{rr}(t)\mathcal X_j^{exc}
+
F_{rr}(t).
\tag{AXE.2c4}
```

The annular part is separated from the center, so the pressure kernel is smooth
on its support. After the native affine normal-form projection, the annular
energy ledger contains only the quadratic remainder

```math
\mathcal P_{\mathfrak p}^{ann,proj}
:=
\sum_j\sum_{r=0}^{m+1}\sum_{|\gamma|\le r+2}
\left\|
\nabla^\gamma
\left(w_j\otimes w_j\right)
\right\|_{L^1(A_j^{ann})},
\tag{AXE.2c5}
```

and the annular contribution satisfies

```math
|\mathcal T_{press}^{ann}|
\le
C_{ann}(\mathcal X^{exc})^{1/2}\mathcal N
+
C_{ann}\mathcal X^{exc}
+
F_{ann}(t),
\qquad
F_{ann}=0
\quad\text{except for separately declared harmonic/far-tail terms}.
\tag{AXE.2c6}
```

Summing over the finite centers and pressure depths gives the local pressure
bound

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
ACT.X\text{-}Press_{energy}:
\quad
NKF.Native
+
NKF.Ann
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

The far-tail half of `ACT.X-Press_energy` is handled by energy. The local
fixed-ball pressure response is reduced by the native affine normal form to the
quadratic residual core plus annular terms; its only non-`L^1` residue is the
scale-small first-exit term
`C_{press}(\mathcal X^{exc})^{1/2}\mathcal N`, spendable only under
`(C_{cut}+C_{press})(\mathcal X^{exc})^{1/2}\le c_\nu/2`.

The top-viscous part of `AXE.2` is separate: it is read from the included
`m+2` buffer modes inside `\mathcal Y^{read}`. In particular,

```math
\|\chi_jU_{m+1}\|_{H^2(B_j)}
+
\|\chi_jU_{m+2}\|_{H^2(B_j)}
\le
C_\sharp
\left(
(\mathcal X_j^{exc})^{1/2}
+
\mathcal A_{\mathrm{buf}}^{ctr}(t)
\right).
\tag{AXE.2h}
```

Pairing with the top energy variables and applying Young gives

```math
|\mathcal T_{topvisc}|
\le
\varepsilon\mathcal N
+
L_{top}(t)\mathcal X^{exc}
+
F_{top}(t),
\qquad
L_{top},F_{top}\in L^1(I),
\tag{AXE.2i}
```

provided the bounded readout packet `\mathcal Y^{read}` supplies the buffer
ledger. Those buffer modes are not licensed as pre-pressure coefficients by
`ACT.Actr_core`; their use here is forcing/readout only. No `LCI.A`, `CSP.A`,
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

Adding `(AXE.1)`--`(AXE.4)` gives the affine-excess line after the displayed
Cauchy--Young parameters are chosen so that the total dissipative leakage is at
most \(c_\nu\mathcal N/4\):

```math
AXE.A:
\quad
AXE.1+AXE.2+AXE.3+AXE.4
\Longrightarrow
{
\frac{d}{dt}\mathcal X^{exc}
+
c_\nu\mathcal N
\le
\left(
L_0(t)+C\mathcal A_{\mathrm{core}}^{ctr}(t)
\right)\mathcal X^{exc}
+
C_X(\mathcal X^{exc})^{1/2}\mathcal N
+
F_0(t)
}.
\tag{AXE.A}
```

Thus `AXE.A` is not a closed pre-core theorem. It is the excess equation inside
the simultaneous core/excess theorem `ACT.KX`.

The only atoms allowed to keep a nonlinear scale-small excess factor are the
moving cutoff atom and the local pressure quadratic-residual atom. The cutoff
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
\le
C_{\mathrm{XCut}}
(\mathcal X^{exc})^{1/2}.
\tag{DTC.AFF-XCut0}
```

The pressure atom contributes the matching term
`C_{press}(\mathcal X^{exc})^{1/2}\mathcal N`, so the bootstrap constant is

```math
C_X:=C_{cut}+C_{press}.
\tag{DTC.AFF-XBoot0}
```

The live theorem is the simultaneous core/excess block

```math
ACT.KX:
\quad
\begin{cases}
\displaystyle
\frac{d}{dt}\mathcal X^{exc}
+
c_\nu\mathcal N
\le
\left(
L_0(t)+C\mathcal A_{\mathrm{core}}^{ctr}(t)
\right)\mathcal X^{exc}
+
C_X(\mathcal X^{exc})^{1/2}\mathcal N
+
F_0(t),
\\[6pt]
\displaystyle
\frac{d}{dt}\mathcal A_{\mathrm{core}}^{ctr}
\le
\mathcal K_{\le m}^{ctr}
+
\mathcal T_{\mathrm{tri}}(\mathcal A_{\mathrm{core}}^{ctr}),
\\[6pt]
\displaystyle
\mathcal K_{\le m}^{ctr}
\le
C\left(
(\mathcal X^{exc})^{1/2}\mathcal N^{1/2}
+
\mathcal X^{exc}
\right)
+
F_K(t),
\end{cases}
\tag{DTC.AFF-KX0}
```

where `L_0,F_0,F_K\in L^1(I)`. The center term
`\mathcal T_{\mathrm{tri}}` is the finite-depth triangular center-mode algebra.
The variable used in the scheduler is

```math
\mathcal J(t)
:=
\mathcal X^{exc}(t)
+
\theta\mathcal A_{\mathrm{core}}^{ctr}(t),
\qquad
0<\theta\ll1,
\tag{DTC.AFF-KX1}
```

but the scale-small coefficient-margin step uses only `\mathcal X^{exc}`:

```math
C_X(\mathcal X^{exc})^{1/2}\mathcal N.
\tag{DTC.AFF-KX2}
```

Thus `\mathcal A_{\mathrm{core}}^{ctr}` travels as a live coefficient and
center ledger, not as a small packet. This is exactly where `ACT.KX` replaces the
linear route

```math
AXE.A
\Longrightarrow
ACT.X\text{-}Boot
\Longrightarrow
ACT.Kcore
\Longrightarrow
ACT.Actr_{\mathrm{core}}.
\tag{DTC.AFF-KX3}
```

The latter route is circular because `ACT.X-MidRaw` contains the zero-mode
linearized middle terms in `(AXE.1a)`.

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
derivative in the packet, the installed affine remainder is locally continuous
after the appropriate center mode is subtracted. For `q=1`, the installed
remainder is `U_1(c_j+G_jy,s_a)-U_1(c_j,s_a)` in the affine frame; subtracting
an additional `\nabla U_1(c_j,s_a)y` gives a different packet, not this
`ACT.X-Scale` theorem. With the installed packet,
`\mathcal X^{exc}(s_a;R)\to0` as `R\downarrow0`; finite centers and rungs allow
one common admissible `R_a`. This uses the shrink-admissibility of the
installed excess weights: for each slot
`R^{\sigma_{\beta,q}}\int_{B_R}|\nabla^\beta R_{q,a}|^2`, the needed
conditions are `\sigma_{\beta,q}+3>0` for derivative slots and
`\sigma_{0,q}+5>0` for zero-order centered excess slots. Any scale-invariant
derivative slot with `\sigma_{\beta,q}=-3` is not part of
`\mathcal X^{exc}`; it belongs in `Y_{\mathrm{read}}`, because radius shrink
does not force it small.

The conditional route theorem `ACT.KX` consumes the resulting scale seed and
the joint small-budget scheduler. Set

```math
\eta_X:=\left(\frac{c_\nu}{4C_X}\right)^2,
\qquad
\text{barrier}=4\eta_X.
\tag{DTC.AFF-XBoot1}
```

Use Young on the core forcing ledger:

```math
(\mathcal X^{exc})^{1/2}\mathcal N^{1/2}
\le
\delta\mathcal N+C_\delta\mathcal X^{exc}.
\tag{DTC.AFF-KX4}
```

Thus the third line of `(DTC.AFF-KX0)` becomes

```math
\mathcal K_{\le m}^{ctr}
\le
\delta\mathcal N
+
C_\delta\mathcal X^{exc}
+
F_K(t).
\tag{DTC.AFF-KX5}
```

This is an in-bootstrap estimate, not a post-readout pressure-cell input.

The `ACT.KX` scheduler is the retained-window theorem

```math
ACT.X\text{-}Seed
+
ACT.X\text{-}Sched
+
ACT.X\text{-}Absorb
\Longrightarrow
\mathcal X^{exc}\in L^\infty(I),
\qquad
\mathcal N\in L^1(I),
\qquad
\mathcal K_{\le m}^{ctr}\in L^1(I),
\qquad
\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I).
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

on every `I_a`, where `L` includes the active coefficient
`L_0+C_A\mathcal A_{\mathrm{core}}^{ctr}` after the center ledger has been
closed on that same interval. Equivalently, the retained partition is chosen so
that the budgets

```math
\int_{I_a}(L_0+C_A\mathcal A_{\mathrm{core}}^{ctr})\,dt,
\qquad
\int_{I_a}F_0\,dt,
\qquad
\int_{I_a}F_K\,dt
\tag{DTC.AFF-XSched2}
```

stay below the fixed coefficient-margin budget. This is why `ACT.KX` is simultaneous:
the center coefficient is not an external pre-bootstrap input.

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
(L_0+C_A\mathcal A_{\mathrm{core}}^{ctr})\mathcal X^{exc}
+
F_0(t).
\tag{DTC.AFF-XAbs2}
```

Meanwhile the center equations are finite-depth triangular:

```math
\frac{d}{dt}\mathcal A_{\mathrm{core}}^{ctr}
\le
\mathcal K_{\le m}^{ctr}
+
\mathcal T_{\mathrm{tri}}(\mathcal A_{\mathrm{core}}^{ctr}),
\qquad
\mathcal K_{\le m}^{ctr}
\le
\delta\mathcal N+C_\delta\mathcal X^{exc}+F_K.
\tag{DTC.AFF-KX6}
```

Rung `q` depends only on lower center rungs and `\mathcal K_q`; finite induction
over `q\le m`, together with `(DTC.AFF-KX6)`, gives
`\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I_a)` and
`\mathcal K_{\le m}^{ctr}\in L^1(I_a)` on the same scheduler interval once the
budget in `(DTC.AFF-XSched2)` is imposed. Inserting this into
`(DTC.AFF-XAbs2)`, Gronwall gives `\mathcal X^{exc}(t)\le2\eta_X`, contradicting
the first exit at `4\eta_X`. Hence `\sup_{I_a}\mathcal X^{exc}\le2\eta_X`, and
integrating `(DTC.AFF-XAbs2)` gives `\mathcal N\in L^1(I_a)`. Summing over the
finite retained partition proves `(DTC.AFF-XBoot2)`.

After `ACT.KX`, `ACT.X-Readout` uses the full readout packet
`\mathcal Y^{read}`: local Morrey gives
`\mathfrak H^{osc,\alpha}\in L^2(I)`, the affine first-rung response gives
`\mathfrak D_1^{aff}\in L^1(I)`, and the local pressure/top-viscous response
through the included `m+2` center modes gives
`\mathfrak F^{ctr,res}\in L^1(I)`. The buffer modes are recovered through the
bounded readout packet `\mathcal Y^{read}` rather than smuggled into the
pre-pressure Gronwall step.

When `ACT.X-Scale` chooses a smaller restart radius, the fixed-radius readout is
not automatic. The compatibility bridge is `RWS.C_scale`: a finite dynamic
same-fluid cover of the required fixed ball by small restarted affine packets,
plus the small-ball full readout packets, recovers the fixed-radius
`EOC/AFD/RCF` readouts. Thus the false implication
`\mathcal X_{small}<\eta_X => \mathcal X_{fixed}<\eta_X` is never used.

#### Theorem `AXP.A` (Affine-Excess Propagation)

The scale-small branch is now recorded as the following theorem. On an affine
retained interval, assume the conditional `ACT.KX` package has been run:

```math
ACT.KX
\tag{AXP.0}
```

with the center zero modes separated into the core/buffer readout ledger rather
than included in the small excess. Choose `\eta_X=(c_\nu/(4C_X))^2`, assume
`ACT.X-Scale` supplies the seed radius at `t_0`, and assume the joint
small-budget condition

```math
\mathcal X^{exc}(t_0;R_0)\le\eta_X,
\qquad
\left(
\eta_X+\int_{t_0}^{t_1}F_0(s)\,ds+\int_{t_0}^{t_1}F_K(s)\,ds
\right)
\exp\left(\int_{t_0}^{t_1}
(L_0(s)+C_A\mathcal A_{\mathrm{core}}^{ctr}(s))\,ds\right)
\le
2\eta_X.
\tag{AXP.1}
```

Then the first-exit/triangular-center argument gives

```math
\mathcal X^{exc}\in L^\infty([t_0,t_1]),
\qquad
\mathcal N\in L^1([t_0,t_1]),
\qquad
\mathcal K_{\le m}^{ctr}\in L^1([t_0,t_1]),
\qquad
\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty([t_0,t_1]).
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
ACT.KX
+
RWS.C_{\mathrm{scale}}
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

This is a propagation theorem for the `DTC.MA-Energy` subledger after the joint
core/excess block. It does not install `(FCI.5f)` and does not discharge the
endpoint matrix. For a full strip, `ACT.KX` needs `ACT.X-Scale` at each retained
restart together with the scheduler budget condition, and `AXP.A` needs
`RWS.C_scale` to recover the required fixed-radius readouts.

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

Placing this term under the affine-excess coefficient margin in `ACT.KX`, while the center
system is controlled by `(DTC.AFF-KX6)`, yields

```math
\frac{d}{dt}\mathcal X^{exc}
+
\frac{c_\nu}{2}\mathcal N
\le
(L_0+C_A\mathcal A_{\mathrm{core}}^{ctr})\mathcal X^{exc}
+
F_0(t).
\tag{AXP.6}
```

The triangular center induction gives
`\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty([t_0,t_1])` and
`\mathcal K_{\le m}^{ctr}\in L^1([t_0,t_1])` on the same budget interval.
Gronwall and `(AXP.1)` then imply `\mathcal X^{exc}(t)\le2\eta_X` before the
putative exit, so `T_\ast` cannot occur. Integrating `(AXP.6)` gives
`\mathcal N\in L^1([t_0,t_1])`. The readouts in `(AXP.3)` are exactly the
`ACT.X-Readout` hypotheses applied to the bounded full readout packet
`\mathcal Y^{read}=\mathcal A_{\mathrm{core}}^{ctr}
+\mathcal A_{\mathrm{buf}}^{ctr}+\mathcal X^{exc}`. This proves `AXP.A`.

Thus the corrected chain is the simultaneous `ACT.KX` block:

```math
RSCB.NKF
\Longrightarrow
NKF.Moll+NKF.Point
\Longrightarrow
NKF.Native
+
NKF.Ann
+
NKF.Quad
+
ACT.X\text{-}Def
+
AXE.A
+
ACT.X\text{-}Cut
+
ACT.X\text{-}Press_{energy}
+
ACT.X\text{-}MidRaw
+
ACT.X\text{-}TopVisc
+
ACT.X\text{-}Scale
+
RWS.C_{\mathrm{scale}}
\Longrightarrow
\boxed{ACT.KX}
\Longrightarrow
\mathcal X^{exc}\in L^\infty(I)
+
\mathcal N\in L^1(I)
+
\mathcal K_{\le m}^{ctr}\in L^1(I)
+
\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I).
\tag{DTC.AFF-XChain}
```

After this joint block, the readout chain is

```math
ACT.X\text{-}Press_{cell}
\Longrightarrow
ACT.Kcore
\Longrightarrow
ACT.Actr_{\mathrm{core}}
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
ACT.A.
\tag{DTC.AFF-XChainR}
```

Equivalently, the completion ledger is:

```text
0. RSCB.NKF: retained smooth center-ball regularity gives P_{\le m}^{ctr,nat} in L1.
1. NKF.Moll + NKF.Point => NKF.Native: mollified forcing plus point recovery licenses native center forcing.
2. NKF.Ann: projected annular remainder controls Pi_ann without raw affine annular modes.
3. NKF.Quad: pointwise-in-time quadratic pressure estimate feeds the bootstrap.
4. ACT.X-Def: define X_exc, N, and Y_read = A_core^ctr + A_buf^ctr + X_exc.
5. AXE.A: AXE.1--AXE.4 assemble the excess line of ACT.KX, with ACT.X-Press_energy as an in-bootstrap atom.
6. ACT.X-Cut: cutoff sees affine defect, not full center U_1.
7. ACT.X-MidRaw: triangular finite-depth middle block with real zero-mode linear coefficients carried by A_core.
8. ACT.X-TopVisc: buffer m+2 center modes are readout modes, not pre-pressure ACT.Actr_core data.
9. ACT.X-Scale: retained smooth center-ball regularity supplies a radius R_a with X_exc(s_a;R_a) <= eta_X at each restart.
10. ACT.KX: joint core/excess scheduler propagates X_exc, N, K_le_m^ctr, and A_core.
11. ACT.X-Press_cell: X_exc in Linfty, N in L1, NKF.Ann, NKF.Quad, and energy far-tail give P_cell in L1.
12. ACT.Kcore + ACT.Actr_core: the pressure cell and viscous ledgers identify the lower center-amplitude Gronwall readout.
13. RWS.C_scale: finite dynamic small-radius cover recovers fixed-radius readouts; pointwise fixed-radius smallness is not claimed.
14. ACT.X-Readout: X_exc + A_core^ctr + A_buf^ctr gives D_1^aff, F_ctr_res, H_osc^alpha at the licensed readout scale.
15. ACT.A -> RCF.A -> LCI.A, while FCI.5f and endpoint cleanup remain separate.
```

This ledger is a conditional receiver discharge under the retained-window
hypotheses, not an unconditional energy result. The live native forcing
certificate is `RSCB.NKF`, which supplies the retained smooth center-ball route
`NKF.Moll + NKF.Point => NKF.Native`, together with the scheduler budgets.
`ACT.X-Scale` and `RWS.C_scale` are installed conditional bridges, not
fixed-radius smallness claims. `ACT.Actr_core` is no longer ordered after a
standalone `ACT.X-Boot`: the core amplitude is carried inside `ACT.KX` through
the joint variable `\mathcal J=\mathcal X^{exc}+\theta\mathcal A_{\mathrm{core}}^{ctr}`.
`ACT.Kcore` and `ACT.Actr_core` remain named readout/ledger identities once the
joint block has supplied `\mathcal K_{\le m}^{ctr}\in L^1` and
`\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty`. `ACT.X-Press_energy` is the
in-bootstrap affine local pressure energy decomposition whose only non-`L^1`
residue is `C_{press}(\mathcal X^{exc})^{1/2}\mathcal N`, with top-viscous
buffer modes read through `Y_read` rather than promoted into
`ACT.Actr_core`. `ACT.X-Cut` is structurally favorable because the moving cutoff
sees the affine defect.

For a full interval `I`, this branch additionally needs `ACT.X-Scale` at every
retained restart, the scheduler budget condition, and `RWS.C_scale` to transfer
small-radius packets to the fixed-radius readouts. Finiteness of `F,L` alone is
not the same as `ACT.X-Seed`.

#### Sublemma `ACT.X-Boot` Inside `ACT.KX` (Seed + Scheduler + Coefficient Margin)

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
`4\eta_X`. Integrating the post-absorption inequality, which still retains a
positive \(c_\nu\mathcal N/2\) margin, gives `\mathcal N\in L^1` on each
retained interval, and the finite sum over intervals gives

```math
\mathcal X^{exc}\in L^\infty(I),
\qquad
\mathcal N\in L^1(I).
\tag{ACT.XBoot}
```

The scheduler obstruction is therefore not fixed-radius smallness of the
original packet. It splits into the seed theorem `ACT.X-Scale` and the
scale/readout compatibility theorem `RWS.C_scale`. Retained smooth center-ball
regularity is the proof source for `ACT.X-Scale`, and `ACT.KX` consumes the
resulting seed inequality together with the joint center/excess budget;
`RWS.C_scale` is what licenses the downstream
fixed-radius `ACT.X-Readout`.

With this bridge, the local analytic route is:

```math
AXE.A
+
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
RWS.C_{\mathrm{scale}}
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
`(FCI.5f)`. The separate post-`LCI.A` sufficient source bridge is now the
three-channel frozen-family packet:

```math
LCI.A
\Longrightarrow
FPCR.C+FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow
(FCI.5f).
\tag{DTC.AFF22}
```

Here the corrected `FCC.C1` places the cutoff channel under the Young-margin
bound with viscous dissipation plus the weighted cutoff-defect ledger
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}`; that ledger must be in
`L^1(I)` or supplied by a separate domination theorem. `FSCR.C` is the finite strain/cascade
Leibniz bound
`C_N(1+\mathfrak C_{N+1,\rho,\psi}^{\delta})\mathcal F_{N,\rho,\psi}^{\varepsilon}`,
and `FPCR.C` is the frozen pressure split into low-high/high-low, resonant
finite-net, and energy-controlled far-tail pieces. `FSCR.C` and the
low-high/high-low pressure pieces may spend the low-carrier ledger supplied
after receiver closure. This is a sufficient post-`LCI.A` source route, not a
proof that `(FCI.5f)` was available before `LCI.A`.

The affine packet also does **not** itself install the endpoint block. The
endpoint side is now discharged by the separate endpoint packet:

```math
DTC\text{-to-TowerBound}
\Longrightarrow
END.TowerAmp
\Longrightarrow
END.TowerBound,
\qquad
END.Exh+END.Cross
\tag{DTC.AFF23}
```

The `DTC-to-TowerBound` bridge uses a finite transported-center cover of `Q_t`,
`DTC.A` at depth at least `N+2`, Morrey readout for the `U_k`, and the local
pressure/viscous identity `K_k=-\nabla^{k+1}p+\nu\Delta U_k` for the `K_k`.
`END.Exh` is the accepted witness-certificate completeness theorem, and
`END.Cross` reduces blown, jump, and dead cross-entries to the installed native
rows plus `END.TowerBound`, `END.Pack`, and `END.Field`.

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

This step is now a receiver readback under the displayed
`CSP.A_{\delta+\delta_{seg}}`, `(EOC.27)`, and `(OFP.10cb)` inputs, not the
supplier of the transported-center package.

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
`END.Exh` and `END.Cross` are accepted certificate/cross-entry reductions,
`END.Pack` is the native pack-gauge exclusion under
`\Gamma_{\mathrm{pack},Q}\in L^\infty(I)`, `END.Field` is the positive-scale
one-field exclusion under `OFP.A`, and `DTC-to-TowerBound` supplies the analytic tower amplitude input
`\mathfrak A_{N,Q}\in L^\infty(I)`.

## Current Conditional Breakdown

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
`DTC.PRE` is the noncircular `L^1` coefficient package. Once the exact
moving-center identity/commutator estimate is supplied, the remaining
coefficient work is exactly:

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

The older slogan form was:

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

The current affine-excess refinement replaces that slogan with the joint
`ACT.KX` finite-cell package:

```math
NKF.Native
+
NKF.Ann
+
NKF.Quad
\Longrightarrow
ACT.X\text{-}Press,
\tag{DTC.36b-1}
```

```math
ACT.X\text{-}Cut
+
ACT.X\text{-}Press
+
ACT.X\text{-}MidRaw
+
ACT.X\text{-}TopVisc
\Longrightarrow
ACT.KX,
\tag{DTC.36b-2}
```

```math
ACT.KX
+
ACT.X\text{-}Scale
+
RWS.C_{\mathrm{scale}}
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
ACT.A
\Longrightarrow
DTC.M\text{-}Affine_{\mathfrak p}
\Longrightarrow
DTC.PRE_{\mathfrak p}.
\tag{DTC.36b-3}
```

Here `ACT.X-Press` is the two-use pressure package. Its in-bootstrap energy
form feeds `ACT.KX`; after `ACT.KX` gives `X_exc in L^\infty` and
`N in L^1`, its cell form supplies the residual pressure ledger behind
`ACT.Kcore`. `ACT.X-Scale` supplies only small-radius restart seeds,
`RWS.C_scale` recovers fixed-radius readouts from a finite dynamic small-radius
cover, and `ACT.X-Readout` spends the bounded full readout packet `Y_read`, not
raw small-radius excess alone.

Across the finite required parameter set,

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
DTC.A_{\mathfrak p}
\Longrightarrow
ULCI(\mathscr P_{\rm req}).
\tag{DTC.37}
```

Consequently the receiver side is conditional after the ordered `ACT.KX`
package in `(DTC.36b-1)`--`(DTC.36b-3)` is installed for every required
parameter instance. The
source-side and endpoint-side packets are now separately promoted under the
post-`LCI.A` source hypotheses and accepted endpoint certificates:

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a\to FCI.5f,
\qquad
DTC\text{-to-TowerBound}\to END.TowerAmp\to END.TowerBound,
\qquad
END.Exh+END.Cross+Pack/Part/Field\text{ endpoint matrix}.
\tag{DTC.38}
```

The full terminal ledger is therefore:

```math
ACT.KX
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A,
\tag{DTC.39a}
```

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f,
\tag{DTC.39b}
```

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A,
\tag{DTC.39c}
```

```math
DTC\text{-to-TowerBound}
+END.Exh+END.Cross
+Pack/Part/Field\text{ endpoint matrix}
\Longrightarrow
\mathsf{End}_{NS},
\tag{DTC.39d}
```

and hence

```math
CFI.A+\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time class exit}.
\tag{DTC.39}
```

Here `END.TowerAmp` denotes the actual tower-amplitude input
`\mathfrak A_{N,Q}\in L^\infty(I)`. The definition-level implication
`END.TowerAmp => \neg tower-blown` is the direct contradiction between this
same-packet `L^\infty(I)` bound and the `tower-blown` requirement of
arbitrarily large tower amplitude; it is recorded in the endpoint matrix note
as `END.TowerBound`.

With the ordered pressure package and `ACT.KX` installed, the receiver-side
live chain is

```math
ACT.KX
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{DTC.40}
```

The pressure-cell and core ledgers are consequences of the same package:
`ACT.X-Press_cell => ACT.Kcore => ACT.Actr_core` after `ACT.KX`, not
pre-`ACT.KX` suppliers.

#### Receiver-Side Conditional Route Cells

Worker R owns only the receiver-side portion of the user's 21-cell conditional
route theorem. The route-valid receiver cells materialized here are:

| Cell | Materialized object | Receiver-side assertion |
| --- | --- | --- |
| `NKF.Native` | `\mathcal P_{\le m}^{ctr,nat}\in L^1` from `RSCB.NKF` through `NKF.Moll + NKF.Point` | retained smooth center-ball forcing is the native input to the center ledger |
| `NKF.Ann` | projected annular remainder `\Pi_{ann}` | annular pressure is controlled after affine modes are projected away |
| `NKF.Quad` | pointwise quadratic pressure residual | quadratic pressure feeds the pressure package at the bootstrap scale |
| `ACT.X-Press` | `ACT.X-Press_energy` plus post-`ACT.KX` `ACT.X-Press_cell` | the named pressure package is `NKF.Native+NKF.Ann+NKF.Quad => ACT.X-Press` |
| `ACT.X-Cut` | moving-cutoff affine-defect term | contributes only the first-exit residue `C_{cut}(\mathcal X^{exc})^{1/2}\mathcal N`, spendable under `(C_{cut}+C_{press})(\mathcal X^{exc})^{1/2}\le c_\nu/2` |
| `ACT.X-MidRaw` | finite triangular middle block with zero-mode linear coefficients | carries those coefficients through `\mathcal A_{\mathrm{core}}^{ctr}` inside `ACT.KX` |
| `ACT.X-TopVisc` | top `m+1,m+2` viscous buffer modes | keeps `\mathcal A_{\mathrm{buf}}^{ctr}` as readout/buffer data inside `Y_read` |
| `ACT.KX` | `\mathcal X^{exc}\in L^\infty`, `\mathcal N\in L^1`, `\mathcal K_{\le m}^{ctr}\in L^1`, `\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty` | simultaneous core/excess theorem using `\mathcal J=\mathcal X^{exc}+\theta\mathcal A_{\mathrm{core}}^{ctr}` and the coefficient-margin term `(\mathcal X^{exc})^{1/2}\mathcal N` |
| `ACT.X-Scale` | retained restart seed `\mathcal X^{exc}(s_a;R_a)\le\eta_X` | supplies scale-small initial data for each retained window |
| `RWS.C_scale` | finite dynamic small-radius cover to fixed readout scale | recovers fixed-radius readouts without asserting fixed-radius smallness |
| `ACT.X-Readout` | `Y_read=\mathcal A_{\mathrm{core}}^{ctr}+\mathcal A_{\mathrm{buf}}^{ctr}+\mathcal X^{exc}` | spends the full post-`ACT.KX` readout packet |
| `ACT.A` | `\mathfrak D_1^{aff}\in L^1`, `\mathfrak F^{ctr,res}\in L^1`, `\mathfrak H^{osc,\alpha}\in L^2` | affine-center receiver packet produced by `ACT.X-Readout` |
| `RCF.A` | residual center-forcing ledger | passes the affine-center packet to the transported-center forcing slot |
| `LCI.A` | lower-carrier interval integrability | receiver-side output of this owned route portion |

The owned receiver chain is therefore

```math
NKF.Native+NKF.Ann+NKF.Quad
\Longrightarrow
ACT.X\text{-}Press,
\tag{DTC.40R1}
```

```math
ACT.X\text{-}Cut
+
ACT.X\text{-}Press
+
ACT.X\text{-}MidRaw
+
ACT.X\text{-}TopVisc
\Longrightarrow
ACT.KX,
\tag{DTC.40R2}
```

```math
ACT.KX
+
ACT.X\text{-}Scale+RWS.C_{\mathrm{scale}}
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{DTC.40R3}
```

This is only the receiver side. The source-side `FCI` cells and the endpoint
cells remain parallel theorem blocks outside this Worker R installation. Thus
the remaining parallel theorem blocks are exactly
the post-`LCI.A` source channels

```math
FCC.C1,\qquad FSCR.C,\qquad FPCR.C,
\tag{DTC.41a}
```

and the endpoint cells

```math
DTC\text{-to-TowerBound},\qquad END.Exh,\qquad END.Cross.
\tag{DTC.41b}
```

The ordered closure program splits those cells into two independent lanes.

### Source Lane

The source-side lane is the exact source split

```math
FPCR.C+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
(FCI.5f).
\tag{DTC.42}
```

The proof order below checks the cutoff, strain/cascade, and pressure cells;
the implication itself is their ledger summation, not a dependency chain among
the three cells.

For `FCC.C1`, the frozen-net cutoff channel is localization-created:

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}
=
\sum_{\ell=1}^{M_\varepsilon}
|\mathcal C_N^{cut}(\eta^\ell,t;\psi)|.
\tag{DTC.42a}
```

The required estimate is the cutoff Young-margin bound

```math
|\mathcal C_N^{cut}(\eta^\ell,t;\psi)|
\le
4\nu\,\mathcal E_N^{cut,\nabla}(\eta^\ell,t;\psi)
+\frac12\mathcal N_{N,\eta^\ell,\psi}^{visc}(t),
\qquad
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I),
\qquad
\mathcal F_{N,\rho,\psi}^{\varepsilon}\in L^\infty(I).
\tag{DTC.42b}
```

Together with the frozen-family differential inequality, the pressure and
strain/cascade source inputs, and
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`, Gronwall gives
`\mathcal N_{N,\rho,\psi}^{visc,\varepsilon}\in L^1(I)`. Then summing
`(DTC.42b)` over the finite frozen net gives
`\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I)`.

For `FSCR.C`, the finite Leibniz/triangular algebra gives

```math
|\mathcal S_N(\eta^\ell,t;\psi)|
+
|\mathcal R_N(\eta^\ell,t;\psi)|
\le
C\,
\Gamma_{N,m,\rho,\psi}^{low}(t)
\mathcal F_{N,\rho,\psi}^{\varepsilon}(t).
\tag{DTC.42c}
```

After receiver closure, `LCI.A` supplies
`\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I)`, while the frozen packet aggregate is
bounded. Therefore the strain/cascade channel lies in `L^1(I)`.

For `FPCR.C`, split pressure on each frozen packet support as `p=p^{loc}+h`,
with

```math
-\Delta p^{loc}
=
\partial_i\partial_j(\eta u_i u_j),
\tag{DTC.42d}
```

and decompose

```math
\mathcal N^{press}
\le
C\left(
\mathcal N^{LH/HL}
+
\mathcal N^{RR}
+
\mathcal T^{far}
\right).
\tag{DTC.42e}
```

The low-high/high-low and resonant finite-net pieces are controlled by the
low-carrier ledger and the bounded frozen packet family, while the far tail
satisfies

```math
\mathcal T^{far}(t)
\le
C\|u(\cdot,t)\|_{L^2}^2
\le
C\|u_0\|_{L^2}^2.
\tag{DTC.42f}
```

Hence `FPCR.C` holds on the post-`LCI.A` source route, and `(FCI.5f)` follows by
the already-closed source split.

### Endpoint Lane

The endpoint lane is

```math
DTC\text{-to-TowerBound}
\Longrightarrow
END.TowerBound,
\qquad
END.Exh,
\qquad
END.Cross.
\tag{DTC.43}
```

For `DTC-to-TowerBound`, use a finite transported-center cover

```math
Q_t
\subset
\bigcup_{\mathfrak p\in\mathscr P_Q}
B(c_{\mathfrak p}(t),R_{\mathfrak p}^{TC}).
\tag{DTC.43a}
```

On each cover element, `DTC.A_{\mathfrak p}` gives
`\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I)`. Morrey gives the `U_k`
amplitudes:

```math
\sup_{B(c_{\mathfrak p},R)}
|U_k|
\le
C(\mathcal Z_{\mathfrak p}^{TC})^{1/2}.
\tag{DTC.43b}
```

For `K_k`, use

```math
K_k
=
-\nabla^{k+1}p+\nu\Delta U_k.
\tag{DTC.43c}
```

Choose DTC depth at least `N+2`; the viscous part reads from `U_{k+2}`, and
local pressure response plus energy far-tail gives

```math
\sup_{B(c_{\mathfrak p},R)}
|\nabla^{k+1}p|
\le
C\left(
1+\mathcal Z_{\mathfrak p}^{TC}+\|u_0\|_{L^2}^2
\right).
\tag{DTC.43d}
```

The finite cover yields

```math
\mathfrak A_{N,Q}\in L^\infty(I).
\tag{DTC.43e}
```

Thus `END.TowerBound` is the direct tower-amplitude contradiction: bounded
tower amplitude on the same finite cover rules out `tower-blown`.

For `END.Exh`, the witness identity

```math
CM
=
Pack\wedge Part\wedge Field
\tag{DTC.43f}
```

and the accepted certificate maps give

```math
\neg CM
\Longrightarrow
Dead
\vee
packing\text{-}detached
\vee
tower\text{-}blown
\vee
Jump.
\tag{DTC.43g}
```

For `END.Cross`, use the blown gauge split

```math
\mathfrak B_{N,Q}
=
\Gamma_{\mathrm{pack},Q}
+
\mathfrak A_{N,Q},
\tag{DTC.43h}
```

so blown reduces to packing-detached or tower-blown; jump cross-entries reduce
by `Pack+Part+Jump => Field`-coherence fracture; and dead cross-entries reduce
to the installed `(Part,Dead)` row. Hence

```math
DTC\text{-to-TowerBound}+END.Exh+END.Cross
+Pack/Part/Field\text{ endpoint matrix}
\Longrightarrow
\mathsf{End}_{NS}.
\tag{DTC.43i}
```

The preferred package order is therefore

```math
ACT.KX
\to
(FPCR.C+FSCR.C+FCC.C1+FCC.C1a)
\to
\left(
DTC\text{-to-TowerBound}+END.Exh+END.Cross
+Pack/Part/Field\text{ endpoint matrix}
\right),
\tag{DTC.44}
```

with `END.Exh` and `END.Cross` recorded in parallel as certificate/semantic
cells inside the endpoint package.
