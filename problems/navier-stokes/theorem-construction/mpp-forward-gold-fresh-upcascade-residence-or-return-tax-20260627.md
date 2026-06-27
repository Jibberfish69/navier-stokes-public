---
theorem_id: forward-gold-fresh-upcascade-residence-or-return-tax-20260627
status: synthesis-aligns-residence-or-return-with-threaded-cascade-packing-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh frequency flux
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - FreshFrequencyFluxNoFreeUpcascade.A
  - FreshSourceWeightedPairedCarrierBound.A
  - ThreadedFreshCascadePacking.A
  - FreshSameCarrierIdentityAndSelectedOverrunPayment.A
  - FreshPotentialAverageKillAndPositiveTransfer.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-frequency-flux-residence-transit-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-weighted-paired-carrier-frequency-flux-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-differential-exhaustion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-to-same-carrier-overrun-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
effect: >-
  Synthesizes the checked frequency-flux residence/transit dichotomy with the
  overrun/AQK routes.  The residence branch is already paid in the dichotomy note.
  The remaining branch is ThreadedFreshCascadePacking.A: coherent same-material
  upward transit must be packed as one cascade thread or charged by return/reset,
  stop, legal, or selected-overrun exit.  The same-carrier overrun and affine-quotient
  routes are not rival live targets; they are coordinates of the transit branch
  left by the frequency-flux theorem.
---

# Fresh upcascade residence-or-return tax

The live theorem is the frequency-flux form of the fresh paired-carrier bound:

```math
I^\uparrow_{\rm fresh}(P)
:=
\int_0^{T^*}
\sum_{j>N}2^j[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{1}
```

The direct inequality

```math
2^j[\Pi_{j-1\to j}^{fresh}]_+
\lesssim
\nu2^{2j}E_j^{fresh}
+\text{return/reset/legal}
\tag{2}
```

is the right target, but it hides the real mechanism.  An upward crossing can
pay `(2)` only by one of two same-material behaviors:

1. it resides in the upper shell long enough for viscous residence to see it;
2. it exits too fast, and that exit is a return/backscatter/reset/legal or
   selected-overrun event.

So the proof should not treat the paired carrier, frequency flux, same-carrier
overrun, and affine quotient as four separate targets.  They are one
residence-or-return accounting problem.

Alignment with the checked residence/transit note: the residence branch is
already paid.  The open branch is `ThreadedFreshCascadePacking.A`, not a new
parallel label.  This note explains how that threaded-transit branch connects
to the overrun and DER/AQK coordinates.

## 1. Stopped crossing intervals

Let \(J_{j,\alpha}\) be a maximal stopped interval on which the fresh
parent-subtracted crossing into shell \(j\) is positive after carry and spent
source have been removed:

```math
\Pi_{j-1\to j}^{fresh}(t)>0,
\qquad t\in J_{j,\alpha}.
\tag{3}
```

Let

```math
\mathcal E_{j,\alpha}^{in}
=\int_{J_{j,\alpha}}[\Pi_{j-1\to j}^{fresh}]_+\,dt
\tag{4}
```

be the fresh energy/action admitted to the upper active shell.  Split
`J_{j,\alpha}` into two cases.

### Residence-paid case

The admitted packet remains in the stopped selected carrier for a time
comparable to the viscous residence scale.  In the notation of the frequency
flux note, this is the case where the local crossing measure is dominated by
the viscous residence density:

```math
2^j\int_{J_{j,\alpha}}[\Pi_{j-1\to j}^{fresh}]_+\,dt
\le
C\int_{J_{j,\alpha}}\nu2^{2j}E_j^{fresh}(t)\,dt
+R_{j,\alpha}^{legal/stop}.
\tag{5}
```

Summing these intervals is paid by the original-history dissipative ledger
available to the stopped fresh packet.

### Fast-exit case

The admitted packet does not remain long enough for `(5)`.  Then the same
material energy must leave the selected upper shell before the residence clock
can see it.  That exit has to occur through one of the paid channels:

```math
R_{j,\alpha}^{ret}
+R_{j,\alpha}^{reset}
+R_{j,\alpha}^{stop}
+R_{j,\alpha}^{legal}
+R_{j,\alpha}^{backscatter}
+R_{j,\alpha}^{overrun}.
\tag{6}
```

