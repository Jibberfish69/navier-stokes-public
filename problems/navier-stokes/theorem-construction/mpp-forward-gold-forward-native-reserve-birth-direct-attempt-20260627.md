---
theorem_id: forward-gold-forward-native-reserve-birth-direct-attempt-20260627
status: direct-attempt-reduces-to-no-unpaid-high-ratio-upward-birth-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped full exchange native reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - ForwardNativeReserveBirthPaysFullPLS.A
  - SelectedCompressionRootReserve.A
  - StoppedFullExchangeActionCarleson.A
  - PaidReselectionStoppingCarleson.A
  - TestingDefectChargeToInstalledLedgers.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-full-exchange-native-reserve-pivot-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-reselection-root-reserve-convergence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-testing-defect-ledger-charge-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627.md
effect: >-
  Attacks the current full-exchange/reselection hinge at its deepest nonduplicate
  form.  The stopped testing defect has already reduced to full exchange and paid
  reselection.  Those two branches converge to SelectedCompressionRootReserve.A,
  and the noncircular producer for that reserve is ForwardNativeReserveBirthPaysFullPLS.A.
  This direct attempt proves the correct accounting skeleton and isolates the first
  still-open theorem: every retained high-ratio selected birth must be lower-band
  carry, visible same-history birth, entrance/stop/legal, or else the route has an
  unpaid fourth branch not yet excluded by installed ledgers.
---

# Forward-native reserve birth direct attempt

The current Gold hinge is no longer the accretive reference state.  The checked
corona rebase closes the thin reference branch, and the testing-defect reduction
leaves exactly full exchange action plus paid reselection/reset.  The later
reserve notes collapse those two terms to one native reserve question:

```text
StoppedFullExchangeActionCarleson.A
  + PaidReselectionStoppingCarleson.A
    <= SelectedCompressionRootReserve.A
    <= ForwardNativeReserveBirthPaysFullPLS.A.
```

So the proof attempt has to build a reserve from original material history and
show that selected compression cannot be born for free after stopping.

## 1. Desired differential reserve law

Let \(d\Omega_N^{full}\) denote the stopped full selected
pressure-viscosity-incompressibility-strain/exchange service at resolution \(N\).
The needed noncircular reserve law is:

```math
d\mathfrak R_N^{nat}
+d\mathfrak L_N
+c\,d\Omega_N^{full}
\le
dR_N,
\qquad
\mathfrak R_N^{nat}\ge 0,
\qquad
\mathfrak L_N\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty .
\tag{1}
```

Here \(\mathfrak R_N^{nat}\) is not a future-tail definition of the produced
clock.  It may use only original-history bills: material Hodge/projector
motion, strain-frame log storage, Schur normal pressure-collar defect storage,
annular stress storage, frequency-local native birth, entrance, stop, reset,
and legal loss.

Integrating `(1)` over the stopped laminar tree gives

```math
\sum_{Q\in\mathcal T(P)}A_{\rm sel}(Q)
\le
C_N(u_0)\mathcal R(P)+C\,Stop(P)+C\,R_{\rm legal}(P),
\tag{2}
```

which is `SelectedCompressionRootReserve.A`, hence the full exchange/reselection
payment needed by the testing-defect theorem.

## 2. Birth decomposition

