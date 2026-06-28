---
theorem_id: forward-gold-original-scale-memory-storage-coercivity-boundary-20260627
status: balance-identity-found-square-coercivity-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh-source producer
attacks_hinge:
  - OriginalScaleMemoryStorageCoercivity.A
  - OriginalScaleMemoryGeneratorEnergyBound.A
  - CriticalFreshSourceTentCarleson.A
  - CriticalPositiveTransferReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-critical-positive-transfer-reduction-20260628.md
---

# Original scale-memory storage coercivity boundary

## 1. Target

The fresh-source scale-memory route needs a bound

```math
\int_{\operatorname{Hist}(P)}a\|G\|^2
\le C_N(u_0)\mathcal R(P)+R_{legal}(P)+Stop(P),
\tag{1}
```

where \(G\) is the original scale-memory generator.

A direct proof would need a parent-known storage \(M_P\) with

```math
a\|G\|^2\le -D M_P+\Theta_{orig}+R_{legal}+Stop.
\tag{2}
```

## 2. Natural storage test

The natural energy storage for the interior source potential is

```math
M=\langle w,L_Aw\rangle\simeq\int|\nabla_Aw|^2.
\tag{3}
```

Differentiating along the material history gives only a balance identity:

```math
D M=\text{pairings between the generator, }w,D_tw,\text{ and metric/frame terms}.
\tag{4}
```

This does not imply the square estimate `(2)`.  A signed pairing can cancel while
\(\|G\|^2\) remains large.

In physical variables, the scale-memory reserve is the critical fractional
dissipation

\[
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt .
\tag{5}
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
\tag{6}
\]

Thus the natural storage boundary is exactly the positive-transfer boundary:
the reserve is finite after the positive part of the nonlinear transfer is
controlled and absorbed into the viscous term.

## 3. Missing coercive testing

The missing theorem is a positive testing/coercivity statement:

```math
\|G_{sel}\|^2
\le C\langle G,K_PG\rangle+C(R_{legal}+Stop),
\tag{7}
```

where \(K_P\) is a parent-known storage/test/symmetrizer and the right side is
controlled by original material-history energy.

Equivalently, the stopped selector must supply accretive testing data for the
scale-memory generator, with testing defects packing Carleson.

## 4. Exact remaining theorem

The remaining theorem is

```text
SelectedGeneratorStorageCoercivity.A
```

or, in the previous carrier language,

```text
StoppedAccretiveTestingData.A / OriginalHistoryHilbertBMOProducer.A
```

or, in the physical fractional-energy language,

```text
CriticalPositiveTransferReserve.A
```

Statement:

The original scale-memory generator has a parent-known testing/storage family
that controls the selected square norm and yields `(1)` from original data.

## 5. Result

`OriginalScaleMemoryStorageCoercivity.A` is not proved by the natural storage
energy alone.  The natural storage gives a balance law, not square coercivity.

The live producer is now sharpened to:

```math
\boxed{\text{SelectedGeneratorStorageCoercivity.A / CriticalPositiveTransferReserve.A}.}
```

The standard estimate closes the positive-transfer bound only for small
\(\dot H^{1/2}\) packet size.  For arbitrary smooth data, proving that
positive-transfer bound is the same open Gold storage problem.  Once that
theorem is proved, the already-written chain gives the critical fresh-source
tent bound, parent drop, finite full material clock, and continuation.
