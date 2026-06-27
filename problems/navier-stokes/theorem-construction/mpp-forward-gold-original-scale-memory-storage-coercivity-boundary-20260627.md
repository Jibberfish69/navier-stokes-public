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

## 3. Missing coercive testing

The missing theorem is a positive testing/coercivity statement:

```math
\|G_{sel}\|^2
\le C\langle G,K_PG\rangle+C(R_{legal}+Stop),
\tag{5}
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

Statement:

The original scale-memory generator has a parent-known testing/storage family
that controls the selected square norm and yields `(1)` from original data.

## 5. Result

`OriginalScaleMemoryStorageCoercivity.A` is not proved by the natural storage
energy alone.  The natural storage gives a balance law, not square coercivity.

The live producer is now sharpened to:

```math
\boxed{\text{SelectedGeneratorStorageCoercivity.A / StoppedAccretiveTestingData.A}.}
```

Once that theorem is proved, the already-written chain gives the critical
fresh-source tent bound, parent drop, finite full material clock, and
continuation.