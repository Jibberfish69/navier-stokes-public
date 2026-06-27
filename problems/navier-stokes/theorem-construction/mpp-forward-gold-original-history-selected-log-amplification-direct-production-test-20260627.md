---
theorem_id: forward-gold-original-history-selected-log-amplification-direct-production-test-20260627
status: direct-production-test-fails-reduces-to-source-origin-hilbert-energy-dissipation-and-selector-readout
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / log-amplification carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - FixedCarrierVisibleSilentHilbertLift.A
  - SourceOriginHilbertEnergyDissipation.A
  - SelectorCarrierNondegeneracy.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-log-amplification-carleson-production-target-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-hilbert-lift-audit-selected-tail-frontier-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-selected-density-hilbert-lift-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-hilbert-bubble-decomposition-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-hilbert-lift-direct-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-entropy-log-coercivity-exhaustion-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-selector-kinematic-realization-direct-test-20260622.md
refined_hinge: SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
---

# Original-history selected log-amplification direct production test

This note tests whether the new log-amplification hinge is already produced by
installed entropy, selector-kinematic, or Hilbert-bubble surfaces.

It is not.  Those surfaces are useful, but each is a consumer or a reduction
unless it supplies an original-history root Hilbert energy bound and a
selector-to-carrier readout.

## 1. Target restated

The current hinge is:

```text
OriginalHistorySelectedLogAmplificationCarleson.A
```

In tree form it asks for a representation

```math
\log r_Q=\ell_Q(\Delta_QZ)-\psi_Q+e_Q,
\qquad
r_Q={f_Q\over f_{\operatorname{par}(Q)}},
\tag{1}
```

with normalized ratios

```math
\mathbb E_{\mathcal R}(r_Q\mid\operatorname{par}(Q))=1,
\tag{2}
```

and a root Carleson estimate

```math
\sup_{P\subseteq Q_0}
{1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\left(
\|\Delta_QZ\|_{\mathcal H}^2+|e_Q|^2
\right)\mathcal R(Q)
\le
C_N(u_0)+R_{\rm legal}(P).
\tag{3}
```

The already-installed stochastic-exponential martingale lemma turns `(1)`--`(3)`
into reverse Holder.  This test asks whether `(1)`--`(3)` are already produced
from the current original-history surfaces.

## 2. Entropy is only a consumer

The entropy/log exhaustion separates four entropy readings.  The only one
strong enough to kill a terminal selected density atom is superlinear carrier
entropy:

```math
\sup_m\int \Phi(a_m)<\infty,
\qquad
\lim_{z\to\infty}{\Phi(z)\over z}=\infty.
\tag{4}
```

This is exactly endpoint uniform integrability in Orlicz form.  It implies the
desired strict gain, but it is not produced by raw mass, raw energy, branch
entropy, frequency log tails, or linear/logarithmic entropy.

Therefore entropy does not produce `(3)`.  It is a valid consumer once a
selected super-\(L^1\) reserve is already available.

## 3. Selector kinematics pays only the selector-error part

The material-selector test has a real pass case.  If the selected cutoff, test,
frame, and collar are order-locked finite-dimensional functions of the local
finite jet and material/cotangent transport, then continuous selector
variation has endpoint \(O(\theta)\) control:

```math
\Lambda_{{\rm sel},m}^{cont}((-\theta,0])
\le C\theta.
\tag{5}
```

This can pay \(e_Q^{\rm sel}\) in `(1)`.  It does not construct the Hilbert
process \(Z_Q\), and it does not prove the root square-function bound `(3)`.

The selector theorem also has unresolved gates:

```text
OrderLockedMaterialSelectorDefinition.A
TransportedSelectorHeatScaleReturn.A
SelectorTieGapOrDriftCharge.A
\tag{6}
```

So selector kinematics is a payment route for moving-label errors, not the
source of selected log-amplification Carleson control.

## 4. Visible-silent Hilbert lift is a reduction until the root energy is independent

