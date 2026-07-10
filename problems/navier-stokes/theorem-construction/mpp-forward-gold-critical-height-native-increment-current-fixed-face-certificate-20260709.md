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

## 19. Near-monochromatic record countersequence: no uniform spectral rigidity

The zero-spread statement in §18 is exact, but it has no uniform extension to
critical-height record upcrossings. In the exact Fourier-triad algebra
(equivalently, on a flat three-torus whose reciprocal lattice contains the
displayed vectors), let

```math
\theta_\varepsilon=\frac{2\pi}{3}-\varepsilon,
\quad
k=K(1,0,0),
\quad
p=K(\cos\theta_\varepsilon,\sin\theta_\varepsilon,0),
\quad
q=-k-p,
\tag{NIC.127}
```

and set

```math
L=|q|=2K\cos(\theta_\varepsilon/2),
\qquad
\Delta=L-K>0.
\tag{NIC.128}
```

With conjugate coefficients at the negative frequencies, take

```math
\widehat u(k)=A(0,-1,0),
\qquad
\widehat u(p)=-Ae_3,
\qquad
\widehat u(q)=iAe_3.
\tag{NIC.129}
```

These coefficients are divergence free. Direct evaluation of the Fourier
nonlinearity gives

```math
T_k=0,
\qquad
T_p=-A^3K\sin\theta_\varepsilon,
\qquad
T_q=A^3K\sin\theta_\varepsilon.
\tag{NIC.130}
```

The total energy transfer is zero, while the signed critical production is

```math
P_H
=2A^3K\sin\theta_\varepsilon\,\Delta>0.
\tag{NIC.131}
```

Because the three positive frequencies have equal energy weights,

```math
m=\frac{2K+L}{3},
\qquad
V=\frac{2}{9}\Delta^2,
\qquad
\mathcal W=\frac{2}{9}\Delta^2(K+L).
\tag{NIC.132}
```

Thus `P_H` is first order in the radial width while `W` is second order. The
full critical-height record condition is

```math
P_H>\nu M_3
\quad\Longleftrightarrow\quad
A>
\nu\frac{2K^3+L^3}
{K\sin\theta_\varepsilon\,\Delta}.
\tag{NIC.133}
```

It can be met at every positive `varepsilon` by increasing the amplitude.

The construction transfers to `R^3` without changing its role. Replace the
six modes by sufficiently narrow smooth Fourier bumps around them and apply
the Leray projection. For every `varepsilon`, strict positivity persists for a
real divergence-free Schwartz field `phi_varepsilon` supported in a relative
annulus of width `O(varepsilon)`. Write

```math
P_\varepsilon=P_H(\phi_\varepsilon)>0
\tag{NIC.134}
```

Normalize `phi_varepsilon` so that its critical quadratic norm is one, and let
`E_varepsilon` and `D_varepsilon` denote its `L^2` and critical-dissipation
quadratic norms. Choose

```math
c_\varepsilon
\ge
\max\!\left\{
\varepsilon^{-1},
\frac{2\nu D_\varepsilon}{P_\varepsilon}
\right\},
\qquad
\lambda_\varepsilon
\ge c_\varepsilon^4(1+E_\varepsilon),
\tag{NIC.135}
```

and define the complete initial velocity field

```math
u_\varepsilon(x)
=c_\varepsilon\lambda_\varepsilon
\phi_\varepsilon(\lambda_\varepsilon x).
\tag{NIC.136}
```

Exact Navier--Stokes scaling yields

```math
\|u_\varepsilon\|_2^2
=\lambda_\varepsilon^{-1}c_\varepsilon^2E_\varepsilon
\longrightarrow0,
\qquad
H_{\rm crit}(u_\varepsilon)
=c_\varepsilon^2\longrightarrow\infty,
\tag{NIC.137}
```

and

```math
\left.\frac d{dt}H_{\rm crit}(u_\varepsilon(t))\right|_{t=0}
=\lambda_\varepsilon^2c_\varepsilon^2
\big(c_\varepsilon P_\varepsilon-\nu D_\varepsilon\big)>0.
\tag{NIC.138}
```

The relative spectral spread remains unchanged by the amplitude and spatial
scalings, so

```math
\frac{V(u_\varepsilon)}{m(u_\varepsilon)^2}
\longrightarrow0.
\tag{NIC.139}
```

Finally, the nonlinear acceleration at the `p` and `q` modes has magnitude
`A^2K sin(theta_varepsilon)`, which stays nonzero at equal radius. Hence `Q_m`
has the exact lower bound

```math
Q_m
\ge
2A^4K^2\sin^2\theta_\varepsilon
\left(
\frac1{K+m}+\frac1{L+m}
\right)
\longrightarrow \frac32A^4K,
\tag{NIC.140}
```

even though `(NIC.131)` tends to zero. Thus `Q_m` counts nonlinear exchange
that cancels under a constant radial weight. Passing from `(NIC.122)` to the
unsigned `Q_m` norm discards the cancellation that made the spectral identity
useful.

**Consequence.** Equations `(NIC.120)--(NIC.126)` remain exact, but they do not
strictly reduce Gold. The one-field states `(NIC.134)--(NIC.139)` have bounded
energy, divergent critical height, positive initial record production, and
vanishing relative spectral spread. Equation `(NIC.140)` separately shows that
the `Q_m` magnitude does not converge to the zero-spread rigidity class. These
fields are not claimed to be snapshots of one common trajectory. Excluding
them along a putative Gold history requires a new complete-history theorem;
zero-spread rigidity and the `Q_m` magnitude condition do not supply it.

## 20. Complete-history moment gate: exact occupancy, no peak bound

Set

```math
R(t):=M_1(t)=\|u(t)\|_{\dot H^{1/2}}^2,
\qquad
E(t):=M_0(t)=\|u(t)\|_2^2.
\tag{NIC.141}
```

The energy identity and Cauchy--Schwarz in the spectral measure give

```math
E'=-2\nu M_2,
\qquad
R^2=M_1^2\le M_0M_2.
\tag{NIC.142}
```

Consequently

```math
-\frac d{dt}E^2
=4\nu E M_2
\ge4\nu R^2,
\tag{NIC.143}
```

and hence

```math
\boxed{
4\nu\int_0^T R(t)^2dt
\le E(0)^2-E(T)^2
\le E(0)^2.
}
\tag{NIC.144}
```

In particular,

```math
\big|\{t\in[0,T]:R(t)\ge K\}\big|
\le\frac{E(0)^2}{4\nu K^2}
\qquad(K>0).
\tag{NIC.145}
```

This is an exact datum-bound statement about the complete time history of the
one field. It limits how long a high critical record can persist, but allows
arbitrarily high records on correspondingly short intervals.

There is also an exact record-time acceleration law. Since `m=R/E`,

```math
m'
=\frac{R'}E+2\nu m\frac{M_2}{E}.
\tag{NIC.146}
```

Whenever `R'>=0`, Jensen's inequality gives

```math
\boxed{m'\ge2\nu m^3,}
\tag{NIC.147}
```

and therefore, on any uninterrupted record-upcrossing interval starting at
`t_0`,

```math
\frac1{m(t)^2}
\le
\frac1{m(t_0)^2}-4\nu(t-t_0).
\tag{NIC.148}
```

Thus the interval must end or lose smoothness within
`1/(4 nu m(t_0)^2)`. This is compatible with the alleged finite-time breakdown;
it does not exclude it.

Exact Navier--Stokes scaling shows why no positive scale-independent dwell time
comes from these rows. If `U` has a strict critical upcrossing on `[0,tau]`,
then

```math
U_\lambda(t,x)=\lambda U(\lambda^2t,\lambda x)
\tag{NIC.149}
```

has the same critical-height history compressed into
`[0,lambda^{-2}tau]`, while its `L^2` energy is multiplied by `lambda^{-1}`.
This compares complete smooth solutions; it does not build one recurrent
tower.

**Consequence.** The complete-history information available from energy,
radial spectral moments, and record monotonicity is `(NIC.144)--(NIC.148)`.
It forces high records into summably short epochs and is fully compatible with
the NS scaling. Therefore the spectral-moment route stops at an occupancy
bound, not a peak bound. Closing Gold requires a signed one-field history fact
that these radial moments discard; neither `Q_m` nor Leray occupancy supplies
it.

