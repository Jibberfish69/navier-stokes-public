---
theorem_id: forward-gold-fresh-frequency-flux-residence-transit-dichotomy-20260627
status: residence-branch-paid-transit-branch-reduced-to-threaded-cascade-packing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh weighted paired carrier
attacks_hinge:
  - FreshFrequencyFluxNoFreeUpcascade.A
  - FreshSourceWeightedPairedCarrierBound.A
  - ThreadedFreshCascadePacking.A
inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-weighted-paired-carrier-frequency-flux-test-20260627.md
effect: >-
  Proves the dissipative residence branch of the fresh frequency-flux crossing
  estimate and identifies the only remaining branch as coherent threaded upward
  transit. Transit crossings are not independent fresh births; they must be
  packed as one threaded cascade path, or charged by stop/reset/legal exit.
---

# Fresh frequency flux: residence/transit dichotomy

The frequency-flux test rewrote fresh selected birth as positive upward
crossing:

```math
dA_j^{fresh,+}
\lesssim
[\Pi_{j-1\to j}^{fresh}]_+\,dt
+R_j^{legal}+R_j^{stop/reset}.
\tag{1}
```

The desired global theorem is

```math
\int_0^{T^*}\sum_j2^j[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{2}
```

This note splits `(2)` into the part that is directly paid and the remaining
threaded-cascade branch.

## 1. Shell balance on a fresh crossing interval

Let \(I\) be a maximal stopped interval on which shell \(j\) receives fresh
upward flux from shell \(j-1\).  Write

```math
M_j(I):=\int_I[\Pi_{j-1\to j}^{fresh}]_+\,dt.
\tag{3}
```

The shell balance is

```math
E_j(t_1)-E_j(t_0)
+\int_I\nu2^{2j}E_j(t)\,dt
=
\int_I\Pi_{j-1\to j}^{fresh}\,dt
-\int_I\Pi_{j\to j+1}^{fresh}\,dt
+R_j(I),
\tag{4}
```

with legal/stop/collar errors included in \(R_j(I)\).

## 2. Residence branch

Fix \(0<\varepsilon<1\).  The residence branch is

```math
\int_I\nu2^{2j}E_j(t)\,dt
\ge
\varepsilon M_j(I).
\tag{5}
```

Then

```math
2^jM_j(I)
\le
\varepsilon^{-1}2^j
\int_I\nu2^{2j}E_j(t)\,dt.
\tag{6}
```

This is paid by the high-shell viscous residence part of the same stopped
full-exchange ledger.  Summing residence intervals with bounded stopped overlap
gives

```math
\sum_{(j,I)\in Res}
2^jM_j(I)
\le
C_\varepsilon
\int_{\operatorname{Hist}(P)}
\sum_j\nu2^{3j}E_j(t)\,dt
+R_{\rm legal}(P)+Stop(P).
\tag{7}
```

In the paired-carrier normalization, the right side is exactly the residence
part of the upper-active queue \(D_j^{\uparrow,fresh}\).  Thus the residence
branch is paid by the `FreshSourceWeightedPairedCarrierBound.A` upper queue; it
is not a separate obstruction.

## 3. Transit branch

The transit branch is the complement:

```math
\int_I\nu2^{2j}E_j(t)\,dt
<
\varepsilon M_j(I).
\tag{8}
```

Using `(4)`, after removing endpoint energy already present at the start of the
stopped packet and legal/stop errors, the incoming fresh flux must leave upward:

```math
\int_I[\Pi_{j\to j+1}^{fresh}]_+\,dt
\ge
(1-\varepsilon)M_j(I)
-\Delta E_j^+(I)
-R_j^{legal/stop}(I).
\tag{9}
```

So unpaid transit at shell \(j\) creates a coherent successor crossing at shell
\(j+1\).  It does not create a new independent fresh birth.

## 4. Threaded cascade object

A chain of transit intervals therefore defines a threaded cascade path

```math
\gamma:
j_0\to j_0+1\to j_0+2\to\cdots
\tag{10}
```

with transported material identity carried along the same stopped packet.  Its
mass can decrease only by one of the already named payments:

```math
\text{viscous residence}
\quad
\text{endpoint energy already present}
\quad
\text{return/reset}
\quad
\text{legal/stop}.
\tag{11}
```

Thus the remaining theorem is not independent fresh-birth packing at every
level.  It is:

```text
ThreadedFreshCascadePacking.A
```

Statement:

For every stopped root \(P\), the weighted mass of all maximal transit threads
is bounded by entrance/root energy plus residence, return/reset, and legal
loss:

```math
\sum_{\gamma\subset P}
\sum_{j\in\gamma}2^j M_j^\gamma
\le
C_N(u_0)\mathcal R(P)
+C\,Res(P)
+C\,ReturnReset(P)
+CR_{\rm legal}(P).
\tag{12}
```

## 5. What remains mathematically

The residence branch is genuinely paid.  The transit branch still needs the
threaded packing theorem `(12)`.  The possible failure is now much narrower:
one same-material fresh packet must travel upward through infinitely many
dyadic shells with negligible residence, negligible endpoint/start energy,
negligible return/reset, and no legal exit.

That is the exact remaining form of the physical no-free-upcascade claim.
