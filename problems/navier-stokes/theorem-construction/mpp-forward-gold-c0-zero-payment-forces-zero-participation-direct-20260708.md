---
theorem_id: forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / direct zero-payment coercivity
status: direct-c0-spine; strict-reduction-not-c0-proof
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2-fixed-affine-collar-h1-trace-payment-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2b-critical-cone-profile-production-accounting-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-compact-zero-loss-coercivity-extraction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-claude-codex-sync-transverse-coupling-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-radial-strain-moment-turnoff-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-vorticity-stretching-total-exchange-admission-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-total-strain-vorticity-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-smooth-same-packet-realization-audit-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-record-survival-material-clock-direct-attempt-20260622.md
completion_truth: >-
  This note resets the c0 target to the direct coercivity theorem:
  zero payment forces zero participation. It is currently a reduction, not a
  proof. In the strict participation ontology, P is the intended same-field bill:
  non-affine viscous strain, collar attachment, slaved pressure/current work,
  cancellation/current transport, and owner-transfer. The reduction shows that
  a proof of P(T) >= c S(T) follows only after the payment doors are discharged.
  The new Door-1 enstrophy-viscous note proves that Claude's a=r concentration
  bubble is not zero-payment once the strict same-field bill includes the
  localized H1/enstrophy-dissipation response from the same strain-production
  budget. The fixed smooth-affine first non-merge collar payment is isolated in
  the Door-2a note: a nonzero affine trace either merges into the same parent
  affine field or pays the H1 trace/collar bill. The scale-consistent degree -1
  pressure-bank cone is killed by the Door-2b note under strict
  profile-production bill admission: zero bill removes log-scale drift,
  material-time drift, frame modulation, annular NS residual, angular roughness,
  and point-force/source ownership, producing the exact zero-force stationary
  smooth-sphere cone consumed by Landau/Sverak. The remaining retained-branch
  burden is global bill admission/accounting for Door 1, Door 2a, and Door 2b
  in the same tower currency. The broader physical split remains correct:
  no-carrier, nonparticipating, or no-field branches route through CM
  Pack/Part/Field, while retained positive participation enters this strict
  tower reduction.
---

# Zero Payment Forces Zero Participation

The direct \(c_0\) problem is this coercivity statement:

```math
c_0
=
\inf_{u\in\mathcal A}
\frac{\mathcal P(u)}{\mathcal S(u)},
\qquad
\mathcal S(u)>0,
```

where \(\mathcal A\) is the lawful same-fluid packet/tower class,
\(\mathcal S\) is actual Vieillefosse participation service, and
\(\mathcal P\) is the same-field bill: transverse pressure, viscous/non-affine
deformation, cancellation/current transport, collar/complement work, and
participation ownership.

The theorem to prove is:

```math
\mathcal S(u)\le C\,\mathcal P(u)
\qquad
(u\in\mathcal A).
\tag{ZPF.1}
```

Equivalently:

```math
\mathcal P(u)=0
\quad\Longrightarrow\quad
\mathcal S(u)=0
```

inside the lawful compact strict atom/tower class, except for stopped/pass
material or parent-owned global-affine endpoint material.

## 1. Contradiction skeleton

Assume `(ZPF.1)' fails. Then there are lawful same-fluid packets/towers
\(u_n\) with

```math
\mathcal S(u_n)=1,
\qquad
\mathcal P(u_n)\to0.
\tag{ZPF.2}
```

The physical content of \(\mathcal P(u_n)\to0\) is precise: no transverse
pressure work, no non-affine turning, no viscous/current participation, no
collar/complement localization cost, and no hidden participation ownership
loss. Thus every paid way of localizing, turning off, rotating, hiding,
cancelling, transporting, or attaching the Vieillefosse participant vanishes.

The only possible zero-bill tangent is affine in the participation quotient:

```math
u_\infty(x)=Ax+\Omega x+\beta
\tag{ZPF.3}
```

with \(A\) in the Vieillefosse affine strain class, modulo rigid motion.

If \(A\ne0\), `(ZPF.3)' has two lawful readings:

