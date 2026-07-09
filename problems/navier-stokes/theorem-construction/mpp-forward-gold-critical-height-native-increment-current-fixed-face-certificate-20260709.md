---
theorem_id: forward-gold-critical-height-native-increment-current-fixed-face-certificate-20260709
created: 2026-07-09
problem: navier-stokes
route: forward-gold / signed critical height / c0 / Fable fixed face
status: proved-native-current-pair-identity-and-universal-affine-positive-part-floor; record-selected-finite-variation-open
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-root-payment-physical-spine-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-target1-energy-testform-display-executed-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-face-constant-axis-localization-rigidity-20260709.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-turnoff-critical-work-separation-obstruction-20260709.md
completion_truth: >-
  This note derives an exact increment representation of the signed critical
  Hdot1/2 production and an exact weighted Duchon-Robert scale synthesis. It
  then evaluates the native current on an affine velocity-gradient tangent and
  proves a universal positive-part floor: for every incompressible affine
  gradient A=S+W, the angular positive native current dominates
  (8 pi/15)[-tr(S^3)]_+. The skew/vorticity part cannot cancel this floor. Thus
  every affine zero-native-positive-current tangent has zero positive
  Vieillefosse service; the rotating and spin-silent affine faces are both
  excluded. The material-pair form proved below identifies the current as
  weighted contraction of two labels of the same incompressible fluid and
  derives its exact relative-acceleration equation. It also proves that a
  uniform finite bound for the current's positive part on critical-height
  record intervals already bounds every record peak and is therefore Gold,
  rather than an inherited consequence of the signed four-body normal forms.
  The first missing line is pairwise: pressure and viscosity cancel or dissipate
  only after summing all pairs; neither has the sign needed to forbid repeated
  selected compression of one carrier. Gold remains open at that finite-
  positive-variation statement.
---

# Native critical increment current on the fixed face

## 1. Exact critical-production identity

Let `u` be a smooth rapidly decaying divergence-free velocity field on
`R^3`. Write

```math
P_H(u)
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
=
-\int (u\cdot\nabla u)\cdot\Lambda u\,dx.
\tag{NIC.1}
```

For `Lambda=(-Delta)^(1/2)` in three dimensions,

```math
\Lambda f(x)
=
c_\Lambda\,\operatorname{p.v.}
\int_{\mathbb R^3}\frac{f(x)-f(y)}{|x-y|^4}\,dy,
\qquad
c_\Lambda=\frac1{\pi^2}.
\tag{NIC.2}
```

Set

```math
\delta u=u(x)-u(y),
\qquad
\delta x=x-y.
\tag{NIC.3}
```

The symmetric bilinear form for `Lambda` gives

```math
\int (u\cdot\nabla u)\cdot\Lambda u\,dx
=
\frac{c_\Lambda}{2}
\iint
\frac{
\big((u\cdot\nabla u)(x)-(u\cdot\nabla u)(y)\big)
\cdot\delta u
}{|\delta x|^4}
\,dx\,dy.
\tag{NIC.4}
```

The numerator is the two-point material derivative

```math
\big((u\cdot\nabla u)(x)-(u\cdot\nabla u)(y)\big)\cdot\delta u
=
\frac12
\big(u(x)\cdot\nabla_x+u(y)\cdot\nabla_y\big)|\delta u|^2.
\tag{NIC.5}
```

Integrating by parts in `x` and `y` on the symmetric truncation
`|x-y|>epsilon`, using `div u=0`, and differentiating the kernel gives

```math
\big(u(x)\cdot\nabla_x+u(y)\cdot\nabla_y\big)|\delta x|^{-4}
=
-4\frac{\delta u\cdot\delta x}{|\delta x|^6}.
\tag{NIC.6}
```

The boundary term on `|x-y|=epsilon` is `O(epsilon)` for smooth `u`: the two
increment factors and the normal two-point velocity contribute three powers of
`epsilon`, while surface measure and the kernel contribute
`epsilon^2 epsilon^{-4}`. It vanishes as `epsilon` tends to zero. Therefore