## 21. Exact full-field helical participation barrier

This section uses the two helicity signs only as orthogonal readouts of the
same velocity field. They are not separate fluids, carriers, or stores.

On divergence-free fields set

```math
\mathcal C=\Lambda^{-1}\operatorname{curl},
\qquad
\Pi_s=\frac12(I+s\mathcal C),
\qquad s\in\{+1,-1\},
\tag{NIC.150}
```

and write `u_s=Pi_s u`. Then

```math
\operatorname{curl}u_s=s\Lambda u_s,
\qquad
u=u_++u_-,
\qquad
\langle\Lambda^\alpha u_+,\Lambda^\alpha u_-\rangle=0.
\tag{NIC.151}
```

Define

```math
R_s=\|\Lambda^{1/2}u_s\|_2^2,
\qquad
D_s=\|\Lambda^{3/2}u_s\|_2^2,
\tag{NIC.152}
```

and, with `B=P div(u tensor u)`, define

```math
P_s=-\langle B,\Lambda u_s\rangle,
\qquad
P_H=-\langle B,\Lambda u\rangle=P_++P_-.
\tag{NIC.153}
```

### 21.1 Equal nonlinear production in the two readouts

The Euler nonlinearity conserves the full-field helicity exactly:

```math
\langle B,\operatorname{curl}u\rangle
=\int (u\cdot\nabla u)\cdot\omega\,dx
=0.
\tag{NIC.154}
```

Indeed,

```math
(u\cdot\nabla)u
=\nabla\frac{|u|^2}{2}-u\times\omega,
```

and both terms have zero pairing with `omega`. Since
`curl u=Lambda u_+-Lambda u_-`, `(NIC.154)` gives

```math
\boxed{P_+=P_-=\frac12P_H.}
\tag{NIC.155}
```

Consequently every smooth Navier--Stokes epoch satisfies

```math
\boxed{
\frac12R_s'+\nu D_s=\frac12P_H,
\qquad s\in\{+1,-1\}.
}
\tag{NIC.156}
```

In particular, the cubic critical production vanishes on either pure-helicity
slice. This is an instantaneous cancellation, not a claim that a pure slice is
invariant under the full Navier--Stokes evolution.

### 21.2 Opposite-helicity output null estimate

The endpoint estimate needed below is not the false embedding
`Hdot^{3/2} into L-infinity`. It follows from a helical output null form.

**Lemma.** If `v=Pi_s v` is a Schwartz divergence-free field, then

```math
\boxed{
\|\Pi_{-s}(v\times\Lambda v)\|_{\dot H^{1/2}}
\le C\|v\|_{\dot H^{3/2}}^2.
}
\tag{NIC.157}
```

To see the symbol cancellation, use the Fourier projector

```math
\Pi_s(\xi)
=\frac12\left(
I-\widehat\xi\otimes\widehat\xi
+s\,i\widehat\xi\times
\right).
\tag{NIC.158}
```

Let `x` lie in the range of `Pi_s(p)`. For every vector `y`,

```math
\Pi_{-s}(p)(x\times y)=0.
\tag{NIC.159}
```

For the exact verification, decompose `y` into its part parallel to `p` and
its part perpendicular to `p`. The cross product of two vectors perpendicular
to `p` is parallel to `p` and is removed by the Leray projection. Also,
`x cross p_hat` is a scalar multiple of `x`, so its surviving transverse part
has helicity `s` and is removed by `Pi_{-s}`.

If `k=p+q` and `|p|>=2|q|`, Lipschitz dependence of `(NIC.158)` on direction
therefore gives

```math
|\Pi_{-s}(k)(x\times y)|
\le C\frac{|q|}{|p|}|x|\,|y|.
\tag{NIC.160}
```

Apply this with the higher-frequency input in the `x` slot. The bilinear
symbol of `Pi_{-s}(v cross Lambda v)` is bounded by

```math
C\min\{|p|,|q|\}.
\tag{NIC.161}
```

After dyadic localization, the normalized high--low cancellation symbol in
`(NIC.160)` is uniformly Coifman--Meyer: every derivative of the helical
projectors costs the corresponding inverse input frequency. Thus the pointwise
gain in `(NIC.161)` is an operator bound, not only a symbol-size heuristic.

Here is the endpoint summation. Let `v_j=Delta_j v` and

```math
A_j=2^{3j/2}\|v_j\|_2.
```

For a high--low interaction `n<=m-4`, `(NIC.161)`, Bernstein, and the fact
that the output has frequency comparable to `2^m` give

```math
2^{m/2}
\|\Delta_m\Pi_{-s}(v_m\times\Lambda v_n
+v_n\times\Lambda v_m)\|_2
\le C2^{n-m}A_mA_n.
\tag{NIC.162}
```

For `|m-n|<=3` and output frequency `2^ell`, where `ell<=m+C`, Cauchy--Schwarz
in Fourier space and the output-volume factor give

```math
2^{\ell/2}
\|\Delta_\ell\Pi_{-s}(v_m\times\Lambda v_n)\|_2
\le C2^{-2(m-\ell)}A_mA_n.
\tag{NIC.163}
```

The kernels `2^{n-m}` and `2^{-2(m-ell)}` are summable. Taking the `ell^2`
norm in the output index yields `(NIC.157)` because
`||A||_{ell^2}=||v||_{Hdot^{3/2}}`. Thus the endpoint carries no hidden
logarithmic loss.

### 21.3 The minority-helicity critical estimate

The critical production has the exact one-field form

```math
\boxed{
P_H
=2\int (u_++u_-)
\cdot(\Lambda u_+\times\Lambda u_-)\,dx.
}
\tag{NIC.164}
```

This follows directly from
`(u dot grad)u=grad(|u|^2/2)-u cross omega` and
`omega=Lambda u_+-Lambda u_-`.

Assume first that `||u_-||_{Hdot^{1/2}}` is the smaller critical readout. The
term linear in `u_-` is bounded using `(NIC.157)`:

```math
\begin{aligned}
\left|\int u_+\cdot
(\Lambda u_+\times\Lambda u_-)\,dx\right|
&=\left|\left\langle
\Lambda u_-,u_+\times\Lambda u_+
\right\rangle\right|\\
&\le
C\|u_-\|_{\dot H^{1/2}}
\|u_+\|_{\dot H^{3/2}}^2.
\end{aligned}
\tag{NIC.165}
```

The term containing two `u_-` factors is controlled by
`Hdot^{1/2} into L^3`:

```math
\left|\int u_-\cdot
(\Lambda u_+\times\Lambda u_-)\,dx\right|
\le
C\|u_-\|_{\dot H^{1/2}}
\|u_+\|_{\dot H^{3/2}}
\|u_-\|_{\dot H^{3/2}}.
\tag{NIC.166}
```

Interchanging the two signs gives the same estimate when the `+` readout is
smaller. Therefore

```math
\boxed{
|P_H(u)|
\le
C\min_{s\in\{+,-\}}
\|u_s\|_{\dot H^{1/2}}
\|u\|_{\dot H^{3/2}}^2.
}
\tag{NIC.167}
```

This is an estimate for the full Navier--Stokes cubic. No isolated Waleffe
relay or independently evolving helical component has been introduced.

### 21.4 Exact record consequence and exact limit

Let

```math
R=R_++R_-,
\qquad
D=D_++D_-,
\qquad
h_{\min}=\min\{R_+^{1/2},R_-^{1/2}\}.
```

The critical balance and `(NIC.167)` give

```math
\boxed{
\frac12R'+(\nu-Ch_{\min})D\le0.
}
\tag{NIC.168}
```

Hence every nonzero smooth time with `R'>=0` obeys

```math
\boxed{
h_{\min}\ge\frac\nu C.
}
\tag{NIC.169}
```

Physically: the one fluid cannot increase its critical height through a
single handedness. Both curl signs must be present in the same field at a
scale-invariant critical amplitude. This is the exact full-field version of a
mixed-helicity participation condition.

