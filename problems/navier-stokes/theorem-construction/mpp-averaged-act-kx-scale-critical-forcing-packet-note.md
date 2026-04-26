# MPP Averaged ACT.KX Scale-Critical Forcing Packet Note

## Status

Theorem-facing replacement target for the receiver-side point-center forcing
route.

Role: replace the old native point-center forcing target

```math
NKF.Native
```

by a localized averaged scale-critical forcing branch

```math
SCF_{\mathrm{base}}+ATD_m
\Longrightarrow
SCF_{\mathrm{avg}}^m(R,I_R)
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

The finite-energy-native repair target is instead the sharpened averaged
packet route:

```math
SCF_{\mathrm{base}}+ATD_m
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{\mathrm{avg}}.
```

This route does not recover the old pointwise `DTC.A` until the separate
`DTC.Read` theorem is proved, and it does not recover old `CFI.A` until
`Field.Read` or `CM.Read` is proved. No proof may spend `DTC.A`, `LCI.A`,
`CSP.A`, `OFP.A`, `Field`, or endpoint exclusion to obtain `SCF_avg^m`,
`AACT.KX`, or `DTC.A_avg`.

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

The first-exit AACT forcing subtotal is

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

This subtotal is not the finite-energy supply theorem. The supplied full packet
for the averaged branch is the sharpened object `SCF_avg^m=SCF_base+ATD_m`
defined below.

The old `ACT.X-Scale` seed is replaced on this branch by the first component
`X_R(s_a)` inside `SCF_avg^m`. This supplies an averaged scale seed. It is not a
pointwise retained-smoothness seed and it does not assert fixed-radius
smallness.

## Theorem `AACT.KX`

Assume

```math
SCF_{\mathrm{avg}}^m(R,I_R)\le \varepsilon_\ast
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
`X_R\le 4\eta_X` and `SCF_avg^m\le\varepsilon_\ast`,

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
SCF_{\mathrm{base}}+ATD_m
\Longrightarrow
SCF_{\mathrm{avg}}^m
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
SCF_{\mathrm{base}}+ATD_m
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{\mathrm{avg}}
}
```

with `DTC.Read` as a later pointwise/Morrey recovery bridge.

## Averaged Transported-Center Bridge

Define the averaged replacement for the old transported-center packet by

```math
DTC.A_{\mathrm{avg},\mathfrak p}:
\qquad
X_R\in L^\infty(I),
\quad
N_R\in L^1(I),
\quad
\mathcal K_{\le m}^{avg,R}\in L^1(I),
```

together with averaged pressure, viscous, and forcing readouts

```math
\mathfrak P_{\mathfrak p}^{avg}\in L^1(I),
\qquad
\mathfrak V_{\mathfrak p}^{avg}\in L^1(I),
\qquad
\mathfrak F_{\mathfrak p}^{avg}\in L^1(I).
```

Equivalently, on the receiver readout surface it contains the averaged
objects

```math
\Omega_{\mathfrak p}^{avg}\in L^2(I),
\qquad
\mathfrak D_{1,\mathfrak p}^{aff,avg}\in L^1(I),
\qquad
\mathfrak F_{\mathfrak p}^{ctr,res,avg}\in L^1(I).
```

**Bridge `DTC.A_avg`.** The theorem target is

```math
AACT.KX+RWS.C_{\mathrm{scale}}
\Longrightarrow
DTC.A_{\mathrm{avg}}.
```

`AACT.KX` supplies

```math
X_R\in L^\infty,
\qquad
N_R\in L^1,
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1.
```

`RWS.C_scale` transfers the small restarted packets to the fixed readout scale
by finite same-fluid cover and bounded overlap. The local pressure terms are
read through the affine-subtracted Poisson packet, while far pressure remains
energy-controlled. Thus the transferred averaged packet gives
`DTC.A_avg`.

This bridge is averaged only. It does not recover point-center values,
pointwise pressure derivatives, or the old endpoint tower readout.

## Averaged Receiver Bridge

The next main-route target avoids pointwise recovery:

```math
\boxed{
AVG.RCV.A:
AACT.KX+RWS.C_{\mathrm{scale}}
\Longrightarrow
DTC.A_{\mathrm{avg}}
\Longrightarrow
EOC.A_{\mathrm{avg}}
+AFD.A_{\mathrm{avg}}
+RCF.A_{\mathrm{avg}}
\Longrightarrow
LCI.A_{\mathrm{avg}}.
}
```

For each averaged packet `\mathfrak p`, define

```math
EOC.A_{\mathrm{avg},\mathfrak p}:
\qquad
\Omega_{\mathfrak p}^{avg}\in L^2(I),
```

```math
AFD.A_{\mathrm{avg},\mathfrak p}:
\qquad
\mathfrak D_{1,\mathfrak p}^{aff,avg}\in L^1(I),
```

and

```math
RCF.A_{\mathrm{avg},\mathfrak p}:
\qquad
\mathfrak F_{\mathfrak p}^{ctr,res,avg}\in L^1(I)
\Longrightarrow
\mathfrak A_{\mathfrak p}^{ctr,avg}\in L^2(I).
```

The averaged lower-carrier Gronwall coefficient is

```math
\mathfrak B_{\mathfrak p}^{avg}(t)
=
C_{\mathfrak p}
\left[
(1+\Gamma_\sharp)
(1+\mathfrak A_{\mathfrak p}^{ctr,avg}
  +\Omega_{\mathfrak p}^{avg})
+
1+
(\mathfrak A_{\mathfrak p}^{ctr,avg})^2
+
(\Omega_{\mathfrak p}^{avg})^2
\right].
```

Since

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak A_{\mathfrak p}^{ctr,avg}\in L^2(I),
\qquad
\Omega_{\mathfrak p}^{avg}\in L^2(I),
```

