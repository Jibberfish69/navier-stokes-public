---
theorem_id: forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627
status: stopped-source-carrier-refined-to-critical-fresh-source-tent-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped source carrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - StoppedSourceCarrierAndPaidReselection.A
  - StoppedFullExchangeActionCarleson.A
  - SelectedScaleFreshNativeRootReserve.A
  - FreshNativeRootUpperBound.A
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
refined_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-production-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-selected-scale-lower-edge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-no-free-upcrossing-complete-frame-laminar-test-20260627.md
  - problems/navier-stokes/theorem-construction/mcp-globalsamepacketfullclockcurrentreduction-a-globalsamepacketfullclockfromoriginaldata-a-d55398afc0.md
---

# Stopped source carrier to critical fresh source tent Carleson

The current relay hinge is still stated as
`StoppedSourceCarrierAndPaidReselection.A`.  Read literally, that hinge is too
broad for the next proof unit.  The checked reductions separate the consumer
from the only remaining producer.

The stopped martingale part is a consumer theorem: a fixed stopped carrier
square-function plus paid stop errors gives reverse Holder and beats the
selected half-tail.  The open part is to produce the stopped original-history
carrier and the paid reselection measure without defining either from the future
selected descendants.

The better working hinge is the selected-critical fresh source tent bound.

## 1. Current reduction chain

On each stopped parent, the pure Schur trace target is stale.  The valid stopped
parent estimate is augmented:

```math
\sum_{S'\in ch_{stop}(S)}A(S')
\le
C\langle U_S,\mathsf S_S^{stop}U_S\rangle
+C\Omega_S^{strain/ex}
+CD_S^{vis/rad}
+R_{stop}(S)+R_{legal}(S).
\tag{1}
```

The visible part is paid by the pressure-Hodge / Schur quotient.  The silent
selected part is paid only after the source-origin normal form routes it through
complete-frame strain/exchange.  Thus the stopped source-carrier theorem cannot
be a pressure-only theorem.

Unpaid reselection is also not an independent branch after the selector-stratum
BV closure.  The stopped crossing variation is charged to the same
strain/exchange plus viscous/radius service.  The remaining production chain is
therefore:

```text
StoppedSourceCarrierAndPaidReselection.A
  <= StoppedFullExchangeActionCarleson.A
  <= SelectedCompressionRootReserve.A
  <= NativeBirthChargePacking.A
  <= SelectedScaleFreshNativeRootReserve.A
  <= FreshNativeRootUpperBound.A.
```

The local selected-scale lower edge of `SelectedScaleFreshNativeRootReserve.A`
is already isolated.  The root upper edge is still open.

## 2. What the fresh-root theorem actually asks for

Fix a retained stopped root `P`.  Let

```math
Z_P^{orig}=Z_P^{vis}\oplus Z_P^{sil}\oplus Z_P^{ex}
\tag{2}
```

be the original-history visible / silent / exchange carrier.  For a retained
fresh selected child `Q`, remove source directions already spent by strict
selected ancestors:

```math
F_Q=(I-\Pi_{spent(<Q)})\Delta_Q Z_P^{orig}.
\tag{3}
```

Spent-source projection and ordinary Hilbert geometry give the raw Bessel
bound

```math
\sum_{Q\subset P}\|F_Q\|_{\mathcal H_{raw}}^2
\le C_N\|Z_P^{orig}\|_{\mathcal H_{raw}}^2+R_{legal}(P).
\tag{4}
```

That is not enough.  The selected theorem needs the critical heat-scale /
first-ratio weight:

```math
\sum_{Q\subset P}w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le C_N(u_0)\mathcal R(P)+R_{legal}(P),
\tag{5}
```

where `w(Q)` is produced from the original material history, not from the future
selected tail.

This is the sharp nonduplicate theorem:

```text
CriticalFreshSourceTentCarleson.A
```

Equivalently:

```text
FreshSourceCriticalScaleMemoryBound.A.
```

## 3. Why raw freshness and nonuse do not close it

The direct Bessel proof fails on a fresh orthogonal half-tail.  Take orthogonal
source increments `F_l` with

```math
\|F_l\|_{\mathcal H_{raw}}^2
=
\nu_l
=
{2^{-l}\over l+1}.
\tag{6}
```

Then

```math
\sum_l\|F_l\|_{\mathcal H_{raw}}^2<\infty,
\tag{7}
```

but

```math
\sum_l2^l\|F_l\|_{\mathcal H_{raw}}^2
=
\sum_l{1\over l+1}
=
\infty.
\tag{8}
```

This counterprofile does not reuse a spent source direction.  It defeats the
chain-nonuse proof by using infinitely many genuinely fresh raw increments whose
raw mass is summable while their selected-critical mass diverges.

Thus the missing theorem is not `freshness`, `orthogonality`, or `local lower
edge`.  It is the selected-critical Carleson embedding for fresh original-history
source increments.

## 4. Relation to primitive PLS

`StoppedPrimitivePLSStrictHalfBarrierBreak.A` remains the broad upstream
consequence.  It says that the stopped primitive graph driver must beat the
critical half-tail, for example by

```math
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{9}
```

The fresh-root theorem is sharper as a working hinge.  It applies after the
visible/silent exchange routing, selector/reselection payment, spent-source
projection, and local selected-scale lower edge have already been used.  It
identifies the exact place where the missing factor `2^l` must enter from the
original material history.

With `(5)`, the chain closes in the proof economy:

```text
CriticalFreshSourceTentCarleson.A
  -> FreshNativeRootUpperBound.A
  -> NativeBirthChargePacking.A
  -> StoppedFullExchangeActionCarleson.A
  -> StoppedSourceCarrierAndPaidReselection.A
  -> stopped martingale reverse Holder
  -> StoppedPrimitivePLSStrictHalfBarrierBreak.A.
```

## 5. Why terminal anti-atom is not the live producer

The terminal strain-aligned anti-atom is a real failure readout, but it is not a
smaller closing theorem.  The current full-clock reduction says the terminal
source residue is the endpoint tail of the same graph-compatible PLS clock.  A
surviving terminal atom records failure of finite rectified full-clock action;
it does not provide an independent way to produce that finite action.

So future work should not promote the terminal anti-atom over the clock/tent
bound.  The producer is still `(5)` or an equivalent bounded-below same-material
storage that proves `(5)`.

## 6. Exact next burden

The next theorem should be stated as:

```text
CriticalFreshSourceTentCarleson.A.
For every retained stopped root P, the fresh original-history visible/silent/exchange
increments left after spent-source projection, selector/reselection payment,
silent-source normal form, full-exchange refunds, entrance/legal, subheat, and
recirculation removals satisfy the selected-critical tent Carleson estimate (5),
with the critical weight generated before terminal selection.
```

A scale-memory form of the same burden is:

```math
\int a(r,t)
\left(
\int_0^r K(\ell,r)z_{fresh}(\ell,t){d\ell\over\ell}
\right)^2
{dr\over r}\,dt
\le
C_N(u_0)+R_{legal}.
\tag{10}
```

The proof has to get the critical weight from one-sided original-history scale
memory, annular stress/strain exchange, or a bounded-below same-material storage.
Defining the critical norm by the future selected tail is circular.

## 7. Result

This note does not prove the Gold route.  It narrows the live stopped-source
carrier relay to the nonduplicate producer:

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A.
```

That is the shortest useful next attack: prove the selected-critical root upper
bound for genuinely fresh same-material source increments, or produce the exact
counterprofile where fresh raw Bessel mass is finite but the selected-critical
scale memory is infinite.