# MPP Averaged ACT.KX Scale-Critical Forcing Packet Note

## Status

Theorem-facing replacement target for the receiver-side point-center forcing
route.

Role: replace the old native point-center forcing target

```math
NKF.Native
```

by a localized averaged scale-critical forcing packet

```math
SCF_{\mathrm{avg}}(R,I_R)
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{\mathrm{avg}},
```

with the later pointwise readout isolated as a separate theorem

```math
DTC.Read:
\qquad
DTC.A_{\mathrm{avg}}\Longrightarrow DTC.A.
```

## Audit Answer

There are two different objects, and the route must not blur them.

The retained-window route is a local smoothness / center-ball forcing
certificate:

```math
RSCB.NKF
\Longrightarrow
NKF.Moll+NKF.Point
\Longrightarrow
NKF.Native.
```

It is valid only when retained local smooth center-ball norms are assumed or
proved upstream. It is not a proof of point pressure-center forcing from finite
energy, bounded pack gauge, same-fluid geometry, and the pressure Poisson
structure alone.

The finite-energy-native repair target is instead the averaged packet route:

```math
SCF_{\mathrm{avg}}
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{\mathrm{avg}}.
```

This route does not recover the old pointwise `DTC.A` until the separate
`DTC.Read` theorem is proved. No proof may spend `DTC.A`, `LCI.A`, `CSP.A`,
`OFP.A`, `Field`, or endpoint exclusion to obtain `SCF_avg`, `AACT.KX`, or
`DTC.A_avg`.

## Geometry and Averaged Modes

Fix same-fluid centers

```math
c_j(t)=\Phi(a^j,t)
```

with bounded pack gauge

```math
\Gamma_\sharp\in L^\infty(I).
```

For a scale `R`, use moving cylinders

```math
Q_{j,R}=B(c_j(t),R)\times I_R,
\qquad
|I_R|\simeq R^2.
```

Replace point center modes by transported mollified affine modes

```math
\bar U_{q,j}^R(t)
=
\int U_q(x,t)\varphi_{j,R}(x,t)\,dx,
```

where `\varphi_{j,R}` is transported with `c_j(t)`. Let
`R_{q,j}^R` denote the affine-normalized residual after subtracting the local
affine model.

Define the averaged excess and dissipation packets

```math
X_R(t)
=
\sum_{j,q\le m+2,|\beta|\le 2}
\|\zeta_R\nabla_R^\beta R_{q,j}^R(t)\|_{\bar L^2}^2,
```

```math
N_R(t)
=
\sum_{j,q\le m+2,|\beta|\le 2}
\|\zeta_R\nabla_R^{\beta+1} R_{q,j}^R(t)\|_{\bar L^2}^2.
```

The averaged scale-critical forcing packet is

```math
SCF_{\mathrm{avg}}(R,I_R)
=
X_R(s_a)
+
\int_{I_R}
\left(
V_R+P_R+A_R+F_R
\right)\,dt,
```

where

```math
V_R(t)
=
\sum_j R^{-2}
\int_{B(c_j(t),R)}
|u-u_{j,R}^{aff}|^3\,dx,
```

```math
P_R(t)
=
\sum_j R^{-2}
\int_{B(c_j(t),R)}
|p-p_{j,R}^{aff}|^{3/2}\,dx,
```

```math
A_R(t)
=
\sum_{j,q\le m}
|\bar U_{q,j}^R(t)|,
```

and `F_R` is the averaged viscous, top-rung, and moving-cutoff source packet
obtained by testing the equations against the transported mollifiers.

The old `ACT.X-Scale` seed is replaced on this branch by the first component
`X_R(s_a)` inside `SCF_avg`. This supplies an averaged scale seed. It is not a
pointwise retained-smoothness seed and it does not assert fixed-radius
smallness.

## Theorem `AACT.KX`

Assume

```math
SCF_{\mathrm{avg}}(R,I_R)\le \varepsilon_\ast
```

and the scheduler bound

```math
\left(
\eta_X+\int_{I_R}F_R
\right)
\exp\left(
\int_{I_R}(1+A_R+V_R+P_R)
\right)
\le 2\eta_X.
```

Then

```math
X_R\in L^\infty(I_R),
\qquad
N_R\in L^1(I_R),
```

and the averaged center forcing ledger satisfies

```math
\mathcal K_{\le m}^{avg,R}\in L^1(I_R).
```

This is averaged `ACT.KX`.

## Proof Ledger

Testing the affine-normalized tower equations against
`\zeta_R^2 R_{q,j}^R`, summing over the finite center/rung/derivative set, and
integrating by parts gives

```math
D^+X_R+c_\nu N_R
\le
\mathcal T_{conv}
+
\mathcal T_{press}
+
\mathcal T_{mid}
+
\mathcal T_{cut}
+
\mathcal T_{top}.
```

The averaged velocity packet controls convection:

```math
|\mathcal T_{conv}|
\le
C V_R^{1/3}N_R
+
C V_R X_R.
```

The localized Poisson split and affine pressure subtraction control pressure:

```math
|\mathcal T_{press}|
\le
C P_R^{2/3}N_R
+
C P_R X_R
+
F_R.
```

The transported cutoff sees only affine excess:

```math
D_t y
=
G_j^{-1}
\bigl(
u-u(c_j)-A_j(x-c_j)
\bigr),
```

hence

