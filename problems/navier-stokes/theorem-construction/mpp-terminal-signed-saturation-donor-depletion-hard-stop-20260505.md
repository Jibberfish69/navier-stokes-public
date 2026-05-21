# TerminalSignedSaturation.A or donor-depletion hard stop

## Status

Hard-stop note for the signed-current source-wall branch.

Claimed status: failed under current installed inputs.

## Target

The redirected frontier asks for one of:

```math
TerminalSignedSaturation.A / SignedPositiveBalance.A,
```

or a donor-depletion reserve pricing legal internal donor sinks.

## Signed saturation attempt

`TerminalSignedSaturation.A` asks that every selected terminal positive source edge has its signed counter-edge either inside the usable same-fluid ledger or paid by a named legal ledger.

The direct attempt reduces this to the signed balance

```math
\int_{\mathcal F_N}(\mathfrak S^{active}_{N,loc})_+
\le
\int_{\mathcal F_N}(\mathfrak S^{active}_{N,loc})_-
+o_N(1)+Loss_{legal}.
```

Current inputs supply the bare dyadic skew current before one-sided weights, lifted commutators, and terminal selection.  After those operations, the selected positive edge can lose its counter-edge outside the usable terminal ledger.  The residue is a real active strain-alignment source.

Thus `TerminalSignedSaturation.A` remains open.

## No-free-sink attempt

`ParabolicNoFreeSink.A` asks that every source-current path feeding terminal positive divergence is boundary-fed, heat-action charged, legal-loss charged, or earlier-forbidden.

A legal internal donor sink gives the obstruction:

```math
J(A\to B)=F>0,
\qquad
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
```

The receiver has terminal positive divergence.  The donor is an internal negative sink.  First-current pruning acts on earlier positive arrivals, while the donor is negative.  Boundary and cutoff ledgers price genuine exits and localization losses.  A legal same-fluid donor inside the packet system needs a donor reserve.

Thus `ParabolicNoFreeSink.A` remains open.

## Donor-depletion attempt

The formal donor theorem is:

```math
TwoTowerDonorDepletion.A:
\quad
d\pi(P^-\to P)
\le C\,d\mathfrak d(P^-\to P)+d\ell(P^-\to P),
```

with tree summability

```math
\sum_{e\in\mathcal T}d\mathfrak d(e)
\le
C\mathcal R_{don}(root(\mathcal T))+C\sum_{e\in\mathcal T}d\ell(e).
```

`LocalDonorBalance.A` supplies finite refill-tree telescoping.  The remaining condition is `RefillTreeWellFounded.A`.  That condition returns to the same root alternatives:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoSourceResidueRigidity.A.
```

Raw energy, local energy, finite shell banding, and same-fluid transport do not produce the scale-normalized donor reserve.

## Conclusion

The signed-current gate now has a single common missing primitive:

```math
\boxed{TerminalSignedSaturation.A / SignedPositiveBalance.A,}
```

or an equivalent donor-depletion theorem strong enough to price legal internal donor sinks.

Current installed inputs reduce every branch to this same source-wall object.  A new theorem must either establish signed positive-source balance on selected terminal windows or supply a scale-normalized donor reserve for legal internal same-fluid donor sinks.

## 2026-05-06 update after ASAC and one-sided pair-weight charge

`mpp-terminal-weighted-no-free-sink-after-asac-20260506.md` sharpens the donor
side.  The active-alignment and one-sided pair-weight defects are now ASAC-paid:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

The internal donor sink branch reduces to:

```text
LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> TerminalWeightedNoFreeSink.A.
```

Thus the non-Zeno donor branch is no longer the hard stop.  The remaining
non-circular analytic atom is:

```text
ZenoSourceResidueRigidity.A
```

equivalently:

```text
ZenoBoundedClass.A + ZenoResidueLiouville.A.
```
