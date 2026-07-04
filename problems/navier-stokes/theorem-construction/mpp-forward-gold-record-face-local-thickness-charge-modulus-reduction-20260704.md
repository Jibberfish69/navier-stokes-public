---
theorem_id: forward-gold-record-face-local-thickness-charge-modulus-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / record-admitted compactness
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - RecordFaceUniformIntegrabilityInAdmittedCarrier.A
  - RecordPolarityConeClosedness.A
role: >
  Sharpens the record-face Radon--Nikodym tightness requirement into a local
  same-face thickness-or-charge modulus. It separates the global signed-height
  record-upcrossing criterion from the stronger local compactness row needed to
  keep every positive record subface inside the same admitted carrier.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-radon-nikodym-tightness-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-peak-control-proof-pass-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-net-work-terminal-anti-atom-reserve-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-anti-atom-signed-height-loop-boundary-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-admitted-scale-native-depletion-bridge-20260704.md
completion_truth: >-
  This note does not prove record-face uniform integrability, polarity
  closedness, or Navier-Stokes smoothness. It proves a strict reduction: the
  compactness row needs a local same-face thickness-or-charge modulus, not only
  the global record-upcrossing criterion and not only terminal anti-atom reserve
  language. It gives a checked obstruction showing that whole-record charge can
  coexist with singular concentration on an unpaid subface.
---

# Record-face local thickness-charge modulus reduction

## 1. Same physical face, local version

The record-face Radon--Nikodym reduction says that a compactness proof must
preserve the positive signed record face inside the same admitted
root/full-exchange carrier:

\[
dW_{e,n}^{+}\ll d\Xi_{e,n}^{rec}
\quad\text{uniformly enough to pass to the limit.}
\tag{LTC.1}
\]

The signed-height record-upcrossing criterion gives the global peak-control
shape: each high record upcrossing is either thick in \(H(t)^2dt\) or pays one
finite same-fluid charge.

Those are not the same statement.  Compactness needs a local face statement.
Every positive subface of the same record edge must either occupy enough
admitted carrier thickness or be paid before readout.

## 2. Local thickness-or-charge modulus

Let \(A\) be any measurable pre-readout subface of the retained positive record
edge \(e\), read in the same parent selector, chart, detector/service, and
root/full-exchange face.  The needed local modulus is:

\[
dW_e^{+}(A)
\le
\omega\!\left(d\Xi_e^{rec}(A)\right)
+d{\mathcal C}^{face}_e(A)
+dLegal_e(A)+dStop_e(A)+dExit_e(A),
\tag{LTC.2}
\]

where

\[
\omega(\delta)\to0 \quad\text{as}\quad \delta\downarrow0,
\tag{LTC.3}
\]

and \(d{\mathcal C}^{face}_e\) has a finite original-data budget over disjoint
record faces.

This is exactly the local version of thickness-or-charge:

- \(\omega(d\Xi)\) is thickness of the positive record subface in the admitted
  carrier;
- \(d{\mathcal C}^{face}\) is same-fluid payment by viscosity, pressure
  reorientation, transport/frame rotation, negative return, terminal anti-atom
  payment, legal, stop, exit, or a proved record-admitted storage bridge.