It is not a finite Gold reserve. Under the Navier--Stokes scaling

```math
v_\lambda(x)=\lambda v(\lambda x),
```

both `Hdot^{1/2}` helical norms in `(NIC.169)` are unchanged, while
`||v_lambda||_2^2=lambda^{-1}||v||_2^2` and
`||v_lambda||_{Hdot^{3/2}}^2=lambda^2||v||_{Hdot^{3/2}}^2`.
Scaled smooth solutions can therefore meet the same participation threshold at
smaller scales with vanishing physical-energy cost and compressed time. This
does not construct recurrence inside one Navier--Stokes trajectory. It shows
only that `(NIC.169)` supplies neither a scale-independent energy charge nor a
dwell-time lower bound; a same-trajectory history identity could still exclude
recurrence. The estimate strictly reduces any Gold counterhistory to
mixed-helicity critical records at its record times, but supplies no event
count, no one-way loss, and no bound on record height.

## 22. Quadratic helical-state no-go and the exact odd-current obstruction

The helical pieces remain simultaneous readouts of the one velocity field in
this section. The purpose is to determine whether their four quadratic moments
can carry the missing time arrow, and then to test the first same-field odd
quantity that escapes that parity obstruction.

### 22.1 Sector means and the viscous spectral-variance row

In addition to `(NIC.152)`, set

```math
E_s=\|u_s\|_2^2,
\qquad
K_s=\|\Lambda u_s\|_2^2,
\qquad
T_s=-\langle B,u_s\rangle.
\tag{NIC.170}
```

The full energy and helicity cancellations give

```math
T_++T_-=0,
\qquad
P_+=P_-=\frac12P_H,
\tag{NIC.171}
```

and the exact sector system is

```math
\boxed{
\frac12E_s'+\nu K_s=T_s,
\qquad
\frac12R_s'+\nu D_s=\frac12P_H.
}
\tag{NIC.172}
```

For `E_s>0`, define the mean helical frequency `m_s=R_s/E_s`. Direct
differentiation of `(NIC.172)` yields

```math
\boxed{
m_s'
=
\frac{P_H-2m_sT_s-2\nu(D_s-m_sK_s)}{E_s}.
}
\tag{NIC.173}
```

If `d mu_s(r)` is the radial pushforward of
`|u_s hat(xi)|^2 d xi`, then

```math
\boxed{
E_sD_s-R_sK_s
=
\frac12\iint
(r+\rho)(r-\rho)^2\,d\mu_s(r)d\mu_s(\rho)
\ge0.
}
\tag{NIC.174}
```

Thus `D_s-m_s K_s>=0`. Equality means that the sector is supported on one
frequency radius. A nonzero `L^2(R^3)` field cannot have such support; on the
torus equality is exactly single-shell support. Viscosity therefore decreases
the sector mean frequency strictly on `R^3` unless the sector vanishes. The
remaining nonlinear numerator `P_H-2m_sT_s` has no sign from the four moments.

### 22.2 Exact parity no-go for every four-moment scalar

Let

```math
\mathcal M(u)=(E_+,E_-,R_+,R_-)
```

and let `F` be `C^1` on the positive moment cone. Its inviscid nonlinear
derivative is

```math
\boxed{
\mathcal N_F(u)
=
2(F_{E_+}-F_{E_-})T_+
+(F_{R_+}+F_{R_-})P_H.
}
\tag{NIC.175}
```

The admissible same-field map `u -> -u` leaves all four entries of
`mathcal M` fixed. It also leaves `B(u,u)` and the slaved pressure fixed, while
it sends each linear readout `u_s` to `-u_s`. Consequently

```math
(T_+,P_H)(-u)=-(T_+,P_H)(u),
\qquad
\boxed{\mathcal N_F(-u)=-\mathcal N_F(u).}
\tag{NIC.176}
```

Therefore a universal one-sided sign for `mathcal N_F` forces
`mathcal N_F(u)=0` for every smooth divergence-free field. This is an
initial-state symmetry of the full Euler vector field. It does not identify
`-u(t)` with the same positive-viscosity trajectory.

The resulting invariant classification is exact on `R^3`.

**Fixed-moment span lemma.** At every interior moment state
`M=(E_+,E_-,R_+,R_-)>0`, smooth real divergence-free Schwartz fields with
`mathcal M(u)=M` realize two independent vectors in

```math
\mathcal V
=
\{(2T,-2T,P,P):T,P\in\mathbb R\}.
\tag{NIC.177}
```

Here is a constructive certificate. Use two compact-Fourier mixed-helicity
triad clusters concentrated near

```math
K_n=(n,0,0),
\qquad
L=(0,1,0),
\qquad
Q_n=(-n,-1,0),
\qquad n\in\{2,3\},
\tag{NIC.178}
```

with signs `(+,+,-)`. For the corresponding plane-wave symbols, direct
helical evaluation gives a nonzero transfer and

```math
\frac{P_H}{T_+}=-2|Q_n|=-2\sqrt{n^2+1}.
\tag{NIC.179}
```

One explicit nonzero normalization is

```math
T_+
=
\frac{n(n-1)}{\sqrt2(\sqrt{n^2+1}+1)}
\left(1-\frac{n-1}{\sqrt{n^2+1}}\right)>0.
\tag{NIC.180}
```

Rotate one cluster generically and choose all support balls sufficiently
narrow that every undesignated signed three-center sum stays away from zero.
All cross-cluster cubic terms then vanish exactly. A compact bump cluster need
not remain on one transfer ray for every phase. Its exact phase law has the
form

```math
(T_i(\theta),P_i(\theta))
=
\operatorname{Re}
\left(e^{i\theta}(C_i^T,C_i^P)\right),
\qquad
V_i(\theta+\pi)=-V_i(\theta).
\tag{NIC.181}
```

At a chosen phase its transfer vector converges to `(NIC.179)` as the balls
shrink. The `n=2` and `n=3` vectors are therefore independent for sufficiently
narrow balls.

Scale the two active clusters so that their four moment contributions are
arbitrarily small. For each sign, fill the positive residual pair `(E_s,R_s)`
with two reality-symmetric silent packet pairs having unit-energy mean radii

```math
\rho_{s,1}<\frac{R_s}{E_s}<\rho_{s,2}.
```

Their squared amplitudes are exactly

```math
a_{s,1}^2
=
\frac{\rho_{s,2}E_s-R_s}{\rho_{s,2}-\rho_{s,1}},
\qquad
a_{s,2}^2
=
\frac{R_s-\rho_{s,1}E_s}{\rho_{s,2}-\rho_{s,1}}.
\tag{NIC.182}
```

Generic directions and sufficiently small support balls exclude every zero
triple-sum involving a filler, so all filler self-rates and cross-rates vanish.
Changing an active phase by `pi` preserves `mathcal M` and reverses only that
cluster's cubic transfer. This proves `(NIC.177)` at the prescribed moment
state.

Combining `(NIC.175)` with the two independent fixed-fiber vectors gives

```math
F_{E_+}=F_{E_-},
\qquad
F_{R_+}=-F_{R_-}
\tag{NIC.183}
```

throughout the connected positive cone. Hence

```math
\boxed{
F(E_+,E_-,R_+,R_-)
=
f(E_++E_-,R_+-R_-).
}
\tag{NIC.184}
```

The only universal inviscid invariants visible to the four quadratic helical
moments are functions of total energy and signed helicity.

### 22.3 The first odd current has an exact unsigned evolution

The scalar `P_H` escapes `(NIC.176)` because it is cubic and odd. Set

```math
N=B(u,u),
\qquad
P_H(u)=-\langle N,\Lambda u\rangle.
```

For a smooth Navier--Stokes epoch, differentiating this same-field functional
and substituting `u_t=-N-nu Lambda^2u` gives

```math
\boxed{
\begin{aligned}
P_H'
={}&Q_E(u)+\nu Q_V(u),\\
Q_E(u)
={}&\langle B(N,u)+B(u,N),\Lambda u\rangle
+\langle N,\Lambda N\rangle,\\
Q_V(u)
={}&\langle B(\Lambda^2u,u)+B(u,\Lambda^2u),\Lambda u\rangle
+\langle N,\Lambda^3u\rangle.
\end{aligned}
}
\tag{NIC.185}
```

