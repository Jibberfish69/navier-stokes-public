---
theorem_id: forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity / cubic turn-off moment
status: proved-cubic-moment-turnoff-identity; remaining-bill-admission-lemma
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
completion_truth: >-
  This note installs the cubic radial strain moment as the direct c0 turn-off
  coordinate. It proves the exact spherical identity
  int_{S^2} (theta.S theta)^3 = (32 pi/105) tr(S^3) for tracefree S, and the
  total-turnoff identity showing that a finite-energy/localized turn-off of a
  nonzero Vieillefosse affine imprint has scale-uniform signed cubic moment
  variation. This kills the artificial 1/L leak produced by quadratic
  slope-squared turn-off charges. The residual-current normal form shows that
  M' is linear in the turn-off current, and the scalar aligned incompressible
  turn-off test shows the slaved pressure source is also linear in the rate
  a', while viscous/square-current costs are quadratic and leak. In the
  aligned axisymmetric subcase this linear pressure source need not create a
  transverse eigenframe torque, so the remaining bill cannot be only a
  transverse Hessian commutator. Tangential auxiliary channels are support-only:
  they can show that a static pressure-source or transverse-torque shortcut is
  too narrow, but they are not the live route to c0. The remaining bill must be
  the broader material-time oriented pressure-current/collar transfer for the
  retained cubic flux, or the atom must route that flux to its lawful owner.
  This note does not yet prove c0: the remaining theorem is the
  non-tautological same-field bill admission CubicRadialMomentOddPayment.A,
  namely that this legitimate odd bill dominates the positive turn-off rise
  [M']_+.
---

# Cubic Radial Strain Moment Turn-Off

Use the cubic radial strain moment, not the quadratic boundary moment, for the
direct \(c_0\) turn-off bridge. The quadratic moment says only that an affine
core leaves an imprint. The cubic moment keeps the Vieillefosse sign.

## 1. Radial strain readout

On a normalized atom centered at the active packet, set

```math
r=e^\rho,
\qquad
w(\rho,\theta)
=
e^{-\rho}u(e^\rho\theta)\cdot\theta
=
r^{-1}u(r\theta)\cdot\theta .
\tag{CRM.1}
```

Define the signed cubic radial moment

```math
M(\rho)
=
\int_{S^2}w(\rho,\theta)^3\,d\theta .
\tag{CRM.2}
```

If the packet has affine strain core \(u(x)=Sx\), with \(S=S^T\) and
\(\operatorname{tr}S=0\), then

```math
w(\rho,\theta)=\theta\cdot S\theta
\tag{CRM.3}
```

and \(M\) is independent of \(\rho\).

## 2. Cubic moment equals Vieillefosse sign

The sixth spherical moment identity is

```math
\int_{S^2}
\theta_i\theta_j\theta_k\theta_l\theta_m\theta_n\,d\theta
=
\frac{4\pi}{105}
\sum_{\text{15 pairings}}
\delta_{\alpha_1\alpha_2}
\delta_{\alpha_3\alpha_4}
\delta_{\alpha_5\alpha_6}.
\tag{CRM.4}
```

Contracting (CRM.4) with \(S_{ij}S_{kl}S_{mn}\) gives

```math
\int_{S^2}(\theta\cdot S\theta)^3\,d\theta
=
\frac{4\pi}{105}
\left[
(\operatorname{tr}S)^3
+6\operatorname{tr}S\,\operatorname{tr}(S^2)
+8\operatorname{tr}(S^3)
\right].
\tag{CRM.5}
```

For tracefree \(S\),

```math
M_{\rm aff}
=
\int_{S^2}(\theta\cdot S\theta)^3\,d\theta
=
\frac{32\pi}{105}\operatorname{tr}(S^3).
\tag{CRM.6}
```

On the Vieillefosse sheet,

```math
\mathsf S_V(Q)
\simeq
-\operatorname{tr}(S^3),
\tag{CRM.7}
```

so the inner affine core satisfies

```math
-M(0)\gtrsim \mathsf S_V(Q)
\tag{CRM.8}
```

after the fixed normalization of the atom.

## 3. Total turn-off is independent of collar length

A lawful finite-energy/localized turn-off of the affine imprint has an outer
radius sequence or parent collar where the cubic radial moment disappears:

```math
M(\rho_j)\to0 .
\tag{CRM.9}
```

For every such \(\rho_j\),

```math
-M(0)
=
\int_0^{\rho_j}M'(\rho)\,d\rho
-M(\rho_j).
\tag{CRM.10}
```

Taking \(j\to\infty\),

```math
\mathsf S_V(Q)
\lesssim
\int_0^\infty[M'(\rho)]_+\,d\rho .
\tag{CRM.11}
```

This is the scale-uniform part. The collar can recede, but the total signed
cubic turn-off cannot shrink.

For the scalar cutoff model

```math
w(\rho,\theta)=a(\rho)(\theta\cdot S\theta),
\qquad
a(0)=1,\quad a(\rho_+)=0,
\tag{CRM.12}
```

one has

```math
M(\rho)=a(\rho)^3M_{\rm aff},
\qquad
M'(\rho)=3a(\rho)^2a'(\rho)M_{\rm aff}.
\tag{CRM.13}
```

Since \(M_{\rm aff}<0\) for positive Vieillefosse service,

```math
\int_0^{\rho_+}[M'(\rho)]_+\,d\rho
\ge
-M_{\rm aff}
=
M_{\rm aff}
\int_{a=1}^{a=0}3a^2\,da
=
-M_{\rm aff}.
\tag{CRM.14}
```

Spreading the cutoff over a longer log interval lowers \(|a'|\), but it lasts
longer. The integral stays fixed. The \(1/L\) escape is an artifact of charging
\(|a'|^2\) rather than the oriented cubic transfer.

## 4. What \(M'\) measures

Differentiating the radial readout gives

```math
\partial_\rho w
=
\theta_i\theta_j\partial_j u_i(r\theta)
-w.
\tag{CRM.15}
```

For an affine field \(u=Sx\), this is zero. Therefore

```math
M'(\rho)
=
3\int_{S^2}w(\rho,\theta)^2\,\partial_\rho w(\rho,\theta)\,d\theta
\tag{CRM.16}
```

measures the non-affine radial turn-off/current of the same field.

To make the ownership explicit, write

```math
U(\rho,\theta)=e^{-\rho}u(e^\rho\theta)=w(\rho,\theta)\theta+v(\rho,\theta),
\qquad v\cdot\theta=0 .
\tag{CRM.17}
```

The spherical divergence formula gives, for the same incompressible velocity
field,

```math
\partial_\rho w+3w+\operatorname{div}_{S^2}v=0 .
\tag{CRM.18}
```

Therefore

```math
M'(\rho)
=
3\int_{S^2}w^2\partial_\rho w\,d\theta
=
-9\int_{S^2}w^3\,d\theta
+6\int_{S^2}w\,v\cdot\nabla_{S^2}w\,d\theta .
\tag{CRM.19}
```

For the affine incompressible core \(U_A=S\theta\), one has
\(\partial_\rho w_A=0\) and
\(\operatorname{div}_{S^2}v_A=-3w_A\), so \(M'=0\). Thus a nonzero
\([M']_+\) is not a scalar cutoff artifact. It is the same-field angular
current needed to turn off the affine Vieillefosse imprint.

There is a sharper current normal form. Since \(\nabla\cdot u=0\) on the
same field, the spherical mean of \(w\) vanishes on each retained sphere. Let
\(v_\circ[w]\) be the canonical tangential Hodge carrier on \(S^2\) satisfying

```math
\operatorname{div}_{S^2}v_\circ[w]=-3w,
\qquad
\int_{S^2}v_\circ[w]\cdot\xi\,d\theta=0
\quad\text{for every tangential Killing field }\xi .
\tag{CRM.19a}
```

Write the actual tangential current as

```math
v=v_\circ[w]+j .
\tag{CRM.19b}
```

Then incompressibility reduces to

```math
\partial_\rho w+\operatorname{div}_{S^2}j=0,
\tag{CRM.19c}
```

and therefore

```math
M'(\rho)
=
-3\int_{S^2}w^2\operatorname{div}_{S^2}j\,d\theta
=
6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta .
\tag{CRM.19d}
```

The affine core has \(j=0\). The turn-off measure \([M']_+\) is therefore
exactly the positive oriented work of the residual same-field tangential
current after the stationary incompressible carrier has been removed. A
quadratic magnitude bill on \(j\) can still leak across a long collar; the
needed \(c_0\) bill is the admitted positive linear current flux

```math
\mathsf J_M^+
:=
\int_{\Lambda Q}
\left[
6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta
\right]_+
d\rho
=
\int_{\Lambda Q}[M'(\rho)]_+\,d\rho .
\tag{CRM.19e}
```

This also explains why the payer cannot be a T-even quadratic magnitude alone.
On a collar of log-length \(L\), an oriented residual current of size \(L^{-1}\)
can carry a fixed total flux

```math
\int_{\Lambda Q}
6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta\,d\rho
\simeq 1,
\tag{CRM.19f}
```

while its square cost satisfies

```math
\int_{\Lambda Q}|j|^2\,d\rho\simeq L^{-1}.
\tag{CRM.19g}
```

So a square-current collar estimate reproduces the log leak. The missing
admission theorem must put the positive linear flux \(\mathsf J_M^+\) into the
legitimate material-time oriented bill.

The scalar aligned turn-off is the physical test case for that admission. Let
\(q(\theta)=\theta\cdot S\theta\), \(S=S^T\), \(\operatorname{tr}S=0\), and
write \(b=a'(\rho)\). The same-field incompressible scalar turn-off has the
local form

```math
u
=
aSx+\frac{b}{3}\left(Sx-qx\right).
\tag{CRM.19h}
```

Indeed,

```math
\nabla\cdot(aSx)=bq,
\qquad
\nabla\cdot\left(\frac{b}{3}(Sx-qx)\right)=-bq.
\tag{CRM.19i}
```

The pressure source \(\partial_i u_j\partial_j u_i=\operatorname{tr}(\nabla u)^2\)
has, to first order in \(b\),

```math
2\frac{ab}{3}
\left[
\operatorname{tr}(S^2)-2|S\theta|^2+2q(\theta)^2
\right].
\tag{CRM.19j}
```

For the normalized Vieillefosse sheet \(S=\operatorname{diag}(1,1,-2)\), with
\(\mu=\theta_3\), this is

```math
4ab\left(1-3\mu^2+3\mu^4\right).
\tag{CRM.19k}
```

This source is not isotropic, but it is still aligned/axisymmetric. It does not
force a transverse eigenframe torque by itself. Therefore a proof that admits
only transverse pressure-Hessian commutator payment misses a real same-fluid
turn-off. The legitimate payer must be the oriented pressure-current/collar
bill that sees \(\mathsf J_M^+\), with transverse torque only one possible
component of that bill.

The same-affine scalar source computation is still useful, but only as a
readout obstruction. It shows that the scalar collar is not invisible to the
slaved pressure source. It does not by itself supply the \(c_0\) payment,
because the resulting mode is \(m=0\), aligned with the strain eigenframe, and
time-even as a source magnitude. Decompose the bracket in (CRM.19k) into
Legendre modes:

```math
1-3\mu^2+3\mu^4
=
\frac35-\frac27P_2(\mu)+\frac{24}{35}P_4(\mu).
\tag{CRM.19k0}
```

Thus the \(l=4\) part of the slaved pressure source is

```math
\Pi_4 Q_{\rm lin}
=
\frac{96}{35}ab\,P_4(\mu).
\tag{CRM.19k1}
```

For the same scalar turn-off,

```math
M'(\rho)=3a^2b\,M_{\rm aff},
\qquad
M_{\rm aff}<0
\tag{CRM.19k2}
```

on the positive Vieillefosse orientation. This confirms that the same scalar
collar carries the cubic drop while leaving an \(l=4\) source imprint:

```math
\Pi_4Q_{\rm lin}\neq0
\quad\text{whenever}\quad
ab\neq0.
\tag{CRM.19k3}
```

This is not `CubicRadialMomentOddPayment.A`. A visible \(l=4\) source is an
on-frame pressure readout; it can rescale the aligned strain, but it is not the
off-frame, material-time-oriented pressure-current that brakes the Vieillefosse
record. The same-affine scalar/no-swirl collar is therefore discharged only as
pass-owned aligned material, not as a zero-bill \(c_0\) survivor paid by
\(\Pi_4Q_{\rm lin}\). A non-aligned/off-frame pressure-current sign would be a
component proof inside the strict bill, not the governing theorem. The governing
theorem is the full zero-bill kernel: retained positive cubic flux cannot
survive after every strict payment and every lawful owner-transfer has vanished.

The first cancellation test says a \(P_4\)-only source readout is too narrow.
In the axisymmetric poloidal class, write a smooth tangential incompressible
correction as

```math
h_R=RH(\mu),
\qquad
h_z=-z\,\frac{1-\mu^2}{\mu^2}H(\mu),
\qquad
H(\mu)=O(\mu^2)\quad(\mu\to0).
\tag{CRM.19k4}
```

This correction is tangent to the spheres, so it changes the angular current
without directly changing the radial readout. Its divergence and linear
pressure-source density are

```math
D_H
=
2H-\mu(1-\mu^2)H'
-G-\mu(1-\mu^2)G',
\qquad
G=\frac{1-\mu^2}{\mu^2}H,
\tag{CRM.19k5}
```

and

```math
T_H
:=
S:\nabla h
=
\left(4-\frac2{\mu^2}\right)H
(1-\mu^2)\left(\frac2\mu-3\mu\right)H'.
\tag{CRM.19k6}
```

Here the retained cubic flux is proportional to

```math
-\int_{-1}^1(1-3\mu^2)^2D_H(\mu)\,d\mu.
\tag{CRM.19k7}
```

There are \(P_4\)-only cancellations. For example
\(H=\mu^2-\frac{33}{2}\mu^4\) has nonzero cubic flux and zero \(P_4\) coefficient
of \(T_H\). But it is not pressure-current silent:

```math
T_H
=
2-105\mu^2+270\mu^4-198\mu^6,
\tag{CRM.19k8}
```

whose \(P_6\) coefficient is \(-96/7\). Thus the \(P_4\)-only readout is too
narrow, while the full linear source still sees this axisymmetric retained
flux.

Moreover the smooth axisymmetric poloidal full-source null is empty. If
\(T_H=0\), and \(H(\mu)=c\mu^k+O(\mu^{k+2})\) near \(\mu=0\), then (CRM.19k6)
gives

```math
T_H
=
(2k-2)c\,\mu^{k-2}+O(\mu^k).
\tag{CRM.19k9}
```

Smooth tangential corrections have \(k\ge2\), so \(T_H=0\) forces \(c=0\), and
iteration gives \(H\equiv0\). Therefore an axisymmetric poloidal retained
cubic-flux current cannot be silent for the full source. This is still a
support calculation, not a payment theorem: \(T_H\) is a source-magnitude
readout, and in this axisymmetric aligned class the frame remains locked. It
rules out one fake invisible-source escape; it does not replace the required
non-aligned \(m\neq0\) transverse pressure-current sign.

Tangential auxiliary tests are only shortcut filters. They do not become a new
live route. In cylindrical coordinates \(R=(x_1^2+x_2^2)^{1/2}\), for
\(S=\operatorname{diag}(1,1,-2)\) and \(\mu=x_3/|x|\), the aligned poloidal
part of (CRM.19h) is

```math
u_R=aR+b\mu^2R,
\qquad
u_z=-2ax_3-b(1-\mu^2)x_3 .
\tag{CRM.19k-support1}
```

Any tangential add-on is invisible to the radial readout unless it changes the
same retained pressure/current/collar ownership. In particular

```math
u_\phi=\gamma R .
\tag{CRM.19k-support2}
```

does not change \(w\), \(M\), or \(\mathsf J_M^+\). For constant \(\gamma\),
its contribution to the pressure source is only

```math
\operatorname{tr}(\nabla u)^2
=
\operatorname{tr}(\nabla u_{\rm pol})^2
-2\gamma^2 .
\tag{CRM.19k-support3}
```

The extra term is an isotropic rotation-gauge source. It supplies no
\(b\)-linear ownership of the aligned cubic turn-off. More generally, a
tangential profile can alter the same-time pressure-source row through

```math
-2\frac{u_\phi}{R}\partial_R u_\phi
=
-\frac1R\partial_R(R^2\gamma^2).
\tag{CRM.19k-support4}
```

This also shows why a fixed-time pressure-source coercivity theorem is too
strong. A tangential profile can be chosen locally so that (CRM.19k-support4)
cancels the aligned poloidal source (CRM.19j), while \(w\), \(M\), and
\(\mathsf J_M^+\) are unchanged. This is not a new c0 route. It is only a
negative test on the attempted proof: the static \(Q\)-operator by itself
cannot be the bill. The live theorem remains the retained cubic-flux
admission below.

The correct ownership theorem is therefore not a detached pressure-collar size
estimate. The old Gate 1 pressure-collar notes show that address ownership
alone does not imply payment: a raw owned pressure route measure can remain
large unless one proves sublinear tightness, absorption, or route-out. Here the
object is narrower. \(\mathsf J_M^+\) is the positive flux of the selected
cubic Vieillefosse service itself. On a strict participation atom, a positive
\(\mathsf J_M^+\) flux has only two lawful readings:

```math
\begin{array}{ll}
\text{retained flux:} &
\text{the same participant keeps the cubic service, so the flux is part of }
\mathsf P_{\rm odd},\\[1mm]
\text{route-out flux:} &
\text{the service crosses the collar to a parent/child/Field/pass owner and
is no longer retained by this atom.}
\end{array}
\tag{CRM.19l}
```

Thus the smaller admission theorem is:

```math
\texttt{RetainedPositiveCubicFluxIsPaidOrRoutesOut.A}
\tag{CRM.19m}
```

Statement. In a lawful strict atom/tower, no positive \(\mathsf J_M^+\) flux can
be both retained as active Vieillefosse service and absent from the
pressure-current/collar bill. If it is not billed, the atom selection must
follow the flux to the parent, child, Field, stopped/pass, or nonparticipating
owner. A zero-bill positive-service counterexample must therefore exhibit a
same-fluid collar carrying \(\mathsf J_M^+>0\) while every lawful owner denies
both payment and route-out.

This theorem is an owner/BV statement, not a new pressure estimate. Set

```math
N(\rho)=-M(\rho).
\tag{CRM.19n}
```

Positive cubic service corresponds to \(N>0\), and

```math
\mathsf J_M^+
=
\int_{\Lambda Q}[-N'(\rho)]_+\,d\rho.
\tag{CRM.19o}
```

On any subcollar where the strict atom keeps the same active service owner,
the retained-service current has no place to disappear. A decrease of \(N\)
is the selected cubic service leaving that owner. If the owner does not change,
the only way the same participant can still claim the service is by a later
return/increase of \(N\), which is another collar-current event. Strict
participation counts positive retained-service variation, not signed net
cancellation. Therefore the retained part of the bill contains the BV measure

```math
d\mathsf P_{\rm ret}
\ge
c\,d\operatorname{Var}_{\rm ret}N
\ge
c[-N'(\rho)]_+\,d\rho
=
c[M'(\rho)]_+\,d\rho
\tag{CRM.19p}
```

on every constant-owner subcollar. Hence \(\mathsf P_{\rm ret}=0\) forces
\(N\) to be constant there and gives no positive \(\mathsf J_M^+\). If
\([-N']_+>0\) is present while this retained BV bill is absent, the service
has crossed an owner boundary. That is precisely route-out to parent, child,
Field, stopped/pass, or nonparticipating material.

In an incompressible flow, this angular/current change is tied to the slaved
pressure source

```math
-\Delta p=\partial_i u_j\partial_j u_i .
\tag{CRM.20}
```

The affine/isotropic aligned modes have \(M'=0\). A nonzero positive rise of
the cubic moment, equivalently a drop of \(-M\), is therefore the signed
handoff of the Vieillefosse imprint to the surrounding same fluid.

## 5. The remaining bill-admission lemma

The theorem still needed is:

```math
\texttt{CubicRadialMomentOddPayment.A}
\tag{CRM.21}
```

Statement. For every lawful finite-energy strict atom/collar turn-off of a
nonzero Vieillefosse affine core,

```math
\mathsf P_{\rm odd}(\Lambda Q)
\ge
c\int_{\Lambda Q}[M'(\rho)]_+\,d\rho,
\qquad c>0,
\tag{CRM.22}
```

where \(\mathsf P_{\rm odd}\) is the legitimate material-time oriented
pressure-current/collar transfer generated by the same velocity field and its
slaved pressure.

Equivalently, in density form,

```math
\mathsf P_{\rm odd}(\rho)
\gtrsim
[M'(\rho)]_+ .
\tag{CRM.23}
```

This is not a definition of a new bill. It must be proved as an admission
theorem: the positive turn-off rise of the cubic radial strain moment,
equivalently the positive drop of \(-M\), must be the same pressure/current/
collar participation payment already allowed in the \(c_0\) currency.

## 6. Consequence for \(c_0\)

If (CRM.22) holds, then (CRM.11) gives

```math
\mathsf P_{\rm odd}(\Lambda Q)
\ge
c\,\mathsf S_V(Q),
\tag{CRM.24}
```

with \(c\) independent of collar radius and tower depth.

Thus a lawful finite-energy turn-off of a nonzero Vieillefosse affine core has
a scale-uniform, time-oriented transverse pressure/current cost. That is the
direct \(c_0\) bridge:

```math
\mathcal P=0
\quad\Longrightarrow\quad
\mathcal S_V=0
\tag{CRM.22}
```

unless the material is stopped/pass-owned, parent-owned as a smooth affine
endpoint, or routed to a declared collar/exit/nonparticipating class.