```math
\boxed{
P_H(u)
=
-c_\Lambda
\iint_{\mathbb R^3\times\mathbb R^3}
\frac{|\delta u|^2(\delta u\cdot\delta x)}{|\delta x|^6}
\,dx\,dy .
}
\tag{NIC.7}
```

Equivalently, with `delta_h u(x)=u(x+h)-u(x)`, the native current density is

```math
d\mathcal J_H(x,h)
=
-c_\Lambda
\frac{|\delta_hu(x)|^2(\delta_hu(x)\cdot h)}{|h|^6}
\,dx\,dh,
\qquad
P_H(u)=\iint d\mathcal J_H.
\tag{NIC.8}
```

This current is cubic, odd under `u -> -u`, Galilean invariant, and generated
by the same velocity field. It is an exact term in the signed critical-height
equation.

## 2. Exact synthesis from the Duchon--Robert current

Let `phi` be a smooth radial mollifier, `phi_epsilon(h)=epsilon^(-3)
phi(h/epsilon)`, and define

```math
D_\epsilon(u)(x)
=
\frac14\int_{\mathbb R^3}
\nabla\phi_\epsilon(h)\cdot\delta_hu(x)
|\delta_hu(x)|^2\,dh.
\tag{NIC.9}
```

Put

```math
\kappa_\phi
:=
-\int_0^\infty s^4\phi'(s)\,ds
=
4\int_0^\infty s^3\phi(s)\,ds
>0.
\tag{NIC.10}
```

A direct change of variables `s=|h|/epsilon` gives

```math
\int_0^\infty
\epsilon^{-2}\nabla\phi_\epsilon(h)\,d\epsilon
=
-\kappa_\phi\frac{h}{|h|^6}.
\tag{NIC.11}
```

Substitution into `(NIC.9)` yields the exact scale synthesis

```math
\boxed{
P_H(u)
=
\frac{4c_\Lambda}{\kappa_\phi}
\int_0^\infty\epsilon^{-2}
\int_{\mathbb R^3}D_\epsilon(u)(x)\,dx\,d\epsilon .
}
\tag{NIC.12}
```

Thus the signed critical production is the scale-weighted integral of the
already gated increment-cubic energy current. No pressure proxy or invented
payment is needed to define the candidate current.

## 3. Exact affine-tangent evaluation

At a differentiability point let

```math
A=\nabla u=S+W,
\qquad
S=S^T,
\qquad
W=-W^T,
\qquad
\operatorname{tr}S=0.
\tag{NIC.13}
```

For `h=r theta`, the affine tangent has `delta_hu=A h`. The angular factor in
`(NIC.8)` is

```math
\mathcal I(A)
:=
\int_{S^2}|A\theta|^2(\theta\cdot A\theta)\,d\theta.
\tag{NIC.14}
```

Since `theta.W theta=0`, the fourth spherical moment gives

```math
\begin{aligned}
\mathcal I(A)
&=
\frac{8\pi}{15}\operatorname{tr}(A^TA S)\\
&=
\frac{8\pi}{15}
\left(
\operatorname{tr}(S^3)-\operatorname{tr}(SW^2)
\right).
\end{aligned}
\tag{NIC.15}
```

With vorticity `omega=curl u`,

```math
W^2
=
\frac14(\omega\otimes\omega-|\omega|^2I),
\qquad
\operatorname{tr}(SW^2)
=
\frac14\omega\cdot S\omega.
\tag{NIC.16}
```

Hence

```math
\boxed{
\mathcal I(A)
=
\frac{8\pi}{15}
\left(
\operatorname{tr}(S^3)-\frac14\omega\cdot S\omega
\right).
}
\tag{NIC.17}
```

The native critical-work orientation is `-mathcal I(A)`.

## 4. Universal affine positive-part floor

The affine native-current density in direction `theta` has positive orientation

```math
\mathcal B(A)
:=
\int_{S^2}
\left[
-|A\theta|^2(\theta\cdot A\theta)
\right]_+
\,d\theta.
\tag{NIC.18}
```

Write

