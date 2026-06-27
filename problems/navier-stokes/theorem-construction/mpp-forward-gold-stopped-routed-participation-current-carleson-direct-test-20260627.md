---
theorem_id: forward-gold-stopped-routed-participation-current-carleson-direct-test-20260627
status: direct-test-open-reduces-to-nonfuture-current-square-packing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current Carleson producer
attacks_hinge:
  - StoppedRoutedParticipationCurrentCarleson.A
  - RoutedSelectedSourceDivergenceForm.A
  - OriginalHistoryHilbertBMOProducer.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-accretive-testing-current-factorization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-source-innovation-testing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-adjoint-testing-data-construction-boundary-20260627.md
---

# Stopped routed participation current Carleson: direct test

## 1. Target

The current factorization route reduces stopped testing to the same-material
current estimate

```math
\sup_{P\subseteq P_0}
{1\over\mathcal R(P)}
\left[
\int_{\widehat P}|J^S|^2\,d\mathcal R
+Stop(\widehat P)
+R_{\rm legal}(\widehat P)
\right]
\le
C_N(u_0).
\tag{1}
```

Here \(J^S\) is the routed participation current satisfying

```math
\nu^S
=
D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal}.
\tag{2}
```

The theorem is useful only if \(J^S\) is constructed from the original
pressure-viscosity-incompressibility-velocity material history before scalar
selected-tail readout.

## 2. Immediate finite-energy part

The raw global estimate

```math
\int_{P_0}|J^S_{\rm raw}|^2\,d\mathcal R
\le C_N(u_0)
\tag{3}
```

is not enough for `(1)`. It gives a total \(L^2\) bound, but not a stopped
Carleson density bound on every retained subpacket.

The critical half-tail can still hide inside total \(L^2\) mass. A model is

```math
|J_\ell|^2\mathcal R(Q_\ell)
\simeq
{2^{-\ell}\over \ell+1}.
\tag{4}
```

Then the raw total is finite, while the selected first-ratio weight

```math
\sum_\ell 2^\ell |J_\ell|^2\mathcal R(Q_\ell)
\simeq
\sum_\ell {1\over \ell+1}
\tag{5}
```

diverges. Thus `(1)` cannot be proved from raw \(L^2\) finiteness alone.

## 3. Stopping-time Carleson route

The only noncircular way for `(1)` is a stopped square-packing theorem. Define
bad subpackets by the density excess

```math
\int_{\widehat Q}|J^S|^2\,d\mathcal R
>
K\,\mathcal R(Q).
\tag{6}
```

If the children selected by `(6)` have a parent drop

```math
\sum_{Q'\in ch(Q)}
\int_{\widehat {Q'}}|J^S|^2\,d\mathcal R
+
\sum_{Q'\in ch(Q)}B_{\rm cur}(Q')
\le
B_{\rm cur}(Q)+R_{\rm legal}(Q),
\tag{7}
```

with \(B_{\rm cur}\ge0\) a same-material current capacity, then summing over the
stopped tree gives `(1)`.

So the real theorem is not merely current \(L^2\) integrability. It is:

```text
StoppedRoutedCurrentSquarePacking.A
```

Statement:

```math
\sum_{Q\subseteq P}
\left[
\int_{\widehat Q}|J^S|^2\,d\mathcal R
+Stop(Q)
\right]
\le
C_N(u_0)\mathcal R(P)+CR_{\rm legal}(P).
\tag{8}
```

## 4. Relation to branch defects

The stopped innovation note already identifies the possible failures of square
packing as fixed-core return and strict reset defects:

```math
Def_{\rm test}(P)
\le
C\,RetBV(P)+C\,ResetBV(P)+CR_{\rm legal}(P).
\tag{9}
```

In the current language, those are exactly the ways `(7)` can fail:

- fixed stopped-core reuse means the current remains on one carrier and must
  have a signed return balance;
- strict reset means the current changes chart/label and must pay a critical
  weighted reset derivative.

Therefore the current-Carleson theorem closes if and only if both branch
defects are paid:

```math
RetBV(P)+ResetBV(P)
\le
C_N(u_0)\mathcal R(P)+CR_{\rm legal}(P).
\tag{10}
```

## 5. Result

The direct test does not prove `(1)` from raw original-data energy. It reduces
the live Gold producer to the precise square-packing form:

```text
StoppedRoutedCurrentSquarePacking.A
```

plus the two branch-payment theorems:

```text
StoppedReturnBVFiniteFromOriginalData.A
```

and

```text
CriticalWeightedResetBVFromOriginalHistory.A.
```

This is not a regression to older labels. It is the same current theorem written
with its only two possible square-packing defects exposed. The next proof move
must attack `(7)`/`(8)` directly, or prove `(10)` from the material signed
balance and reset derivative structure.
