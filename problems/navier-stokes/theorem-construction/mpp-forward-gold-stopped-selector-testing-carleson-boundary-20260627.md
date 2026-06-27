---
theorem_id: forward-gold-stopped-selector-testing-carleson-boundary-20260627
status: stopped-testing-open-accretive-testing-data-needed
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - StoppedSelectorTestingCarleson.A
  - OriginalHistoryHilbertBMOProducer.A
  - StoppedSelectorCorrectHilbertBMOProducer.A
---

# Stopped selector testing Carleson boundary

## 1. Target

The stopped BMO producer would follow from a stopped testing theorem for the routed selected source measure \(\nu^S\). The desired estimate is

```math
\sup_{P\subseteq S}{1\over \mathcal R(P)}
\|T_S(1_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le C(u_0)+{R_{legal}(P)\over\mathcal R(P)}.
\tag{1}
```

Here \(T_S\) is the stopped same-material Hilbert/Riesz/martingale transform that would produce the BMO carrier.

## 2. What local packet payment gives

The routed local packet estimates give a bound of the form

```math
A_{sel}(Q)
\lesssim
B_{Schur}(Q)+E_{top-ex}(Q)+S_{mat}(Q)+R_{legal}(Q).
\tag{2}
```

This is a size/energy payment. It does not imply the testing estimate `(1)`.

The missing information is cancellation and accretive testing data for the stopped transform.

## 3. Why testing is independent

Even if \(|\nu^S|(P)\) is locally finite, a singular transform \(T_S\nu^S\) can fail BMO or square-function control unless the stopped source has cancellation relative to the transform kernel. The necessary conditions are:

```math
\nu^S(P)\approx 0
```

up to root/stop terms, and for every retained subpacket \(P\),

```math
\|T_S(1_P\nu^S)\|_{L^2(P)}^2
\lesssim
\mathcal R(P)+R_{legal}(P).
```

These are not consequences of packetwise selected action payment alone.

## 4. Exact missing theorem

The missing theorem is

```text
StoppedAccretiveTestingData.A
```

or equivalently

```text
OriginalHistoryHilbertBMOProducer.A
```

Statement:

The stopped selector/order-lock constructs routed source data \(\nu^S\) and an accretive testing family \(b_P\) such that:

```math
\langle \nu^S,b_P\rangle=0
\quad\text{or is paid by } Stop(P)+R_{legal}(P),
```

and

```math
\|T_S(b_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le C\mathcal R(P)+C R_{legal}(P).
\tag{3}
```

The testing defects must pack Carleson over the stopped tree:

```math
\sum_{P\subseteq P_0} Def_{test}(P)
\le C\mathcal R(P_0)+C R_{legal}(P_0).
\tag{4}
```

## 5. Consequence if proved

If `StoppedAccretiveTestingData.A` holds, then stopped dyadic \(T1/Tb\) theory gives the BMO square-function estimate for \(Z^S=T_S\nu^S\). That proves

```text
StoppedSelectorCorrectHilbertBMOProducer.A
```

and hence

```text
OriginalHistorySelectedLogAmplificationCarleson.A.
```

## 6. Result

The stopped selector testing theorem is not discharged by the current local payment notes. The exact live producer is:

```math
\boxed{\text{StoppedAccretiveTestingData.A / OriginalHistoryHilbertBMOProducer.A}.}
```

This is the cleanest current hard edge: construct accretive stopped testing data from the original same-material PDE history, not from the future selected tail.