```math
q(\theta)=\theta\cdot S\theta=\theta\cdot A\theta.
\tag{NIC.19}
```

Then

```math
\mathcal B(A)
=
\int_{\{q<0\}}|S\theta+W\theta|^2[-q(\theta)]\,d\theta.
\tag{NIC.20}
```

Diagonalize `S`. The region `{q<0}` and its weight `-q` depend only on
`theta_1^2,theta_2^2,theta_3^2`. Meanwhile

```math
(S\theta)\cdot(W\theta)
=
\sum_{i<j}(\lambda_i-\lambda_j)W_{ij}\theta_i\theta_j.
\tag{NIC.21}
```

Each cross term is odd under one coordinate reflection, so

```math
\int_{\{q<0\}}
(S\theta)\cdot(W\theta)[-q(\theta)]\,d\theta
=0.
\tag{NIC.22}
```

The remaining skew term is nonnegative. Hence

```math
\mathcal B(A)
\ge
N_S
:=
\int_{S^2}|S\theta|^2[-q(\theta)]_+\,d\theta.
\tag{NIC.23}
```

Let

```math
P_S
:=
\int_{S^2}|S\theta|^2[q(\theta)]_+\,d\theta.
\tag{NIC.24}
```

The fourth spherical moment gives

```math
P_S-N_S
=
\int_{S^2}|S\theta|^2q(\theta)\,d\theta
=
\frac{8\pi}{15}\operatorname{tr}(S^3).
\tag{NIC.25}
```

Therefore

```math
\boxed{
\mathcal B(A)
\ge
\frac{8\pi}{15}
\big[-\operatorname{tr}(S^3)\big]_+ .
}
\tag{NIC.26}
```

This certificate holds for every skew part `W`; no alignment, axisymmetry,
pressure-Hessian condition, or eigenvalue-gap hypothesis is used.

## 5. Smooth-field shell limit

For a `C^1` velocity field define the positive native current on the
`h=r theta` shell by

```math
\mathscr J_H^+(x,r)
:=
c_\Lambda
\int_{S^2}
\frac{|\delta_{r\theta}u(x)|^2
[-\delta_{r\theta}u(x)\cdot\theta]_+}{r^3}
\,d\theta.
\tag{NIC.27}
```

Since `delta_{r theta}u=rA(x)theta+o(r)`, `(NIC.26)` gives

```math
\boxed{
\lim_{r\downarrow0}\mathscr J_H^+(x,r)
\ge
c_\Lambda\frac{8\pi}{15}
\big[-\operatorname{tr}(S(x)^3)\big]_+ .
}
\tag{NIC.28}
```

Thus positive Vieillefosse service cannot be locally silent for the positive
part of the exact critical-height increment current.

## 6. Spin-silent fixed-face corollary

On the spin-silent fixed face assume

```math
S\omega=\lambda\omega,
\qquad
\lambda>0,
\qquad
-\operatorname{tr}(S^3)>0.
\tag{NIC.29}
```

Then `(NIC.17)` gives the signed angular floor

```math
\begin{aligned}
-\mathcal I(A)
&=
\frac{8\pi}{15}
\left(
-\operatorname{tr}(S^3)+\frac14\lambda|\omega|^2
\right)\\
&\ge
\frac{8\pi}{15}
\big[-\operatorname{tr}(S^3)\big]
>0.
\end{aligned}
\tag{NIC.30}
```

This is consistent with, and weaker than, the universal positive-part
certificate `(NIC.26)`:

```math
\boxed{
\text{positive Vieillefosse service}
+
\text{spin-silent positive-eigenvalue stretching}
\Longrightarrow
\text{strict positive native critical increment current}.
}
\tag{NIC.31}
```

In particular, the signed angular mean in `(NIC.30)` can vanish only on a
different alignment balance. The positive-part current in `(NIC.26)` cannot
vanish for any affine tangent with positive service.

## 7. Global consistency check

For decaying or periodic incompressible fields, Betchov's identity is

```math
\int\operatorname{tr}(S^3)\,dx
=
-\frac34\int\omega\cdot S\omega\,dx.
\tag{NIC.32}
```

