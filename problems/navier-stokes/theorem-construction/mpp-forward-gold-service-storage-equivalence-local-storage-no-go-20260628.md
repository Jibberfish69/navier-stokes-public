---
theorem_id: forward-gold-service-storage-equivalence-local-storage-no-go-20260628
status: support-theorem-installed-local-storage-no-go; gold-storage-producer-still-open
created: 2026-06-28
problem: navier-stokes
route: forward-gold same-material service storage / native reserve
logical_landing_node: BoundedBelowSameMaterialServiceStorage.A
proves_support:
  - ShellEnergyStorageNoFreeClosure.A
  - ServiceStorageCoordinateEquivalence.A
attacks_hinge:
  - BoundedBelowSameMaterialServiceStorage.A
  - PositiveCriticalTransferBound.A
  - PrimitivePLSBoundedBelowLyapunov.A
  - NativeBirthChargePacking.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-net-to-rectified-annular-clock-bv-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-same-material-service-clock-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-fullmovingsamematerialservicecarrierthetanl1-a-globalsamepacketfullclockfromoriginaldata-a-cee9b9b065.md
  - problems/navier-stokes/theorem-construction/mcp-finitetotalthetanservicecoordinatehardobstruction-a-globalsamepacketfullclockfromoriginaldata-a-2ccfdb473e.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-growth-is-remaining-clock-producer-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-lowhigh-interface-lower-edge-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-coercivity-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-no-free-upcrossing-complete-frame-laminar-test-20260627.md
completion_truth: partial-not-gold-closed
effect: >-
  Closes the local shell-energy storage branch as a proof no-go and normalizes
  the current Gold storage target across its equivalent coordinates: rectified
  fresh traction service, positive critical Leray transfer, primitive PLS
  bounded-below Lyapunov, and scale-native native-birth packing. The note proves
  that the naive bounded energy storage A_Q=-E_Q pays positive shell flux only
  after the negative return/service-variation term is already controlled. It
  therefore cannot supply the remaining producer. The remaining theorem is the
  nonlocal original-history return/service storage itself.
---

# Service storage equivalence and local storage no-go

Status: support theorem installed, not Gold closure.

The current Gold producer has four active names:

```text
BoundedBelowSameMaterialServiceStorage.A
PositiveCriticalTransferBound.A
PrimitivePLSBoundedBelowLyapunov.A
NativeBirthChargePacking.A
```

They are not four separate opportunities. They are the same missing storage law
seen through different coordinates of the original transported packet.

## 1. Coordinate normal form

The service-storage form is:

\[
d\mathcal A_P
+c_N\sum_{Q\subset P}d\Omega_Q^{fresh}
\le
dR_P^{legal}+dStop_P,
\qquad
\mathcal A_P(t)\ge -C_N(u_0).
\tag{1}
\]

Together with the local admission

\[
w_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_Nd\Omega_Q^{fresh}+C_NdR_Q^{paid},
\tag{2}
\]

where

\[
F_Q=(I-\Pi_{\mathrm{spent}(<Q)})\Delta_Q Z_P^{orig},
\tag{3}
\]

`(1)` gives the native reserve:

\[
\sum_{Q\subset P}w_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{4}
\]

Then the already-installed selected-action admission

\[
\omega_Q
\le
C_Nw_Q\|F_Q\|_{\mathcal H_{\rm raw}}^2+R_Q^{legal}
\tag{5}
\]

gives finite selected action, and the installed parent-drop/full-clock/Hs relay
continues the solution.

Thus `BoundedBelowSameMaterialServiceStorage.A` implies
`NativeBirthChargePacking.A` in the current route.

## 2. Critical-transfer coordinate

The same reserve has the critical fractional face

\[
\mathfrak R_{\rm nat}(T)
\simeq
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt .
\tag{6}
\]

Testing the Leray-projected equation against \(\Lambda u\) gives

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{7}
\]

Therefore the same storage target is, in critical variables,

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
\theta<1.
\tag{8}
\]

The standard estimate only gives the large-data coefficient
\(\|u(t)\|_{\dot H^{1/2}}\). Thus `(8)` is not a routine analytic estimate; it
is the same bounded-below service storage in half-derivative coordinates.

## 3. Primitive PLS coordinate

The older primitive PLS surface writes the same obstruction as

\[
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N,
\qquad
\mathscr A_N\ge -C_N(u_0),
\qquad
\int dR_N<\infty .
\tag{9}
\]

Here \(d\Omega_N^{PLS,primitive}\) is the one-way positive material-record
growth service after recirculation, fixed-collar terms, exact inherited reuse,
fresh bounded tests, and first-exit reset motion have already been removed.

Consequently `PrimitivePLSBoundedBelowLyapunov.A` is not a separate downstream
escape route. It is `(1)` after projecting the fresh traction service onto the
primitive continuation-depth material record.

## 4. Local shell-energy no-go

For a transported shell \(Q(t)\), the exact material energy identity is

\[
{d\over dt}E_Q+\nu D_Q=\Phi_Q,
\qquad
\Phi_Q=-\int_{\partial Q(t)}u\cdot(-pI+2\nu S)n .
\tag{10}
\]

Set the obvious bounded storage

\[
\mathcal A_Q=-E_Q .
\tag{11}
\]

Then `(10)` gives the exact positive-flux split

\[
d\mathcal A_Q+\Phi_Q^+\,dt
=
\nu D_Q\,dt+\Phi_Q^-\,dt .
\tag{12}
\]

This proves the support theorem:

```text
ShellEnergyStorageNoFreeClosure.A
```

The shell energy storage is bounded below and it has the right sign, but it
does not pay rectified fresh traction from original data. It pays
\(\Phi_Q^+\) only after \(\Phi_Q^-\) is already controlled. Thus any proof that
uses `(11)` as the Gold storage has imported the missing negative-return /
service-variation theorem.

The same scalar fact is the signed-to-rectified BV identity: a signed service
density \(a(t)\) controls \(\int[a]_+\) only through its signed net plus the
variation of that same service. Differentiating the service variation brings
back pressure Hessian, strain/cubic terms, viscous tower terms, transported
collar terms, Hodge/projector motion, and coefficient/frame motion. Those are
the full moving same-material service coordinate, not a cheaper local ledger.

## 5. What remains

The closed part is target cleanup:

```text
local shell energy storage cannot close Gold;
service storage, positive critical transfer, primitive PLS Lyapunov,
and native-birth packing are the same open producer in different coordinates.
```

The remaining theorem is the nonlocal original-history storage itself:

\[
d\mathcal A_P
+c_Nd\Omega_P^{fresh}
\le
dR_P^{legal}+dStop_P,
\qquad
\mathcal A_P\ge -C_N(u_0),
\tag{13}
\]

or equivalently finite original-data control of

\[
\sum_Q\Phi_Q^-
\quad\hbox{and the associated fresh service variation.}
\tag{14}
\]

This is not obtained from raw energy, raw Bessel, raw route-energy, fixed
collars, affine endpoint faces, determinant-only parent reuse, or the local
storage \(\mathcal A_Q=-E_Q\). Those are support surfaces after `(13)`, or
no-go tests showing why `(13)` must be genuinely nonlocal and same-material.
