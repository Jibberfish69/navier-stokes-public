---
theorem_id: forward-gold-c0-bill-matrix-early-branch-contraction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / Gate2 / bill-coercive matrix contraction
status: strict-reduction-not-proof-early-sub-heat-lag-row-is-the-unpaid-matrix-face
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
  corrected_terms:
    - incompressible
    - viscous
    - dissipative
    - pressure-constrained
    - irreversible
target_object:
  - BillCoerciveRecordAdmittedStorageMatrix.A
  - RecordAdmittedActiveCriticalFullExchangeStorageMatrix.A
  - RecordAdmittedSubHeatLagEarlyBranchStorage.A
  - ParentWeightedSelectedFirstAdmissionPulseMeasure.A
  - WLF.60
  - ODP.91
  - ParentOwnedPositiveRecordBillCurrency.A
  - NormalizedRelayBillCompactnessRecordPassage.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-bill-coercive-storage-matrix-criterion-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-original-ledger-generator-storage-source-verdict-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-storage-matrix-early-branch-obstruction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-exchange-no-self-feeding-physical-lyapunov-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-known-active-state-capacity-half-tail-pressure-test-20260704.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Strict reduction only. The c_0 bill-coercive matrix criterion already proves
  absorption once the record-admitted active-critical/full-exchange/active-transit
  matrix has feedback spectral radius below one and residual charged in
  B=dE_Field+dA_4B+dVisc. The checked coupled-storage and no-self-feeding
  pressure tests show that the retained heat-lag part of full exchange has real
  Stokes smallness after zero modes and paid exits, while the early sub-heat-lag
  trace/source part has no independent dissipative smallness. The current
  source loop pays that early part by preallocated critical-source storage and
  then recovers the critical source from full exchange/finite excess, leaving a
  unit-spectral-radius feedback loop. Therefore, inside the checked TFE/c_0
  decomposition, the nonduplicate remaining producer is the record-admitted
  early sub-heat-lag storage row, equivalently WLF.60 / ODP.91 parent-weighted
  first-admission pulse measure on the order-locked full-packet selected carrier,
  with same-packet overlap and selected-overrun tail paid before readout. This
  note does not prove that row, the bill-coercive matrix, FullTower retention,
  c_0, or MPP closure.
---

# Bill matrix contraction to the early sub-heat-lag row

## 1. Same object

The object is one retained parent packet of the same incompressible viscous
Navier-Stokes history before future positive readout. The record-admitted
parent faces are

\[
X_P=
\begin{pmatrix}
dZ_P^{crit}\\
d\Xi_P^{FE,act}\\
dA_P^{AT}
\end{pmatrix}.
\tag{BME.1}
\]

The c0 matrix criterion already proves the conditional part: if

\[
X_P
\le
-dM_P
+K_PX_P
+C_B{\bf 1}\,dB_P
+dLegal_P+dStop_P,
\qquad
\rho(K_P)<1,
\tag{BME.2}
\]

and the selected positive record is read from those admitted faces, then
`ParentOwnedPositiveRecordBillCurrency.A` follows, hence the normalized relay
passage and the strict c0 modulus follow in the retained window.

So this note does not try to reprove absorption. It identifies which row must
make `(BME.2)' subcritical in the current Navier-Stokes source decomposition.

## 2. Full exchange splits into retained heat-lag and early trace/source

The checked full-exchange pressure test says the raw pressure-Hodge atom
coupling and retained opposite-lobe reserve are already installed before
critical weighting. The selected full-exchange surplus is the same parent
pressure pair after the critical meter has priced the two lobes unequally.

The coupled-storage obstruction note splits that active full-exchange row as

\[
d\Xi_P^{FE,act}
=d\Xi_P^{ret,L}+d\Xi_P^{early}+dPaid_P+dLegal_P+dStop_P .
\tag{BME.3}
\]

The retained heat-lag part has a genuine Stokes gap after zero modes and paid
exits are removed:

\[
d\Xi_P^{ret,L}
\le
-dM_P^{ret}
+\vartheta_N d\Omega_P^{gen}
+C_BdB_P+dPaid_P+dLegal_P+dStop_P,
\qquad
C_N\vartheta_N<1 .
\tag{BME.4}
\]

This is real Navier-Stokes smallness: the retained piece lived long enough at
the active scale for viscosity to spend heat.

The early part is different. It is supported where

\[
\nu\tau_Q|\xi_Q|^2<L_N,
\tag{BME.5}
\]

so the Stokes heat-lag contraction has not yet acted. The current source route
only admits it into critical-source material:

\[
d\Xi_P^{early}
\le
C_Nd\rho_{crit,P}^{ac}
+C_Nd\rho_{crit,P}^{entry}
+C_BdB_P+dPaid_P+dLegal_P+dStop_P .
\tag{BME.6}
\]

Turning `(BME.6)' into storage by spending preallocated critical-source storage
is exactly the self-financing loop: critical source pays full exchange, full
exchange/finite excess pays critical source.

