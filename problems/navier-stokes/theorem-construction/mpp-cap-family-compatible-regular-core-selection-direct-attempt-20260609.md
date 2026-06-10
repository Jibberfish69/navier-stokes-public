---
ns_viewer:
  theorem_id: cap-family-compatible-regular-core-selection-direct-attempt-20260609
  status: conditional-cap-family-regular-core-paid-source-native-cap-floor-open
  proof_role: selector_source_regularization_reentry
  logical_landing_node: source-native-cap-family-density-floor
  edge_effect: "Tests CapFamilyCompatibleRegularCoreSelection.A after UniformRelativeHolderScaleBudget.A proved a positive regular density core on some retained set. The cap-family-compatible construction is paid conditionally: if every required finite entrance-sector / shell-core-cap cell has positive source-native diagonal-density mass and all same-strip packet losses are chosen below those margins, finite Lusin regularization and capwise retention produce regular pieces in every required cell. The current inputs do not prove the required capwise density floor; positive total density mass can concentrate in one cap. The next atom is SourceNativeCapFamilyDensityFloor.A."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-uniform-relative-holder-scale-budget-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-capwise-density-stopping-loss-budget-proof-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-initial-qsp-core-cap-mass-floor-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md
    - problems/navier-stokes/theorem-construction/diagonal-restriction-stability-on-entrance-sector-refinement.md
  downstream_consequence: "The next theorem atom is SourceNativeCapFamilyDensityFloor.A: prove, from source-native estimates on the same selector-good strip and without using the cap-floor / shell-bump / finite-frame loop, that every predetermined finite entrance-sector / shell-core-cap cell has positive diagonal-density mass before regularization."
---

# MPP Cap-Family-Compatible Regular-Core Selection Direct Attempt

Date: 2026-06-09

Status: bounded follow-up proof attempt. This note does not close
`CapFamilyCompatibleRegularCoreSelection.A`,
`UniformRelativeHolderScaleBudget.A`, `SourceNativeDiagonalDensityOscillation.A`,
`QSP.11p`, `QSP.11r`, Pack survival, or CMI finality.

## Target

The active target is:

```text
CapFamilyCompatibleRegularCoreSelection.A.
```

It must refine the positive regular density core from the previous pass into
the predetermined finite entrance-sector / shell-core-cap family while keeping
positive mass in every required sector/cap and preserving the same-strip
transport, exact-potential comparison, CG gap, and selector-strain packets.

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: source-native cap-family compatibility for the diagonal-density
regular core.

Object role: supplier/bridge, not final CM class exit.

Logical skeleton: prove the finite conditional capwise selection theorem, then
test whether the present source inputs provide the needed capwise density
floor.

Mechanism: finite cap family, capwise positive density margins, Lusin
regularization inside each cap, finite small-diameter covering, and capwise
loss budgets.

## Conditional Piece: Capwise Regular Core From Capwise Density Floors

Let `E_1,\dots,E_M` be the predetermined finite entrance-sector /
shell-core-cap cells used by the QSP/TPS branch on one selector-good strip.
Let `\delta\ge 0` be the diagonal density on the same strip.

Assume the source-native capwise floor:

```math
\int_{E_m}\delta\,d\mu \ge \alpha_m>0
\qquad
\text{for every }m=1,\dots,M.
\tag{CFCR.1}
```

For each fixed `m`, apply the positive regular-core argument from the previous
pass to `E_m` instead of to the whole strip. Since the integral in `(CFCR.1)`
is positive, there is a dyadic level window

```math
0<a_m<b_m<\infty
```

such that

```math
E_m\cap\{a_m\le \delta\le b_m\}
```

has positive measure. By Lusin's theorem, after discarding an arbitrarily small
amount of mass inside this cap, there is a compact retained subset
`K_m\subset E_m` of positive measure on which `\delta` is continuous. Uniform
continuity on `K_m` and a finite small-diameter cover of `K_m` give finitely
many retained pieces inside `E_m` on which `\delta` has the desired relative
oscillation.

Because the cap family is finite, the constants and losses can be chosen
simultaneously. If the transport, exact-potential comparison, CG-gap,
selector-strain, shell/collar, and regularization losses are each chosen below
the capwise margins, the capwise-retention lemma from the earlier pass keeps at
least one positive retained regular piece in every required `E_m`.

So the following conditional theorem is paid:

```text
positive diagonal-density mass in every required finite sector/cap
+ finite same-strip packet losses below the cap margins
=> cap-family-compatible positive regular density core.
```

## Failed Discharge: Positive Total Mass Does Not Give Capwise Floors

The present source inputs supply positive diagonal-density mass on the
selector-good strip and the previous pass extracted a positive regular core
from that total mass. That does not imply `(CFCR.1)`.

Take two required cells `E_1,E_2` with positive background measure and let

```math
\delta=\mathbf 1_{E_1}.
```

Then `\int_{E_1\cup E_2}\delta\,d\mu>0`, and the Lusin/finite-cover argument
produces a perfectly regular retained core inside `E_1`. But

```math
\int_{E_2}\delta\,d\mu=0,
```

so no regularization step can produce positive retained mass inside `E_2`.
The obstruction is support, not regularity.

This is the same cap-occupancy wall seen earlier in the QSP finite-frame
route. Regularity on a selected positive set does not create mass in a fixed
cap that the density never occupied.

## Result

`CapFamilyCompatibleRegularCoreSelection.A` is paid only conditionally.

The finite construction is available once the proof has a source-native
positive diagonal-density floor in every predetermined sector/cap on the same
strip. The current inputs do not provide that floor.

The next theorem atom is:

```text
SourceNativeCapFamilyDensityFloor.A:
prove, from source-native estimates on the same selector-good strip and
without using the cap-floor / shell-bump / finite-frame loop, that every
predetermined finite entrance-sector / shell-core-cap cell has positive
diagonal-density mass before regularization.
```

This is the non-circular density-side form of the initial QSP core-cap mass
floor. Without it, `CapFamilyCompatibleRegularCoreSelection.A` returns to the
same dependency cycle already exposed by the shell-bump and cap-occupancy
passes.

## New Live Criticism

`NS-LIVE-20260609-148`: `CapFamilyCompatibleRegularCoreSelection.A` is only
conditionally paid. Finite Lusin regularization plus capwise retention can
produce a regular core in every required sector/cap after each cap has positive
diagonal-density mass, but the current proof lacks
`SourceNativeCapFamilyDensityFloor.A`: a non-circular source-native theorem
that every predetermined finite entrance-sector / shell-core-cap cell carries
positive diagonal-density mass on the same selector-good strip before
regularization.
