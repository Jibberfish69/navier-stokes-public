---
theorem_id: forward-gold-record-face-radon-nikodym-tightness-reduction-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / record-admitted compactness
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object: RecordAdmittedFullExchangeCriticalCompactness.A
role: >
  Reduces record-admitted face persistence to uniform Radon--Nikodym tightness
  of the positive record face inside the admitted full-exchange carrier, plus
  closedness of the signed polarity cone under the same-edge no-detachment
  topology.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admitted-critical-no-arbitrage-compactness-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-same-edge-closed-graph-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-admission-no-detachment-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-edge-no-detachment-producer-topology-synthesis-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
completion_truth: >-
  This note does not prove RecordAdmittedFullExchangeCriticalCompactness.A or
  Navier-Stokes smoothness. It proves a strict reduction and gives a concrete
  obstruction: freestanding carrier compactness and component zero-cost rigidity
  do not preserve the admitted signed record face unless the positive record
  face is uniformly absolutely continuous/tight inside the same admitted carrier.
---

# Record-face Radon--Nikodym tightness reduction

## 1. The physical object

After selector address, chart license, and selected-critical payment have been
separated, the compactness question still concerns one same physical edge:

\[
e=(\text{high packet},\text{low pressure/strain/current coefficient},
\text{material window},\text{signed polarity}).
\tag{RFN.1}
\]

The face-persistence part of the no-detachment package asks whether the
positive signed-height record work of that edge remains inside the same
root/full-exchange carrier after a normalized limit:

\[
dW_{e,n}^{+}
\ll
d\Xi_{e,n}^{rec}
\quad\Longrightarrow\quad
dW_{e,\infty}^{+}
\ll
d\Xi_{e,\infty}^{rec},
\tag{RFN.2}
\]

with the same positive polarity and the same record edge.

This is stronger than weak compactness of the carrier.  The carrier can survive
as a measure while the record face becomes a singular trace, loses polarity, or
leaves the admitted face.

## 2. The obstruction to ordinary compactness

Carrier compactness alone allows the following proof-theoretic model.  On
\([0,1]\), set

\[
d\Xi_n=dx,
\qquad
dW_n^{+}=n\,1_{[0,1/n]}(x)\,dx.
\tag{RFN.3}
\]

Then for every \(n\),

\[
dW_n^{+}\ll d\Xi_n,
\qquad
\int dW_n^{+}=1,
\qquad
\int d\Xi_n=1.
\tag{RFN.4}
\]

But

\[
d\Xi_n\rightharpoonup dx,
\qquad
dW_n^{+}\rightharpoonup \delta_0.
\tag{RFN.5}
\]

The limiting record face is singular with respect to the limiting carrier.
Thus the prelimit statement "the record work is carried by \(d\Xi_n\)" is not
closed under weak convergence.

This is not a Navier-Stokes counterexample.  It is the exact compactness
obstruction: a thin record can concentrate on vanishing carrier thickness unless
the proof supplies a uniform face-density or no-atom/no-Zeno law inside the
admitted carrier.

## 3. The missing compactness input

The useful record-admitted compactness theorem therefore needs a separate
uniform-integrability row.

For the same edge \(e_n\), after legal, stop, paid service, and exit pieces have
been removed, require:

\[
\forall \varepsilon>0\ \exists\delta>0:
\quad
\int_A d\Xi_{e,n}^{rec}<\delta
\Longrightarrow
\int_A dW_{e,n}^{+}<\varepsilon
\quad\text{uniformly in }n.
\tag{RFN.6}
\]

Equivalently, require a de la Vallee-Poussin density control

\[
dW_{e,n}^{+}=g_{e,n}\,d\Xi_{e,n}^{rec},
\qquad
\sup_n\int \Phi(g_{e,n})\,d\Xi_{e,n}^{rec}<\infty
\tag{RFN.7}
\]

for some superlinear \(\Phi\), or an equivalent Hardy/time-thickness no-atom
condition in the same admitted carrier.

The signed polarity must also be closed in the same limit.  After negative
return, legal, stop, and service-paid pieces are removed, the positive face must
remain a nonnegative marked face of the limiting signed record work:

\[
g_{e,n}\ge0,\quad e_n\to e_\infty
\quad\Longrightarrow\quad
g_{e,\infty}\ge0
\text{ on the same admitted face.}
\tag{RFN.8}
\]

The no-detachment topology supplies the same edge.  The Radon--Nikodym
tightness supplies the fact that the record work has not escaped into a
singular face.  The polarity closedness supplies the fact that the positive
record has not become cancellation bookkeeping.

## 4. Conditional proof

Assume:

1. the same-edge no-detachment modulus holds for selector, chart, angle/service,
   and face address;
2. the freestanding full-exchange/root carrier compactness holds;
3. `(RFN.6)' or `(RFN.7)' holds for the positive record face inside the admitted
   carrier;
4. the positive polarity cone is closed as in `(RFN.8)'.

Then the measures \(dW_{e,n}^{+}\) are uniformly absolutely continuous with
respect to \(d\Xi_{e,n}^{rec}\).  Along the compactness subsequence, the pair

\[
\left(d\Xi_{e,n}^{rec},dW_{e,n}^{+}\right)
\tag{RFN.9}
\]

has a weak limit

\[
\left(d\Xi_{e,\infty}^{rec},dW_{e,\infty}^{+}\right),
\qquad
dW_{e,\infty}^{+}\ll d\Xi_{e,\infty}^{rec}.
\tag{RFN.10}
\]

The no-detachment modulus identifies \(e_\infty\) as the same record edge, and
polarity closedness identifies \(dW_{e,\infty}^{+}\) as the positive
signed-height face rather than an untyped carrier residue.  Therefore the
record-admission row survives the compactness limit:

\[
\left[\int_{I_{e,\infty}}\omega_{e,\infty}\right]_+
\le
C_N\int d\Xi_{e,\infty}^{rec}
+dLegal_\infty+dStop_\infty+dServ_\infty+dExit_\infty.
\tag{RFN.11}
\]

This proves the face-persistence part of
\(\texttt{RecordAdmittedFullExchangeCriticalCompactness.A}\) once the uniform
record-face density/thickness theorem is supplied.

## 5. Strict reduction

The lower compactness target becomes:

\[
\begin{aligned}
&\texttt{SameEdgeNoDetachmentModulus.A}\\
&+\text{freestanding full-exchange/root carrier compactness}\\
&+\texttt{RecordFaceUniformIntegrabilityInAdmittedCarrier.A}\\
&+\texttt{RecordPolarityConeClosedness.A}\\
&\Longrightarrow
\texttt{RecordAdmittedFullExchangeCriticalCompactness.A}.
\end{aligned}
\tag{RFN.12}
\]

The new producer is not a new physical channel.  It is the same record edge
expressed as a density/thickness law inside the same admitted carrier.  In the
current Gold roof this is naturally supplied by the no-Zeno/no-atom or Hardy
time-thickness part of the record-admitted scale-native depletion package.

## 6. Current truth state

Current sources prove or reduce:

\[
\text{carrier compactness support}
\quad+\quad
\text{component zero-cost rigidity support}
\quad+\quad
\text{same-edge no-detachment reduction}.
\tag{RFN.13}
\]

They do not prove `(RFN.6)', `(RFN.7)', or `(RFN.8)' for arbitrary original
Navier-Stokes data.

Thus ordinary compactness cannot be promoted to record-admitted compactness.
The remaining physical burden is to prove that the positive signed record face
has uniform thickness as a face of the same full-exchange carrier.  Without that
row, the proof may keep the carrier and lose the record.
