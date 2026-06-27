---
theorem_id: forward-gold-selector-stratum-crossing-gap-bv-test-20260627
status: superseded-by-selector-stratum-crossing-bv-closure
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped exchange-reselection
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - SelectorStratumCrossingVariationBound.A
  - StoppedExchangeReselectionCompensator.A
  - MovingSelectorVariationCarleson.A
  - PaidReselectionStoppingCarleson.A
uses:
  - OrderLockedSelectorVariationBridge.A
  - OrderLockSelectedDensityFirstRatioAlignment.A
  - MaterialSelectorKinematicRealization.A
  - SelectorFrozenHilbertLiftCountertest.A
superseded_by:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-to-stopped-compensator-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-selector-variation-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-selected-density-first-ratio-alignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-selector-kinematic-realization-direct-test-20260622.md
---

# Selector-stratum crossing gap/BV test

The stopped compensator route needs one selector-side theorem:

```text
SelectorStratumCrossingVariationBound.A
```

The tempting statement is that every unpaid reselection stop is a crossing of a
selector stratum and that crossings are paid by selector-packet variation.  That
is almost right, but unweighted crossing count is not the correct object.

The correct object is a weighted crossing measure on the quotient selector
packet.  Zero-gap label changes must be collapsed, and genuine reselections
must carry a positive action gap in the same metric that is paid by the
same-material exchange ledger.

## 1. Stopped reselection as selector packet motion

On a stopped interval \(S\), the selected readout has fixed-carrier form

```math
\log r_Q=\ell_Q(\Delta_QZ^S)-\psi_Q+e_Q^S.
\tag{1}
```

A stopped child is created when this representation ceases to be valid without
an already declared legal/collar/order-lock defect.  The moving part is the
selector packet

```math
Y=(\chi,\Phi,\Gamma,\ell,\operatorname{sgn},
  \Delta^{ol},K_{\rm sel},K_C^+,\text{projection/collar data}).
\tag{2}
```

Selector strata are the surfaces on which one of these coordinates changes
the selected readout chamber:

```math
\Gamma_j=\{Y:g_j(Y)=0\}.
\tag{3}
```

The stopped selector theorem should not count crossings of `(3)` as bare
events.  It should count the martingale error weight created by a genuine
change of selected readout:

```math
R_{\rm stop}^{unpaid}(P)
=
\sum_{\sigma\in{\rm Stop}_{un}(P)}
w_\sigma\,\mathcal R(\sigma),
\tag{4}
```

where \(w_\sigma\) is the stopped log-ratio error weight, for instance
\(|\Delta_\sigma^{lab}\log\rho_{\rm sel}|^2\) after the jump truncation used
by the stochastic-exponential martingale lemma.

## 2. Why unweighted crossing is false

Finite-menu heredity and already-paid label defects are closed in the checked
notes.  The remaining continuum branch can change labels infinitely often.
Pure crossing count can be infinite even when the total motion of \(Y\) is
finite, because the crossing gaps may shrink to zero.

This is exactly the old critical half-tail in selector coordinates.  A nested
chain may retain

```math
A(Q_k)\simeq1
```

while the physical selector gap between the winning packets tends to zero.  A
bare statement

```math
\#\{\text{crossings}\}
\le
C\,{\rm Var}(Y)
\tag{5}
```

is therefore false.

The right conclusion is:

```math
\text{gapless label changes are the same quotient carrier;}
\quad
\text{genuine label changes carry an action gap.}
\tag{6}
```

Thus the selector packet must be quotient by zero-gap changes before the
crossing theorem is stated.

## 3. Quotient selector metric

Define a quotient metric \(d_{\rm qsel}\) on selector packets by the least
declared same-packet cost needed to move between two fixed-carrier readout
chambers:

```math
d_{\rm qsel}(Y_-,Y_+)
=
\inf\bigl(
\Delta\Lambda_{\rm sel}
+\Delta\mathcal E_{\rm ol}
+\Delta K_{\rm sel}
+\Delta K_C^+
+\Delta R_{\rm legal}
\bigr).
\tag{7}
```

Here \(\Delta\Lambda_{\rm sel}\) is visible selector/collar variation,
\(\Delta\mathcal E_{\rm ol}\) is the order-lock gap from full-packet
admission, and \(K_{\rm sel}+K_C^+\) are the retained Body-II/III selector
defect coordinates.

Two labels at zero \(d_{\rm qsel}\)-distance are not distinct for the stopped
compensator.  Switching between them is a change of notation, not a paid
reselection stop.

## 4. The exact theorem pair

The crossing theorem follows from two smaller statements.

First:

```text
SelectedActionStratumGapTransversality.A
```

For every unpaid stopped reselection \(\sigma\),

```math
w_\sigma\,\mathcal R(\sigma)
\le
C\,d_{\rm qsel}(Y_{\sigma-},Y_{\sigma+})\,\mathcal R(\sigma)
+R_{\rm legal}(\sigma).
\tag{8}
```

This says a genuine stopped readout jump cannot retain unit selected action
while moving zero distance in the quotient selector metric.

Second:

```text
QuotientSelectorPacketBV.A
```

On every retained stopped tree rooted at \(P\),

```math
\sum_{\sigma\in{\rm Stop}_{un}(P)}
d_{\rm qsel}(Y_{\sigma-},Y_{\sigma+})\,\mathcal R(\sigma)
\le
C\,\Omega_{\rm sel/ol/ex}(P)
+C\,K_{\rm sel}(P)
+C\,K_C^+(P)
+R_{\rm legal}(P),
\tag{9}
```

where \(\Omega_{\rm sel/ol/ex}\) is the same-material selector/order-lock
exchange variation already appearing in the stopped exchange compensator.

Equations `(8)` and `(9)` give

```math
R_{\rm stop}^{unpaid}(P)
\le
C\,\Omega_{\rm sel/ol/ex}(P)
+C\,K_{\rm sel}(P)
+C\,K_C^+(P)
+R_{\rm legal}(P).
\tag{10}
```

That is `SelectorStratumCrossingVariationBound.A`.

## 5. What is already installed

The checked notes prove the safe cases.

Finite-menu heredity gives a fixed carrier on a retained subtail, so
\(\Delta^{lab}\log\rho_{\rm sel}=0\) there.

Already-declared label defects give

```math
dK_{\rm lab}
\le
dK_{\rm sel}+dK_C^++dK_{4B}+dR_{\rm legal}.
\tag{11}
```

Order-lock identifies the dangerous scalar gap:

```math
\Delta_m^{ol}
=
\min\{[n_m]_+,[-b_m]_+\},
\tag{12}
```

and proves it is a submeasure of the selected first-ratio density.  So an
unpaid order-lock tail is not a separate selector theorem; it is the selected
critical half-tail in full-packet admission variables.

The material-selector kinematic test also gives a genuine pass case: if the
selector packet is an order-locked finite-dimensional function of the local
finite jet and transported material/cotangent frame, its endpoint variation is
finite.  What is not installed is that the retained Gold selector always has
this quotient BV realization with the action-gap transversality `(8)`.

## 6. Result

This note was superseded by
`mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md`.  The
checked closure proves the selector-stratum crossing side relative to the full
exchange action by deterministic same-packet BV/coarea.

The selector side should no longer be carried as an independent Gold hinge.  The
remaining hinge is:

```text
StoppedFullExchangeActionCarleson.A
```

It is the original-history summability of the same exchange packet that appears
on the right side of `(10)`.