Therefore `(NIC.17)` also gives

```math
\int\mathcal I(\nabla u)\,dx
=
\frac{32\pi}{45}
\int\operatorname{tr}(S^3)\,dx.
\tag{NIC.33}
```

This checks the orientation against the global strain-vorticity cubic ledger.
It does not rectify the global current; positive and negative packets may still
cancel.

## 8. Exact remaining Gold passage

`(NIC.26)` removes every positive-service affine tangent from the zero-positive-
native-current kernel using the actual signed critical-height current. The
remaining theorem is now narrower than `CubicRadialMomentOddPayment.A`:

```math
\texttt{RetainedNativeCriticalCurrentPassage.A}
\tag{NIC.34}
```

For every normalized retained record sequence with unit positive service and
vanishing Field/four-body/viscous bill, the same channel-cell packet carrying
the service must retain the native current `(NIC.8)` through material-time
recentring, critical rescaling, and weak-limit passage. Equivalently, any loss
of this current by spatial cancellation, shell escape, channel switching, or
temporal sign return must appear in the existing Field/four-body/viscous
currency before record readout.

The fixed-scale current and its channel partition are already explicit through
`(NIC.8)`--`(NIC.12)`. What remains unproved is a noncircular conversion from
this positive production current to a finite one-way field loss, together with
same-record passage and original-data storage. Until those statements are
proved, this note is a strict local rigidity certificate, not `c0>0` and not
Gold closure.

## 9. Exact material-pair form and the no-return test

Let `X(a,t)` be the material flow before a putative first singular time. For
two labels `a,b`, set

```math
R_{ab}=X(a,t)-X(b,t),
\qquad
V_{ab}=u(X(a,t),t)-u(X(b,t),t).
\tag{NIC.35}
```

Incompressibility gives `det D_aX=1`, and

```math
\dot R_{ab}=V_{ab}.
\tag{NIC.36}
```

Define the canonical pair storage and radial compression rate by

```math
e_{ab}
=\frac{c_\Lambda}{4}\frac{|V_{ab}|^2}{|R_{ab}|^4},
\qquad
\alpha_{ab}
=\frac{V_{ab}\cdot R_{ab}}{|R_{ab}|^2}
=\frac{d}{dt}\log|R_{ab}|.
\tag{NIC.37}
```

The current `(NIC.7)` pulled back to labels is

```math
j_{ab}
=-c_\Lambda
\frac{|V_{ab}|^2(V_{ab}\cdot R_{ab})}{|R_{ab}|^6}
=-4e_{ab}\alpha_{ab}
=\frac{c_\Lambda}{4}|V_{ab}|^2
\frac{d}{dt}|R_{ab}|^{-4}.
\tag{NIC.38}
```

Thus `j_ab>0` means that the same two fluid labels are contracting while
carrying relative kinetic energy. This supplies a first-principles physical
parent for the signed four-body/channel currents.

### 9.1 Exact pair-storage balance

The relative material acceleration is

```math
\dot V_{ab}
=-\delta_{ab}\nabla p
+\nu\,\delta_{ab}\Delta u.
\tag{NIC.39}
```

Differentiating `(NIC.37)` gives

```math
\boxed{
j_{ab}
=\dot e_{ab}
+\frac{c_\Lambda}{2}|R_{ab}|^{-4}
 V_{ab}\cdot\delta_{ab}\nabla p
-\frac{c_\Lambda\nu}{2}|R_{ab}|^{-4}
 V_{ab}\cdot\delta_{ab}\Delta u .
}
\tag{NIC.40}
```

After integration over all label pairs, the pressure row vanishes by
incompressibility and gradient orthogonality:

```math
\frac{c_\Lambda}{2}
\iint
\frac{V_{ab}\cdot\delta_{ab}\nabla p}{|R_{ab}|^4},da,db
=\langle u,\Lambda\nabla p\rangle
=0.
\tag{NIC.41}
```

The viscous row becomes positive only after the same global summation:

