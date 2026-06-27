---
theorem_id: forward-gold-original-history-selected-amplification-bv-construction-boundary-20260627
status: construction-open-needs-stopped-hilbert-bmo-producer
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - OriginalHistorySelectedAmplificationBV.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - StoppedSelectorCorrectHilbertBMOProducer.A
---

# Original-history selected amplification BV: construction boundary

## 1. Target

The previous note unified the fixed-core return estimate and the reset estimate as two projections of a single selected amplification record

```math
\Lambda_Q=\log f_Q.
```

The target is a finite original-history BV / square-function / Carleson estimate:

```math
\sum_{Q\subseteq Q_0}|\Delta_Q\Lambda|^2\mathcal R(Q)
+\operatorname{Var}_{crit}(\Lambda;Q_0)
\le C(u_0)+C R_{legal}(Q_0).
\tag{1}
```

## 2. What would prove it

The governing-edge surface gives the stronger stopped-carrier representation

```math
\log {f_Q\over f_{par(Q)}}
=
\ell_Q(\Delta_Q Z^S)-\psi_Q+e_Q^S,
\tag{2}
```

with root Carleson control

```math
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\left[
\sum_{S\subseteq P'}\sum_{Q\subseteq S}
(\|\Delta_Q Z^S\|^2+|e_Q^S|^2)\mathcal R(Q)+Stop(P')
\right]
\le C(u_0)+{R_{legal}(P')\over\mathcal R(P')}.
\tag{3}
```

If `(2)` and `(3)` hold, then `(1)` follows by martingale square-function and good-lambda machinery. The fixed-core and reset branch estimates are then projections of `(1)`.

## 3. Direct construction attempt

A natural attempt is to define `Z^S` from the routed selected source components:

```math
Z^S=Z^S_{vis}\oplus Z^S_{sil}\oplus Z^S_{ex},
```

where:

- `Z_vis` is pressure-visible and paid by Schur trace;
- `Z_sil` is handled by source-origin classification;
- `Z_ex` is top-strain exchange/material service.

This gives local packet payment, but not yet the stopped BMO/Carleson producer. The missing step is to prove that these local components assemble into a single stopped martingale field whose increments have square Carleson packing.

Local payment alone gives

```math
|\Delta_Q\Lambda|^2\mathcal R(Q)
\lesssim
B_{Schur}(Q)+E_{top-ex}(Q)+S_{mat}(Q)+R_{legal}(Q),
```

but the global estimate requires the right side to pack Carleson over stopped subtrees with constants from original data.

## 4. Exact missing theorem

The required producer is

```text
StoppedSelectorCorrectHilbertBMOProducer.A
```

or equivalently

```text
OriginalHistorySelectedLogAmplificationCarleson.A
```

Statement:

After routing pressure-visible, pressure-null, and source-origin components, the stopped selector produces a lifted Hilbert/BMO carrier \(Z^S\) whose martingale increments satisfy the root Carleson estimate `(3)` from original smooth data.

This theorem must construct the carrier from the original same-material history. It cannot define \(Z^S\) from the future selected tail.

## 5. Result

`OriginalHistorySelectedAmplificationBV.A` is not discharged by naming the amplification record. It reduces to the construction of the stopped Hilbert/BMO producer:

```math
\boxed{\text{StoppedSelectorCorrectHilbertBMOProducer.A / OriginalHistorySelectedLogAmplificationCarleson.A}.}
```

This is now the cleanest live edge. The two branch-payment locks are subordinate projections; the hard proof is to build a stopped original-history BMO carrier with a Carleson square-function bound.