This is the exact place where the same-carrier overrun and DER/AQK notes enter.
They are not alternate top routes.  They are attempted payments for the fast
threaded-transit branch of the frequency-flux theorem.

## 2. The residence-or-return theorem as threaded transit

The sharpened theorem is:

```text
ThreadedFreshCascadePacking.A
```

For every retained stopped root \(P\),

```math
\sum_{\gamma\subset P}
\sum_{j\in\gamma}2^jM_j^\gamma
\le
C_N(u_0)\mathcal R(P)
+C\,Res(P)
+C\,ReturnReset(P)
+C\,R_{\rm legal}(P)
+C\,Overrun(P).
\tag{7}
```

The overrun term is not allowed to be an unproved sink.  It must be identified
with the actual selected positive native carrier:

```math
Overrun(P)
\simeq
\int_{E^{over}_{P}}
\Sigma_j^+(t)|W_j(t)|^2\,dt,
\qquad
\Sigma_j^+>K\nu r_j^{-2},
\tag{8}
```

and then paid by `FreshSelectedCoefficientOverrunPayment.A`, or by the
DER/AQK positive-transfer route when that route kills the same positive
fresh-stress quotient.

## 3. What this unifies

The frequency-flux note says the selected critical weight counts upward
crossings.  The same-carrier overrun note says the only uncharged product layer
is the selected carrier where the positive coefficient beats viscous scale.
The DER/AQK note says the far-corona survivor is the affine quotient of the
positive fresh stress source.

Those are the same failure seen at three resolutions:

```text
frequency flux:
  fast fresh upward crossing not paid by residence;

same-carrier product:
  selected coefficient overrun on the actual carrier;

DER/AQK:
  positive fresh-stress affine quotient that survived signed scale descent.
```

Thus the next proof should attack the fast-exit branch directly.  Proving that
every fast exit is a paid return/reset/legal/backscatter or a paid selected
overrun closes `FreshFrequencyFluxNoFreeUpcascade.A`.

Equivalently, in the residence/transit language, the proof must pack coherent
upward transit threads rather than count each shell crossing as a new birth.

## 4. Direct proof attempt and first open estimate

The natural proof is a stopping-time charge.

For each fresh upward crossing interval, define the residence clock

```math
\rho_{j,\alpha}(t)
=
\int_{t_{j,\alpha}^{in}}^t\nu2^{2j}\,ds.
\tag{9}
```

If \(\rho_{j,\alpha}\) reaches a fixed threshold before the packet leaves the
selected upper carrier, the interval is residence-paid by `(5)`.  If it leaves
first, then same-material accounting gives a return map

```math
\mathcal R_{j,\alpha}^{exit}:
\text{upper selected shell}
\longrightarrow
\text{lower shell, reset face, stop face, legal face, or overrun face}.
\tag{10}
```

The first unproved estimate is bounded overlap of this exit map in the selected
critical weight:

```math
\sum_{\gamma\subset P}
\sum_{j\in\gamma}2^jM_j^\gamma
\le
C_N(u_0)\mathcal R(P)
+C\,Res(P)
+C\,ReturnReset(P)
+C\,R_{\rm legal}(P)
+C\,Overrun(P).
\tag{11}
```

Equation `(11)` is the real threaded-cascade theorem.  Without it, one
same-material packet can travel upward through infinitely many dyadic shells
with negligible residence, paying signed energy balance while leaving infinite
selected positive variation.

## 5. Result

This note does not prove Gold.  It gives the next non-stale shape:

```text
FreshFrequencyFluxNoFreeUpcascade.A
  <= ThreadedFreshCascadePacking.A
  <= FreshTransitThreadNoFreeZeno.A
     + FreshSelectedCoefficientOverrunPayment.A.
```

The proof should now force this residence-or-return dichotomy.  A future note
that proves only signed dyadic energy, raw Bessel packing, pointwise
no-fourth-branch, or abstract paired-carrier norm control is support unless it
pays `(11)` or the overrun term `(8)` on the actual fresh selected carrier.