## 3. The reduced early-row theorem

The nonduplicate row needed to make the matrix proof noncircular is:

\[
\texttt{RecordAdmittedSubHeatLagEarlyBranchStorage.A}.
\tag{BME.7}
\]

In the same packet and before record readout, prove

\[
d\Xi_P^{early}
\le
-dM_P^{early,0}
+\vartheta_0d\Omega_P^{gen}
+C_BdB_P+dPaid_P+dLegal_P+dStop_P,
\qquad
C_N(\vartheta_N+\vartheta_0)<1,
\tag{BME.8}
\]

where \(M_P^{early,0}\) is built from original history before critical-source
finite excess or full-exchange storage is used.

The checked WLF.60 pressure test gives the same row in heat-lag coordinates:

\[
\mu_P^{pw}(P)
\le
C_N(u_0)\mathcal R(P)
+\theta\,Visc_{P,N}
+Paid_P,
\qquad 0<\theta<1,
\tag{BME.9}
\]

on the order-locked full-packet selected carrier. The lower fresh source and
upper selected positive queue must be read from the recombined full packet
before positive-part extraction, the same-packet order-lock overlap must be
paid, and the selected overrun must have same-carrier tail uniform
integrability / nested-core tightness.

In the older ODP route-measure language this is the active same-parent
Carleson row:

\[
(ODP.91)\Longrightarrow WLF.60,
\tag{BME.10}
\]

with the unpaid producer reduced to the projected original-history reserve
Carleson line and then to the persistent affine quotient on the same carrier.

## 4. Proof of the contraction

Assume `(BME.8)' in addition to the already checked retained heat-lag estimate
`(BME.4)' and the source-side admission/projection rows. Substituting `(BME.4)'
and `(BME.8)' into `(BME.3)' gives

\[
d\Xi_P^{FE,act}
\le
-d(M_P^{ret}+M_P^{early,0})
+(\vartheta_N+\vartheta_0)d\Omega_P^{gen}
+C_BdB_P+dPaid_P+dLegal_P+dStop_P,
\tag{BME.11}
\]

with \(C_N(\vartheta_N+\vartheta_0)<1\). The critical-source and active-transit
faces are already known from the checked TFE decomposition to be coordinate
faces of the same record-admitted parent matrix once this full-exchange row is
not paid by their own finite-excess output.

Thus the c0 matrix has the form `(BME.2)' with a subunit full-exchange feedback
row. Pairing with the Perron-Frobenius vector from the bill-coercive matrix
criterion absorbs \(K_PX_P\) and yields the bill estimate

\[
R(W)
\le
C_{\eta,N}\int_W(dE^{Field}_{N,h}+dA_{4B,N}+dVisc_{N,h}).
\tag{BME.12}
\]

Therefore:

\[
\begin{array}{c}
\texttt{RecordAdmittedSubHeatLagEarlyBranchStorage.A}\\
+\text{retained heat-lag Stokes smallness}\\
+\text{same-edge record admission/chart license}
\end{array}
\Longrightarrow
\texttt{BillCoerciveRecordAdmittedStorageMatrix.A}.
\tag{BME.13}
\]

Then the already proved matrix criterion gives:

\[
\texttt{BillCoerciveRecordAdmittedStorageMatrix.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}
\Longrightarrow
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}.
\tag{BME.14}
\]

## 5. Why this is the current nonduplicate producer

The original-ledger source verdict gives the algebraic warning. The allowed
signed exchange, finite menu, finite-readout closedness, and Field coherence
still permit the cyclic pattern in which critical entry, active full exchange,
and active transit pay one another with spectral radius one.

The retained heat-lag estimate cannot break that cycle because it only controls
the part of full exchange that lived long enough for Stokes dissipation to act.
The unit loop survives in the early trace/source branch. Paying that branch by
critical-source finite excess repeats the same cycle. Therefore the current
TFE/c0 decomposition has only two noncircular exits:

\[
\begin{array}{ll}
\text{direct matrix exit:}
  & \text{prove } \rho(K_P)<1 \text{ for the full record-admitted matrix},\\[1mm]
\text{independent-face exit:}
  & \text{prove }(BME.8)\text{, equivalently }WLF.60/ODP.91
    \text{ on the same carrier.}
\end{array}
\tag{BME.15}
\]

The independent-face exit is smaller than the full matrix because it leaves the
retained heat-lag contraction, exact pressure-Hodge atom attachment,
finite-menu admission, and Perron-Frobenius absorption as already checked
support. It attacks only the early sub-heat-lag source that lacks an
independent payer.

## 6. State

This is a strict reduction, not a proof of c0. The active proof burden is now:
construct the record-admitted early sub-heat-lag storage row from the original
same-fluid Navier-Stokes history, or prove the whole record-admitted matrix
directly with spectral radius below one. In WLF/ODP terms, the sharper
independent-face row is parent-weighted first-admission pulse measure
finiteness on the order-locked full-packet selected carrier, with same-packet
overlap and selected-overrun tail paid before child positive readout.
