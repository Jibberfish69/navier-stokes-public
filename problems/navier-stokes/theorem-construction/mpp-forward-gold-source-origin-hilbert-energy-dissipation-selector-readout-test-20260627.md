---
theorem_id: forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627
status: source-origin-hilbert-energy-test-reduces-to-selector-carrier-nondegeneracy-and-noncircular-root-bound
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / log-amplification carleson
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - SourceOriginHilbertEnergyDissipationForSelectedAmplification.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - FixedCarrierVisibleSilentHilbertLift.A
  - SelectorCarrierNondegeneracy.A
  - IndependentRootHilbertCarrierBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-log-amplification-direct-production-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-log-amplification-carleson-production-target-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-hilbert-lift-direct-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-zero-cost-rigidity-inclusion-20260627.md
---

# Source-origin Hilbert energy dissipation selector-readout test

This note tests the current relay hinge after the silent-source fork.

The silent interior source issue is no longer the blocker.  Boundary-flat
pressure-potential bubbles are either unselected as projected pressure force or,
if selected, are paid by the strain-Hessian / complete-frame exchange channel.
The remaining problem is selected amplification itself:

```math
\log r_Q
=
\ell_Q(\Delta_QZ)-\psi_Q+e_Q,
\qquad
r_Q={f_Q\over f_{\operatorname{par}(Q)}}.
\tag{1}
```

The live question is whether \(Z\) can be produced from the original
same-material pressure-visible / silent-bubble / exchange history with a
noncircular root bound, and whether selected log amplification is a genuine
readout of that carrier.

## 1. The noncircular Hilbert carrier

Let

```math
\mathcal H_{\rm src}
=
\mathcal H_{\rm vis}\oplus\mathcal H_{\rm sil}\oplus\mathcal H_{\rm ex}.
\tag{2}
```

A valid source-origin construction must choose \(Z\) from the signed original
history:

```math
Z=Z_{\rm vis}\oplus Z_{\rm sil}\oplus Z_{\rm ex},
\tag{3}
```

where:

- \(Z_{\rm vis}\) is the parent/child pressure-Hodge Schur quotient;
- \(Z_{\rm sil}\) is the boundary-flat pressure-potential bubble component;
- \(Z_{\rm ex}\) is the strain-Hessian / complete-frame exchange component
  that pays selected silent sources.

For a fixed retained material tree, nested projections give the formal Bessel
identity

```math
\sum_{Q\subseteq P}
\|\Delta_QZ\|_{\mathcal H_{\rm src}}^2
\le
\|Z_P\|_{\mathcal H_{\rm src}}^2
+R_{\rm legal}(P).
\tag{4}
```

Thus the Hilbert geometry is not the obstacle once \(Z\) is an actual fixed
carrier.  The obstacle is the root bound

```math
\|Z_P\|_{\mathcal H_{\rm src}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{5}
```

This cannot be obtained by setting \(Z=L_A^{-1}f_{\rm sel}\), because that
chooses the carrier from the future selected tail.  Then `(5)` is just the
selected reserve theorem in Hilbert coordinates.

So the root-bound branch is:

```text
IndependentRootHilbertCarrierBound.A
```

for the signed original-history carrier `(3)`, not for a carrier defined by
the descendant selected density.

## 2. Root geometry does not imply selected readout

Even with `(4)` and `(5)`, the selected log-density theorem still needs the
readout

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm src}}+e_Q.
\tag{6}
```

This is not a consequence of Hilbert energy alone.

The reason is selector degeneracy.  A selected scalar can change by \(O(1)\)
when the underlying signed carrier crosses a selection boundary, changes
winner, changes cutoff, or changes order-lock status, even when the Hilbert
increment of the signed carrier is small.  That is not a new pressure-source
phenomenon.  It is the selected-density half-tail in readout form.

Therefore `(6)` requires a separate theorem:

```text
SelectorCarrierNondegeneracyOrPaidReselection.A
```

Statement:

On retained selected nodes, either the selected scalar density is a uniformly
Lipschitz logarithmic readout of the same fixed source-origin Hilbert carrier,
or the failure is charged to selector variation, order-lock gap, tie-gap drift,
or legal packet-synchronization loss:

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm src}}
+e_Q^{\rm sel}
+e_Q^{\rm ol}
+e_Q^{\rm legal},
\tag{7}
```

with

```math
\sum_{Q\subseteq P}
\left(
|e_Q^{\rm sel}|^2+|e_Q^{\rm ol}|^2+|e_Q^{\rm legal}|^2
\right)\mathcal R(Q)
\le
R_{\rm paid}(P).
\tag{8}
```

The order-lock alignment note already shows that unpaid \(e_Q^{\rm ol}\) is a
submeasure of the same selected-density first-ratio tail.  Thus `(8)` must be
proved before reverse Holder is used, not after.

## 3. The source-origin dissipation form

The differential version of the root-bound theorem would be a bounded-below
same-material storage

```math
\mathcal B_N\ge -C_N(u_0)
\tag{9}
```

with

```math
d\mathcal B_N
+c\,d\mathcal E_N^{\rm logamp}
\le
C\,d\Omega_N^{top\text{-}strain/ex}
+C\,d\Omega_N^{selector/orderlock}
+dR_{\rm legal},
\tag{10}
```

where

```math
d\mathcal E_N^{\rm logamp}(P)
\simeq
\sum_{Q\subseteq P}
\|\Delta_QZ\|_{\mathcal H_{\rm src}}^2\mathcal R(Q).
\tag{11}
```

The natural current-state primitive

```math
\mathcal B_N=-{1\over2}\|Z\|_{\mathcal H_{\rm src}}^2
\tag{12}
```

has the right derivative orientation only when the carrier energy is the
active signed source.  Its lower bound is exactly the independent root bound
`(5)`.  Saturating `(12)` restores a lower bound but loses full payment of
`(11)`.

So the differential form is not closed by the obvious negative-energy storage.
It still requires a genuine source-origin bounded-below symmetrizer or a
root Carleson theorem for `(3)`.

## 4. What the silent-source fork contributed

The silent-source result is still essential.  It prevents the kernel of the
parent Schur trace from becoming a free selected Hilbert direction:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{selected carrier}\}
\cap
\{\text{zero strain/exchange charge}\}
=\{0\}.
\tag{13}
```

Thus a selected silent component belongs in \(Z_{\rm ex}\) and is paid by the
same-material exchange carrier.  The escape that remains is not hidden
elliptic source invisibility.  It is selected amplification without a proved
noncircular Hilbert root bound and without a proved selector-to-carrier
readout.

## 5. Result

The current hinge splits cleanly into two exact theorem obligations:

```text
IndependentRootHilbertCarrierBound.A
```

for the signed original-history visible/silent/exchange carrier, and

```text
SelectorCarrierNondegeneracyOrPaidReselection.A
```

for the selected log-density readout.

Together they imply `OriginalHistorySelectedLogAmplificationCarleson.A` by the
already-installed stochastic-exponential martingale theorem.  Without both,
the route is still a reduction: using the future selected tail gives the
readout but circular root energy; using the signed original-history carrier
keeps the root energy noncircular but does not yet read the selected density.
