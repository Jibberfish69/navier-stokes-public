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

## 13. Separation-energy lineages: exact carrier, exact tradeoff, and the inviscid obstruction

The separation balance does admit a canonical continuity-equation form. For
`h != 0`, set

```math
b(h,t)=\frac{F(h,t)}{2E(h,t)},
\qquad
\kappa(h,t)=\nu\frac{D(h,t)}{E(h,t)}.
\tag{NIC.81}
```

For a nonzero finite-energy field, `E(h,t)>0` at every nonzero `h`: equality
would make `u(x+h,t)=u(x,t)` almost everywhere, and a nonzero function periodic
in one Euclidean direction cannot lie in `L^2(R^3)`. Hence `(NIC.81)` is
well-defined away from the origin while the solution is smooth. Equation
`(NIC.65)` becomes

```math
\partial_tE+\nabla_h\cdot(Eb)=-\kappa E.
\tag{NIC.82}
```

Let `H(t;s,h_0)` be the `h`-space characteristic `dot H=b(H,t)` and let `J`
be its Jacobian. The transported mass is not the point value `E`; it is

```math
m(t)=E(H(t),t)J(t;s,h_0)\,dh_0.
\tag{NIC.83}
```

It satisfies the exact killing law

```math
m(t_2)=m(t_1)
\exp\left(-\int_{t_1}^{t_2}\kappa(H(t),t)\,dt\right).
\tag{NIC.84}
```

With `rho=-log|H|`, the critical contribution of this infinitesimal mass is
`a=m exp(4 rho)`, and therefore

```math
\log\frac{a(t_2)}{a(t_1)}
=4[\rho(t_2)-\rho(t_1)]
-\int_{t_1}^{t_2}\kappa(H(t),t)\,dt.
\tag{NIC.85}
```

This validates the carrier and the threshold `4`. It does not provide the
needed lower bound on the hazard.

There is one unconditional transit-hazard estimate. With
`f=delta_h u`, Gagliardo--Nirenberg gives

```math
|F|
\le \|f\|_3^3
\le C\|f\|_2^{3/2}\|\nabla f\|_2^{3/2},
\tag{NIC.86}
```

and hence

```math
|b|^{4/3}
\le C D E^{-1/3},
\qquad
\kappa
\ge c\nu E^{-2/3}|b|^{4/3}.
\tag{NIC.87}
```

Since `E(h,t)<=2||u_0||_2^2`, a characteristic segment of duration `tau` and
`h`-space length `L` obeys

```math
\int\kappa\,dt
\ge
c\nu\|u_0\|_2^{-4/3}
L^{4/3}\tau^{-1/3}.
\tag{NIC.88}
```

This is a real same-field transit cost, but it has no scale-independent
positive floor on a shrinking record tower.

More decisively, a universal hazard-versus-log-compression inequality is
false in the Euler-dominated regime. Choose a smooth divergence-free
`phi` with `P_H(phi)>0`, for example a Schwartz realization of the triad in
§12, and let `u^A` solve NS from `u^A(0)=A phi`. Define

```math
v^A(x,\tau)=A^{-1}u^A(x,\tau/A).
\tag{NIC.89}
```

Then

```math
\partial_\tau v^A+v^A\cdot\nabla v^A+\nabla q^A
=\frac{\nu}{A}\Delta v^A.
\tag{NIC.90}
```

On every fixed short smooth `tau`-interval, `v^A` converges to the Euler
solution from `phi`. Positive `P_H(phi)` implies that the Euler separation
field has an inward characteristic segment with a fixed
`Delta rho>0`. Along the corresponding NS segment,

```math
\int\kappa_{u^A}\,dt
=\frac{\nu}{A}
\int\frac{D_{v^A}}{E_{v^A}}\,d\tau
\longrightarrow0,
\tag{NIC.91}
```

while `Delta rho` stays positive. At the same time,

```math
\frac d{dt}H_{\rm crit}(u^A)(0)
=A^3P_H(\phi)-\nu A^2D_{\rm crit}(\phi)>0
\tag{NIC.92}
```

for large `A`, so these are record-upcrossing segments, not detached kinematic
paths.

