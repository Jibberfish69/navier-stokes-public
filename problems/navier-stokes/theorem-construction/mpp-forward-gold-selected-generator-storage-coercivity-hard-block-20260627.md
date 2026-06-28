---
theorem_id: forward-gold-selected-generator-storage-coercivity-hard-block-20260627
status: hard-block-accretive-testing-data-not-installed
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh-source producer
attacks_hinge:
  - SelectedGeneratorStorageCoercivity.A
  - StoppedAccretiveTestingData.A
  - OriginalScaleMemoryStorageCoercivity.A
  - CriticalFreshSourceTentCarleson.A
  - CriticalPositiveTransferReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-critical-positive-transfer-reduction-20260628.md
---

# Selected generator storage coercivity: hard block

## 1. Target

The remaining producer asks for a parent-known test/storage family that controls the selected square norm of the original scale-memory generator:

```math
\int_{\operatorname{Hist}(P)}a\|G_{sel}\|^2
\le C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P).
\tag{1}
```

In the physical fractional-energy form, this selected square norm is the
scale-native reserve

```math
\mathfrak R_{\rm nat}(T)
\simeq
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt .
\tag{2}
```

## 2. Direct test

The natural storage energy gives a signed balance identity.  It does not give the positive square estimate `(1)`.  A balance identity can cancel; square coercivity cannot be inferred without an accretive test or symmetrizer.

To close `(1)`, one needs parent-known testing data \(b_P\) or a storage operator \(K_P\) satisfying

```math
\|G_{sel}\|^2
\le C\langle G,K_PG\rangle+C(R_{legal}+Stop),
\tag{2}
```

with the right-hand side controlled by original material-history quantities and packing Carleson over stopped subtrees.

## 3. Critical positive-transfer form

The same block is visible directly from the coupled Navier-Stokes packet.  The
Leray-projected equation

```math
\partial_tu+\mathbb P(u\cdot\nabla u)=\nu\Delta u
\tag{3}
```

tested against \(\Lambda u\) gives

```math
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{4}
```

So `(1)` follows from the positive-transfer estimate

```math
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
\theta\nu\int_0^T\|\Lambda^{3/2}u\|_2^2\,dt,
\qquad
\theta<1 .
\tag{5}
```

The standard bound

```math
\left|
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right|
\le
C\|u\|_{\dot H^{1/2}}\|\Lambda^{3/2}u\|_2^2
\tag{6}
```

closes only while the critical packet norm is small.  For arbitrary smooth
data, `(5)` is the open analytic content of
`SelectedGeneratorStorageCoercivity.A`.

## 4. Equivalence to stopped testing

This is exactly the stopped accretive testing theorem:

```text
StoppedAccretiveTestingData.A / OriginalHistoryHilbertBMOProducer.A
```

In testing language, one needs a stopped family \(b_P\) such that

```math
|\langle b_P\rangle_P|\ge c,
\qquad
\|b_P\|_{L^2(P)}^2\le C\mathcal R(P),
\tag{3}
```

and

```math
\|T_P(b_P\nu^P)\|_{L^2(P)}^2
\le C\mathcal R(P)+CR_{legal}(P)+CStop(P),
\tag{8}
```

with testing defects Carleson.  This gives the needed selected square generator control.  Without `(3)`--`(4)`, the storage route has no positive lower bound.

## 5. Result

`SelectedGeneratorStorageCoercivity.A` is not currently proved.  It is not a bookkeeping gap; it is the exact analytic hard block.

The live producer remains:

```text
CriticalPositiveTransferReserve.A / StoppedAccretiveTestingData.A
```

or equivalently a concrete selected-generator storage coercivity theorem proving
`(1)` from original stopped material-history data.

All downstream steps are already conditionally written:

```text
Selected generator coercivity
-> original scale-memory generator energy
-> critical fresh-source tent Carleson
-> stopped selected log-amplification Carleson
-> parent drop
-> finite full material clock.
```

Until the stopped accretive testing/storage coercivity theorem is proved, the route remains conditional.
