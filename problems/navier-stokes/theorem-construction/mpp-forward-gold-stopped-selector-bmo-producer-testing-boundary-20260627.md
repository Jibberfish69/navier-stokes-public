---
theorem_id: forward-gold-stopped-selector-bmo-producer-testing-boundary-20260627
status: bmo-producer-open-testing-carleson-required
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - StoppedSelectorCorrectHilbertBMOProducer.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - OriginalHistorySelectedAmplificationBV.A
---

# Stopped selector BMO producer: testing boundary

## 1. Target

The current clean target is to construct a stopped Hilbert/BMO carrier \(Z^S\) such that

```math
\log {f_Q\over f_{par(Q)}}
=
\ell_Q(\Delta_Q Z^S)-\psi_Q+e_Q^S
\tag{1}
```

and

```math
\sup_{P'\subseteq P}{1\over\mathcal R(P')}
\left[
\sum_{S\subseteq P'}\sum_{Q\subseteq S}
(\|\Delta_Q Z^S\|^2+|e_Q^S|^2)\mathcal R(Q)+Stop(P')
\right]
\le C(u_0)+{R_{legal}(P')\over\mathcal R(P')}.
\tag{2}
```

This would imply the selected-density square-function / entropy estimate and pay both the fixed-core and reset branch estimates.

## 2. Natural construction attempt

After pressure-visible/null routing and source-origin classification, define a signed routed source measure on each stopped region \(S\):

```math
\nu^S
=
u^S_{vis}+\nu^S_{sil/ex}+\nu^S_{reset}+\nu^S_{return}.
```

A natural candidate is a dyadic Hilbert/Riesz-type lift

```math
Z^S=T_S\nu^S,
```

where \(T_S\) is the stopped same-material singular transform / martingale lift. Then

```math
\Delta_QZ^S\simeq \Delta_Q(T_S\nu^S).
```

The BMO estimate `(2)` would follow from a stopped \(T1/Tb\)-type testing theorem if the routed source measure has cancellation and Carleson testing bounds.

## 3. Required testing estimates

The needed hypotheses are:

### Cancellation

For each stopped region \(S\),

```math
\nu^S(S)=0
```

or the nonzero mean is paid by \(Stop(S)\) / legal root terms.

### Local testing

For every retained subpacket \(P\subseteq S\),

```math
\|T_S(1_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le C\mathcal R(P)+C R_{legal}(P).
\tag{3}
```

### Carleson packing

The testing defects satisfy

```math
\sum_{P\subseteq P_0} Def_{test}(P)
\le C\mathcal R(P_0)+C R_{legal}(P_0).
\tag{4}
```

Given `(3)` and `(4)`, dyadic \(T1/Tb\) or martingale transform theory gives the square-function/BMO bound `(2)`.

## 4. What fails directly

The local source-origin normal form gives packet payment:

```math
A_{sel}(Q)
\lesssim B_{Schur}(Q)+E_{top-ex}(Q)+S_{mat}(Q)+R_{legal}(Q).
```

But this is not the same as the stopped testing estimate `(3)`. Packetwise payment does not by itself give cancellation, nor does it prove that \(T_S\nu^S\) has bounded BMO norm over every stopped subpacket.

Thus the BMO producer is not automatic from local payment.

## 5. Exact missing theorem

The exact missing theorem is

```text
StoppedSelectorTestingCarleson.A
```

or equivalently

```text
OriginalHistoryHilbertBMOProducer.A
```

Statement:

The stopped selector/order-lock converts the routed selected source into a signed measure \(\nu^S\) satisfying cancellation and local testing estimates for the stopped same-material Hilbert/Riesz/martingale transform, with testing defects Carleson from original smooth data.

Symbolically:

```math
\sup_{P\subseteq S}{1\over\mathcal R(P)}
\|T_S(1_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le C(u_0)+{R_{legal}(P)\over\mathcal R(P)}.
\tag{5}
```

and the resulting BMO square function satisfies `(2)`.

## 6. Result

`StoppedSelectorCorrectHilbertBMOProducer.A` is not discharged by defining \(Z^S=T_S\nu^S\). It requires a stopped testing/cancellation theorem:

```math
\boxed{\text{StoppedSelectorTestingCarleson.A / OriginalHistoryHilbertBMOProducer.A}.}
```

This is the current clean live edge. If it is proved, the original-history selected log-amplification Carleson theorem follows, and with it the selected-density square-function / entropy estimate that kills the critical half-tail.