Thus the proposed alternative

```math
\int\kappa\,dt\ge4\Delta\rho+\eta
\tag{NIC.93}
```

cannot hold uniformly for all inward record segments. Any viable lineage
theorem must put these low-hazard Euler-like segments into an independently
defined history charge whose total is bounded by the original datum. The
whole-field equation `(NIC.82)` contains no such source or collar term; adding
one without a closed functional merely relocates the Gold reserve into the
second branch.

## 14. Two-point realizability and the failure of the front-ratio floor

The structure functions `E` and `D` are not independent scalar fields. Define

```math
K(t)=\int|u(x,t)|^2dx,
\qquad
C(h,t)=\int u(x+h,t)\cdot u(x,t)dx,
\qquad
Z(t)=\int|\nabla u(x,t)|^2dx.
\tag{NIC.94}
```

Then `E=K-C`, and differentiation in `h` gives the exact compatibility

```math
\Delta_hE(h,t)
=\int\nabla u(x+h,t):\nabla u(x,t)dx,
\tag{NIC.95}
```

so

```math
\boxed{
D(h,t)=2[Z(t)-\Delta_hE(h,t)].
}
\tag{NIC.96}
```

Substituting `(NIC.96)` into `(NIC.65)` yields

```math
\partial_tE+rac12\nabla_h\cdot F
-2\nu\Delta_hE
=-2\nu Z(t).
\tag{NIC.97}
```

Equivalently, using `dot K=-2 nu Z`, the correlation satisfies

```math
\boxed{
(\partial_t-2\nu\Delta_h)C
=\frac12\nabla_h\cdot F.
}
\tag{NIC.98}
```

Thus the two-point viscous mechanism is an `h`-space diffusion with generator
`2 nu Delta_h`, corresponding for the heat part to relative noise
`sqrt(4 nu)dB`. Common-noise stochastic material trajectories do cancel in
their label difference, but that observation does not remove the independent
relative diffusion in the two-point correlation law. The nonlinear forcing
`div_h F/2` remains sign-indefinite.

Compatibility `(NIC.96)` still cannot prove the proposed front ratio. At any
fixed smooth state, amplitude multiplication gives

```math
E_{A\phi}=A^2E_\phi,
\qquad
D_{A\phi}=A^2D_\phi,
\qquad
F_{A\phi}=A^3F_\phi.
\tag{NIC.99}
```

Consequently

```math
b_{A\phi}=A b_\phi,
\qquad
\kappa_{A\phi}=\kappa_\phi,
\qquad
\frac{\nu(D/E)}{|\dot\rho|}[A\phi]
=\frac1A
\frac{\nu(D/E)}{|\dot\rho|}[\phi].
\tag{NIC.100}
```

Choose `phi` smooth, compactly concentrated in one scale-`r` atom, and with
positive native production. For large `A`, `(NIC.92)` makes the initial
segment a critical-height record upcrossing, while `(NIC.100)` makes the
front ratio smaller than any prescribed positive constant. This is already
an H2-shaped single-atom state; spatial concentration does not reverse the
amplitude scaling.

The same point appears in packet variables. If an atom occupies a fraction
`sigma` of a scale-`r` cell, has amplitude `v`, and remains frequency-localized
at `1/r`, then

```math
H_{\rm atom}\simeq \sigma v^2r^2,
\qquad
\frac{\nu(D/E)}{|\dot\rho|}
\simeq\frac{\nu}{rv}
\simeq\frac{\nu\sqrt\sigma}{\sqrt{H_{\rm atom}}}.
\tag{NIC.101}
```

At fixed retained critical mass, making the atom sparser decreases this ratio.
If sparsity creates gradients on a smaller length `ell<<r`, then `ell`, not
`r`, is the active frequency scale; claiming an extra drain while retaining
the old scale double-counts the localization gain.

Therefore neither two-point realizability nor single-atom sparsity yields the
constant `4` front floor. They leave the same history-level alternative as
§13: an explicit bounded charge for Euler-like low-hazard inward fronts, or a
different rigidity mechanism.