Both signs in the last two lines are positive because the minus sign in the
definition of `P_H` meets the two minus signs in `u_t`.

Neither `Q_E` nor the full derivative has a one-way sign. Two exact periodic
examples make this attackable.

For a positive example, let `k=e_1`, `ell=e_2` and take

```math
\widehat u(\pm k)=a e_2,
\qquad
\widehat u(\pm\ell)=b e_3,
\qquad ab\ne0.
\tag{NIC.186}
```

There is no zero-sum triple in the initial support, so `P_H=Q_V=0`. The four
nonzero modes of `N` are `+/- (k+ell)` and `+/- (k-ell)`, all on radius
`sqrt(2)`. Since `Lambda u=u`, Euler energy conservation gives

```math
\boxed{
Q_E=P_H'=(\sqrt2-1)\|N\|_2^2>0.
}
\tag{NIC.187}
```

For a negative example, take the planar modes

```math
k=(1,3,0),
\qquad
\ell=(1,-1,0),
```

with

```math
\widehat u(k)=\frac{i}{10}(-3,1,0),
\qquad
\widehat u(\ell)=\frac{i}{2}(1,1,0),
\qquad
\widehat u(-m)=\overline{\widehat u(m)}.
\tag{NIC.188}
```

The complete nonlinear support and coefficients are

```math
\widehat N(2,2,0)=\frac{i}{5}(2,-2,0),
\qquad
\widehat N(0,4,0)=\frac{i}{5}(-2,0,0),
\tag{NIC.189}
```

together with their conjugates. Again `P_H=Q_V=0`, while the full quartic is

```math
\boxed{
Q_E
=
\frac{32+34\sqrt2-26\sqrt{10}}{25}<0.
}
\tag{NIC.190}
```

The sign is exact: after squaring positive quantities,
`26 sqrt(10)>32+34 sqrt(2)` reduces first to
`107>68 sqrt(2)` and then to `11449>9248`.

The strict periodic signs transfer to real divergence-free Schwartz fields on
`R^3`: replace each Fourier atom by the same narrow compactly supported smooth
packet and apply the Leray projector. Equivalently, for a compact-Fourier
envelope `chi`, localize a finite periodic carrier `U` by
`u_L=P_R3(chi(x/L)U)`. The quartic multiplier is smooth away from zero and

```math
L^{-3}Q_E(u_L)
\longrightarrow
c_\chi Q_E^{\mathbb T^3}(U),
\qquad
c_\chi>0,
\tag{NIC.191}
```

while projection and envelope commutators are `O(L^{-1})` relative to the
leading term. Near-zero quadratic outputs are also lower order because the
carrier-zero coefficient vanishes. Thus `(NIC.187)` and `(NIC.190)` are
full-space sign counterexamples as well.

### 22.4 Failure persists on a strict critical record-growth state

The negative sign is not confined to a non-record state. On the normalized
torus use

```math
k=(-3,-3,0),
\quad
p=(-2,-1,0),
\quad
q=(5,4,0),
\quad
k+p+q=0,
\tag{NIC.192}
```

with helicities `(+,-,-)`, amplitudes `(2,1,1)`, and

```math
h_s(a,b,0)
=
\frac1{\sqrt2}
\left(\frac{isb}{\sqrt{a^2+b^2}},
-\frac{isa}{\sqrt{a^2+b^2}},1\right),
\qquad
i m\times h_s(m)=s|m|h_s(m).
\tag{NIC.193}
```

Set `u hat(k)=2h_+(k)`, `u hat(p)=h_-(p)`,
`u hat(q)=h_-(q)`, and impose reality at the negative modes. Direct full
convolution, including all on-support and off-support outputs, gives

```math
\begin{aligned}
P
:={}&P_H(u)
=-\frac{36}{5}\sqrt5
+\frac{36}{41}\sqrt{41}
+\frac{216}{205}\sqrt{410},\\
D
:={}&\|u\|_{\dot H^{3/2}}^2
=432\sqrt2+10\sqrt5+82\sqrt{41},\\
Q
:={}&Q_E(u)\\
= {}&-\frac{1065969}{23165}\sqrt2
-\frac{6624}{1025}\sqrt5
+\frac{57476}{23165}\sqrt{41}
+\frac{249}{205}\sqrt{410}\\
&+\frac{2115}{1517}\sqrt{74}
-\frac9{205}\sqrt{15170}
+\frac{7196}{4633}\sqrt{113}
+\frac6{41}\sqrt{9266},\\
Q_V(u)
={}&-64P.
\end{aligned}
\tag{NIC.194}
```

The last identity uses the single-triad relation
`|k|^2+|p|^2+|q|^2=18+5+41=64`. Rational bracketing of every displayed square
root gives the strict signs

```math
\boxed{
P>0,
\qquad
107P-D>0,
\qquad
Q<0.
}
\tag{NIC.195}
```

For a fully rational check, the same brackets give

```math
P>\frac{11128963383}{1025000000},
\qquad
107P-D>\frac{6966049717}{2050000000},
```

and

```math
-\frac{798013219289497}{428552500000000}
<Q<
-\frac{7062061638101}{3792500000000}<0.
\tag{NIC.196}
```

Amplitude-scale this one field by `u^Gamma=Gamma u`. Then

```math
P_H(u^\Gamma)=\Gamma^3P,
\qquad
D(u^\Gamma)=\Gamma^2D,
\qquad
Q_E(u^\Gamma)=\Gamma^4Q,
\qquad
Q_V(u^\Gamma)=-64\Gamma^3P.
\tag{NIC.197}
```

For every `Gamma>=107 nu>0`, the exact critical-height balance and
`(NIC.185)` give

```math
\boxed{
R_\Gamma'(0)
=2\Gamma^2(\Gamma P-\nu D)>0,
\qquad
P_H'(0)
=\Gamma^3(\Gamma Q-64\nu P)<0.
}
\tag{NIC.198}
```

Thus `P_H` is decreasing at a smooth state where the total critical height is
strictly increasing. Restricting the candidate arrow to record-growth states
does not repair its sign.

This strict record obstruction also transfers to `R^3`. Apply the localization
in `(NIC.191)` to the finite triad carrier and choose a real nonnegative
envelope. Carrierwise multiplier expansion gives

```math
\begin{aligned}
L^{-3}P_H(u_L)&\longrightarrow c_3P>0,\\
L^{-3}D(u_L)&\longrightarrow c_2D>0,\\
L^{-3}Q_E(u_L)&\longrightarrow c_4Q<0,\\
L^{-3}Q_V(u_L)&\longrightarrow c_3Q_V<0,
\end{aligned}
\qquad
c_j>0.
\tag{NIC.199}
```

For all sufficiently large `L`, first fix the signs in `(NIC.199)` and then
choose the amplitude `Gamma` large enough relative to `nu`. The resulting real
divergence-free Schwartz datum satisfies `R'(0)>0` and `P_H'(0)<0`. By
continuity both inequalities persist on a short smooth interval; every time in
a sufficiently short initial subinterval is a strict critical-height record
relative to its initial value while the odd current decreases.

**Result of this section.** The four quadratic helical moments contain only
the energy and signed-helicity invariants after the full two-dimensional
transfer plane is tested. The cubic `P_H` is a lawful odd same-field current,
but its exact evolution is unsigned globally and on strict record-growth
states. This is an exact obstruction, not Gold closure. Any surviving Gold
argument must use genuinely time-nonlocal same-trajectory information or
richer same-field geometry than the instantaneous state
`(E_+,E_-,R_+,R_-,P_H)`.

## 23. Critical-record normalization ejects classical viscosity

This section keeps the whole velocity field as the only evolving object. It
tests a contradiction/compactness route after the instantaneous arrows of
Sections 21--22 have been exhausted.

Assume that one smooth `R^3` Navier--Stokes solution on `[0,T)` has first-record
times `t_n -> T` such that