1. it persists globally as an affine strain field, which is not a finite-energy
localized Navier--Stokes packet and is parent-owned endpoint material rather
than a separate participant;
2. it is localized, turned off, attached, or changed inside the surrounding
fluid, which creates non-affine anisotropic structure and is counted by
\(\mathcal P\).

Therefore a lawful zero-payment tangent cannot retain

```math
\mathcal S(u_\infty)=1.
\tag{ZPF.4}
```

This contradicts `(ZPF.2)' once service passes to the zero-payment limit.

## 2. Checked repo support, with the two open doors exposed

VPL Section 17 gives the packet form of the argument under A1--A5. In that
conditional setting, normalized strict atoms satisfy

```math
\|\Pi_4 f[u]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u,b)
\ge
c\,\mathsf S(u).
\tag{ZPF.5}
```

The intended proof is the zero-payment contradiction:

```math
\mathsf S(u_n)=1,
\qquad
\|\Pi_4 f[u_n]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u_n,b)\to0,
```

so Korn--Hodge compactness gives convergence modulo an affine jet. This becomes
a contradiction only after Door 1 passes the cubic service through the
zero-payment limit and Door 2 pays or routes the affine endpoint. Without those
two inputs, the strict atom packet inequality is still conditional.

VPL Section 18 records the resulting tower consumption in conditional form:

```math
\mathsf P(\mathcal T)
\ge
c_{\rm acc}c\,\mathsf S(\mathcal T),
\qquad
c_0\ge c_{\rm acc}c>0,
\tag{ZPF.6}
```

VPL Section 23 supplies the stopping-time atomization/accounting for the strict
participation tower class: every positive service point is assigned to a bad
packet, finite strict atom, or long same-affine chain. Turning that decomposition
into a paid tower estimate still requires Door 1 service persistence and Door 2
endpoint payment.

CZC gives the abstract direct-method extraction: on a compact normalized class,
lower semicontinuity of payment, persistence of service, and zero-loss rigidity

```math
P(X)=0\Longrightarrow R(X)=0
\tag{ZPF.7}
```

imply a positive modulus. That is the same theorem in compactness language.

The log-chain Hodge payment reduction proves the off-kernel long-chain row used
by VPL Section 23. If a same-affine log chain is represented by

```math
u_A(r,\omega)=a(\rho)\frac{A\omega}{r},
\qquad \rho=\log r,
\tag{ZPF.7a}
```

then incompressibility gives

```math
\nabla\cdot u_A
=
(\partial_\rho a-2a)
\frac{\omega\cdot A\omega}{r^2}.
\tag{ZPF.7b}
```

The factor \(\omega\cdot A\omega\) is a nonzero \(l=2\) spherical harmonic for
positive Vieillefosse service. Spherical Hodge on the fixed annular geometry,
combined with A4, gives

```math
\int_I|\partial_\rho a-2a|^2|A|^2\,d\rho
\le
C\left(\mathsf P_{\rm chain}(I)+\operatorname{Err}_{\rm atom}(I)\right).
\tag{ZPF.7c}
```

Together with the scalar endpoint lemma,

```math
\mathsf S_A(I)
\le
C\left(
\mathsf P_{\rm chain}(I)
+
|a(\rho_+)|^2|A|^2
+
\operatorname{Err}_{\rm atom}(I)
\right).
\tag{ZPF.7d}
```

Thus a zero-payment extracted log chain satisfies

```math
\partial_\rho a-2a=0,
\qquad
u_A=C\,Ax.
\tag{ZPF.7e}
```

The endpoint ownership section of the log-chain note identifies the smooth
affine kernel. The companion Door-2a collar note then proves the fixed
smooth-affine endpoint alternative: it either merges into the same affine
parent, pays the H1 trace/collar bill at the first non-merge collar, or becomes
a nonzero global affine field, which is incompatible with finite energy. The
remaining endpoint escape is not that fixed collar; it is the scale-consistent
degree -1 wrong-sign pressure-bank cone.

The cubic radial strain moment gives the signed turn-off coordinate that the
quadratic collar slope missed. Define

```math
w(\rho,\theta)=e^{-\rho}u(e^\rho\theta)\cdot\theta,
\qquad
M(\rho)=\int_{S^2}w(\rho,\theta)^3\,d\theta.
\tag{ZPF.7f}
```

For a tracefree affine strain core \(u=Sx\),

```math
M_{\rm aff}
=
\int_{S^2}(\theta\cdot S\theta)^3\,d\theta
=
\frac{32\pi}{105}\operatorname{tr}(S^3).
\tag{ZPF.7g}
```

Thus Vieillefosse service is read by the sign of the cubic moment:

```math
\mathsf S_V(Q)\simeq-\operatorname{tr}(S^3)\simeq -M_{\rm aff}.
\tag{ZPF.7h}
```

If the finite-energy/localized turn-off has \(M(\rho_j)\to0\) outward, then

```math
\mathsf S_V(Q)
\lesssim
\int_0^\infty[M'(\rho)]_+\,d\rho.
\tag{ZPF.7i}
```

For a slow scalar cutoff \(w=a(\rho)(\theta\cdot S\theta)\), the right side is
independent of collar length because

```math
M'(\rho)=3a(\rho)^2a'(\rho)M_{\rm aff},
\qquad
\int [M']_+\,d\rho\ge -M_{\rm aff}.
\tag{ZPF.7j}
```

So the \(1/L\) receding-collar leak is an artifact of charging
\(|a'|^2\). The direct bill-admission theorem is:

```math
\texttt{CubicRadialMomentOddPayment.A:}\qquad
\mathsf P_{\rm odd}(\Lambda Q)
\ge
c\int_{\Lambda Q}[M'(\rho)]_+\,d\rho.
\tag{ZPF.7k}
```

The exact same-field current normal form reduces this to a smaller admission
theorem. Write

```math
e^{-\rho}u(e^\rho\theta)=w(\rho,\theta)\theta+v(\rho,\theta),
\qquad
v=v_\circ[w]+j,
\qquad
\operatorname{div}_{S^2}v_\circ[w]=-3w.
\tag{ZPF.7k1}
```

Then incompressibility gives

```math
\partial_\rho w+\operatorname{div}_{S^2}j=0,
\tag{ZPF.7k2}
```

and hence

```math
M'(\rho)
=
6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta.
\tag{ZPF.7k3}
```

So the immediate producer row is

```math
\texttt{PositiveResidualAngularCurrentFluxAdmission.A:}\qquad
\mathsf P_{\rm odd}(\Lambda Q)
\ge
c\int_{\Lambda Q}
\left[
6\int_{S^2}w\,j\cdot\nabla_{S^2}w\,d\theta
\right]_+
d\rho.
\tag{ZPF.7k4}
```

The pressure rate-order test supports the linear side of this target. Expanding
the slaved pressure source

```math
Q[u]=\partial_i u_j\partial_j u_i=\operatorname{tr}((\nabla u)^2)
\tag{ZPF.7k5}
```

around the affine carrier \(\nabla u=aS+K_j\) gives

```math
Q[u]
=
a^2\operatorname{tr}(S^2)
+
2a\,\operatorname{tr}(S K_j)
+
\operatorname{tr}(K_j^2).
\tag{ZPF.7k6}
```

The only turn-off term with the right rate order is the linear pressure source
\(2a\,\operatorname{tr}(S K_j)\). Square-current and viscous terms are
quadratic in \(j\) and reproduce the receding-collar leak. In the scalar aligned
incompressible turn-off, this linear pressure source is present but remains
axisymmetric/aligned, so the legitimate \(\mathsf P_{\rm odd}\) cannot be only
a transverse pressure-Hessian commutator. It has to be the material-time
oriented pressure-current/collar transfer that owns the positive linear flux.

For the strict same-affine scalar collar, the source is visible but not yet a
\(c_0\) payment. In the normalized Vieillefosse sheet
\(S=\operatorname{diag}(1,1,-2)\), the linear source is

```math
Q_{\rm lin}
=
4ab(1-3\mu^2+3\mu^4)
=
4ab\left(\frac35-\frac27P_2(\mu)+\frac{24}{35}P_4(\mu)\right).
\tag{ZPF.7k6a}
```

Hence

```math
\Pi_4Q_{\rm lin}
=
\frac{96}{35}ab\,P_4(\mu).
\tag{ZPF.7k6b}
```

The same scalar collar has

```math
M'(\rho)=3a^2b\,M_{\rm aff}.
\tag{ZPF.7k6c}
```

This gives a genuine \(l=4\) pressure-source imprint whenever \(ab\neq0\):

```math
\Pi_4Q_{\rm lin}\neq0
\quad\text{for}\quad
ab\neq0.
\tag{ZPF.7k6d}
```

This does not prove payment. The \(P_4\) source is \(m=0\), aligned/on-frame,
and time-even as a source magnitude. It can say that the same-affine scalar
collar is not invisible to the surrounding same fluid, but it cannot carry the
time-odd \(c_0\) bill. The exact aligned scalar/no-swirl turn-off is discharged
as pass-owned aligned material, not as a retained bad participant paid by
\(\Pi_4Q_{\rm lin}\). The live case is the non-aligned/off-frame strict atom:
positive retained cubic flux must force a transverse \(m\neq0\), material-time
oriented pressure-current bill or route to another lawful owner.

The first same-fluid cancellation test only discharges an axisymmetric
poloidal silent-source concern. A smooth tangential incompressible correction
has the form

```math
h_R=RH(\mu),
\qquad
h_z=-z\,\frac{1-\mu^2}{\mu^2}H(\mu),
\qquad
H(\mu)=O(\mu^2).
\tag{ZPF.7k6e}
```

Its full linear pressure-current source is

```math
T_H=S:\nabla h
=
\left(4-\frac2{\mu^2}\right)H
(1-\mu^2)\left(\frac2\mu-3\mu\right)H'.
\tag{ZPF.7k6f}
```

A \(P_4\)-only cancellation exists:

```math
H=\mu^2-\frac{33}{2}\mu^4
\tag{ZPF.7k6g}
```

has nonzero retained cubic flux and zero \(P_4\) coefficient. It is not silent
for the full source:

```math
T_H=2-105\mu^2+270\mu^4-198\mu^6,
\qquad
(T_H)_{P_6}=-\frac{96}{7}P_6.
\tag{ZPF.7k6h}
```

Conversely, if \(T_H=0\) and
\(H(\mu)=c\mu^k+O(\mu^{k+2})\) near the equator, then

```math
T_H=(2k-2)c\,\mu^{k-2}+O(\mu^k).
\tag{ZPF.7k6i}
```

Smoothness gives \(k\ge2\), so \(c=0\), and iteration gives \(H\equiv0\).
Thus the axisymmetric poloidal retained-flux nullspace for the full source is
empty. This remains support/readout, because \(T_H\) is still a time-even
source-magnitude calculation in a locked-frame aligned class. The surviving
\(c_0\) bridge is the full non-axisymmetric strict-atom version: no retained
positive cubic flux with zero transverse \(m\neq0\), time-odd pressure-current
transfer after lawful pass/parent/child/Field ownership is removed.

Since the right side equals
\(\int_{\Lambda Q}[M'(\rho)]_+\,d\rho\), (ZPF.7k4) implies
`CubicRadialMomentOddPayment.A`.

The strict physical form of (ZPF.7k4) is the payment-or-route-out theorem

```math
\texttt{RetainedPositiveCubicFluxIsPaidOrRoutesOut.A}.
\tag{ZPF.7k5}
```

A positive residual angular-current flux cannot be kept as active
Vieillefosse service by the same strict participant while also being absent
from the pressure-current/collar bill. If it is not billed, the service has
crossed the collar to a parent, child, Field, stopped/pass, or nonparticipating
owner and the atom/tower accounting must follow it there.

Equivalently, with \(N=-M\),

```math
\mathsf J_M^+
=
\int_{\Lambda Q}[-N'(\rho)]_+\,d\rho.
\tag{ZPF.7k6}
```

On a constant-owner retained subcollar, strict participation counts positive
retained-service variation:

```math
d\mathsf P_{\rm ret}
\ge
c\,d\operatorname{Var}_{\rm ret}N
\ge
c[-N'(\rho)]_+\,d\rho.
\tag{ZPF.7k7}
```

Thus zero retained bill forces no positive retained cubic flux. A positive
flux with zero bill is lawful only as owner transfer, not as retained active
service.

Tangential auxiliary channels are support-only shortcut filters. They do not
close this theorem and they do not become a separate live route. For the
aligned poloidal test

```math
u_{\rm pol}
=
aSx+\frac{b}{3}(Sx-qx),
\qquad
S=\operatorname{diag}(1,1,-2),
\tag{ZPF.7k8}
```

a tangential add-on \(u_\phi=\gamma R\) leaves \(M\),
\(\mathsf J_M^+\), and the aligned cubic drop unchanged. For constant
\(\gamma\), it contributes only the rotation-gauge pressure source

```math
\operatorname{tr}(\nabla u)^2
=
\operatorname{tr}(\nabla u_{\rm pol})^2-2\gamma^2,
\tag{ZPF.7k9}
```

which does not own the \(b\)-linear aligned turn-off. This proves only that a
tangential add-on cannot be used as a uniform local payment for
\([M']_+\).

A more general tangential profile also kills a purely fixed-time
pressure-source coercivity proof. In an axisymmetric notation,

```math
\operatorname{tr}(\nabla u)^2
=
\operatorname{tr}(\nabla u_{\rm pol})^2
-2\frac{u_\phi}{R}\partial_Ru_\phi .
\tag{ZPF.7k10}
```

With \(u_\phi=\gamma R\) and \(H=R^2\gamma^2\),

```math
-2\frac{u_\phi}{R}\partial_Ru_\phi
=
-2\gamma(\gamma+R\partial_R\gamma)
=
-\frac1R\partial_RH .
\tag{ZPF.7k11}
```

Thus, on a local annulus, a nonnegative \(H\) can be chosen so that this
tangential source cancels the aligned poloidal \(b\)-linear source while
leaving \(\mathsf J_M^+\) unchanged. The consequence is only a veto on the
attempted shortcut: \(\mathsf P_{\rm odd}\) cannot be a static elliptic
\(Q\)-operator lower bound. As a support route, the retained cubic-flux
statement would be:

```math
\texttt{CubicRadialMomentOddPayment.A}
\quad\text{or, in ownership form,}\quad
\texttt{RetainedPositiveCubicFluxIsPaidOrRoutesOut.A}.
\tag{ZPF.7k12}
```

If this support theorem is proved in the legitimate same-field pressure/current
currency, then

```math
\mathsf P_{\rm odd}(\Lambda Q)\ge c\,\mathsf S_V(Q)
\tag{ZPF.7l}
```

with \(c\) independent of collar radius and tower depth. The governing strict
tower proof below does not depend on this shortcut; it uses the full
zero-payment kernel plus VPL Section 23 atomization/accounting.

## 3. Direct strict-participation kernel proof

The direct theorem should not be split into speculative survivor branches. It
is:

```math
\texttt{ZeroPaymentForcesZeroParticipationInLawfulStrictTowers.A}.
\tag{ZPF.8}
```

Statement. Let \(u_n\) be a lawful same-fluid strict atom/tower sequence with
normalized Vieillefosse service

```math
\mathcal S(u_n)=1,
\qquad
\mathcal P(u_n)\to0.
\tag{ZPF.9}
```

Because \(\mathcal P\) is the actual strict participation bill, it is not a
single scalar norm. It is the assigned sum of same-field nonnegative payments:
non-affine viscous strain, collar attachment, slaved pressure/current work,
cancellation/current transport, and owner-transfer. Therefore
\(\mathcal P(u_n)\to0\) forces each physical payment channel to vanish.

Pass to a normalized strict atom at a service-density point. Strict atom
geometry is compact after quotienting translations, rigid rotations, and
affine jets. Zero non-affine/collar/current/ownership bill gives, by
Korn-Hodge on the packet and collar,

```math
u_\infty(x)=Ax+b+\Omega x
\tag{ZPF.10}
```

on the retained same-fluid packet. The rigid part \(b+\Omega x\) carries no
Vieillefosse service. Service continuity gives

```math
\mathcal S(u_\infty)=1,
\tag{ZPF.11}
```

so \(A\neq0\) is a Vieillefosse affine strain.

A nonzero affine strain has only three physical possibilities inside the same
fluid:

```math
\text{extend globally},\qquad
\text{turn off/attach},\qquad
\text{change owner}.
\tag{ZPF.12}
```

Global affine extension is not a finite-energy localized Navier-Stokes packet.
Turn-off or attachment creates non-affine collar work and is paid by
\(\mathcal P\). Owner change routes the service away, so it is not retained
zero-payment service. Every possibility contradicts a retained zero-bill atom
with \(\mathcal S=1\).

Therefore no normalized lawful sequence with \(\mathcal S=1\) and
\(\mathcal P\to0\) exists. Equivalently,

```math
\mathcal P=0
\quad\Longrightarrow\quad
\mathcal S=0
\tag{ZPF.13}
```

on the retained strict atom/tower quotient.

The physical sentence is: a same-fluid packet cannot keep positive
self-stretching service while every way of attaching, turning, shearing,
pressurizing, transporting, cancelling, or handing off that service is absent.
Zero payment leaves only the affine/rigid kernel, and the nonzero affine part
is not a finite-energy retained packet.

A proposed failure case has threat weight only if it constructs this same-fluid
object:

```math
\mathcal S=1,
\qquad
\mathcal P=0,
\qquad
\text{lawful strict atom/tower compact limit.}
\tag{ZPF.14}
```

Otherwise it is a write-up gap, support calculation, model shadow, or filtered
non-Navier--Stokes scenario.

## 3.1 Current gate audit

The direct strict-tower proof has five gates; two remain open.

Compact extraction: CZC gives the abstract direct-method extraction under
compactness, service persistence, and lower semicontinuity.

Strict atom kernel: VPL Section 17 proves the affine/rigid zero-bill kernel
under A1--A5:

```math
\mathcal P=0
\quad\Longrightarrow\quad
u_\infty(x)=Ax+b+\Omega x.
\tag{ZPF.15}
```

Service persistence: CSP records \(H^1\) control of the non-affine strain
defect only as a conditional input. If the actual same-field
payment supplies this \(H^1\) control, A5 follows by Sobolev/strong \(L^3\).
This is Door 1, not installed by Korn-Hodge \(L^2\) compactness.

Long chains: the log-chain Hodge calculation proves that off-kernel
log-amplitude variation is paid by the same-field Hodge bill. The fixed
smooth-affine endpoint is paid by the Door-2a H1 trace/collar note. The
remaining Door-2 endpoint is the scale-consistent degree -1 wrong-sign
pressure-bank cone.

Tower ownership/accounting: VPL Section 23 supplies the stopping-time
atomization and bounded-overlap ownership framework. Local atom and chain
payments sum to the tower bill only after Door 1 and Door 2 have supplied those
payments in the same ownership currency.

The transverse-pressure, cubic-moment, swirl, and pressure-bank branches remain
support diagnostics. They test pieces of the two open payment doors; they do not
replace the Door-1 service persistence theorem or the Door-2 endpoint theorem.

## 4. Consequence

If `(ZPF.8)' is proved in the strict participation ontology,

```math
\mathcal S\le C\mathcal P
```

on the lawful same-fluid packet/tower class, and therefore

```math
c_0
=
\inf_{\mathcal S>0}\frac{\mathcal P}{\mathcal S}
\ge
C^{-1}
>0.
\tag{ZPF.17}
```

That would be the direct c0 closure. The present note has not proved `(ZPF.8)'.
It has isolated the two load-bearing missing inputs: cubic service persistence
from payment and no-free-collar/restoring-sign endpoint payment.

## 5. Clay-facing physical admission split

The strict \(c_0\) theorem is not the statement that every terminal presentation
of a breakdown must be squeezed into a strict tower. A real Navier--Stokes
terminal branch first has to answer the same physical questions as the CM
terminal tree:

```math
\text{same-fluid carrier?}
\qquad
\text{same pressure-viscosity participation?}
\qquad
\text{positive-scale one-field coherence?}
\tag{ZPF.18}
```

If one of these fails, the branch is already a CM face witness:

```math
\neg Pack_Q
\quad\vee\quad
\neg Part_{N,Q}
\quad\vee\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{ZPF.19}
```

That branch is not a hidden \(c_0\) survivor. It has stopped being a retained
same-field participant before the strict tower bill is the right object.

If all three survive and the branch carries positive Vieillefosse participation,
then the same-field service measure

```math
d\nu=[-\operatorname{tr}S^3]_+\,dx\,dt
\tag{ZPF.20}
```

is the intended lawful retained participation measure on the same Navier--Stokes
history. VPL Section 23 supplies the stopping decomposition: at \(\nu\)-almost
every active point the dyadic stopping rule gives a bad packet, a finite strict
atom, or a long same-affine chain. It becomes a c0 proof only after service
persistence and endpoint payment are proved.

The same-fluid mechanism that makes `(ZPF.20)' a lawful service coordinate is
the native vorticity/strain ledger. On a smooth incompressible preterminal
interval,

```math
{1\over2}{d\over dt}\int|\omega|^2\,dx
+\nu\int|\nabla\omega|^2\,dx
=
\int\omega\cdot S\omega\,dx
=
-{4\over3}\int\operatorname{tr}(S^3)\,dx .
\tag{ZPF.21}
```

Thus genuine growth of vorticity/enstrophy is not a detached packet winding
itself up. It is the same velocity field transferring strain/vorticity through
the incompressible pressure-viscosity law. When that transfer is retained as
positive Vieillefosse participation, it is exactly the service that the strict
tower theorem bills. Loss of the carrier, law, or field coherence is exactly the
CM route-out in `(ZPF.19)'.

The identity `(ZPF.21)' is not, by itself, a conversion from arbitrary terminal
vorticity growth to `(ZPF.20)'. It is a signed global ledger. It does not control
the retained positive, localized, same-carrier part of the exchange without an
additional no-waste/retention statement. In the older forward-Gold notation, the
missing conversion is the same-packet total strain-vorticity exchange retention
row:

```math
\texttt{TotalStrainVorticityExchangeRetention.A}.
\tag{ZPF.21a}
```

Thus strict \(c_0\) is reduced for the retained positive Vieillefosse branch to
the two-door payment theorem.
The only apparent intermediate case is

```math
\text{positive stretching survives while the total same-packet }
X_{\omega S}^{tot}
\text{ record is not retained.}
\tag{ZPF.21b}
```

The existing same-packet realization and material-clock audits type that case
as loss of the same pressure-viscosity-incompressibility participation record:

```math
Pack_Q+\neg Part_{N,Q}.
\tag{ZPF.21c}
```

So `(ZPF.21b)' is not a hidden \(c_0\) survivor in the CM/physical split. It is
a Part-face route-out. A pure forward-Gold no-exit presentation would still need
the positive theorem `TotalStrainVorticityExchangeRetention.A' from original
data. In the c0 branch, retained positive service still requires the two-door
payment theorem, while loss of the record is consumed by `(ZPF.19)'.

So the Clay-facing use of strict \(c_0\) is the split:

```math
\text{terminal branch}
\Longrightarrow
\begin{cases}
\text{Pack/Part/Field route-out},\\
\text{or retained positive Vieillefosse participation, hence the two-door }
c_0\text{ reduction.}
\end{cases}
\tag{ZPF.22}
```

This removes the overbroad wording that every breakdown object must be admitted
as a strict tower. Only retained positive participation enters the strict-tower
\(c_0\) reduction; stopped, nonparticipating, no-carrier, and no-field terminal
presentations are consumed before the \(c_0\) payment theorem is invoked.
