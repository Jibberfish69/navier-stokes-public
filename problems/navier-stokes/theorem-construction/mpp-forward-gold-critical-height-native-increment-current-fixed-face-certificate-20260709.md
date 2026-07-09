---
theorem_id: forward-gold-critical-height-native-increment-current-fixed-face-certificate-20260709
created: 2026-07-09
problem: navier-stokes
route: forward-gold / signed critical height / c0 / Fable fixed face
status: proved-native-current-identity-and-universal-affine-positive-part-floor; passage-to-retained-bill-open
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
  excluded. This is an exact certificate inside the actual critical-height
  equation, not a new ledger definition. Gold is not yet closed: the normalized
  record extraction must retain this signed local current in the same
  four-body/channel packet without cancellation, shell escape, or loss of
  service.
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

The boundary term on `|x-y|=epsilon` is `O(epsilon)` for smooth `u`, because
`delta u=O(epsilon)` and the antisymmetric two-point velocity has zero leading
spherical mean. It vanishes as `epsilon` tends to zero. Therefore

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
