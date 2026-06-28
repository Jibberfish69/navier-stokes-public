---
theorem_id: forward-gold-native-reserve-critical-fractional-transfer-reduction-20260628
status: live-subhinge-positive-critical-transfer-open
created_at: 2026-06-28T00:44:00Z
problem: navier-stokes
route: forward-gold same-material scale-native active participation
refines:
  - NativeBirthChargePacking.A
  - CriticalFreshSourceTentCarleson.A
  - OriginalScaleMemoryStorageCoercivity.A
  - ScaleNativeActiveParticipationReserve.A
completion_truth: partial-not-mpp-closed
---

# Native reserve as critical fractional transfer

The finite native reserve inequality is a critical fractional energy estimate
for the original coupled Navier-Stokes packet.

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
