---
theorem_id: forward-gold-threaded-fresh-cascade-packing-finite-band-reset-reduction-20260627
status: threaded-transit-packed-by-finite-band-or-stopped-reset-exit
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh frequency flux
attacks_hinge:
  - ThreadedFreshCascadePacking.A
  - FreshFrequencyFluxNoFreeUpcascade.A
  - FreshSourceWeightedPairedCarrierBound.A
consumes:
  - ResetWitnessIntervalBoundedOverlap.A
  - NoFreeHighWeightTubeEscapeCharge.A
  - SelectedReadoutDifferentialExhaustion.A
inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-frequency-flux-residence-transit-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-high-weight-tube-escape-charge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reset-witness-interval-bounded-overlap-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-differential-exhaustion-20260627.md
effect: >-
  Packs the threaded transit branch by splitting every transit thread into
  finite-band parent-predictable motion and first-exit reset/escape motion.
  Infinite upward transit with negligible residence and no reset/return/legal
  exit is impossible in the stopped first-exit tree.
---

# Threaded fresh cascade packing by finite-band/reset reduction

The residence/transit dichotomy left one branch: a same-material fresh packet
travels upward through dyadic shells with negligible residence.

This branch is not an arbitrary frequency cascade.  It is a stopped selected
readout on one retained material tree.  The stopped selector carries a
parent-known active scale band.  A transit thread can either stay inside that
band for finitely many shell crossings, or exit it.  Exiting the band is exactly
a stopped first-exit reset/escape witness.

## 1. Transit thread

Let \(\gamma\) be a maximal transit thread:

```math
\gamma:\quad j_0\to j_0+1\to\cdots\to j_1.
```

For each shell \(j\), let \(I_j^\gamma\) be the stopped interval on which the
incoming fresh flux crosses into shell \(j\), and set

```math
M_j^\gamma
:=
\int_{I_j^\gamma}
[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt.
\tag{1}
```

Transit means

```math
\int_{I_j^\gamma}\nu2^{2j}E_j(t)\,dt
<
\varepsilon M_j^\gamma.
\tag{2}
```

The shell balance then forces the successor crossing:

```math
M_{j+1}^\gamma
\ge
(1-\varepsilon)M_j^\gamma
-\Delta E_j^+(I_j^\gamma)
-R_j^{legal/stop}(I_j^\gamma).
\tag{3}
```

So the transit branch is one coherent thread, not a new independent birth at
each shell.

## 2. Finite stopped-band part

For a stopped parent \(Q\), let \(B_Q\) be its parent-known active shell band.
The stopped construction uses finite bandwidth:

```math
\#B_Q\le C_N.
\tag{4}
```

On the subthread contained in one \(B_Q\), all weights \(2^j\) are comparable to
the parent stopped weight \(w_Q\).  Summing the shell balance over \(j\in B_Q\)
telescopes the internal fluxes:

```math
\sum_{j\in B_Q}2^jM_j^\gamma
\le
C_N w_Q
\left(
E_{B_Q}(t_1)-E_{B_Q}(t_0)
+\int_{I^\gamma}\sum_{j\in B_Q}\nu2^{2j}E_j(t)\,dt
+R_{legal/stop}(Q)
\right)
+C_N\,2^{j_{top}}M_{j_{top}+1}^{out}.
\tag{5}
```

The first three terms are endpoint/start energy, residence, and legal/stop
mass already present in the stopped ledger.  The only non-internal term is
outflux across the top of the stopped band.

If there is no top outflux, the finite-band part is packed.

## 3. Top outflux is a first-exit reset/escape

If the thread exits \(B_Q\), the child has left the parent-known stopped scale
state.  By the stopped selector construction, this is represented by a maximal
first-exit slab \(I_e\) and witness tube \(W_e\).

The reset derivative representation gives

```math
D_e^{fresh}(t)
=
|I_e|^{-1}\int_{I_e}G_e(\sigma,t)\,d\sigma
+Err_e^{legal}(t),
\tag{6}
```

with

```math
G_e
=
\partial_\sigma Z
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma.
\tag{7}
```

The active-weight Cauchy charge already installed gives

```math
\sum_{e\subset P}
\int H_e(t)\|D_e^{fresh}(t)\|^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{legal}(P).
\tag{8}
```

The bounded-overlap theorem for first-exit slabs is exactly what makes `(8)`
summable over the stopped tree.

Thus every top outflux of a transit thread is reset/escape-paid.

## 4. Parent-predictable transit has no fresh selected birth

There is one possible ambiguity: a packet may move upward while the parent
stopped state is still considered valid.  That is not a fresh selected birth.

The selected readout differential exhaustion gives

```math
da_Q
=
D_{\mathfrak U}\mathcal A_Q\,d\mathfrak U_Q
+D_\Pi\mathcal A_Q\,d\Pi_Q
+D_\chi\mathcal A_Q\,d\chi_Q.
\tag{9}
```

After parent-predictable transport is subtracted, a motion that stays inside
the same parent stopped band and does not change \(\Pi_Q\), \(\chi_Q\), collar,
covector, or active weight contributes no fresh differential.  Hence

```math
da_Q^{fresh}=0,
\qquad
[da_Q^{fresh}]_+=0.
\tag{10}
```

So parent-predictable transit is carry, not new fresh selected action.

## 5. Threaded packing estimate

Combining the finite-band telescoping with the reset/escape charge gives the
threaded transit estimate:

```math
\sum_{\gamma\subset P}
\sum_{j\in\gamma}2^jM_j^\gamma
\le
C_N E_{root}(P)
+C\,Res(P)
+C\,ResetEscape(P)
+C\,ReturnBV(P)
+CR_{legal}(P).
\tag{11}
```

Here \(ReturnBV(P)\) appears only for the branch where the thread returns to a
previous stopped core before another selected transit.  That branch is the
stopped primitive return/BV branch; it is not part of the silent-source or
frequency-transit obstruction.

## 6. Consequence

In the exact bad branch left by the residence/transit note, residence,
endpoint/start energy, return/reset, and legal loss are negligible.  Equation
`(11)` then forces the weighted transit mass to vanish.

Therefore an infinite upward same-material transit thread with negligible
residence and no reset/return/legal exit cannot carry positive selected
critical weight.

This proves the structural content of

```text
ThreadedFreshCascadePacking.A
```

under the stopped first-exit representation already required by the reset
branch.  The remaining non-local payments are the named return/reset ledgers,
not another silent-source, Schur, or frequency-flux branch.