one has

```math
\mathfrak B_{\mathfrak p}^{avg}\in L^1(I).
```

Finite `\mathscr P_{\rm req}` gives uniform Gronwall:

```math
\sup_{\mathfrak p\in\mathscr P_{\rm req}}
\sup_{t\in I}
\mathcal G_{\mathfrak p}^{avg}(t)<\infty.
```

The averaged lower-carrier readout then gives

```math
\Gamma_{\mathfrak p}^{low,avg}\in L^1(I),
```

which is the averaged lower-carrier conclusion

```math
\boxed{LCI.A_{\mathrm{avg}}.}
```

Thus the main averaged receiver route is

```math
\boxed{
AVG.RCV.A:
AACT.KX+RWS.C_{\mathrm{scale}}
\Longrightarrow
LCI.A_{\mathrm{avg}}.
}
```

## Averaged Class-Membership Chain

The averaged lower-carrier output may be passed downstream only through
averaged consumers:

```math
LCI.A_{\mathrm{avg}}+FCI.5f
\Longrightarrow
CSP.A_{\mathrm{avg}}
\Longrightarrow
OFP.A_{\mathrm{avg}}
\Longrightarrow
CFI.A_{\mathrm{avg}}.
```

Here `CSP.A_avg` is an averaged collar envelope, not the old pointwise collar
packet. Likewise `OFP.A_avg` propagates

```math
Field_{\mathrm{avg}},
```

not the old pointwise `Field`. The class-membership object produced by this
chain is therefore

```math
CM_{\mathrm{avg}}
=
Pack\wedge Part\wedge Field_{\mathrm{avg}},
```

not

```math
CM=Pack\wedge Part\wedge Field.
```

Consequently the averaged chain stops at

```math
\boxed{
CFI.A_{\mathrm{avg}}.
}
```

It does not prove old `CFI.A` unless one of the readout bridges is proved:

```math
Field.Read:
\qquad
Field_{\mathrm{avg}}\Longrightarrow Field,
```

or equivalently

```math
CM.Read:
\qquad
CM_{\mathrm{avg}}\Longrightarrow CM.
```

The next class-membership target is therefore