For each retained parent-child transition \(Q\to Q'\) with selected action
born at \(Q'\), write the positive increment as

```math
dA_{\rm sel}^{+}(Q\to Q')
\le
dC_N^{carry}
+dB_N^{hodge}
+dB_N^{strain/frame}
+dB_N^{schur/collar}
+dB_N^{annular}
+dB_N^{freq}
+dR_N^{entr/stop/legal}
-d\mathfrak S_N^{spent}.
\tag{3}
```

The terms have fixed meanings.

- \(dC_N^{carry}\) is lower-band carry from the same selected parent.  It spends
  already-present native reserve and cannot be charged again downstream.
- \(dB_N^{hodge}\) is material Hodge/projector motion, including connection
  and angle drift needed to compare parent-known and child-selected coordinates.
- \(dB_N^{strain/frame}\) is same-material strain, frame, and covector
  compression.
- \(dB_N^{schur/collar}\) is visible normal pressure-collar defect.
- \(dB_N^{annular}\) is annular stress-work variation.
- \(dB_N^{freq}\) is genuine frequency-local native birth visible in original
  scale memory.
- \(dR_N^{entr/stop/legal}\) is entrance, stopping, reselection synchronization,
  reset, or legal loss.
- \(d\mathfrak S_N^{spent}\) records reserve already consumed, so the same root
  reserve cannot be recycled down a shrinking chain.

Summing `(3)` over a stopped tree telescopes the carry/spent part:

```math
\sum_{Q\subseteq P}dA_{\rm sel}^{+}(Q)
\le
\mathfrak R_N^{nat}(P)
-\mathfrak R_N^{nat}(\partial\mathcal T(P))
+C_N^{paid}(P)
+C\,Stop(P)
+C\,R_{\rm legal}(P).
\tag{4}
```

Thus the direct proof reduces to showing that `(3)` is exhaustive.

## 3. The forbidden fourth branch

The only branch not paid by `(3)` is a retained high-ratio upward selected birth
with all of the following properties:

```math
\begin{aligned}
&dA_{\rm sel}^{+}(Q\to Q')>0,\\
&dC_N^{carry}=0,\\
&dB_N^{hodge}
+dB_N^{strain/frame}
+dB_N^{schur/collar}
+dB_N^{annular}
+dB_N^{freq}=0,\\
&dR_N^{entr/stop/legal}=0 .
\end{aligned}
\tag{5}
```

This is the exact missing theorem:

```text
NoUnpaidHighRatioUpwardBirthFromOriginalHistory.A
```

Equivalent statement:

```math
dA_{\rm sel}^{+}
\le
dC_N^{carry}
+dB_N^{hodge}
+dB_N^{strain/frame}
+dB_N^{schur/collar}
+dB_N^{annular}
+dB_N^{freq}
+dR_N^{entr/stop/legal}
-d\mathfrak S_N^{spent}
\tag{6}
```

for every retained stopped transition in the original material ancestry tree.

## 4. Direct contradiction test

Assume a minimal unpaid fourth-branch chain exists.  Normalize it so each
selected child has unit action:

```math
A_{\rm sel}(Q_k)\simeq 1,
\qquad
\sum_k
\left(
dC_N^{carry}
+dB_N^{hodge}
+dB_N^{strain/frame}
+dB_N^{schur/collar}
+dB_N^{annular}
+dB_N^{freq}
+dR_N^{entr/stop/legal}
\right)(Q_k\to Q_{k+1})
<\infty .
\tag{7}
```

Compactness gives a limiting packet with persistent selected action and zero
visible original-history bill.  Installed zero-cost dynamic-silent rigidity can
kill the component seen by fixed parent-subtracted silent innovation, but it
does not by itself rule out high-active-weight tube escape or shrinking-core
selected-density concentration.  The same defect appears in the testing
coordinates as missing stopped transform orthogonality:

```math
\left\|\sum_e T_eD_e\right\|_{L^2}^2
\lesssim
\sum_e\|D_e\|_{L^2}^2 .
\tag{8}
```

Equation `(8)` is a coordinate form of the same no-fourth-branch claim, not a
separate top theorem.  It proves the testing defect only after the native
birth/exhaustion law has supplied the missing same-carrier packing.

## 5. What this proves and what remains

This note proves the correct Gold pressure point:

```text
TestingDefectChargeToInstalledLedgers.A
  <= StoppedFullExchangeActionCarleson.A
     + PaidReselectionStoppingCarleson.A
  <= SelectedCompressionRootReserve.A
  <= ForwardNativeReserveBirthPaysFullPLS.A
  <= NoUnpaidHighRatioUpwardBirthFromOriginalHistory.A.
```

The proof is still partial.  The open theorem is not a fresh accretive test,
not a thin-selector reference theorem, not a pressure-only Schur theorem, and
not a static silent-source lemma.  It is the exclusion of a same-material
high-ratio selected birth that is invisible to carry, Hodge/projector motion,
strain/frame change, pressure collar, annular stress, frequency-local native
birth, entrance, stop, reset, and legal loss.

Gold remains open until that fourth branch is excluded or charged by a new
original-history reserve bill.
