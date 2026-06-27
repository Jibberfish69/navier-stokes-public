---
theorem_id: forward-gold-fresh-weighted-paired-carrier-frequency-flux-test-20260627
status: paired-carrier-reduced-to-no-free-upcascade-flux-variation
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh weighted paired carrier
attacks_hinge:
  - FreshSourceWeightedPairedCarrierBound.A
  - CriticalFreshSourceTentCarleson.A
  - FreshFrequencyFluxNoFreeUpcascade.A
inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-differential-exhaustion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-scale-memory-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
effect: >-
  Converts the fresh weighted paired-carrier bound into a frequency-flux
  crossing statement for the exact selected-readout differential. This is the
  physical proof pressure: fresh weighted birth is an upcascade crossing, not a
  new source. The remaining global theorem is finite positive upcascade
  variation from original same-material history.
---

# Fresh weighted paired carrier as frequency-flux crossing

The selected-readout differential note closed the pointwise kernel problem:
there is no positive selected birth outside the exact material differential.
The live theorem is now global:

```math
\sum_{Q\subset P} w(Q)\|F_Q\|_{\mathcal H_{\rm raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{1}
```

This note rewrites `(1)` in the more physical frequency-flux language.

## 1. Dyadic material energy identity

Let \(u_j=\Delta_j u\) in a transported material frame, after subtracting the
parent-predictable/gauge component and applying the stopped selector.  Let

```math
E_j(t)=\frac12\|u_j(t)\|_2^2.
\tag{2}
```

The dyadic shell identity has the form

```math
\frac{d}{dt}E_j(t)+\nu 2^{2j}E_j(t)
=
\Pi_{j-1\to j}(t)-\Pi_{j\to j+1}(t)
+R_j^{legal}(t)+R_j^{stop}(t),
\tag{3}
```

where \(\Pi_{j\to j+1}\) is the same-material nonlinear / pressure-Hodge /
projection / strain exchange crossing from shell \(j\) to shell \(j+1\).  The
sum over \(j\) is signed: internal fluxes cancel.

The exact selected-readout differential identifies a fresh high-ratio birth at
level \(j\) with the positive part of a crossing term in `(3)`, after carry and
spent-source projection:

```math
dA_{j}^{fresh,+}
\lesssim
[\Pi_{j-1\to j}^{fresh}]_+\,dt
+R_j^{legal}+R_j^{stop/reset}.
\tag{4}
```

Thus fresh selected birth is not an external refill.  It is upward frequency
crossing of the same material packet.

## 2. Weighted paired carrier

The selected critical weight asks for the log-scale first moment of those
fresh crossings:

```math
\sum_j 2^j dA_j^{fresh,+}
\lesssim
\sum_j2^j[\Pi_{j-1\to j}^{fresh}]_+\,dt
+R^{legal}+Stop.
\tag{5}
```

The paired-carrier form is the lower-prefix / upper-active rewriting of the
right side.  If

```math
T_j(t)=\sum_{k<j}z_k^{fresh}(t)
\tag{6}
```

is the lower-prefix source memory and \(D_j^\uparrow(t)\) is the upper-active
queue, then

```math
\sum_j2^j[\Pi_{j-1\to j}^{fresh}]_+
\simeq
\sum_j2^j a_j^{fresh}(t)D_j^{\uparrow,fresh}(t),
\tag{7}
```

up to legal/collar/stop synchronization.  This is the discrete form of
`FreshSourceWeightedPairedCarrierBound.A`.

## 3. What ordinary energy gives

Summing `(3)` without the weight gives only signed energy balance:

```math
\sum_j\int_0^{T^*}\nu2^{2j}E_j(t)\,dt
\le
E(0)+R_{\rm legal}+Stop.
\tag{8}
```

It does not directly give

```math
\int_0^{T^*}\sum_j2^j[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt<\infty.
\tag{9}
```

The missing issue is positive variation of flux crossings, not the signed
existence of flux.  Backscatter/return can cancel in `(3)` while the positive
crossing count remains large.

## 4. Correct closing theorem

The closing theorem is:

```text
FreshFrequencyFluxNoFreeUpcascade.A
```

Statement:

For the parent-known, spent-projected, stopped same-material fresh source,

```math
\int_0^{T^*}\sum_j2^j[\Pi_{j-1\to j}^{fresh}(t)]_+\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{10}
```

Equivalently,

```math
\int_0^{T^*}\sum_j2^j a_j^{fresh}(t)D_j^{\uparrow,fresh}(t)\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{11}
```

This is exactly `FreshSourceWeightedPairedCarrierBound.A`.

## 5. Mechanism required for `(10)`

The proof must show:

1. **Freshness:** a crossing counted in `(10)` is not reused lower-band carry.
2. **No free recurrence:** a return/backscatter cycle is already counted by
   stop/reset or full exchange and cannot generate another fresh crossing for
   free.
3. **High-frequency penalty:** a crossing that moves material into shell \(j\)
   is exposed to the viscous residence cost \(\nu2^{2j}E_j\) unless it exits
   immediately as a counted return/reset.
4. **Sparse residence:** maximal fresh crossing intervals/tubes have bounded
   stopped overlap in the parent-known material history.

Under these four clauses,

```math
2^j[\Pi_{j-1\to j}^{fresh}]_+\,dt
\le
C\nu2^{2j}E_j(t)\,dt
+dReturn_j+dReset_j+dR_j^{legal},
\tag{12}
```

and summing `(12)` gives `(10)` by `(8)` plus the already paid
return/reset/legal packing.

## 6. Result

The weighted paired-carrier theorem is the no-free-upcascade theorem for the
exact selected-readout differential.

This note does not declare `(10)` proved.  It identifies the proof mechanism
that would prove it and the precise inequality to attack next:

```math
2^j[\Pi_{j-1\to j}^{fresh}]_+
\le
C\nu2^{2j}E_j
+\text{return/reset/legal}
\tag{13}
```

on stopped fresh crossing intervals.  That is the place where the global proof
has to turn the physical statement "fresh high-ratio birth is upward frequency
crossing, and upward crossing cannot be free" into a theorem.
