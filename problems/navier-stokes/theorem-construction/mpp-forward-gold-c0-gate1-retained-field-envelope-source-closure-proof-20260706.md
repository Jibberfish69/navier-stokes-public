---
theorem_id: forward-gold-c0-gate1-retained-field-envelope-source-closure-proof-20260706
status: proved-gate1-retained-pressure-source-envelope-closure
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 retained pressure source closure
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - RetainedFieldEnvelopeExhaustsPressureIncrementSource.A
  - RetainedRelayFluxCutoffClosure.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-increment-flux-absorption-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-increment-tail-dyadic-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-remote-pressure-tail-dichotomy-direct-attempt-20260706.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Gate 1 closure step. This proves
  RetainedFieldEnvelopeExhaustsPressureIncrementSource.A from the terminal Part
  reading in the shared participation/tower law. Remote pressure-increment
  sources inside the legal retained Field exhaustion are absorbed by Field and
  viscous bills by the previous dyadic-tail estimate. A remote source outside
  that exhaustion that still contributes nontrivially to the selected pressure
  increment is not a retained relay source: the pressure-viscosity carrier is
  then not retained with the terminal tower/readout control needed by the
  witness, which is terminal Part route-out; if the defect is localized or
  spatially varying after neighboring blocks are included, it is Field route-out.
  Therefore the pressure tail branch of TC.31a is closed for retained same-fluid
  relay windows. Together with the material-cutoff, viscous-collar,
  pressure-increment absorption, dyadic tail, and remote-tail dichotomy notes,
  this installs RetainedRelayFluxCutoffClosure.A. It does not close c_0:
  Gate 2 positive-record retention remains open.
---

# Gate 1 retained pressure-source envelope closure

## 1. Target

The remaining Gate 1 theorem was:

```math
\texttt{RetainedFieldEnvelopeExhaustsPressureIncrementSource.A}.
\tag{RFE.1}
```

It says that every remote tower-difference source contributing through the
elliptic pressure kernel to the selected pressure increment is either inside a
legal retained Field exhaustion, or it is not a retained relay source.

This is exactly the last outside-envelope branch left by the remote pressure
tail dichotomy.

## 2. Source facts

The shared participation/tower law gives two readings of `Part`.

The weak carrier reading is:

```math
\mathrm{Part}^{carrier}_{N,Q}
\quad\text{means the one-point tower law remains the common pressure-viscosity carrier law.}
\tag{RFE.2}
```

The terminal reading is stronger:

```math
\mathrm{Part}^{terminal}_{N,Q}
\quad\text{means that carrier law is retained with the terminal tower/readout control needed by the CM witness.}
\tag{RFE.3}
```

The same source also states the Field custody rule:

```math
\text{a localized or spatially varying participation defect breaks Field once neighboring blocks are included.}
\tag{RFE.4}
```

These two statements are enough for the outside-envelope branch. The pressure
increment in TC.20 is part of the pressure-viscosity carrier \(K_k\). If a
remote source is needed to determine the selected pressure increment, that
source is part of the terminal readout control needed by the witness.

## 3. Proof

Let \(W_j\) be a retained same-fluid relay window with \(R(W_j)=1\) and
\(B(W_j)\to0\). By the pressure-increment absorption and dyadic-tail notes,
the only pressure flux not already absorbed locally has the form

```math
\mathrm{Tail}^{press}_{j}
\le
C_N
\sum_{\ell\ge0}
(2^\ell L_j)^{-3}
\mathcal M_{N,h_j}(A_{\ell,j}),
\tag{RFE.5}
```

where each \(\mathcal M_{N,h_j}(A_{\ell,j})\) is ordinary-rung mass times
remote tower-difference mass on the annulus \(A_{\ell,j}\).

Let \(\Omega_M\) be the legal retained Field envelope enlarged to include all
annuli with \(2^\ell L_j\le M\). The remote-tail dichotomy proved the
inside-envelope absorption:

```math
|\mathrm{Tail}^{press}_{\le M}|
\le
\eta\,dVisc_{N,h_j}(\Omega_M)
+C_{\eta,N,A_N}\,dE^{Field}_{N,h_j}(\Omega_M).
\tag{RFE.6}
```

Since \(B(W_j)\to0\) on retained windows, the inside-envelope contribution
vanishes under legal exhaustion.

It remains to handle a nonzero limsup from sources outside every retained
Field envelope. Such a source has two possibilities.

First, the remote tower-difference source is localized or spatially varying
relative to the retained comparison component. Once the neighboring blocks are
included, `(RFE.4)' says this is Field-visible. If it is not included, then the
chosen envelope was not a retained Field envelope for the selected pressure
read. If it is included, it is absorbed by `(RFE.6)'. Thus this case cannot be
a retained, unbilled pressure source.

Second, the source is not Field-visible because it is common-mode across the
whole retained comparison component. Then it is not a localized remote
tower-difference tail inside the selected envelope. If it still contributes
nontrivially to the selected pressure increment from outside the envelope, the
pressure-viscosity carrier is not retained with the terminal tower/readout
control needed by the witness. By `(RFE.3)' this is failure of
\(\mathrm{Part}^{terminal}_{N,Q}\), hence route-out rather than retained relay
record.

Therefore every nonzero outside-envelope pressure-increment source is one of:

```math
\begin{array}{ll}
\text{Field-visible after neighboring inclusion,} & \text{hence absorbed or Field route-out},\\[1mm]
\text{not terminally retained in the pressure-viscosity readout,} & \text{hence terminal Part route-out},\\[1mm]
\text{legal/stopped/collar material,} & \text{hence not a retained relay source}.
\end{array}
\tag{RFE.7}
```

This proves `(RFE.1)'.

## 4. Gate 1 assembly

The Gate 1 chain is now:

```math
\begin{gathered}
\texttt{material cutoff transport}
+\texttt{viscous collar large-window reduction}
+\texttt{pressure-increment local absorption}\\
+\texttt{dyadic pressure-tail estimate}
+\texttt{RetainedFieldEnvelopeExhaustsPressureIncrementSource.A}\\
\Longrightarrow
\texttt{RetainedRelayFluxCutoffClosure.A}.
\end{gathered}
\tag{RFE.8}
```

Thus the localized Field flux/cutoff closure needed for TC.31/TC.31a is
installed on retained same-fluid relay windows.

## 5. Consequence for the active c_0 goal

This closes Gate 1 only. It does not install
`NormalizedRelayBillCompactnessRecordPassage.A`.

The first remaining failed gate is now Gate 2: full-tower positive-record
retention for \(dR_N^+\), i.e. proving that four-body zero really removes the
selected positive record channel rather than only signed adjacent exchange.
