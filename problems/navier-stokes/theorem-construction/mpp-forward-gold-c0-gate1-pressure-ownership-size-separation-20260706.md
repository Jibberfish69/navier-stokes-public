---
theorem_id: forward-gold-c0-gate1-pressure-ownership-size-separation-20260706
status: failed-ownership-alone-does-not-prove-pressure-collar-tightness
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 pressure ownership versus size
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - SameCarrierPressureCollarOwnershipOrTightness.A
  - OwnedPressureCollarSublinearRouteMeasure.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/spine.md
proved_inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-material-cutoff-flux-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-collar-tightness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-flux-tightness-countermodel-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-source-law-verdict-20260706.md
completion_truth: >-
  Gate 1 strict reduction. This does not install or refute
  NormalizedRelayBillCompactnessRecordPassage.A. It proves that same-carrier
  ownership of the pressure collar is only an address/admission statement and
  does not imply the sublinear collar route-measure bound needed for tightness.
  A pressure route measure can remain owned by the same parent while having
  collar mass of order R, so the factor |grad phi_R|~1/R leaves an order-one
  boundary contribution. Therefore SameCarrierPressureCollarOwnershipOrTightness.A
  reduces, on the non-route-out branch, to a quantitative theorem:
  OwnedPressureCollarSublinearRouteMeasure.A. The first exact failed gate
  remains Gate 1; the smallest current pressure theorem is that owned retained
  pressure collar flux has sublinear route measure, is absorbed by B, or is a
  legal/collar/Pack-Part route-out.
---

# Gate 1 pressure ownership-size separation

## 1. Physical object

The pressure collar is still part of the same Navier-Stokes field. It is not an
external force and not a second fluid. Its source is the same incompressible
velocity history, and its carrier is the same material packet whenever the
packet address is retained.

That fact is source ownership. The Gate 1 compactness estimate needs more: it
needs the amount of owned pressure flux crossing the large material collar to be
small enough that the cutoff gradient kills it.

So the physical distinction is:

```math
\text{same-carrier ownership}
\quad\neq\quad
\text{sublinear collar size}.
\tag{POS.1}
```

Ownership tells us whose pressure flux it is. Tightness tells us how much of it
can keep crossing farther collars.

## 2. What the previous reductions require

After material transport of the cutoff and large-window removal of the viscous
collar, the pressure term is

```math
\mathcal C^{press}_{N,h,R}(W)
=
\int_W
\left|
2\sum_{k=0}^{N}\lambda_k
\int\phi_R\nabla\phi_R\cdot\Pi^{press}_{k,h}\,dx
\right|dt .
\tag{POS.2}
```

Since \(|\nabla\phi_R|\lesssim R^{-1}\), this term is controlled by the collar
route measure

```math
\mu^{press}_{N,h,W}(\operatorname{collar}(R))
:=
\int_W
\int_{\operatorname{collar}(R)}
\sum_{k=0}^{N}\lambda_k|\Pi^{press}_{k,h}|\,dx\,dt .
\tag{POS.3}
```

The needed size condition is

```math
{1\over R}
\mu^{press}_{N,h,W}(\operatorname{collar}(R))
\longrightarrow 0
\tag{POS.4}
```

or the corresponding absorbed estimate with \(C\,B(W)\). Same-carrier ownership
does not contain `(POS.4)`.

## 3. Owned collar sequence

The source-level countermodel is an owned route measure. Choose \(R_m\to\infty\)
and annuli \(A_m=\operatorname{collar}(R_m)\). Assign every annular pressure
flux atom the same retained parent address and normalize

```math
\mu^{press}_{m}(A_m)\simeq R_m .
\tag{POS.5}
```

Then ownership is perfect: all flux atoms are attached to the same pressure
carrier and the same selected material packet. But the collar contribution is
not small:

```math
{1\over R_m}\mu^{press}_m(A_m)\simeq 1 .
\tag{POS.6}
```

This model also leaves the current bill unchanged:

```math
dE^{Field}=0,\qquad dA_{4B}=0,\qquad dVisc=0,
\tag{POS.7}
```

because it is testing only the logical implication from ownership to collar
size. It is not a Navier-Stokes solution. It is the admissible proof-shape
showing that address information alone cannot yield the compactness estimate.

## 4. Why route-out does not follow from ownership alone

A nonzero pressure collar flux can be handled in three lawful ways:

1. tightness: `(POS.4)' holds;
2. absorption: the collar mass is bounded by \(o_R(1)+C\,B(W)\);
3. route-out: the flux is legal/collar/Pack-Part loss rather than retained
   relay record.

Same-carrier ownership proves none of these by itself. An owned collar sequence
can remain addressed to the same packet, fail sublinear size, and still not have
been classified as legal/collar/Pack-Part route-out. That is exactly the gap
between source address and proof payment.

The spine makes the same distinction in the current Gold reduction: primitive
same-packet ownership and raw same-carrier words are support until the carrier
is selected from the recombined full packet before positive-part extraction and
the same parent-known event carries a finite charge/payment key.

## 5. Smaller Gate 1 theorem

The pressure gate therefore reduces to the quantitative owned route-measure
theorem:

```math
\texttt{OwnedPressureCollarSublinearRouteMeasure.A}.
\tag{POS.8}
```

For every retained same-fluid relay sequence with \(R(W_j)=1\) and
\(B(W_j)\to0\), after legal packet symmetries, material-time recentering, and
large same-carrier cutoff selection, every pressure collar route measure that
is still owned by the retained packet and not already legal/collar/Pack-Part
route-out satisfies

```math
\lim_{R\to\infty}\limsup_j
{1\over R}
\mu^{press}_{N,h_j,W_j}(\operatorname{collar}(R))
=0,
\tag{POS.9}
```

or the absorbed version

```math
\limsup_j
{1\over R}
\mu^{press}_{N,h_j,W_j}(\operatorname{collar}(R))
\le o_R(1)+C\,B(W_j).
\tag{POS.10}
```

Together with the prior material-cutoff and viscous-collar reductions,
`(POS.8)' proves the pressure part of `RetainedRelayFluxCutoffClosure.A`.

## 6. Consequence for the active c_0 goal

This is still Gate 1, not the whole epsilon extraction. The current proof has
now separated the first failed gate into two layers:

```math
\text{source ownership/admission}
\quad+\quad
\text{sublinear owned collar size or route-out}.
\tag{POS.11}
```

The first layer is not enough. The active smallest pressure theorem is the
second layer, `(POS.8)`. Until that size/absorption/route-out theorem is proved,
`B(W_j)\to0` does not give the compact retained limit required by
`NormalizedRelayBillCompactnessRecordPassage.A`.