The visible/silent/exchange Hilbert lift is the right geometry.  It proposes

```math
\mathcal H_{\rm lift}
=
\mathcal H_{\rm vis}
\oplus
\mathcal H_{\rm sil}
\oplus
\mathcal H_{\rm ex},
\tag{7}
```

and seeks

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm lift}}+e_Q.
\tag{8}
```

The silent-source bubble decomposition gives the key local fact: boundary-flat
pressure-Hodge sources are interior Hilbert bubbles, not invisible boundary
trace defects.  Orthogonal increments give

```math
\sum_Q\|\Delta_QW\|_{\mathcal H_A(Q_0)}^2
\le
\|W\|_{\mathcal H_A(Q_0)}^2.
\tag{9}
```

The unsupported line is the root bound.  Taking

```math
W=L_A^{-1}f_{\rm sel}
\tag{10}
```

where \(f_{\rm sel}\) is the future selected source tail makes
\(\|W\|_{\mathcal H_A}^2\) a Hilbert version of the selected reserve.  That is
circular unless `(10)` is independently bounded from the original material
history.

Thus the Hilbert lift remains a valid reduction, not a closure.

## 5. Direct pressure-Hodge energy still has the radius discount

A heat-scale retained affine packet has

```math
|\Sigma|\simeq r^{-2},
\qquad
|Q_r|\simeq r^5,
\tag{11}
```

so raw strain energy costs

```math
\int_{Q_r}|\Sigma|^2\simeq r,
\tag{12}
```

while selected critical action costs

```math
\int_{Q_r}|\Sigma|^{5/2}\simeq1.
\tag{13}
```

Any direct pressure-Hodge energy estimate controlled only by the raw
\(L^2_{t,x}\) ledger inherits `(12)`.  It cannot dominate `(13)` along a
terminal summable-radius family.

Therefore the missing bound must be a selected source-origin energy law, not
ordinary pressure-Hodge energy.

## 6. The surviving theorem

The direct production test reduces the hinge to:

```text
SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
```

Statement:

For the retained same-material selected tree, construct \(Z_Q\) from the
pressure-visible, silent-bubble, and exchange-routed original-history sources
so that

```math
\log r_Q=\ell_Q(\Delta_QZ)-\psi_Q+e_Q,
\tag{14}
```

and prove a source-origin energy inequality

```math
d\mathcal B_N
+
c\,d\mathcal E_N^{\rm logamp}
\le
C\,d\Omega_N^{\rm top\text{-}strain/exchange}
+C\,d\Omega_N^{\rm selector/orderlock}
+dR_{\rm legal},
\qquad
\mathcal B_N\ge -C_N(u_0),
\tag{15}
```

where

```math
d\mathcal E_N^{\rm logamp}(P)
\simeq
\sum_{Q\subseteq P}\|\Delta_QZ\|_{\mathcal H}^2\mathcal R(Q).
\tag{16}
```

Equivalently, prove the tree form:

```math
\sum_{Q\subseteq P}\|\Delta_QZ\|_{\mathcal H}^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)
+C\Omega_N^{\rm top\text{-}strain/exchange}(P)
+C\Omega_N^{\rm selector/orderlock}(P)
+R_{\rm legal}(P).
\tag{17}
```

Together with `SelectorCarrierNondegeneracy.A` and paid selector/order-lock
defects, `(17)` gives `(3)`, hence the already-installed martingale reverse
Holder.

## 7. Result

The direct test does not prove `OriginalHistorySelectedLogAmplificationCarleson.A`.
It removes three false closure readings:

```text
entropy/log language is only a super-L1 consumer;
selector kinematics only pays moving-label errors;
Hilbert bubbles close only after an independent original-history root energy.
```

The next exact theorem is the source-origin Hilbert energy dissipation law
`(15)`--`(17)` plus selector-to-carrier readout.  That is the first nonstandard
PDE production point behind the selected log-amplification Carleson hinge.