```math
R_n:=\|u(t_n)\|_{\dot H^{1/2}}^2\longrightarrow\infty,
\qquad
R(t)\le R_n\quad(0\le t\le t_n).
\tag{NIC.200}
```

Write

```math
D_n:=\|u(t_n)\|_{\dot H^{3/2}}^2,
\qquad
P_n:=P_H(u(t_n)).
```

### 23.1 The viscosity--compactness identity

For arbitrary `a_n,ell_n>0` and centers `x_n`, rescale the same field by

```math
v_n(y,\tau)
=
a_n u(x_n+\ell_n y,t_n+a_n\ell_n\tau),
\qquad
\pi_n(y,\tau)
=a_n^2p(x_n+\ell_n y,t_n+a_n\ell_n\tau).
\tag{NIC.201}
```

The transformed equation is exactly

```math
\partial_\tau v_n+(v_n\cdot\nabla)v_n+\nabla\pi_n
=\nu_n\Delta v_n,
\qquad
\boxed{\nu_n=\nu\frac{a_n}{\ell_n}}.
\tag{NIC.202}
```

At corresponding times, the relevant homogeneous quantities obey

```math
\begin{aligned}
E(v_n)&=a_n^2\ell_n^{-3}E(u),
&R(v_n)&=a_n^2\ell_n^{-2}R(u),\\
D(v_n)&=a_n^2D(u),
&P_H(v_n)&=a_n^3\ell_n^{-1}P_H(u).
\end{aligned}
\tag{NIC.203}
```

Eliminating `a_n/ell_n` gives the scale-choice-independent identity

```math
\boxed{
\nu_n
=
\nu\sqrt{\frac{R(v_n(0))}{R_n}}.
}
\tag{NIC.204}
```

Consequently, every normalization with

```math
0<c\le R(v_n(0))\le C<\infty
```

has `nu_n -> 0`. Conversely, if `nu_n>=nu_*>0`, then

```math
R(v_n(0))
\ge
\left(\frac{\nu_*}{\nu}\right)^2R_n
\longrightarrow\infty.
\tag{NIC.205}
```

Thus no bounded, nonzero critical normalization of an unbounded record
sequence can retain a positive classical Navier--Stokes viscosity. This is an
exact obstruction to a positive-viscosity ancient-NS compactness route; it is
independent of the length scale used to seek concentration.

### 23.2 Canonical two-moment normalization

The normalization that fixes the critical height and one frequency moment is

```math
\ell_n=\sqrt{\frac{R_n}{D_n}},
\qquad
a_n=D_n^{-1/2},
\qquad
\theta_n=a_n\ell_n=\frac{\sqrt{R_n}}{D_n}.
\tag{NIC.206}
```

With `v_n` defined by `(NIC.201)`, this gives

```math
\boxed{
R(v_n(0))=1,
\qquad
D(v_n(0))=1,
\qquad
\nu_n=\frac{\nu}{\sqrt{R_n}}\longrightarrow0.
}
\tag{NIC.207}
```

Define the dimensionless current efficiency

```math
\eta_n
:=P_H(v_n(0))
=\frac{P_n}{D_n\sqrt{R_n}}.
\tag{NIC.208}
```

The critical balance and record-growth condition are then

```math
\boxed{
\frac12\frac{d}{d\tau}R(v_n)(0)
=\eta_n-\nu_n,
\qquad
\eta_n\ge\nu_n.
}
\tag{NIC.209}
```

The exact HMIN estimate from `(NIC.167)` becomes

```math
\boxed{
\eta_n
\le
C\min_{s\in\{+,-\}}
\|v_{n,s}(0)\|_{\dot H^{1/2}}.
}
\tag{NIC.210}
```

The first-record property survives on the full backward rescaled interval:

```math
R(v_n(\tau))\le1,
\qquad
-\frac{t_n}{\theta_n}\le\tau\le0.
\tag{NIC.211}
```

Interpolation and the Leray energy inequality give

```math
R_n^3
\le E(t_n)^2D_n
\le E(0)^2D_n.
\tag{NIC.212}
```

Hence

```math
\frac{t_n}{\theta_n}
=\frac{t_nD_n}{\sqrt{R_n}}
\ge
\frac{t_nR_n^{5/2}}{E(0)^2}
\longrightarrow\infty.
\tag{NIC.213}
```

On every fixed backward interval, `(NIC.211)` bounds `v_n` in
`L^\infty_\tau\dot H^{1/2}`. Moreover

```math
\|B(v_n,v_n)\|_{\dot H^{-3/2}}
\lesssim
\|v_n\|_{\dot H^{1/2}}^2,
\qquad
\|\nu_n\Delta v_n\|_{\dot H^{-3/2}}
\le
\nu_n\|v_n\|_{\dot H^{1/2}}.
\tag{NIC.214}
```

After multiplication by a fixed spatial cutoff, `(NIC.211)--(NIC.214)` bound
`v_n` in `L^\infty_\tau H^{1/2}_{loc}` and `partial_tau v_n` in
`L^\infty_\tau H^{-2}_{loc}`. Rellich compactness, time interpolation, and a
diagonal extraction give strong local `L^2` convergence on every compact
backward cylinder. Hence `v_n tensor v_n` converges strongly in `L^1_{loc}`,
the nonlinear term passes, and `nu_n Delta v_n -> 0` distributionally. The
resulting ancient weak Euler limit may be zero: the endpoint equalities
`R(v_n(0))=D(v_n(0))=1` and the cubic current do not pass through this weak
compactness statement.

### 23.3 Endpoint normalization does not prevent vanishing

The missing nontriviality is genuine. Fix a nonzero divergence-free Schwartz
field `w` with smooth compact Fourier support in an annulus. For each `N`,
choose points `x_{j,N}` by a diagonal separation argument and set

```math
w_N(x)
=
N^{-1/2}\sum_{j=1}^Nw(x-x_{j,N}).
\tag{NIC.215}
```

Let `q_N=min_{i!=j}|x_{i,N}-x_{j,N}|` and write
`T(f,g,h)` for the trilinear polarization of `P_H`. Riemann--Lebesgue permits
the centers to be chosen so that

```math
N\sup_{|h|\ge q_N}
\left|
\langle\Lambda^s w,T_h\Lambda^s w\rangle
\right|
\longrightarrow0,
\qquad s\in\left\{\frac12,\frac32\right\},
\tag{NIC.215a}
```

and

```math
N^{3/2}
\sup_{\max\{|a|,|b|,|a-b|\}\ge q_N}
|T(w,T_aw,T_bw)|
\longrightarrow0.
\tag{NIC.215b}
```

These bounds control the complete sums of off-diagonal quadratic pairings and
mixed cubic terms. Hence

```math
R(w_N)\longrightarrow R(w),
\qquad
D(w_N)\longrightarrow D(w),
\qquad
P_H(w_N)=O(N^{-1/2})+o(1).
\tag{NIC.216}
```

With `S_\lambda f(x)=\lambda f(\lambda x)`, set exactly

```math
z_N
=
R(w_N)^{-1/2}
S_{\sqrt{R(w_N)/D(w_N)}}w_N.
\tag{NIC.216a}
```

The two factors remain bounded above and below, and

```math
R(z_N)=D(z_N)=1,
\qquad
P_H(z_N)\longrightarrow0.
\tag{NIC.217}
```

The separation can simultaneously be made quantitative. Choose `q_N` so
rapidly that, for every fixed
ball radius `A`,

```math
\sqrt N
\sup_{|x|\ge q_N/3-A}
\sum_{|\alpha|\le2}|\partial^\alpha w(x)|
\longrightarrow0.
\tag{NIC.217a}
```

Any translated ball of radius `A` is close to at most one center/core. That
core has size `N^{-1/2}`, and `(NIC.217a)` makes the uniformly summed remote
Schwartz tails `o(1)`. Thus every translated subsequence converges locally to zero.
The exact endpoint bounds in
`(NIC.207)` admit spatial vanishing. Analogous low/high-frequency pairs give
frequency dichotomy: the low component can carry almost all of `R`, while a
critical-mass `O(lambda^{-2})` component at frequency `lambda -> infinity`
carries order-one `D`.