```math
-\frac{c_\Lambda\nu}{2}
\iint
\frac{V_{ab}\cdot\delta_{ab}\Delta u}{|R_{ab}|^4},da,db
=\nu\|\Lambda^{3/2}u\|_2^2.
\tag{NIC.42}
```

Since

```math
\iint e_{ab},da,db
=\frac12\|u\|_{\dot H^{1/2}}^2
=H_{\rm crit},
\tag{NIC.43}
```

`(NIC.40)--(NIC.42)` recover the exact critical balance

```math
\boxed{
\frac{d}{dt}H_{\rm crit}
+\nu\|\Lambda^{3/2}u\|_2^2
=\iint j_{ab},da,db.
}
\tag{NIC.44}
```

The qualification in `(NIC.41)--(NIC.42)` is load-bearing: pressure does not
cancel pairwise, and viscosity is not pairwise nonnegative. Their favorable
properties arise only after summing every material pair.

### 9.2 The exact first failed line of unrestricted no-return

Let

```math
n_{ab}=R_{ab}/|R_{ab}|,
\qquad
V_{ab}^{\perp}=V_{ab}-(V_{ab}\cdot n_{ab})n_{ab}.
\tag{NIC.45}
```

Direct differentiation gives

```math
\dot n_{ab}=\frac{V_{ab}^{\perp}}{|R_{ab}|},
\tag{NIC.46}
```

and

```math
\boxed{
\dot\alpha_{ab}
=-\alpha_{ab}^2
+\frac{|V_{ab}^{\perp}|^2}{|R_{ab}|^2}
-\frac{R_{ab}\cdot\delta_{ab}\nabla p}{|R_{ab}|^2}
+\nu\frac{R_{ab}\cdot\delta_{ab}\Delta u}{|R_{ab}|^2}.
}
\tag{NIC.47}
```

Neither of the last two terms has a sign for one pair. The pressure term is the
same nonlocal whole-field response that turns the strain frame on Face A; the
viscous term is dissipative only after integration as in `(NIC.42)`. Therefore
the NS equations do not supply an unrestricted pairwise no-recollision or
one-way-compression law. Any such law must use the record selector and prove
that its chosen pairs cannot be refilled by the globally cancelling pressure
exchange.

### 9.3 Record selection makes the exact equivalence visible

Let `t_m` be first record times satisfying

```math
H_{\rm crit}(t_{m+1})=2H_{\rm crit}(t_m),
\qquad
I_m=[t_m,t_{m+1}].
\tag{NIC.48}
```

Integrating `(NIC.44)` on `I_m` and taking the pointwise positive part before
pair integration gives

```math
H_{\rm crit}(t_{m+1})-H_{\rm crit}(t_m)
+\nu\int_{I_m}\|\Lambda^{3/2}u\|_2^2dt
\le
\int_{I_m}\iint[j_{ab}]_+,da,db,dt.
\tag{NIC.49}
```

Consequently

```math
\sup_M
\sum_{m=0}^{M}
\int_{I_m}\iint[j_{ab}]_+,da,db,dt
<\infty
\tag{NIC.50}
```

would preclude infinitely many critical-height record doublings and would
bound `H_crit`. Conversely, an unbounded record forces the left side of
`(NIC.50)` to diverge. Thus an original-data bound for `(NIC.50)` is already
the Gold peak bound in canonical material-pair coordinates. It is not a
consequence of the signed identity `(NIC.44)` or of signed four-body exchange
cancellation.

### 9.4 Small-data reserve and arbitrary-data obstruction

At each time,

```math
\iint[j_{ab}]_+,da,db
\le
c_\Lambda\iint
\frac{|\delta_hu(x)|^3}{|h|^5},dx,dh
\simeq
\|u\|_{\dot B^{2/3}_{3,3}}^3.
\tag{NIC.51}
```

Littlewood--Paley Bernstein and Cauchy--Schwarz give

```math
\|u\|_{\dot B^{2/3}_{3,3}}^3
\le
C\|u\|_{\dot H^{1/2}}
 \|u\|_{\dot H^{3/2}}^2.
\tag{NIC.52}
```

