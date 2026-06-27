---
theorem_id: forward-gold-selected-log-amplification-carleson-production-target-20260627
status: hinge-narrowed-to-original-history-selected-log-amplification-production
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / first-ratio gain
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - SelectedReserveAbsoluteContinuityExponentLift.A
  - FixedCarrierVisibleSilentHilbertLift.A
  - FullPacketOrderLockOrSelectorVariationPayment.A
refined_hinge: OriginalHistorySelectedLogAmplificationCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-core-raw-volume-bound-selected-exponent-gap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-goodlambda-martingale-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stochastic-exponential-selected-density-hilbert-bmo-lemma-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-hilbert-lift-direct-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-selected-density-first-ratio-alignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-selected-density-atom-exclusion-direct-test-20260626.md
---

# Selected log-amplification Carleson production target

The sharper Gold target is selected density amplification itself.

The raw material-volume note proves the unselected Cauchy-Green line-service
bound and isolates the selected exponent gap.  The stochastic-exponential note
proves the standard martingale consumer: once a fixed-carrier Hilbert/BMO
representation and paid selector/order-lock errors are supplied, reverse
Holder follows.  The remaining PDE work is the production of that BMO object
from the original same-material history.

## 1. Selected ratios are the right variable

Let \((\mathcal T,\mathcal R)\) be the retained material tree and let \(f\ge0\)
be the selected density:

```math
A(Q)=\int_Q f\,d\mathcal R.
\tag{1}
```

Write the selected averages and ratios as

```math
f_Q={1\over\mathcal R(Q)}\int_Qf\,d\mathcal R,
\qquad
r_Q={f_Q\over f_{\operatorname{par}(Q)}}.
\tag{2}
```

The critical half-tail is a failure of amplification control.  In the abstract
one-child model

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
a_\ell=2^\ell\nu_\ell={1\over \ell+1},
\tag{3}
```

raw mass is finite while selected action diverges:

```math
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell a_\ell=\infty.
\tag{4}
```

In density language, the selected average keeps amplifying relative to the raw
reserve while the raw material measure shrinks fast enough to hide the cost.
Thus another raw \(L^1\), raw \(L^2\), local Hodge attachment, or complete-frame
orientation payment cannot be the next Gold target.

## 2. Consumer theorem already has the right form

The standard martingale theorem has been separated from the PDE work.  If the
ratios have a compensated fixed-carrier representation

```math
\log r_Q=\ell_Q(\Delta_QZ)-\psi_Q+e_Q,
\tag{5}
```

with

```math
\sup_{P\subseteq Q_0}
{1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\|\Delta_QZ\|_{\mathcal H}^2\mathcal R(Q)
\le B^2,
\tag{6}
```

and

```math
\sup_{P\subseteq Q_0}
{1\over\mathcal R(P)}
\sum_{Q\subseteq P}|e_Q|^2\mathcal R(Q)
\le E^2,
\tag{7}
```

plus the jump/subgaussian hypothesis needed for John-Nirenberg/Kazamaki, then
the stochastic-exponential lemma gives

```math
\int_P f^{1+\varepsilon}\,d\mathcal R
\le
C f_P^{1+\varepsilon}\mathcal R(P)
\tag{8}
```

for every retained tree interval \(P\).  This beats the critical half-tail and
implies the selected first-ratio action bound.

Therefore the martingale step is not the live hard theorem.  The live hard
theorem is the same-material construction and root bound for `(5)`--`(7)`.

## 3. Exact production theorem

The next nonproxy theorem should be:

```text
OriginalHistorySelectedLogAmplificationCarleson.A
```

Statement:

For one original smooth Navier-Stokes material history and every retained
same-material selected tree \(Q_0\), construct a fixed-carrier Hilbert process
\(Z_Q\), compensators \(\psi_Q\), and paid defects \(e_Q\) such that the
selected log-density ratios satisfy `(5)`, the compensators normalize the
ratios,

```math
\mathbb E_{\mathcal R}(r_Q\mid\operatorname{par}(Q))=1,
\tag{9}
```

and the root Carleson estimate

```math
\sup_{P\subseteq Q_0}
{1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\left(
\|\Delta_QZ\|_{\mathcal H}^2+|e_Q|^2
\right)\mathcal R(Q)
\le
C_N(u_0)+R_{\rm legal}(P)
\tag{10}
```

holds with jump/subgaussian constants controlled by original-history legal
ledgers.

The theorem must also pay the moving-selector and order-lock terms:

```math
e_Q
=
e_Q^{\rm sel}
+e_Q^{\rm ol}
+e_Q^{\rm legal},
\tag{11}
```

where \(e_Q^{\rm sel}\) is produced by visible selector-collar variation or
finite/compact selector stabilization, and \(e_Q^{\rm ol}\) is bounded by the
full-packet order-lock gap already identified as a selected-density submeasure.

## 4. Why this kills the half-tail

The raw-volume adversary can be written as selected multipliers \(w_k\) on raw
masses \(m_k\) with

```math
\sum_k m_k<\infty,
\qquad
\sum_k w_km_k=\infty.
\tag{12}
```

This does not contradict raw material service.  It contradicts `(10)` only if
the amplification \(w_k\) has no charged log-ratio process.  In a valid proof
of `(10)`, persistent selected amplification must appear in one of four paid
places:

```text
fixed-carrier Hilbert square function,
visible selector/collar variation,
order-lock/full-packet admission error,
legal Body-II/III compactness or escaped-carrier defect.
```

So the half-tail cannot remain invisible.  It must spend the Hilbert/BMO
budget or land in a paid selector/order-lock defect.

This is stricter than raw absolute continuity.  It is a same-material
amplification law:

```math
\text{selected density may rise only through a charged same-packet increment.}
\tag{13}
```

## 5. Circularity guard

The root norm in `(10)` cannot be defined by the future selected tail:

```math
\|Z_{Q_0}\|_{\mathcal H}^2
\ne
\langle f_{\rm sel},L_A^{-1}f_{\rm sel}\rangle
\quad\text{unless that energy is independently bounded from the original history.}
\tag{14}
```

Using `(14)` as a definition would repackage the selected reserve theorem as a
Hilbert norm.  A valid proof must obtain \(Z\) from an original-history source
origin, pressure-Hodge/visible-silent-exchange decomposition, or same-packet
material-service storage whose finiteness is not the future selected
first-ratio tail.

Likewise, selector errors may not be declared paid because reverse Holder is
expected later.  They must be produced by full-packet order-lock, visible
selector-collar variation, finite/compact stabilization, tie-gap/drift charge,
or declared Body-II/III legal defects.

## 6. Result

The active Gold hinge is now sharper than a generic selected reserve:

```text
Produce original-history Carleson/BMO control of selected log amplification.
```

Concretely, prove `OriginalHistorySelectedLogAmplificationCarleson.A` in the
form `(5)`--`(11)`.  The already-installed stochastic-exponential martingale
lemma then gives reverse Holder, selected-density uniform integrability, and
the strict selected first-ratio action bound.

This note does not close Gold.  It narrows the next proof unit to the only part
that is neither raw bookkeeping nor standard martingale theory: constructing
and bounding the same-material amplification process from the original
pressure-viscosity-incompressibility-velocity packet.