These are endpoint countersequences, not records cut from one Navier--Stokes
trajectory. Their role is exact: the inherited normalization bounds alone do
not prove tightness or a nonzero ancient profile.

### 23.4 The two surviving compactness branches

After subsequence extraction, the normalized records split by `(NIC.208)`.

If

```math
\liminf_{n\to\infty}\eta_n=\eta_0>0,
\tag{NIC.218}
```

then `(NIC.210)` gives a nonzero relative critical fraction in both helical
sectors at the terminal time. Section 27 proves the stronger inverse theorem:
after translation and subsequence extraction, one full endpoint profile in
`Hdot^{1/2} cap Hdot^{3/2}` retains strictly positive `P_H` and is the terminal
trace of an ancient weak Euler history. What remains unproved is inheritance of
the terminal record by that profile, continuity of the full cubic current from
negative times, and a rigidity theorem for the resulting narrower dynamic
class.

If instead

```math
\eta_n\longrightarrow0,
\tag{NIC.219}
```

then `(NIC.209)` gives

```math
\nu_n\longrightarrow0,
\qquad
\frac{d}{d\tau}R(v_n)(0)\longrightarrow0.
\tag{NIC.220}
```

HMIN supplies no positive relative helicity floor in this branch, and the
vanishing/dichotomy examples above are not excluded by the inherited endpoint
data. A broad ancient-Euler Liouville theorem cannot close the branch: smooth
nonzero compactly supported steady Euler flows on `R^3` already satisfy the
bounded ancient and zero-current conditions; see
[Gavrilov](https://arxiv.org/abs/1810.08020) and
[Constantin--La--Vicol](https://arxiv.org/abs/1903.11699). This does not refute
a narrower rigidity/UCP theorem carrying inherited terminal geometry or
history. Such a narrow inherited Euler class and an additional same-trajectory
defect/history measure are both open possible mechanisms.

**Result of this section.** Critical-record normalization has an exact
viscosity--compactness incompatibility. A bounded nonzero critical sequence
necessarily loses the classical viscous term and can converge only toward
Euler; the canonical record bounds do not by themselves prevent the limit
from vanishing. Within this compactness route, the efficient-current branch now
has a full mixed-helicity current-retaining terminal profile, but not profile
ownership of the record or its history. The zero-efficiency
branch has no preferred proved closure mechanism: narrow inherited Euler
rigidity and a nontrivial viscous/history defect are both open. This is a
checked scaling/compactness obstruction and exact exhaustive case split, not
Gold closure.

## 24. The HMIN null form gives weighted cross-scale overlap, not co-scale occupancy

The instantaneous mixed-helicity floor does not force the two helical sectors
to occupy one dyadic scale. The exact scale-resolved statement is triadic.

Let

```math
r_{s,j}:=2^{j/2}\|\Delta_j u_s\|_2,
\qquad
A_{s,j}:=2^jr_{s,j}=2^{3j/2}\|\Delta_j u_s\|_2.
\tag{NIC.221}
```

Thus `R_s` is equivalent to `sum_j r_{s,j}^2` and `D_s` is equivalent to
`sum_j A_{s,j}^2`. Fix the finite Littlewood--Paley overlap width `C_0` and
define the same-sign null output at scale `ell` by

```math
\begin{aligned}
\mathcal N_{s,\ell}:={}&
\sum_{\substack{|m-\ell|\le C_0\\ n\le m-4}}
2^{n-m}A_{s,m}A_{s,n}\\
&+
\sum_{\substack{m\ge\ell-C_0\\ |n-m|\le3}}
2^{-2(m-\ell)}A_{s,m}A_{s,n}.
\end{aligned}
\tag{NIC.222}
```

The high--low projector gain `(NIC.162)` and high--high-to--low gain
`(NIC.163)` give

```math
\boxed{
2^{\ell/2}
\left\|
\Delta_\ell\Pi_{-s}(u_s\times\Lambda u_s)
\right\|_2
\lesssim
\mathcal N_{s,\ell}.
}
\tag{NIC.223}
```

The exact cyclic form of `(NIC.164)` is

```math
\frac12P_H
=
\left\langle
\Lambda u_-,\Pi_-(u_+\times\Lambda u_+)
\right\rangle
-
\left\langle
\Lambda u_+,\Pi_+(u_-\times\Lambda u_-)
\right\rangle.
\tag{NIC.224}
```

Pairing equal output scales in `(NIC.223)` yields the direct
scale-resolved estimate

```math
\boxed{
|P_H|
\lesssim
\sum_\ell
\left(
r_{-,\ell}\mathcal N_{+,\ell}
+r_{+,\ell}\mathcal N_{-,\ell}
\right).
}
\tag{NIC.225}
```

In particular, every critical-growth state satisfies

```math
\boxed{
\sum_\ell
\left(
r_{-,\ell}\mathcal N_{+,\ell}
+r_{+,\ell}\mathcal N_{-,\ell}
\right)
\gtrsim
\nu(D_++D_-).
}
\tag{NIC.226}
```

This is a weighted interaction statement. The second line of `(NIC.222)`
allows two high same-sign inputs to produce at a remote low scale occupied by
the opposite sign.

### 24.1 Exact arbitrarily separated record states

That high--high-to--low possibility occurs in one full velocity field. On the
normalized torus, fix an integer `M>=2` and set

```math
k=(1,0,0),
\qquad
p=(M,1,0),
\qquad
q=(-M-1,-1,0),
\qquad
k+p+q=0.
\tag{NIC.227}
```

Using the helical vector `(NIC.193)`, take

```math
\widehat v_M(k)=h_+(k),
\qquad
\widehat v_M(p)=h_-(p),
\qquad
\widehat v_M(q)=-h_-(q),
\tag{NIC.228}
```

and impose reality at the three negative modes. This is one divergence-free
field. Full Leray convolution has exactly the six output pairs

```math
\pm\left\{
(1,0,0),
(M-1,1,0),
(M,1,0),
(M+1,1,0),
(M+2,1,0),
(2M+1,2,0)
\right\}.
\tag{NIC.229}
```

Writing

```math
a=M^2+1,
\qquad
b=(M+1)^2+1,
```

direct substitution of every generated mode gives

```math
\boxed{
P_M:=P_H(v_M)
=
\frac{2M+1+\sqrt a-\sqrt b}{\sqrt{ab/2}}>0,
\qquad
D_M:=D(v_M)
=2\left(1+a^{3/2}+b^{3/2}\right).
}
\tag{NIC.230}
```

The sign is exact because

```math
\sqrt b-\sqrt a
=
\frac{2M+1}{\sqrt b+\sqrt a}
<2M+1.
\tag{NIC.231}
```

For

```math
u_{M,\Gamma}=\Gamma v_M,
\qquad
\Gamma=\frac{2\nu D_M}{P_M},
```

homogeneity gives

```math
\boxed{
P_H(u_{M,\Gamma})
=2\nu D(u_{M,\Gamma}),
\qquad
R'(0)=2\nu D(u_{M,\Gamma})>0.
}
\tag{NIC.232}
```

The positive sector of this field occupies only unit frequency, while the
negative sector occupies the two radii near `M`. Once `M` exceeds the fixed
LP overlap width, no dyadic block contains both sectors. Therefore no
universal constant `c>0` can make the record condition imply

```math
\exists j:
\qquad
r_{+,j}\ge c\nu
\quad\hbox{and}\quad
r_{-,j}\ge c\nu.
\tag{NIC.233}
```

The counterexample is not a reduced-triad evolution. It is a smooth initial
datum for the full equation, and `(NIC.229)` includes the complete quadratic
support. The same strict obstruction holds on `R^3`: replace the six Fourier
atoms by sufficiently narrow, reality-symmetric compactly supported packets,
apply the exact helical projectors on the unit and high-frequency support
balls, and retain the phase in `(NIC.228)`. The cubic multiplier converges to
the positive coefficient `P_M`, so `P_H>0` for narrow enough packets; the
helical supports remain in disjoint dyadic ranges. Scaling by the actual
`2 nu D/P_H` then gives `(NIC.232)` exactly for a divergence-free Schwartz
field with compact Fourier support.

**Result of this section.** The null form proves the weighted cross-scale
overlap `(NIC.226)`, consistently with the separate global HMIN participation
floor. It does not prove co-scale mixed-helicity occupancy. The exact family
`(NIC.227)--(NIC.233)` shows that amplitude can compensate the geometric
high--high-to--low kernel at an arbitrarily large spectral gap. This is an
exact obstruction, not Gold closure and not an event-count theorem.

## 25. RECORD DOUBLING CARRIES A NONZERO PARENT HISTORY CURRENT (NIC.234--NIC.243)

The endpoint efficiency `eta_n` in Section 23 may tend to zero. The same
trajectory nevertheless carries a fixed normalized amount of net critical
current across every last doubling interval.

Let `t_n` be successive first record times chosen so that

```math
R_n:=R(t_n)=2R(t_{n-1}),
\qquad
I_n=[t_{n-1},t_n].
\tag{NIC.234}
```

For the two simultaneous helical readouts of the same velocity field, define

```math
e_{s,n}:=\frac{R_s(t_n)}{R_n},
\qquad
\delta_{s,n}:=\frac{\nu}{R_n}\int_{I_n}D_s(t)\,dt,
\qquad
j_n:=\frac1{R_n}\int_{I_n}P_H(t)\,dt.
\tag{NIC.235}
```

The exact sector law

```math
R_s'(t)+2\nu D_s(t)=P_H(t)
```

has the same parent current on both rows. Integrating it over `I_n` and using
`R(t_{n-1})=R_n/2` gives

```math
\boxed{
e_{s,n}-\frac12e_{s,n-1}+2\delta_{s,n}=j_n.
}
\tag{NIC.236}
```

Since `e_{+,k}+e_{-,k}=1`, summing the two rows yields the exact current mass

```math
\boxed{
j_n=\frac14+\delta_{+,n}+\delta_{-,n}\ge\frac14.
}
\tag{NIC.237}
```

Thus a vanishing instantaneous terminal current does not mean that the last
record doubling had vanishing history current.

Write the endpoint helical imbalance as

```math
h_n:=e_{+,n}-e_{-,n}\in[-1,1].
```

Subtracting the two copies of `(NIC.236)` gives

```math
\boxed{
\delta_{-,n}-\delta_{+,n}
=\frac12\left(h_n-\frac12h_{n-1}\right).
}
\tag{NIC.238}
```

Consequently, for every fixed `0<epsilon<1/2`, each doubling obeys the
exhaustive alternative

```math
\begin{aligned}
|h_n|\le1-\varepsilon
&\quad\Longrightarrow\quad
e_{+,n},e_{-,n}\ge\frac{\varepsilon}{2},\\
h_n>1-\varepsilon
&\quad\Longrightarrow\quad
\delta_{-,n}-\delta_{+,n}>
\frac14-\frac{\varepsilon}{2},\\
h_n<-1+\varepsilon
&\quad\Longrightarrow\quad
\delta_{+,n}-\delta_{-,n}>
\frac14-\frac{\varepsilon}{2}.
\end{aligned}
\tag{NIC.239}
```

The first branch retains both sector fractions at the endpoint. Either
near-one-handed branch forces an order-one excess of dissipation in the
opposite sector during the same last doubling. These are readouts of one
field: no sector owns or pays the common current.

### 25.1 The identity in the canonical record normalization

Use the canonical normalization `(NIC.207)` based at `t_n`, and set

```math
\tau_{n,-}:=\frac{t_{n-1}-t_n}{\theta_n}<0.
\tag{NIC.240}
```

Extend the following measures by zero outside `[tau_{n,-},0]`:

```math
dJ_n(\tau):=P_H(v_n(\tau))\,d\tau,
\qquad
dM_{s,n}(\tau):=\nu_nD_s(v_n(\tau))\,d\tau.
\tag{NIC.241}
```

Here `J_n` is signed and each `M_{s,n}` is positive. The scaling identities in
Section 23 give their exact masses:

```math
\boxed{
J_n([\tau_{n,-},0])=j_n,
\qquad
M_{s,n}([\tau_{n,-},0])=\delta_{s,n}.
}
\tag{NIC.242}
```

Equivalently, with `rho_{s,n}(tau)=R_s(v_n(tau))`,

```math
d\rho_{s,n}+2\,dM_{s,n}=dJ_n,
\qquad
\rho_{s,n}(\tau_{n,-})=\frac12e_{s,n-1},
\qquad
\rho_{s,n}(0)=e_{s,n}.
\tag{NIC.243}
```

In particular,

```math
\int_{\tau_{n,-}}^0[P_H(v_n(\tau))]_+\,d\tau
\ge j_n\ge\frac14.
```

This is a nonzero same-trajectory history current, not yet a limiting defect
measure. The identities provide neither the bounded-variation estimate

```math
\sup_n\left(
\|J_n\|_{\mathrm{TV}}
+M_{+,n}((-\infty,0])
+M_{-,n}((-\infty,0])
\right)<\infty
```

nor terminal tightness

```math
\lim_{L\to\infty}\sup_n\left[
|J_n|((-\infty,-L])
+\sum_sM_{s,n}((-\infty,-L])
\right]=0.
```

Indeed, `P_H` changes sign, so its net mass controls no total variation, while
`(NIC.237)` supplies no upper bound for either dissipation mass. The normalized
interval length `-tau_{n,-}` is also uncontrolled. Current can therefore
escape into oscillation or the remote rescaled past; spatial profile retention
is a further independent passage problem.

**Result of this section.** Every record doubling carries net normalized
parent current at least `1/4`. A nearly one-handed endpoint forces an
order-one opposite-sector dissipation excess on that same interval. This is a
strict same-trajectory history reduction. Extraction of a terminal current
defect still requires bounded variation, terminal tightness, and spatial
profile retention. No finite reserve and no Gold conclusion follows.

## 26. THE POSITIVE RUNNING-RECORD MEASURE AND ITS COMPACTNESS BOUNDARY (NIC.244--NIC.250)

The signed parent current `J_n` contains all positive and negative nonlinear
work on the last doubling interval. The productive part of the same full-field
history has an exact positive representation through the running critical
maximum

```math
\overline R(t):=\max_{0\le s\le t}R(s),
\qquad
F(t):=P_H(t)-\nu D(t)=\frac12R'(t).
\tag{NIC.244}
```

For smooth `R`, the function `overline R` is absolutely continuous and

```math
\boxed{
\frac12\,d\overline R
=\mathbf 1_{\{R=\overline R\}}[F]_+\,dt.
}
\tag{NIC.245}
```

On a plateau both sides vanish almost everywhere, so there is no additional
singular Stieltjes part.

In the canonical normalization based at `t_n`, define

```math
\rho_n(\tau):=R(v_n(\tau)),
\qquad
q_n(\tau):=
\frac{\overline R(t_n+\theta_n\tau)}{R_n}.
\tag{NIC.246}
```

On `[tau_{n,-},0]`, this function is continuous and nondecreasing from `1/2`
to `1`. The normalized positive record-gain measure is

```math
\boxed{
dG_n(\tau):=
\mathbf 1_{\{\rho_n=q_n\}}
[P_H(v_n)-\nu_nD(v_n)]_+\,d\tau
=\frac12\,dq_n(\tau).
}
\tag{NIC.247}
```

It therefore has exact total variation

```math
\boxed{
G_n([\tau_{n,-},0])=\frac14.
}
\tag{NIC.248}
```

For `q in [1/2,1]`, the generalized inverse

```math
\tau_n(q):=
\inf\{\tau\in[\tau_{n,-},0]:q_n(\tau)\ge q\},
\qquad
V_n(q):=v_n(\tau_n(q))
\tag{NIC.249}
```

is measurable and requires no strict crossing-speed assumption. Continuity of
`q_n` gives `R(V_n(q))=q`; at differentiability points of the first hit,
`P_H(V_n(q))-\nu_n D(V_n(q))\ge0`. Moreover,

```math
\boxed{
\int\Phi(q_n(\tau))\,dG_n(\tau)
=\frac12\int_{1/2}^1\Phi(q)\,dq.
}
\tag{NIC.250}
```

Thus the pushforward of `G_n` to record height is the fixed measure
`(1/2)dq`. This gives positivity, bounded total variation, and tightness in
the artificial `q` coordinate.

It does not give compactness of the velocity history. Along the generalized
inverse path the inherited bounds are only

```math
R(V_n(q))=q\in[1/2,1],
\qquad
\nu_n=\frac{\nu}{\sqrt{R_n}}\longrightarrow0,
\qquad
\min_s\|V_{n,s}(q)\|_{\dot H^{1/2}}\gtrsim\nu_n.
```

There is no uniform bound for `D(V_n(q))`, `P_H(V_n(q))`, physical energy,
spatial location, or `d tau_n/dq`. The inverse can jump across a plateau, and
dividing the Navier--Stokes equation by the record speed is singular at a
tangential hit. Hence `V_n(q)` has no uniformly controlled evolution equation
in `q`.

Nor does compactness in `q` imply terminal tightness in the canonical physical
time. The fixed mass may remain at `tau -> -infinity`. The exact next passage
condition is

```math
\boxed{
\exists L<\infty,\ \eta>0,\ \text{and a subsequence such that}
\qquad
G_n([-L,0])\ge\eta.
}
```

Even that condition would leave spatial/current profile retention to prove.
In original units the accumulated gain through `N` doublings is

```math
\sum_{n=1}^N\frac{R_n}{4}
=\frac12(R_N-R_0),
```

which is exactly the unbounded critical-height quantity under the hypothetical
breakdown.

**Result of this section.** The productive running-record current is a lawful
positive readout of the same velocity field and has fixed normalized mass on
each doubling. Record-height parametrization removes sign and scalar
total-variation defects only. It supplies neither terminal-time tightness nor a
nonzero spatial profile, and summing its unnormalized mass is the original Gold
problem rather than a finite reserve.

## 27. FIXED EFFICIENCY FORCES A FULL MIXED-HELICITY ENDPOINT PROFILE (NIC.251--NIC.259)

Let

```math
X:=\dot H^{1/2}(\mathbb R^3)\cap\dot H^{3/2}(\mathbb R^3).
```

Consider a divergence-free sequence satisfying

```math
R(v_n)=D(v_n)=1,
\qquad
P_H(v_n)\ge\eta_0>0.
\tag{NIC.251}
```

The endpoint current prevents both spectral escape and spatial translation
vanishing.

### 27.1 Uniform spectral retention of the signed cubic

Let `Q_J` be a smooth annular truncation to dyadic indices `[-J,J]`, write
`w=Q_Jv` and `z=v-w`, and use interpolation to obtain

```math
\|v\|_{\dot H^1}^2
\le R(v)^{1/2}D(v)^{1/2}\le1,
\qquad
\|z\|_{\dot H^1}^2
\lesssim2^{-J}(R(v)+D(v)).
\tag{NIC.252}
```

For the polarized cubic

```math
\mathcal T(a,b,c)
:=\int(a\times\operatorname{curl}b)\cdot\Lambda c\,dx,
\qquad
P_H(v)=\mathcal T(v,v,v),
```

Holder and Sobolev give both derivative placements

```math
|\mathcal T(a,b,c)|
\lesssim
\|a\|_{\dot H^1}\|b\|_{\dot H^1}
\|c\|_{\dot H^{3/2}},
```

and

```math
|\mathcal T(a,b,c)|
\lesssim
\|a\|_{\dot H^1}\|b\|_{\dot H^{3/2}}
\|c\|_{\dot H^1}.
```

Expanding `v=w+z` therefore yields the uniform signed-current estimate

```math
\boxed{
\sup_{R(v),D(v)\le1}
|P_H(v)-P_H(Q_Jv)|
\lesssim2^{-J/2}.
}
\tag{NIC.253}
```

For `J=J(eta_0)` large enough,

```math
P_H(Q_Jv_n)\ge\frac{\eta_0}{2}.
\tag{NIC.254}
```

This is a statement about the signed cubic itself. It does not infer a signed
term from the positive majorant `(NIC.225)`.

### 27.2 Full-current translation profile

Apply translation-profile extraction to `v_n` in `X`. After a subsequence,

```math
v_n
=\sum_{\alpha=1}^{A}
V^\alpha(\,\cdot-x_n^\alpha)+r_n^A,
\qquad
|x_n^\alpha-x_n^\beta|\longrightarrow\infty
\quad(\alpha\ne\beta),
\tag{NIC.255}
```

with the two Hilbert norms decoupling:

```math
\sum_\alpha R(V^\alpha)\le1,
\qquad
\sum_\alpha D(V^\alpha)\le1.
\tag{NIC.256}
```

For each fixed `J`, distinct translations decouple in the finite-band cubic.
The exhaustive remainder satisfies

```math
\lim_{A\to\infty}\limsup_{n\to\infty}
\|Q_Jr_n^A\|_{L^\infty}=0;
```

otherwise a further translated weak `X`-profile can be extracted. Hence its
finite-band cubic vanishes. Taking first `n -> infinity`, then
`A -> infinity`, and finally `J -> infinity` in `(NIC.253)` gives

```math
\boxed{
\lim_{n\to\infty}P_H(v_n)
=\sum_\alpha P_H(V^\alpha).
}
\tag{NIC.257}
```

The series is absolutely convergent because

```math
|P_H(V^\alpha)|
\lesssim R(V^\alpha)^{1/2}D(V^\alpha),
```

and `(NIC.256)` is summable. The positive-profile currents have total at least
`eta_0`; the cubic bound and norm orthogonality also give the quantitative
pigeonhole estimate

```math
\boxed{
\text{for some }\alpha_*:
\qquad
P_H(V^{\alpha_*})\ge c\eta_0^3>0.
}
\tag{NIC.258}
```

Set `V=V^{\alpha_*}`. It is one full divergence-free field, and the pure-helicity
cancellation `(NIC.156)` implies `V_+` and `V_-` are both nonzero.

### 27.3 Passage along the normalized record histories

Apply the selecting translations `x_n^{\alpha_*}` to the complete normalized
histories from Section 23. The local compactness `(NIC.214)` gives an ancient
weak Euler solution `U` on `(-\infty,0]` with distributional terminal trace

```math
\boxed{
U(0)=V,
\qquad
P_H(U(0))=P_H(V)>0,
\qquad
R(U(\tau))\le1\quad(\tau\le0).
}
\tag{NIC.259}
```

This excludes a steady Euler terminal profile. It does not give
`R(U(tau))<=R(V)`, `R(V)=D(V)=1`, or continuity of `P_H(U(tau))` as
`tau -> 0`; the cubic may be undefined at negative times under only the
inherited `Hdot^{1/2}` control. The original record belongs to the whole
normalized field and can split among other profiles and a diffuse remainder.
The profile `V` is therefore a current-retaining readout, not an independently
owned record.

### 27.4 Location of the separated-scale counterexample

For the exact family `(NIC.227)--(NIC.233)`, one also has

```math
R_M=2\left(1+\sqrt{M^2+1}+\sqrt{(M+1)^2+1}\right),
```

and its amplitude-invariant canonical efficiency is

```math
\boxed{
\eta_M:=\frac{P_M}{D_M\sqrt{R_M}}
=\frac1{2\sqrt2}M^{-9/2}
\left(1-\frac3M+O(M^{-2})\right).
}
```

Thus that family lies entirely in the `eta -> 0` branch. Conversely, the tails
of the positive majorant `(NIC.225)` show that fixed `eta` forces an
opposite-helicity interaction with dyadic gap `O(log(1/eta))` and block
amplitudes bounded below by a positive `c(eta)`; one safe nonoptimized bound is
`c eta^4/(1+log(1/eta))^2`.

**Result of this section.** Fixed positive canonical efficiency produces a
full mixed-helicity endpoint profile with strictly positive cubic current and
an ancient weak Euler history terminating at that profile. The remaining
efficient-branch theorem is dynamic record inheritance or an equivalent
ensemble/history rigidity statement. This is a strict theorem, not Gold
closure.