## 15. One-fluid ontology gate: the separation identities are readouts, not lineages

The physical object in every formula above is the full Navier--Stokes
trajectory `u(t)`, with `p[u(t)]` fixed instantaneously by incompressibility.
The functions `E(h,t)`, `F(h,t)`, `D(h,t)`, `C(h,t)`, and the complete signed
profile `Phi_in(r,t)` are simultaneous coordinates of that trajectory. They
do not define additional fluid objects.

This separates the exact identities from an interpretation that they do not
support. The positive part

```math
2c_\Lambda r^{-5}[\Phi_{\rm in}(r,t)]_+\,dr\,dt
\tag{NIC.102}
```

is a derived gross statistic. Taken by itself it discards the negative part
and the signed relation across separation scales. It therefore inherits no
conservation law, finite reserve, or no-recount property from `(NIC.65)` or
`(NIC.69)`. Likewise, the characteristics of `b=F/(2E)` are characteristics
of an aggregate correlation-density equation. They are not material-pair
histories and do not acquire ancestry, first-passage ownership, or a physical
identity through time. Equations `(NIC.82)--(NIC.88)` remain valid coordinate
calculations; the lineage and collar/source readings built on them are
withdrawn as Gold mechanisms.

The same gate applies upstream. The owner-free candidate can only be a
statement about `u` and `p[u]` themselves, for example a recurrent alignment
condition involving the actual `S[u]` and `Hess p[u]` at instantaneous
field-defined record events. The current corpus does not prove that an
arbitrary history with

```math
H_{\rm crit}(t_m)\longrightarrow\infty
\tag{NIC.103}
```

must enter that aligned class, nor does it prove a closed global alternative
for the histories that do not. The packet/lineage normal form and the
payment-row clause in the consolidated theorem are not substitutes for this
implication. Consequently the exact separation and two-point identities are
supporting readouts only. Gold remains the direct nonexistence problem for one
finite-energy Navier--Stokes evolution with unbounded critical-height records;
any smaller rigidity theorem must first be derived as an exhaustive
field-coordinate consequence of that evolution.

**Status.** Ontology correction and exact obstruction. No Gold closure is
claimed. The first unsupported implication is the reduction from arbitrary
unbounded `H_crit` evolution of the one field to the proposed aligned
recurrent-record class.

There is a stronger origin failure behind that implication. The aligned class
was selected in the earlier construction as the zero set of a transverse
pressure `bill/service` ratio. That ratio is precisely the separable grammar
removed by the participation law. Once the ratio is removed, its minimizing
sequence no longer supplies the condition `[S,Hess p]=0`. Co-diagonality is a
lawful instantaneous property of some Navier--Stokes fields, including the
filed shear-cell degeneracies; what is lost is its claimed status as the
exhaustive worst case of an arbitrary critical-height blowup. The aligned
Liouville problem is therefore a conditional test class, not the one remaining
Gold object.

## 16. Lossless dyadic audit: critical-height divergence need not select a record packet

Let `Delta_j` be a homogeneous Littlewood--Paley decomposition and retain all
shells of the one field. Set

```math
a_j(u):=2^j\|\Delta_j u\|_2^2 .
\tag{NIC.104}
```

Then, up to fixed Littlewood--Paley equivalence constants,

```math
\|u\|_{\dot H^{1/2}}^2\simeq\sum_j a_j(u),
\qquad
\|u\|_2^2\simeq\sum_j2^{-j}a_j(u).
\tag{NIC.105}
```

Choose smooth divergence-free fields `phi_j` with disjoint Fourier supports
in narrow subannuli of `|xi|` comparable to `2^j` and `||phi_j||_2=1`, and
define

```math
u^{(m)}:=\sum_{j=1}^m
\left(\frac{2^{-j}}{j}\right)^{1/2}\phi_j .
\tag{NIC.106}
```

Orthogonality gives

```math
\sup_m\|u^{(m)}\|_2^2
=\sup_m\sum_{j=1}^m\frac{2^{-j}}{j}<\infty,
\qquad
\|u^{(m)}\|_{\dot H^{1/2}}^2
\simeq\sum_{j=1}^m\frac1j\longrightarrow\infty.
\tag{NIC.107}
```