```math
\boxed{
AVG.CFI.A:
CFI.A_{\mathrm{avg}}
\text{ is sufficient for the endpoint matrix, or identify exactly where }
Field.Read\text{ is required.}
}
```

`DTC.Read` stays parked for endpoint/tower pointwise recovery only. The main
route should avoid pointwise recovery as long as the downstream consumers can
be retyped to averaged objects.

## Averaged Endpoint Lane

The endpoint completion for the averaged route is

```math
\boxed{
AVG.END.A:
CFI.A_{\mathrm{avg}}+AVG.END.Cert
\Longrightarrow
End_{NS,\mathrm{avg}}.
}
```

The averaged endpoint package is

```math
End_{NS,\mathrm{avg}}
:=
END.Pack
\wedge
END.Field_{\mathrm{avg}}
\wedge
END.TowerBound_{\mathrm{avg}}
\wedge
END.Cross_{\mathrm{avg}}
\wedge
END.Exh_{\mathrm{avg}}.
```

Its faces are:

```math
END.Field_{\mathrm{avg}}:
\quad
Field_{\mathrm{avg}}+OFP.A_{\mathrm{avg}}
\Longrightarrow
\neg Jump_{\mathrm{avg}},
```

```math
END.TowerBound_{\mathrm{avg}}:
\quad
\mathfrak A_{N,Q}^{avg}\in L^\infty(I)
\Longrightarrow
\neg tower\text{-}blown_{\mathrm{avg}},
```

```math
END.Exh_{\mathrm{avg}}:
\quad
\neg CM_{\mathrm{avg}}
\Longrightarrow
Dead\vee packing\text{-}detached\vee tower\text{-}blown_{\mathrm{avg}}\vee Jump_{\mathrm{avg}},
```

and

```math
END.Cross_{\mathrm{avg}}:
\quad
\text{cross entries reduce to }(Part,Dead),\ END.Pack,\ END.Field_{\mathrm{avg}},\
END.TowerBound_{\mathrm{avg}}.
```

The proof is matrix-formal: `CFI.A_avg` makes `CM_avg` persist on same-fluid
still-live windows; `END.Exh_avg` supplies the averaged endpoint shell if an
averaged class exit occurs; `(Part,Dead)`, bounded pack gauge, `END.Field_avg`,
`END.TowerBound_avg`, and `END.Cross_avg` remove all faces. Hence

```math
CFI.A_{\mathrm{avg}}+End_{NS,\mathrm{avg}}
\Longrightarrow
\text{no averaged finite-time class exit}.
```

Compatibility with the existing endpoint matrix is separate:

```math
\boxed{
READ.END:
End_{NS,\mathrm{avg}}
+
Field.Read
+
DTC.Read
\Longrightarrow
End_{NS}.
}
```

`Field.Read` feeds `END.Field` and `END.Exh`; `DTC.Read` feeds
`END.TowerAmp`. With `END.Exh_avg`, `END.Cross_avg`, and `AVG.END.A` now
theorem-facing endpoint cells, the remaining branches are

```math
\boxed{
READ.END:
End_{NS,\mathrm{avg}}+Field.Read+DTC.Read
\Longrightarrow
End_{NS}
}
```

and the deeper analytic supply branch

```math
\boxed{
SCF_{\mathrm{base}}+ATD_m
\Longrightarrow
AACT.KX
\Longrightarrow
AVG.RCV.A
\Longrightarrow
AVG.END.A.
}
```

## Supply Wall

Sharp delimiter:

```math
\boxed{
\text{finite energy supplies only the base scale-critical averaged packet,
at good material restarts.}
}
```

Finite energy supplies the global energy-class controls

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

Together with interpolation,

```math
u\in L^{10/3}_{t,x},
```