```math
|\mathcal T_{cut}|
\le
C X_R^{1/2}N_R
+
C X_R.
```

The finite middle block gives

```math
|\mathcal T_{mid}|
\le
C A_R X_R
+
C X_R^{1/2}N_R.
```

The top-viscous block contributes dissipation plus lower forcing:

```math
|\mathcal T_{top}|
\le
\frac{c_\nu}{4}N_R
+
C X_R
+
F_R.
```

Combining,

```math
D^+X_R+c_\nu N_R
\le
(1+A_R+V_R+P_R)X_R
+
C_\ast
\left(
X_R^{1/2}+V_R^{1/3}+P_R^{2/3}
\right)N_R
+
F_R.
```

Choose `\varepsilon_\ast` and `\eta_X` so that on the first-exit interval
`X_R\le 4\eta_X` and `SCF_avg\le\varepsilon_\ast`,

```math
C_\ast
\left(
X_R^{1/2}+V_R^{1/3}+P_R^{2/3}
\right)
\le
\frac{c_\nu}{2}.
```

Then

```math
D^+X_R+\frac{c_\nu}{2}N_R
\le
(1+A_R+V_R+P_R)X_R+F_R.
```

The scheduler bound and Gronwall give

```math
X_R(t)\le 2\eta_X
```

throughout `I_R`, contradicting any first exit at `4\eta_X`. Therefore

```math
X_R\in L^\infty(I_R),
\qquad
N_R\in L^1(I_R).
```

For the averaged center forcing, the mollified equations give

```math
\frac{d}{dt}\bar U_{q,j}^R
=
\langle K_q,\varphi_{j,R}\rangle
+
\text{moving-cutoff terms}.
```

The pressure part is integrated by parts:

```math
\langle \nabla^{q+1}p,\varphi_{j,R}\rangle
=
(-1)^{q+1}
\langle p,\nabla^{q+1}\varphi_{j,R}\rangle,
```

and is controlled by `P_R`. The viscous part is

```math
\langle \Delta U_q,\varphi_{j,R}\rangle
=
\langle U_q,\Delta\varphi_{j,R}\rangle,
```

and is controlled by `X_R+N_R+F_R`. Hence

```math
\mathcal K_{\le m}^{avg,R}
\le
C(N_R+X_R+V_R+P_R+F_R),
```

so

```math
\mathcal K_{\le m}^{avg,R}\in L^1(I_R).
```

This proves `AACT.KX`.

## Receiver Replacement

The replacement chain is

```math
SCF_{\mathrm{avg}}
\Longrightarrow
AACT.KX
\Longrightarrow
X_R\in L^\infty,\quad
N_R\in L^1,\quad
\mathcal K_{\le m}^{avg,R}\in L^1.
```

The next required bridge is

```math
AACT.KX
+
RWS.C_{\mathrm{scale}}
\Longrightarrow
DTC.A_{\mathrm{avg}}.
```

The old pointwise object remains quarantined behind

```math
DTC.Read:
\qquad
DTC.A_{\mathrm{avg}}
\Longrightarrow
DTC.A.
```

Thus the new finite-energy-native wall is

```math
\boxed{
SCF_{\mathrm{avg}}
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{\mathrm{avg}}
}
```

with `DTC.Read` as a later pointwise/Morrey recovery bridge.

## Supply Wall

Finite energy supplies only the global energy-class controls

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

Together with the pressure Poisson structure, same-fluid geometry, and bounded
pack gauge, this can supply far-tail and energy-level localized estimates. It
does not by itself prove the smallness or integrability of every component of
`SCF_avg`, especially the higher affine tower modes, top-rung viscous packet,
and pressure excess at scale-critical strength.

Therefore the remaining theorem burden is precise:

```math
\text{allowed global inputs}
\Longrightarrow
SCF_{\mathrm{avg}}\le\varepsilon_\ast
\quad\text{or}\quad
SCF_{\mathrm{avg}}\in L^1_{\mathrm{sched}}
```

for the same-fluid moving cylinders, without using `DTC.A`, `LCI.A`, `CSP.A`,
`OFP.A`, `Field`, endpoint exclusion, or retained point-center smoothness.

## Non-Spending Gates

Any citation of this averaged branch must pass these gates.

1. No point-center readback:

```text
DTC.A_avg cannot be cited as DTC.A before DTC.Read is proved.
```

2. No retained-smoothness import:

```text
RSCB.NKF, NKF.Point, and point pressure-center smoothness are not inputs to
SCF_avg or AACT.KX.
```

3. No endpoint circularity:

```text
Endpoint exclusion, Field, OFP.A, CSP.A, and LCI.A cannot be used to build the
averaged packet that is supposed to feed the receiver side.
```

4. No compactness smuggling:

```text
The centers, labels, scale, cylinders, cutoff family, and scheduler budget must
be fixed from pre-output same-fluid geometry and pack data, not chosen by a
subsequence after endpoint exclusion.
```

## Handoff

The retained route remains available as a conditional smooth branch. The
finite-energy-native route now has a different live theorem target:

```math
SCF_{\mathrm{avg}}\text{ supply}
\quad\text{then}\quad
AACT.KX+RWS.C_{\mathrm{scale}}\Longrightarrow DTC.A_{\mathrm{avg}}.
```

Only after `DTC.Read` can the old pointwise `DTC.A` and the endpoint
`DTC-to-TowerBound` packet be invoked without changing their statements.