At the same time,

```math
\frac{\sup_j a_j(u^{(m)})}
{\sum_j a_j(u^{(m)})}
\lesssim\frac1{\log m}\longrightarrow0.
\tag{NIC.108}
```

Thus bounded physical energy and divergent critical height do not select any
frequency shell carrying a fixed fraction of the record. The construction is
a sequence of complete smooth fields, not a claim that these fields are
successive Navier--Stokes snapshots. Its exact role is to locate the first
missing implication: obtaining H2 from a Gold history requires a dynamical
concentration theorem that defeats `(NIC.106)--(NIC.108)`. No such theorem is
installed. Spatial localization and alignment are later conditions and cannot
repair this first failure.

**Consequence.** The fixed-fraction record packet in H2 is not inherited from
the one-field norms. The reduction to the aligned recurrent-record class fails
before the pressure Hessian or Liouville question is reached.

## 17. Record-upcrossing countersequence: NS dynamics does not restore H2 instantaneously

The preceding obstruction persists after imposing positive Navier--Stokes
critical-height production. Choose a real divergence-free Schwartz field `U`
with compact Fourier support in an annulus and

```math
P_0:=-\langle U\cdot\nabla U,\Lambda U\rangle>0.
\tag{NIC.109}
```

Such a field is supplied by the narrow whole-space realization of the triad in
§12. Write

```math
E_0=\|U\|_2^2,
\qquad H_0=\|U\|_{\dot H^{1/2}}^2,
\qquad D_0=\|U\|_{\dot H^{3/2}}^2,
\tag{NIC.110}
```

and choose `c>nu D_0/P_0`. For

```math
U_{\lambda,y}(x)=\lambda U(\lambda(x-y)),
\tag{NIC.111}
```

the exact scaling relations are

```math
\|U_{\lambda,y}\|_2^2=\lambda^{-1}E_0,
\quad
\|U_{\lambda,y}\|_{\dot H^{1/2}}^2=H_0,
\quad
P(U_{\lambda,y})=\lambda^2P_0,
\quad
\|U_{\lambda,y}\|_{\dot H^{3/2}}^2=\lambda^2D_0.
\tag{NIC.112}
```

Take `lambda_j=L^j`, with `L` large enough that the scaled Fourier annuli are
disjoint, and set

```math
u^{(m)}=c\sum_{j=1}^mU_{\lambda_j,y_j}.
\tag{NIC.113}
```

For each finite `m`, the translations `y_j` can be chosen successively far
apart so every mixed term in the Schwartz trilinear form
`-<f dot grad g,Lambda h>` is smaller in total than half the sum of the
positive self terms. This follows directly from the Fourier representation:
each mixed term acquires a nonconstant translation phase and tends to zero by
the Riemann--Lebesgue lemma. Frequency disjointness makes all quadratic norms
add exactly. Hence

```math
\sup_m\|u^{(m)}\|_2^2
=c^2E_0\sum_{j=1}^m\lambda_j^{-1}
\le C(U,c,L),
\qquad
\|u^{(m)}\|_{\dot H^{1/2}}^2=mc^2H_0,
\tag{NIC.114}
```

and the Navier--Stokes derivative at the initial time satisfies

```math
\left.\frac d{dt}H_{\rm crit}(u^{(m)}(t))\right|_{t=0}
\ge\frac12c^2(cP_0-\nu D_0)
\sum_{j=1}^m\lambda_j^2>0.
\tag{NIC.115}
```

Every field therefore begins a genuine record-upcrossing interval. Each
frequency shell contributes exactly `c^2H_0`, so its largest fraction of the
critical record is `1/m`. The fields are complete smooth Navier--Stokes
initial states; only the claim that they lie on one common blowup trajectory
is absent.

This proves that bounded energy, arbitrarily large critical height, and the
instantaneous record-upcrossing condition still do not imply H2. Any theorem
recovering a fixed-fraction spatial packet must use a genuinely global history
property beyond the current record condition. The corpus contains no such
one-field theorem.

