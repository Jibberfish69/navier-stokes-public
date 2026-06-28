---
theorem_id: forward-gold-native-birth-physical-reformulation-20260628
status: reformulates-live-proof-line-first-birth-endpoint-mass-open
created_at: 2026-06-28
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
refines:
  - NativeBirthChargePacking.A
  - CriticalFreshSourceTentCarleson.A
  - NativeBirthAffineEndpointThreading.A
  - PositiveCriticalTransferBound.A
completion_truth: partial-not-mpp-closed
---

# Native birth physical reformulation

This note records the corrected proof line after the Schur accretivity
countertest.

The wrong assignment was:

\[
\|p_J\|^2
\lesssim
\langle \mathsf G_J^{-1}m_J,p_J\rangle_+ .
\tag{1}
\]

That estimate asks an existing affine record to pay for the first creation of
the record.  At first birth \(m_J=0\), so the Schur pairing in `(1)` is zero
while the new production \(p_J\) may be nonzero.  Schur storage pays reuse,
upcrossing, return, and metric motion after a record exists.  It does not pay
the first native birth.

## 1. Physical dictionary

The abstract proof names reduce to the following physical events.

`Schur upcrossing` is reading an already-created affine stress record at a
larger active weight.  It is paid by Schur storage, negative return of the same
potential, or inverse-Gram route motion.

`Reset/reselection` is a change of the material test, collar, cutoff, order-lock,
or projection by which the same surrounding fluid is read.  It is paid by the
stopped BV/coarea and legal/stop ledgers.

`Silent source` is pressure/constraint material that is invisible to the current
Schur read.  It is either unselected constraint material or selected only through
same-material strain/exchange service.

`First native birth` is the first retained positive endpoint mass of the
original transported pressure-viscosity-incompressibility-velocity packet after
lower-band carry, spent-source reuse, reset, reselection, silent exchange,
legal, stop, and annular payback have been removed.

Thus the live theorem is not a generic finite reserve.  It is a finite charge
for first native births of the same original packet.

## 2. Correct split

For each stopped affine scale interval \(J\), write the selected positive action
as

\[
\int dA_J^+
=
\int_{\mathrm{birth}}dA_J^+
+
\int_{\mathrm{reuse}}dA_J^+ .
\tag{2}
\]

The reuse term satisfies the Schur/BV bound

\[
\int_{\mathrm{reuse}}dA_J^+
\lesssim
\sup_t\mathfrak S_J(t)
+
\int dA_J^-
+
\int \mathfrak S_J\,d\mathcal K_J
+
R_{\rm legal,J}
+
Stop_J .
\tag{3}
\]

The birth term must be charged separately.

## 3. Endpoint mass atom

Let \(\Gamma_N(P)\) be retained first selected births below a stopped parent
\(P\) after all paid branches are removed.  For
\(\gamma\in\Gamma_N(P)\), let \(J_\gamma\) be the stopped log-scale interval and
let \(\widetilde Z_\gamma^{fresh,+}\) be the positive fresh original-packet
source left after spent-source projection.  The DER/AQK split leaves the
positive affine endpoint mass

\[
M_\gamma(t,x)
:=
\int_{J_\gamma}
k_\gamma(\sigma)\,
\widetilde Z_\gamma^{fresh,+}(\sigma,t,x)\,d\sigma ,
\qquad
k_\gamma(\sigma)\ge 0 .
\tag{4}
\]

Define the native endpoint atom

\[
\rho_\gamma^{EP}
:=
\int_{I_\gamma}
H_\gamma(t)\|M_\gamma(t)\|_2^2\,dt
+
DER(\gamma)
+
R_{\rm thread}(\gamma).
\tag{5}
\]

The noncircular native-birth theorem is:

\[
\omega_\gamma
\le
C_N\rho_\gamma^{EP}
+
R_{\rm legal}(\gamma)
+
Stop(\gamma),
\tag{6}
\]

and

\[
\sum_{\gamma\subset P}\rho_\gamma^{EP}
\le
C_N(u_0)\mathcal R(P)
+
R_{\rm legal}(P)
+
Stop(P)
+
StoppedReturnBV(P)
+
CriticalResetBV(P).
\tag{7}
\]

Equations `(6)`--`(7)` imply `NativeBirthChargePacking.A`; the already installed
reuse/upcrossing relay then gives finite full same-material selected action.

## 4. Why `(6)` is physically the right admission statement

A singularity-forcing first birth cannot be a label attached to a tiny raw
wrinkle.  It must create a positive endpoint mass that actually couples to the
next selected heat-scale test.  If it does not, the event is not retained by the
singularity-forcing selector.  If it reuses an older endpoint mass, it is not a
first birth.  If the endpoint state changes, the change is reset/reselection. If
it vanishes and reappears, the disappearance is return/viscous loss and the
reappearance is a new endpoint atom.

This is the physical reason behind `(6)`: retained first selected action must
leave a positive endpoint seed in the original material packet.

Formally, the proof of `(6)` is the DER/AQK positivity argument:

\[
c_\gamma^{fresh}(t,x)
=
\int_{J_\gamma}k_\gamma(\sigma)
\widetilde Z_\gamma^{fresh,+}(\sigma,t,x)\,d\sigma
+ DER_\gamma(t,x),
\qquad
k_\gamma\ge0 .
\tag{8}
\]

The stopped selector only retains \(\gamma\) when the selected readout has unit
size on its seed window.  Cauchy-Schwarz on that seed window gives

\[
\omega_\gamma
\lesssim
\int_{I_\gamma}H_\gamma(t)\|M_\gamma(t)\|_2^2\,dt
+ DER(\gamma)
+ R_{\rm legal}(\gamma)
+ Stop(\gamma),
\tag{9}
\]

which is `(6)`.

## 5. What remains after the physical reformulation

The remaining theorem is exactly `(7)`.

Physically, `(7)` says that the same original transported packet cannot create
infinitely many retained first endpoint seeds.  Every such seed is a first
positive material endpoint event; the same seed cannot be first twice, and a
changed seed is reset/reselection/return.

Mathematically, `(7)` is the endpoint-mass form of the positive critical
transfer bound.  In the Leray-projected coordinate,

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{10}
\]

The birth endpoint packing follows if the positive birth part of the right side
satisfies the one-sided absorption

\[
\int_0^T B_{\rm birth,+}(t)\,dt
\le
C_N(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+
R_{\rm legal}
+
Stop
+
StoppedReturnBV
+
CriticalResetBV ,
\qquad
\theta<1 .
\tag{11}
\]

The standard critical estimate gives `(11)` only for small
\(\|u\|_{\dot H^{1/2}}\).  For arbitrary data, `(11)` is the remaining
smoothness-bearing theorem in original-packet language.

## 6. Fast closure route

The proof route is now only this:

\[
\text{retained first birth}
\Rightarrow
\text{positive endpoint mass seed}
\Rightarrow
\text{endpoint atoms pack by original packet}
\Rightarrow
\text{finite native birth charge}
\Rightarrow
\text{Schur pays reuse/upcrossing}
\Rightarrow
\text{finite full selected action}
\Rightarrow
\text{continuation}.
\tag{12}
\]

All broader obstruction names are subordinate to `(6)`--`(7)`.
