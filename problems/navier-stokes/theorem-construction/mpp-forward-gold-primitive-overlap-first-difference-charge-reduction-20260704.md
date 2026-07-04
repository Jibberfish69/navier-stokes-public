---
theorem_id: forward-gold-primitive-overlap-first-difference-charge-reduction-20260704
status: strict-reduction-not-overlap-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive event address custody
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveAddressCellOverlapBoundaryCharge.A
  - PrimitiveStoppedCommonSelectorCellOverlapFirstDifferenceCharge.A
role: >-
  Reduces the primitive address-cell overlap boundary charge to a pre-map
  first-difference theorem on normalized stopped common-selector address cells.
  Once candidate cells carry ordered physical coordinates
  selector/chamber-owner, chart/projector, detector/channel, and face/polarity,
  any nonidentical overlap has a first coordinate where the two same-event
  address claims differ. Charging that first difference pays the losing overlap
  without using the post-map address-change theorem.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-priority-overlap-boundary-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-stopped-chamber-selector-normalization-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-change-variation-charge-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-address-cell-coverage-chamber-lift-reduction-20260704.md
completion_truth: >-
  This note does not prove PrimitiveAddressCellOverlapBoundaryCharge.A. It proves
  a strict reduction: the overlap charge follows from a pre-map first-difference
  charge theorem on normalized stopped common-selector candidate cells. The
  remaining open physical input is to prove that first coordinate disagreement
  on an overlap is a real paid selector/chamber, chart/projector,
  detector/channel, or face/polarity boundary before selected readout.
---

# Primitive overlap first-difference charge reduction

## 1. Physical overlap after selector normalization

After selector normalization, a candidate address cell has the form

\[
E_a,
\qquad
a=(\mathfrak R_a,\mathfrak X_a,\mathfrak D_a,\mathfrak F_a),
\tag{OFD.1}
\]

where \(\mathfrak R_a\) is the stopped common-selector chamber owner,
\(\mathfrak X_a\) is the chart/projector coordinate,
\(\mathfrak D_a\) is the detector/channel readout, and \(\mathfrak F_a\) is the
face/polarity coordinate.

Now take one primitive event \(z\in E_a\cap E_b\). This is still one event of
one same-fluid packet. The proof is not allowed to count it twice because two
candidate labels contain it. If \(a=b\), the two labels are one physical address
on the overlap. If \(a\ne b\), then one of the four physical coordinates has
changed while following the same packet before readout.

## 2. First-difference theorem

The smaller pre-map input is:

\[
\texttt{PrimitiveStoppedCommonSelectorCellOverlapFirstDifferenceCharge.A}.
\tag{OFD.2}
\]

For every overlap of two normalized candidate cells, define the first differing
coordinate in the fixed physical order

\[
\mathfrak R \prec \mathfrak X \prec \mathfrak D \prec \mathfrak F .
\tag{OFD.3}
\]

The theorem says that the overlap portion where this first difference occurs is
paid before selected readout by the corresponding physical boundary:

\[
\begin{array}{ll}
\mathfrak R_a\ne\mathfrak R_b &: \text{stopped chamber owner tie, first exit, or selector drift},\\
\mathfrak X_a\ne\mathfrak X_b &: \text{chart/projector transfer or frame-change payment},\\
\mathfrak D_a\ne\mathfrak D_b &: \text{detector/channel rotation, silence, or readout-change payment},\\
\mathfrak F_a\ne\mathfrak F_b &: \text{face detachment, local thickness loss, polarity return, or exit}.
\end{array}
\tag{OFD.4}
\]

The order is not arbitrary bookkeeping. It prevents double charging: once the
first physical disagreement is paid, later coordinate differences on the same
overlap are subordinate to a boundary that has already removed the competing
claim.

## 3. Strict reduction

Assume `(OFD.2)'. Partition each overlap \(E_a\cap E_b\) into the sets where
the first differing coordinate is \(\mathfrak R,\mathfrak X,\mathfrak D\), or
\(\mathfrak F\). On the equal-label part \(a=b\), no overlap payment is needed
because the two labels name the same physical address.

On the unequal-label part, `(OFD.2)' gives the corresponding boundary payment.
Summing these four first-difference pieces yields

\[
d\mu_{\kappa,S}(E_a\cap E_b\cap\{b\prec a\})
\le
dB^{sel}_{ab}
+dB^{chart}_{ab}
+dB^{chan}_{ab}
+dB^{face}_{ab}
+dLegal+dStop+dExit .
\tag{OFD.5}
\]

This is exactly the overlap-boundary estimate required by
`PrimitiveAddressCellOverlapBoundaryCharge.A`. Therefore

\[
\texttt{PrimitiveStoppedCommonSelectorCellOverlapFirstDifferenceCharge.A}
\Longrightarrow
\texttt{PrimitiveAddressCellOverlapBoundaryCharge.A}.
\tag{OFD.6}
\]

The proof is pre-map. It uses only candidate cell overlaps and their normalized
physical labels. It does not use `PrimitiveChannelAddressChangeVariationCharge.A`,
which remains post-map support.

## 4. Checked obstruction avoided

The circular route would try to prove an overlap boundary by saying that address
changes have finite variation. That is not available here because the event map
does not yet exist. Address-change variation is the later reading of a selected
address history.

The first-difference theorem avoids that circle. It asks only: before the map is
built, when two candidate cells claim one primitive event, what is the first
same-packet physical coordinate at which the two claims disagree, and where is
that disagreement paid?

## 5. Current proof truth

This is a strict reduction, not closure. The event-map branch is now:

\[
\begin{aligned}
&\texttt{PrimitiveEventStoppedCommonSelectorChamberAdmissionOrPaidEscape.A}\\
&+\texttt{PrimitiveStoppedChamberNonselectorCoordinateLift.A}\\
&+\texttt{PrimitiveStoppedCommonSelectorCellOverlapFirstDifferenceCharge.A}
\end{aligned}
\Longrightarrow
\texttt{PrimitiveChannelEventAddressMap.A}.
\tag{OFD.7}
\]

The remaining physical work is to prove that first disagreement of two
candidate stopped common-selector address cells is a real same-packet boundary
paid before readout, not a later label conflict hidden by the formal priority
choice.
