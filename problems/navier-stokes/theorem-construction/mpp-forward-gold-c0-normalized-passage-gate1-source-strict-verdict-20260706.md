---
theorem_id: forward-gold-c0-normalized-passage-gate1-source-strict-verdict-20260706
status: failed-first-gate-localized-field-flux-cutoff-closure-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / NormalizedRelayBillCompactnessRecordPassage.A
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - Gate1.LocalizedFieldFluxCutoffClosure
  - TC.31
  - TC.31a
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Source-strict Gate 1 verdict for the edited objective. This does not install
  or refute NormalizedRelayBillCompactnessRecordPassage.A. The first proof gate
  fails at localized Field compactness: the allowed participation/coherence
  source states that the localized tower estimate uses a pressure/cutoff flux
  functional and is usable only with a legal flux/cutoff bound such as TC.31a,
  or an absorbable boundary/cutoff estimate on the same retained family. The
  bill B=dE_Field+dA_4B+dVisc does not include this flux channel. Therefore the
  proof cannot infer compactness of retained tower differences from B->0 under
  the current allowed sources. The smallest remaining theorem at the first gate
  is the legal/absorbable retained flux closure TC.31a for the selected retained
  relay windows.
---

# Source-strict Gate 1 verdict for normalized relay passage

## 1. Target

The edited objective asks for a proof or failure of

```math
\texttt{NormalizedRelayBillCompactnessRecordPassage.A}.
\tag{G1S.1}
```

In the notation of the direct proof pass, a retained relay sequence satisfies

```math
R(W_j)=1,
\qquad
B(W_j)\to0,
\qquad
B=dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h}.
\tag{G1S.2}
```

Gate 1 asks whether the Field and viscous pieces of \(B\) compactify the
neighboring tower differences on the retained windows.

## 2. Checked source fact

The participation/coherence source gives the localized tower-defect energy

```math
E_{N,h,\phi}(t)
=
\sum_{k=0}^{N}\lambda_k\int\phi^2|\delta_hU_k|^2\,dx.
\tag{G1S.3}
```

It then states the localized triangular estimate in the form

```math
\frac{d}{dt}E_{N,h,\phi}
+2\nu\sum_{k=0}^{N}\lambda_k
\int\phi^2|\nabla\delta_hU_k|^2
\le
C_{N,\phi}\int
\Big(|S|+\sum_{j=1}^{N}|U_j|\Big)
\sum_{k=0}^{N}\lambda_k|\delta_hU_k|^2
+\mathrm{Flux}_{N,h,\phi}.
\tag{G1S.4}
```

The same source immediately says the flux is part of the theorem data and that
the estimate is usable only with a legal flux/cutoff bound, for example

```math
\int_I|\mathrm{Flux}_{N,h,\phi}(t)|\,dt
\le
\mathrm{Legal}_{N,h,\phi}(I),
\tag{G1S.5}
```

or with an explicitly absorbable boundary/cutoff estimate on the same retained
family. It also says that, until `(G1S.4)' and a bound such as `(G1S.5)' are
proved, localized tower closure is a remaining theorem rather than a consequence
of the unlocalized identity.

## 3. Direct attempt

Integrate `(G1S.4)' on a retained window. The Field and viscous bill can drive
the interior tower-defect and viscous defect terms to zero only after the last
term is controlled:

```math
\int_{W_j}|\mathrm{Flux}_{N,h,\phi_j}|\,dt.
\tag{G1S.6}
```

But `(G1S.2)' does not contain `(G1S.6)'. The bill \(B\) contains Field,
four-body, and viscous payment. It does not contain the legal/cutoff flux
currency.

Therefore the source-allowed direct proof stops at this implication:

```math
B(W_j)\to0
\quad\not\Rightarrow_{\text{current sources}}\quad
E_{N,h,\phi_j}\ \text{is compact on }W_j.
\tag{G1S.7}
```

## 4. Physical meaning

The flux term is the possibility that the localized read sees a relay event
cross the boundary of the retained cutoff/collar. The center can see a record,
while the localized Field and viscous bills see no interior creation of tower
defect. Pressure acts as redistribution through the flux channel, exactly as
the source says.

This is not yet a Navier-Stokes counterexample to `(G1S.1)'. It is the first
failed proof gate under the allowed sources: the theorem may still be true, but
the current bill \(B\) cannot be used as compactness until flux/cutoff loss is
legal, absorbed, or ruled out on the same retained relay family.

## 5. Smallest remaining theorem at the first gate

The smallest remaining Gate 1 theorem is:

```math
\texttt{RetainedRelayFluxCutoffClosure.A}.
\tag{G1S.8}
```

Statement. For every selected retained same-fluid relay sequence with
`R(W_j)=1` and `B(W_j)\to0`, the localized tower flux term in `(G1S.4)' obeys
one of the following before compactness is invoked:

```math
\begin{array}{ll}
\text{legal:} & \int_{W_j}|\mathrm{Flux}_{N,h,\phi_j}|\le
\mathrm{Legal}_{N,h,\phi_j}(W_j),\\[1mm]
\text{absorbed:} & \int_{W_j}|\mathrm{Flux}_{N,h,\phi_j}|\le o(1)
+C\,B(W_j),\\[1mm]
\text{route-out:} & \limsup_j\int_{W_j}|\mathrm{Flux}_{N,h,\phi_j}|>0
\text{ is not a retained relay record.}
\end{array}
\tag{G1S.9}
```

The proof of this theorem would clear Gate 1. It would not by itself install
`NormalizedRelayBillCompactnessRecordPassage.A`; Gates 2--4 would still have to
pass. Under the edited objective, this is the first exact failed gate and the
first smallest theorem that must be supplied before the normalized compactness
proof can continue.