Hence sufficiently small critical data let viscosity absorb all gross positive
pair compression. For arbitrary data, the coefficient in `(NIC.52)` is the
uncontrolled critical height itself. Replacing it by a finite original-data
constant is exactly the missing theorem.

The pair formulation therefore corrects the two-face terminal description:
Face A's pressure-Hessian turning and Face B's recurrent return are two
projections of the same material-pair dynamics `(NIC.40)--(NIC.47)`. The
four-body system is a lawful channelization of this parent current. Its signed
normal forms do not produce the positive-variation reserve `(NIC.50)` because
Body II has zero positive-activity coefficient and pressure exchange may
circulate pair storage while cancelling globally. A closure now requires one
strictly smaller fact than `(NIC.50)`--for example a record-specific sign or
irreversible loss derived from `(NIC.47)`--rather than another renaming of the
finite reserve itself. No such fact is proved here.

## 10. Gate on the proposed finite-viscosity refund floor

The proposed repair is that every four-body payment-refund cycle pays a fixed
amount of Leray energy dissipation at finite viscosity, so finite initial
energy bounds the number of cycles. Exact Navier--Stokes scaling refutes that
floor.

Take any smooth finite-energy NS solution `U` on a short interval `[0,T_0]`
for which

```math
\mathcal A_+(U)
:=
\int_0^{T_0}\iint[j_{ab}(U)]_+,da,db,dt
>0.
\tag{NIC.53}
```

Such data are supplied, for example, by a compact divergence-free field with
the positive affine core in `(NIC.26)`, followed for a sufficiently short
smooth interval. For `lambda>1`, apply the exact fixed-viscosity NS scaling

```math
U_\lambda(x,t)
=\lambda U(\lambda x,\lambda^2t),
\qquad
0\le t\le\lambda^{-2}T_0.
\tag{NIC.54}
```

The gross native critical action is scale invariant:

```math
\mathcal A_+(U_\lambda)=\mathcal A_+(U).
\tag{NIC.55}
```

The Leray energy dissipation on the same event is subcritical:

```math
\nu\int_0^{\lambda^{-2}T_0}
\|\nabla U_\lambda(t)\|_2^2,dt
=\lambda^{-1}
\nu\int_0^{T_0}\|\nabla U(t)\|_2^2,dt.
\tag{NIC.56}
```

Hence

```math
\frac{
\nu\int_0^{\lambda^{-2}T_0}
\|\nabla U_\lambda\|_2^2dt
}{\mathcal A_+(U_\lambda)}
\longrightarrow0.
\tag{NIC.57}
```

Viscosity in `(NIC.54)` is still exactly `nu`; no vanishing-viscosity limit
has been taken. In physical scale `r=lambda^{-1}`, one normalized gross cycle
has order-one critical action and costs only `O(r)` Leray energy. Dyadic costs
`sum_j O(2^{-j})` are finite. Therefore no scale-independent inequality of the
form

```math
\nu\int_{I_r}\|\nabla u\|_2^2dt
\ge c\int_{I_r}\iint[j_{ab}]_+,da,db,dt,
\qquad c>0,
\tag{NIC.58}
```

can hold for the NS class.

The critical viscous action has the right scaling:

```math
\nu\int_{I_r}\|\Lambda^{3/2}u\|_2^2dt.
\tag{NIC.59}
```

But `(NIC.59)` is not bounded by Leray's energy inequality. Moreover the only
general domination currently available is `(NIC.52)`, whose coefficient is
the uncontrolled critical height. In the critical balance, a comparison
between gross traffic and `(NIC.59)` closes only when its coefficient is
strictly absorbable by `nu`, which is precisely the small-data argument. At
large data it supplies no finite reserve.

Thus finite viscosity does not by itself distinguish a lawful NS refund cycle
from the abstract cyclic-payment countermodel in the currency Gold needs. The
Face-B `nu/a_m -> 0` limit and the shrinking-scale `O(r)` Leray cost are
different mechanisms and cannot be identified. The remaining candidate is
still a record-specific sign or no-return theorem in the scale-invariant
material-pair current, not a fixed physical-energy toll.