and the pressure Poisson equation

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
```

Calderon-Zygmund gives

```math
p\in L^{5/3}_{t,x}.
```

Therefore, at almost every spacetime point `z=(x,t)`,

```math
\lim_{r\downarrow0}
r^{-2}\iint_{Q_r(z)}|u-u_{z,r}^{aff}|^3=0,
```

```math
\lim_{r\downarrow0}
r^{-2}\iint_{Q_r(z)}|p-p_{z,r}^{aff}|^{3/2}=0,
```

and, at finite-density points of `\nabla u`,

```math
\lim_{r\downarrow0}
r^{-1}\iint_{Q_r(z)}|\nabla u|^2=0.
```

Thus finite energy proves only the base packet supply

```math
\boxed{
SCF_{\mathrm{base}}(r,z)\to0
\quad\text{at a.e. spacetime point.}
}
```

Incompressibility and bounded pack gauge transport this statement to a.e.
material label. At a good restart time `s_a`, the same-fluid good-label collar
admits finite selected moving cylinders with

```math
SCF_{\mathrm{base}}(R_b,I_b)\le\varepsilon_\ast.
```

This is the valid energy-level supply theorem.

Finite energy does not control the full averaged `ACT.KX` packet. For
`m\ge1`, the full packet contains finite-depth averaged tower data beyond
energy class:

```math
X_R,\qquad
N_R,\qquad
\mathcal K_{\le m}^{avg,R},\qquad
F_R,
```

including derivative and pressure tower information

```math
\nabla^q u,\qquad
\nabla^{q+1}p,\qquad q\ge1.
```

Hence the statement

```math
\text{finite energy}
+\text{Poisson}
+\Gamma_\sharp\in L^\infty
+\text{same-fluid geometry}
\Longrightarrow
SCF_{\mathrm{avg}}\le\varepsilon_\ast
```

is too strong.

The required extra input is

```math
\boxed{
ATD_m:
\text{averaged tower-density supply through depth }m+2.
}
```

Define

```math
SCF_{\mathrm{avg}}^m
:=
SCF_{\mathrm{base}}
+
ATD_m.
```

Here `ATD_m(R,I_R)` means

```math
X_R(s_a)\le\eta_X,
```

```math
X_R\in L^1_{\mathrm{sched}}(I_R),
\qquad
N_R\in L^1(I_R),
```

```math
\mathcal K_{\le m}^{avg,R}\in L^1(I_R),
\qquad
F_R\in L^1(I_R),
```

with the scheduler bound

```math
\left(
\eta_X+\int_{I_R}F_R
\right)
\exp\left(
\int_{I_R}(1+A_R+V_R+P_R)
\right)
\le2\eta_X.
```

The valid supply theorem is therefore

```math
\boxed{
SCF_{\mathrm{base}}
+
ATD_m
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX.
}
```

The live analytic obstruction is

```math
\boxed{
ATD_m
}
```

not pressure Poisson and not base finite energy. It must derive the
finite-depth averaged affine tower packet on same-fluid moving cylinders
without point-center forcing and without `DTC.Read`. The two possible route
families are parabolic smoothing / local energy gain, or scale-critical
compactness / epsilon-regularity.

## Non-Spending Gates

Any citation of this averaged branch must pass these gates.

1. No point-center readback:

```text
DTC.A_avg cannot be cited as DTC.A before DTC.Read is proved.
```

2. No retained-smoothness import:

```text
RSCB.NKF, NKF.Point, and point pressure-center smoothness are not inputs to
SCF_avg^m or AACT.KX.
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

5. No class-membership readback:

```text
CFI.A_avg cannot be cited as old CFI.A before Field.Read or CM.Read is proved.
```

## Handoff

The retained route remains available as a conditional smooth branch. The
finite-energy-native route now has a different live theorem target:

```math
SCF_{\mathrm{base}}+ATD_m
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{\mathrm{avg}}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{\mathrm{avg}}
\Longrightarrow
CSP.A_{\mathrm{avg}}
\Longrightarrow
OFP.A_{\mathrm{avg}}
\Longrightarrow
CFI.A_{\mathrm{avg}}
\Longrightarrow
AVG.END.A.
```

Only after `DTC.Read` can the old pointwise `DTC.A` and the endpoint
`DTC-to-TowerBound` packet be invoked without changing their statements. Only
after `Field.Read` or `CM.Read` can the averaged class-membership chain be read
as old `CFI.A`.
