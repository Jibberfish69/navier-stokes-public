---
theorem_id: forward-gold-c0-gate1-pressure-flux-tightness-countermodel-20260706
status: checked-pressure-collar-tightness-not-implied-by-current-bill
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 pressure collar
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - RetainedRelayFluxCutoffClosure.A
  - RetainedPressureFluxTightnessOrRouteOut.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/spine.md
proved_inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-normalized-passage-gate1-source-strict-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-material-cutoff-flux-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-collar-tightness-reduction-20260706.md
completion_truth: >-
  Gate 1 obstruction note. This does not refute Navier-Stokes and does not
  refute NormalizedRelayBillCompactnessRecordPassage.A. It proves the narrower
  proof-theoretic fact that RetainedPressureFluxTightnessOrRouteOut.A is not a
  consequence of material cutoff transport, large retained windows, finite
  finite-depth tower L2 mass, and the bill
  B=dE_Field+dA_4B+dVisc as currently defined. A collar-supported pressure-flux
  atom can keep the normalized pressure collar contribution O(1) while the
  interior Field, four-body, and viscous bills are zero in the model. Thus Gate 1
  still requires a genuine pressure statement: retained pressure collar flux is
  L1-tight, absorbed by B, or classified as legal/collar/Pack-Part route-out
  rather than retained relay record.
---

# Gate 1 pressure-flux tightness countermodel

## 1. Physical object

After the read window is transported with the same material carrier, the packet
is no longer crossing an artificial wall by advection. Viscosity can also be
made harmless by expanding the retained material window. The remaining Gate 1
question is pressure: can the nonlocal pressure redistribution carry a unit
relay record through the collar while the interior bills see no creation?

This note checks exactly that logical gap. It is not a Navier-Stokes
construction. It is the proof-model showing why the current currencies do not
imply pressure-collar tightness.

## 2. The surviving term

The previous reduction left the pressure collar

```math
\mathcal C^{press}_{N,h,R}(W)
=
\int_W
\left|
2\sum_{k=0}^{N}\lambda_k
\int\phi_R\nabla\phi_R\cdot\Pi^{press}_{k,h}\,dx
\right|dt .
\tag{PFC.1}
```

For same-carrier material cutoffs with \(|\nabla\phi_R|\le C/R\), large windows
prove this term small only after the collar pressure-flux density is tight:

```math
\lim_{R\to\infty}
\int_W
{1\over R}
\int_{\operatorname{collar}(R)}
\sum_{k=0}^{N}\lambda_k|\Pi^{press}_{k,h}|\,dx\,dt
=0 .
\tag{PFC.2}
```

The checked participation source treats pressure as redistribution plus flux
and records the flux/cutoff bound as theorem data. The bill

```math
B=dE^{Field}_{N,h}+dA_{4B,N}+dVisc_{N,h}
\tag{PFC.3}
```

does not contain the pressure-collar currency in `(PFC.1)`.

## 3. Collar atom model

Choose radii \(R_m\to\infty\). Let \(A_m\) be the collar annulus on which
\(|\nabla\phi_{R_m}|\simeq R_m^{-1}\). Put all pressure-flux density in this
collar, aligned with \(\nabla\phi_{R_m}\), and normalize it by

```math
\sum_{k=0}^{N}\lambda_k
\int_{A_m}|\Pi^{press}_{k,h_m}|\,dx
\simeq R_m .
\tag{PFC.4}
```

Then the pressure collar contribution stays order one:

```math
\mathcal C^{press}_{N,h_m,R_m}(W_m)
\simeq
{1\over R_m}
\sum_{k=0}^{N}\lambda_k
\int_{A_m}|\Pi^{press}_{k,h_m}|\,dx
\simeq 1 .
\tag{PFC.5}
```

At the same time, the model assigns no interior neighboring-tower defect, no
four-body positive record payment, and no viscous production:

```math
dE^{Field}_{N,h_m}(W_m)=0,
\qquad
dA_{4B,N}(W_m)=0,
\qquad
dVisc_{N,h_m}(W_m)=0 .
\tag{PFC.6}
```

So \(B(W_m)=0\) while the pressure collar remains nonzero.

## 4. Verdict

The collar atom is not an NS solution and it is not a counterexample to
smoothness. It proves the exact logical point needed for the c_0 proof pass:
the current bill does not force `(PFC.2)'.

Therefore Gate 1 has not been discharged by the material-cutoff and large-window
reductions. The smallest first-gate theorem remains:

```math
\texttt{RetainedPressureFluxTightnessOrRouteOut.A}.
\tag{PFC.7}
```

For every retained same-fluid relay sequence with \(R(W_j)=1\) and
\(B(W_j)\to0\), the pressure flux through the retained material collar must be
L1-tight, absorbed by \(B\), or classified as legal/collar/Pack-Part route-out.

## 5. Consequence for c_0

Opus's canonical radiodrome surface correctly pins radiodrome to the same
strict tower-relay capture margin:

```math
c_0>0
\quad\Longleftrightarrow\quad
\text{strict same-field tower-relay capture margin.}
\tag{PFC.8}
```

This note gives the first obstruction to turning that definition into the
epsilon-extraction proof. Before any radiodrome rigidity or DSS/Liouvillian
argument can prove \(c_0>0\), the localized Field compactness gate must keep
pressure redistribution from escaping through the collar as an unpriced record.
That is the first unclosed theorem in the current proof chain.