## 11. Whole-field separation balance: pressure disappears scale by scale

The material-pair formula has an equivalent Eulerian field form that removes
the pressure-Hessian sign as an independent Gold burden. For a fixed separation
`h`, define

```math
E(h,t)
=\frac12\int_{\mathbb R^3}|\delta_hu(x,t)|^2dx,
\qquad
F(h,t)
=\int_{\mathbb R^3}\delta_hu(x,t)|\delta_hu(x,t)|^2dx,
\tag{NIC.60}
```

and

```math
D(h,t)
=\int_{\mathbb R^3}|\nabla_x\delta_hu(x,t)|^2dx.
\tag{NIC.61}
```

The pressure increment is orthogonal at every fixed `h`:

```math
\int\delta_hu\cdot\delta_h\nabla p\,dx=0.
\tag{NIC.62}
```

Indeed, each of the four expanded terms vanishes after integration by parts,
because both `u(x)` and `u(x+h)` are divergence free as functions of `x`.
The nonlinear term is exactly

```math
\int\delta_hu\cdot
\delta_h[(u\cdot\nabla)u],dx
=\frac12\nabla_h\cdot F(h,t).
\tag{NIC.63}
```

The viscous term is

```math
\nu\int\delta_hu\cdot\delta_h\Delta u\,dx
=-\nu D(h,t).
\tag{NIC.64}
```

Therefore the full smooth Navier--Stokes field satisfies the exact integrated
Karman--Howarth balance

```math
\boxed{
\partial_tE(h,t)
+\frac12\nabla_h\cdot F(h,t)
+\nu D(h,t)=0
}
\tag{NIC.65}
```

for every separation vector `h`. No isotropy, homogeneity, profile, or packet
identity is assumed; integration over the whole spatial field supplies the
translation average.

The critical height and native production are recovered by the same weight:

```math
H_{\rm crit}(t)
=\frac{c_\Lambda}{2}
\int_{\mathbb R^3}\frac{E(h,t)}{|h|^4}dh,
\tag{NIC.66}
```

```math
P_H(t)
=-c_\Lambda
\int_{\mathbb R^3}\frac{F(h,t)\cdot h}{|h|^6}dh.
\tag{NIC.67}
```

Multiplying `(NIC.65)` by `c_Lambda/(2|h|^4)`, integrating in `h`, and using
`grad_h |h|^{-4}=-4h|h|^{-6}` reproduces `(NIC.44)`.

There is also an exact cumulative separation-space balance. Set

```math
\mathscr E(r,t)=\int_{|h|\le r}E(h,t)dh,
\qquad
\Phi_{\rm in}(r,t)
=-\frac12\int_{|h|=r}F(h,t)\cdot n\,dS_h.
\tag{NIC.68}
```

Then

```math
\boxed{
\partial_t\mathscr E(r,t)
+\nu\int_{|h|\le r}D(h,t)dh
=\Phi_{\rm in}(r,t).
}
\tag{NIC.69}
```

Thus critical-record growth is inward relative-energy flux through separation
scales. Pressure only redistributes the velocity field that determines `F`; it
does not appear as a separate source or sign in the whole-field balance. Face
A's pressure-Hessian turning and the four-body pressure row are coordinate
resolutions of this same flux, not independent payment objects.

The balance does not yet close Gold. Its storage is bounded at each fixed
scale by

```math
0\le\mathscr E(r,t)
\le C r^3\|u(t)\|_2^2,
\tag{NIC.70}
```

but bounded storage does not bound the positive variation of
`Phi_in`: inward transfer can be refunded by outward transfer and repeated.
The finite-viscosity floor proposed in §10 cannot prevent this recurrence
uniformly because its Leray cost is `O(r)`. The remaining theorem is therefore
a sign/no-return statement for the scale flux in `(NIC.69)` on record
intervals. This field-level formulation bypasses pressure-Hessian closure but
does not manufacture the missing irreversible scale-critical sign.

## 12. A record upcrossing does not force inward flux at every separation

The pointwise-in-scale version of the remaining sign statement is false. An
exact Fourier triad gives a smooth same-field counterexample.

