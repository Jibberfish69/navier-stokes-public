---
theorem_id: forward-gold-native-reserve-critical-fractional-transfer-reduction-20260628
status: corrected-coordinate-face-not-standalone-cascade; native-birth-ledger-is-the-proof-object
created_at: 2026-06-28T00:44:00Z
problem: navier-stokes
route: forward-gold same-material scale-native active participation
refines:
  - NativeBirthChargePacking.A
  - CriticalFreshSourceTentCarleson.A
  - OriginalScaleMemoryStorageCoercivity.A
  - SelectedGeneratorStorageCoercivity.A
  - ScaleNativeActiveParticipationReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-raw-zoom-selector-native-birth-packing-live-edge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-coercivity-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
completion_truth: partial-not-mpp-closed
---

# Native reserve as critical fractional transfer

## 0. Correction: this is only a coordinate face

The previous reading of this note was too detached.  The half-derivative
identity below is a valid coordinate face of the native reserve, but it is not
the proof object and it must not be read as a generic statement that "the
nonlinear term moves activity to small scales faster than viscosity drains it."

Inside the Gold ontology, the positive transfer term is the same original
transported pressure-viscosity-incompressibility-velocity transaction already
handled by the physical surfaces:

```math
B_+
\subset
\text{parent-predictable transport}
+\text{changed reuse/reset}
+\text{annular payback}
+\text{PLS recirculation}
+\text{top-frequency regeneration}
+\text{fresh native birth}.
\tag{0.1}
```

The installed branch meaning is:

```math
\text{parent-predictable transport}
\Rightarrow
A_{\rm sel}^{fresh}=0,
\tag{0.2}
```

```math
\text{changed reuse/reset}
\Rightarrow
\text{parent-announced first-exit derivative charge},
\tag{0.3}
```

```math
\text{annular payback}
\Rightarrow
\text{same-fluid Cauchy-stress transaction},
\tag{0.4}
```

```math
\text{PLS recirculation}
\Rightarrow
\text{bounded-record cycles / accelerated cycles / regeneration are paid},
\tag{0.5}
```

and the remaining selected-scale event is

```math
\text{fresh native birth}
\Rightarrow
\text{first positive atom of the moving low-high same-packet interface}.
\tag{0.6}
```

Therefore the real theorem is not a standalone positive nonlinear-transfer
estimate.  The real theorem is the bounded-multiplicity native birth ledger:

```math
\iota:\Gamma_N(P)\to\mathcal R_N^{nat}(u_0;P),
\qquad
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma)+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{0.7}
```

with

```math
\sum_{\rho\in\mathcal R_N^{nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{0.8}
```

The fractional identity below is the analytic shadow of `(0.7)`--`(0.8)`.
It should be used only after the same-packet branch exhaustion has identified
which part of \(B_+\) is inherited, reset-paid, annular-paid,
recirculation-paid, or a first native birth.

## 1. Coordinate identity

The finite native reserve has a critical fractional-energy coordinate for the
original coupled Navier-Stokes packet.

Let

\[
S=\nabla_{\rm sym}u .
\]

The scale-weighted native reserve has the dyadic form

\[
\mathfrak R_{\rm nat}(T)
\simeq
\nu\int_0^T\sum_{\lambda}\lambda\|P_\lambda S(t)\|_2^2\,dt
\simeq
\nu\int_0^T\|\Lambda^{1/2}S(t)\|_2^2\,dt
\simeq
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt .
\tag{1}
\]

Apply the Leray projection to the original equation:

\[
\partial_t u+\mathbb P(u\cdot\nabla u)=\nu\Delta u .
\tag{2}
\]

Testing `(2)` against \(\Lambda u\) gives

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{3}
\]

Pressure and incompressibility are still inside this identity through the
Leray projection. This is the original coupled packet, not a detached velocity
estimate.

Thus finite native reserve follows from the positive critical transfer bound

\[
\int_0^T
\left(
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u\|_2^2dt,
\qquad
\theta<1 .
\tag{4}
\]

The standard estimate is

\[
\left|
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right|
\le
C\|u\|_{\dot H^{1/2}}\|\Lambda^{3/2}u\|_2^2 .
\tag{5}
\]

So the reserve closes for small critical packet size:

\[
\|u(t)\|_{\dot H^{1/2}}\le{\nu\over2C}
\quad\Longrightarrow\quad
\mathfrak R_{\rm nat}(T)\le C\|u_0\|_{\dot H^{1/2}}^2 .
\tag{6}
\]

For arbitrary smooth data, `(5)` does not close the reserve. The coefficient
\(\|u\|_{\dot H^{1/2}}\) is itself critical.

In stopped material packet language, the same calculation is

\[
dM_{\sigma,t}
+
\nu\|G_{\rm orig}(\sigma,t)\|^2\,dt\,d\sigma
=
-B_{\sigma,t}\,dt\,d\sigma
+dR_{\rm legal}
+dStop .
\tag{7}
\]

Therefore

\[
\int a(\sigma,t)\|G_{\rm orig}\|^2
\le
M(0)+\int B_+ +R_{\rm legal}+Stop .
\tag{8}
\]

The original energy law controls

\[
\int_0^T\|\Lambda u\|_2^2dt ,
\tag{9}
\]

while the scale-weighted reserve asks for

\[
\int_0^T\|\Lambda^{3/2}u\|_2^2dt .
\tag{10}
\]

A high-frequency block can have bounded energy dissipation cost and arbitrarily
large scale-weighted reserve. Thus the finite reserve theorem is not raw energy
summation. It is positive critical nonlinear
pressure-viscosity-incompressibility transfer control.

The next analytic theorem is:

```text
PositiveCriticalTransferBound.A
```

namely `(4)` for the original coupled packet, or an equivalent stopped-packet
version of `(8)` strong enough to imply the native reserve packing theorem.