## 18. Exact one-field spectral-mean identity and the zero-spread rigidity

There is a global recoordination that keeps the entire velocity field and does
not select a packet. Define the spectral moments

```math
M_q(t):=\int_{\mathbb R^3}|\xi|^q|\widehat u(\xi,t)|^2\,d\xi,
\qquad
m(t):=\frac{M_1(t)}{M_0(t)},
\tag{NIC.116}
```

and the probability measure

```math
d\mu_t(\xi):=M_0(t)^{-1}|\widehat u(\xi,t)|^2\,d\xi .
\tag{NIC.117}
```

Let `B(u,u)=P div(u tensor u)` be the Leray-projected nonlinearity and

```math
P_H(u):=-\langle B(u,u),\Lambda u\rangle .
\tag{NIC.118}
```

The energy and critical identities give

```math
\frac12\dot M_0=-\nu M_2,
\qquad
\frac12\dot M_1=P_H-\nu M_3.
\tag{NIC.119}
```

Consequently the energy-weighted mean frequency satisfies the exact identity

```math
\boxed{
\frac12\dot m
=\frac{P_H}{M_0}-\nu\mathcal W
}
\tag{NIC.120}
```

where

```math
\begin{aligned}
\mathcal W
&:=\frac{M_3}{M_0}-\frac{M_1M_2}{M_0^2}\\
&=\int (|\xi|-m)^2(|\xi|+m)\,d\mu_t(\xi)
\ge m\,\operatorname{Var}_{\mu_t}(|\xi|)\ge0.
\end{aligned}
\tag{NIC.121}
```

The nonlinear term is measured against the same spectral displacement.
Energy skew-symmetry gives `\langle B(u,u),u\rangle=0`, hence

```math
P_H
=-\langle B(u,u),(\Lambda-m)u\rangle .
\tag{NIC.122}
```

Thus both terms driving `(NIC.120)` vanish when the spectrum has zero spread.
On `R^3`, a nonzero `L^2` field cannot have Fourier support on the sphere
`|xi|=m`, which has Lebesgue measure zero. The exact zero-spread class is
therefore the zero field. Narrow annular fields can approach it, so this is a
rigidity statement rather than a uniform gap.

The common geometry can be made quantitative without introducing another
participant. Set

```math
V:=\operatorname{Var}_{\mu_t}(|\xi|),
\qquad
Q_m:=\|(\Lambda+m)^{-1/2}B(u,u)\|_2^2.
\tag{NIC.123}
```

Weighted Cauchy--Schwarz yields

```math
P_H^2\le Q_m M_0\mathcal W.
\tag{NIC.124}
```

Using `\langle B,u\rangle=0` before Cauchy--Schwarz gives the sharper exact
projection bound

```math
\boxed{
P_H^2
\le Q_m M_0
\left(\mathcal W-\frac{V^2}{2m}\right).
}
\tag{NIC.125}
```

Indeed, with
`x=(Lambda+m)^(-1/2)B`, `h=(Lambda+m)^(1/2)(Lambda-m)u`, and
`v=(Lambda+m)^(1/2)u`, one has `x perpendicular v`,
`||h||_2^2=M_0 W`, `||v||_2^2=2mM_0`, and
`<h,v>=M_0V`; `(NIC.125)` is Cauchy--Schwarz after projecting `h` onto
`v^perp`.

At a critical-height record upcrossing, `P_H>=nu M_3`. Equations
`(NIC.124)` and `(NIC.121)` then force

```math
Q_m
\ge\nu^2\frac{M_3^2}{M_0\mathcal W}
\ge\nu^2M_3
\ge\nu^2M_0m^3,
\qquad
\frac{Q_m}{M_0}\ge\nu^2m^3.
\tag{NIC.126}
```

This is an exact one-field necessary condition: an unbounded record history
must repeatedly generate resolvent-weighted nonlinear acceleration at least at
the viscous mean-frequency scale. It does not bound `Q_m` from the datum, so it
does not close Gold. It replaces the invalid H2 packet reduction with one
global field identity and locates the remaining theorem at the signed
nonlinear-acceleration term in `(NIC.120)`.
