---
theorem_id: forward-gold-parent-subtracted-inherited-direction-bessel-closure-20260627
status: inherited-direction-decomposition-closed-reset-variation-reduced-to-routed-energy
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - StoppedPredictableRootGeometryCompensator.A
  - StoppedPredictableActiveWeightCompensator.A
  - PredictableRootWeightMartingaleRealization.A
  - FreshSourceWeightedPairedCarrierBound.A
supports:
  - OriginalHistorySelectedPotentialAmplificationBV.A
  - StoppedSelectorTestingCarleson.A
  - OriginalHistoryHilbertBMOProducer.A
source_surfaces:
  - /Users/thomasbirnie/.codex/attachments/7d3acc39-1623-409f-8306-2d27b9748d7d/pasted-text.txt
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-root-geometry-compensator-direct-proof-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-snell-compensator-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-testing-defect-to-fresh-weighted-paired-carrier-correction-20260627.md
effect: >-
  Corrects the raw inherited-value estimate.  The theorem is not a bound for
  repeated inherited value as fresh child action.  It changes the action to the
  parent-subtracted inherited current: exact same-direction reuse is parent
  current and contributes zero new child source, while fresh use is orthogonal
  and Bessel-paid by the viscous strain ledger.  Changed inherited reuse reduces
  exactly to the square variation of inherited directions,
  sum_i ||b_i-b_{i-1}||_{H_P}^2, equivalently reset/angle/selector/frame/collar/
  stop/legal variation.  Parent-announced first-exit reset slabs pay that
  variation in routed-current energy currency.  The remaining Gold theorem is
  original-history finiteness of E_route from the Navier-Stokes participation law.
---

# Parent-subtracted inherited-direction Bessel decomposition

The raw inherited-value estimate was the wrong statement.  Reusing the same
direction down the stopped material tree is not new child action.  It is parent
current.  The selected child current must first be parent-subtracted.

Let

```math
\mathfrak H_P
=
L^2_{\mathrm{sym,tr}}(\operatorname{Hist}(P)),
\qquad
G=2\nu S_A .
\tag{1}
```

For stopped children \(Q_i\), set

```math
a_i
=
\sqrt{\mathcal R(Q_i)}
\,1_{\operatorname{Hist}(Q_i)}
P_{\mathrm{sym,tr}}\nabla_A w_i
\in \mathfrak H_P,
\qquad
D_A\cdot w_i=0.
\tag{2}
```

The tests are taken in the retained capacity-normalized convention:

```math
\|a_i\|_{\mathfrak H_P}\le 1.
\tag{3}
```

With this convention pressure cancels in the projected trace-free pairing, and

```math
\sqrt{\mathcal R(Q_i)}\,\Delta J_i
=
\langle G,a_i\rangle_{\mathfrak H_P}.
\tag{4}
```

## 1. Parent-known QR split

Run parent-known Gram-Schmidt/QR in \(\mathfrak H_P\).  Let \(E_{i-1}\) be the
closed span of all parent-known inherited directions and all earlier admitted
fresh directions.  Split

```math
a_i=b_i+d_i,
\qquad
b_i=\Pi_{E_{i-1}}a_i,
\qquad
d_i=(I-\Pi_{E_{i-1}})a_i .
\tag{5}
```

The new child current is the parent-subtracted current

```math
\Delta J_i^{new}
=
\langle G,a_i\rangle-\langle G,b_i\rangle
=
\langle G,d_i\rangle .
\tag{6}
```

Thus exact same-direction reuse is killed algebraically.  It is already parent
current, not a fresh child source.

Normalize

```math
e_i={d_i\over \|d_i\|}
\qquad(d_i\ne0).
\tag{7}
```

The \(e_i\) are orthonormal by construction.  Therefore

```math
\sum_i |\Delta J_i^{new}|^2
=
\sum_i \|d_i\|^2|\langle G,e_i\rangle|^2
\le
\sum_i |\langle G,e_i\rangle|^2
\le
\|G\|_{\mathfrak H_P}^2 .
\tag{8}
```

Using the material energy identity,

```math
\|G\|_{\mathfrak H_P}^2
=
4\nu^2
\int_{\operatorname{Hist}(P)}|S_A|^2
\le
C(u_0).
\tag{9}
```

So the parent-subtracted fresh inherited-direction current is Bessel-paid by
the original same-material viscous strain ledger.

## 2. Changed inherited reuse

The inherited part only reappears when the parent-known geometry changes:
reset, angle drift, selector change, stop, or legal collar change.  If \(\Pi_i\)
is the parent projection after such a change, the reset/angle contribution is

```math
\rho_i
=
\langle G,(\Pi_i-\Pi_{i-1})a_i\rangle .
\tag{10}
```

Then

```math
\sum_i|\rho_i|^2
\le
\|G\|_{\mathfrak H_P}^2
\sum_i\|(\Pi_i-\Pi_{i-1})a_i\|^2
\le
C(u_0)\operatorname{Var}_{P}^{reset/angle/selector}.
\tag{11}
```

The last factor is exactly the stopped reset/angle/selector variation ledger.
Stop and legal collar changes are recorded in \(Stop(P)\) and
\(R_{\mathrm{legal}}(P)\). This line is a decomposition of the remaining cost,
not a proof that the ledger is finite.

## 3. Decomposition statement

Combining `(8)` and `(11)` gives

```math
\sum_{Q_i\subset P}
\mathcal R(Q_i)|\Delta J_i^{fresh}|^2
\le
C(u_0)
+C(u_0)\operatorname{Var}_{P}^{reset/angle/selector}
+C R_{\mathrm{legal}}(P)
+C Stop(P).
\tag{12}
```

This is the inherited-direction decomposition:

```text
reuse is parent current,
fresh use is orthogonal,
changed reuse is exactly reset/angle/selector variation.
```

## 4. Route effect

This closes only the parent-subtracted decomposition inside the stopped
root-geometry compensator. The root-geometry proof should now measure the child
action by the parent-subtracted current \(\Delta J_i^{new}\). Any surface that
treats raw inherited value as fresh selected child action is stale.

The parent-announced first-exit reset representation turns this ledger into a
routed-current energy charge:

```math
\operatorname{Var}^{stop}_P
\le
C_N\mathcal E_{\mathrm{route}}(P)
+R_{\mathrm{legal}}(P)+Stop(P).
```

Equivalently, the remaining root-geometry work is no longer raw inherited
variation. It is the original-history routed-current energy estimate

```math
\mathcal E_{\mathrm{route}}(P)
\le
C(u_0)+R_{\mathrm{legal}}(P)+Stop(P)
```

before descendant selected-tail readout.