With `(LTC.2)', uniform integrability follows immediately.  Given
\(\varepsilon>0\), choose \(\delta\) so \(\omega(\delta)<\varepsilon\); after
paid/legal/stop/exit pieces are removed in the compactness failure sequence,
small carrier measure forces small positive record-face mass.

Thus:

\[
\begin{aligned}
&\texttt{SameEdgeNoDetachmentModulus.A}\\
&+\texttt{LocalRecordFaceThicknessOrChargeModulus.A}\\
&+\texttt{RecordPolaritySameFaceNoCancellation.A}\\
&\Longrightarrow
\texttt{RecordFaceUniformIntegrabilityInAdmittedCarrier.A}
+\texttt{RecordPolarityConeClosedness.A}.
\end{aligned}
\tag{LTC.4}
\]

Together with the previous Radon--Nikodym reduction, this supplies the
face-persistence row of
\(\texttt{RecordAdmittedFullExchangeCriticalCompactness.A}\).

## 3. Why the global record criterion is not enough

The global record-upcrossing criterion says a whole record interval pays
thickness or one unit of same-fluid charge.  It does not prevent the positive
record face from concentrating inside that interval.

The proof-theoretic model is:

\[
d\Xi_n=dx,\qquad
dW_n^{+}=n1_{[0,1/n]}(x)\,dx,
\qquad
d{\mathcal C}^{record}_n=\delta_{\{1/2\}}.
\tag{LTC.5}
\]

The whole record has one charge, so a global charge alternative can look
satisfied.  But on the subface \(A_n=[0,1/n]\),

\[
d\Xi_n(A_n)=1/n,\qquad
dW_n^{+}(A_n)=1,\qquad
d{\mathcal C}^{record}_n(A_n)=0.
\tag{LTC.6}
\]

Therefore the record face still converges to a singular atom against the
carrier.  Whole-record charge does not imply local face tightness.

This obstruction is physical: paying some terminal or record residue somewhere
in the record interval is not enough.  The payment must be attached to the same
positive subface that is trying to vanish in carrier thickness.

## 4. Anti-atom reserve as support unless localized

The terminal anti-atom route has the right physical vocabulary for zero-thickness
escape.  A terminal anti-atom is exactly what a positive record subface looks
like when it survives only as an unpaid endpoint residue.

But the installed boundary says that
\(\texttt{RecordTerminalAntiAtomReserve.A}\) is a terminal readout/support face
unless it is derived from the signed critical-height dynamics and supplies the
record-upcrossing thickness-or-charge criterion.

The sharper compactness use is even stricter:

\[
\texttt{RecordTerminalAntiAtomReserve.A}
\Longrightarrow
\texttt{LocalRecordFaceThicknessOrChargeModulus.A}
\tag{LTC.7}
\]

only if the reserve pays every positive record subface in the same admitted
carrier before readout.  A reserve for the whole terminal record, or for a
nearby endpoint carrier, remains support.

Thus terminal anti-atom language cannot replace the local face modulus.  It can
serve as one payment coordinate inside \(d{\mathcal C}^{face}\) after same-face
attachment is proved.

## 5. Polarity closedness

The positive record face also needs a sign statement.  In a limiting sequence,
the positive face can disappear into cancellation unless opposite signed
partners are retained or paid on the same face.

The needed local polarity row is:

\[
dW_e^{+}(A)
\le
dW_e^{signed,+}(A)
+d{\mathcal C}^{partner}_e(A)
+dLegal_e(A)+dStop_e(A)+dExit_e(A),
\tag{LTC.8}
\]

where \(d{\mathcal C}^{partner}\) pays signed-partner saturation, negative
return, endpoint jump, or material-record return.  This is the same physical
content as the anti-atom signed-partner language, but localized to the admitted
record face.

With `(LTC.8)' the limiting positive face is not cancellation bookkeeping.  It
is a positive marked face of the same signed record work, or the lost polarity
has already been paid.

## 6. Current truth state

Installed:

\[
\texttt{RecordUpcrossingThicknessOrChargeCriterion.A}
\Longrightarrow
\texttt{SignedCriticalHeightSignPersistenceOrPeakBound.A}
\tag{LTC.9}
\]

as a global scalar reduction, and terminal anti-atom reserve as a support
reading of unpaid aligned-current residue.

Not installed:

\[
\texttt{LocalRecordFaceThicknessOrChargeModulus.A}
\quad\text{or}\quad
\texttt{RecordPolaritySameFaceNoCancellation.A}
\tag{LTC.10}
\]

from arbitrary original Navier-Stokes data.

Therefore the physical wall has sharpened.  To pass record-admitted
compactness, the proof must show that any positive subface of the signed record
which tries to collapse in the admitted carrier either has same-carrier
thickness or pays a same-face charge.  A whole-record charge, a freestanding
terminal anti-atom reserve, or a nearby carrier payment does not close this row.