Work first on the normalized three-torus. Let

```math
k=(3,0,0),\qquad p=(0,4,0),\qquad q=(-3,-4,0),
\qquad k+p+q=0,
\tag{NIC.71}
```

and prescribe the positive-frequency coefficients

```math
\widehat u(k)=A(0,-1,0),\qquad
\widehat u(p)=A(0,0,-1),\qquad
\widehat u(q)=iA(0,0,1),
\tag{NIC.72}
```

with conjugate coefficients at the negative frequencies. These coefficients
are divergence free. For

```math
N_m=-i\mathbb P_m
\sum_{\ell+n=m}(\widehat u(\ell)\cdot n)\widehat u(n),
\qquad
T_m=\operatorname{Re}(\overline{\widehat u(m)}\cdot N_m),
\tag{NIC.73}
```

direct substitution gives

```math
T_k=0,\qquad T_p=-4A^3,\qquad T_q=4A^3.
\tag{NIC.74}
```

Energy is conserved by the triad, but its critical weighted production is

```math
\sum_{m\in\{k,p,q\}}|m|T_m
=-4(4)A^3+5(4)A^3
=4A^3>0.
\tag{NIC.75}
```

Including viscosity, the derivative of the normalized critical quadratic is

```math
\frac d{dt}H_{\rm crit}(0)
=8A^3-2\nu(3^3+4^3+5^3)A^2
=8A^3-432\nu A^2.
\tag{NIC.76}
```

It is positive for `A>54 nu`. Local smooth well-posedness and continuity then
give a nontrivial interval on which `H_crit` is strictly increasing and every
time is a new record time.

The cumulative separation flux nevertheless points outward at another
separation. Parseval gives

```math
\left.\partial_t\mathscr E(r,t)\right|_{\rm nl}
=4\sum_m T_m I(|m|,r),
\qquad
I(K,r)
=4\pi\left[
\frac{r^3}{3}
-\frac{\sin(Kr)-Kr\cos(Kr)}{K^3}
\right].
\tag{NIC.77}
```

At `r=pi`,

```math
I(K,\pi)
=\frac{4\pi^4}{3}
+\frac{4\pi^2(-1)^K}{K^2}.
\tag{NIC.78}
```

Since `T_k+T_p+T_q=0`, the volume term cancels and `(NIC.74)` yields

```math
\Phi_{\rm in}(\pi,0)
=4\sum_mT_mI(|m|,\pi)
=-\frac{164\pi^2}{25}A^3
<0.
\tag{NIC.79}
```

Thus the same smooth field has positive critical-height production and
strictly outward cumulative separation flux at `r=pi`. The separation flux is
a filtered scale readout, not a pointwise monotone cascade counter.

The example transfers to finite-energy whole-space data. Replace each of the
six Fourier atoms in `(NIC.72)` by a conjugate pair of sufficiently narrow
smooth bumps, apply the Leray projector on each bump, and keep the resonant
relation `(NIC.71)`. The cubic multipliers defining critical production and
`Phi_in(pi)` are continuous near these nonzero frequencies. After division by
their common positive bump-overlap factor, their values converge to
`(NIC.75)` and `(NIC.79)`. The strict signs therefore persist for a real
Schwartz divergence-free field on `R^3`; increasing `A` again dominates the
quadratic viscous row.

There is an exact weighted relation explaining the coexistence:

```math
H_{\rm crit}(t)
=2c_\Lambda\int_0^\infty r^{-5}\mathscr E(r,t)\,dr,
\qquad
P_H(t)
=2c_\Lambda\int_0^\infty r^{-5}\Phi_{\rm in}(r,t)\,dr.
\tag{NIC.80}
```

A record upcrossing constrains this weighted integral, not the sign of every
`Phi_in(r,t)`. Hence a fixed-scale no-return theorem is refuted. A surviving
statement must be history-adaptive and control record-selected gross weighted
flux across scales. Without an independently bounded critical storage or an
absorbable differential inequality, that gross-flux statement is the Gold
reserve itself rather than a smaller consequence of `(NIC.69)`.
