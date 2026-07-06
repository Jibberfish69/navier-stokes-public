---
theorem_id: forward-gold-c0-gate1-field-flux-cutoff-escape-obstruction-20260706
status: checked-gate1-obstruction-normalized-relay-compactness-needs-flux-cutoff-noescape
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - Gate1.LocalizedFieldCompactness
  - RetainedRelayFluxCutoffNoEscape.A
  - TC.31.TC.31a
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Gate 1 proof attempt. The localized neighboring-tower identity does not by
  itself turn dE_Field+dVisc -> 0 into compactness on retained relay windows.
  After localization, the pressure/cutoff flux term can carry a unit local
  record through the window while the interior Field and viscous bills vanish.
  This is not a Navier-Stokes counterexample to smoothness; it is a checked
  obstruction to the inference "bills are compactness" when the bill B excludes
  the legal flux/cutoff term. The smaller required theorem is
  RetainedRelayFluxCutoffNoEscape.A: on retained relay windows with R=1 and
  B->0, the TC.31a flux/cutoff contribution either vanishes under the legal
  material recentering, is absorbed into the bill, or is a typed route-out
  rather than a retained relay record. Without that theorem or an augmented bill
  B+LegalFlux, NormalizedRelayBillCompactnessRecordPassage.A is not proved.
---

# Gate 1: field flux/cutoff escape obstruction

## 1. Gate being tested

The epsilon extraction needs this first implication:

```math
R(W_j)=1,
\qquad
\int_{W_j}(dE_{N,h}^{Field}+dVisc_{N,h})\to0
\quad\Longrightarrow\quad
\text{the neighboring tower reads are compact on }W_j .
\tag{G1.1}
```

The allowed source is the finite-difference tower identity. After pairing with
`\delta_hU_k`, localizing by `\phi`, and summing rungs, the checked source says
the usable estimate has the form

```math
{d\over dt}E_{N,h,\phi}
+2\nu\sum_{k=0}^{N}\lambda_k
\int\phi^2|\nabla\delta_hU_k|^2
\le
C_{N,\phi}
\int
\Big(|S|+\sum_{j=1}^{N}|U_j|\Big)
\sum_{k=0}^{N}\lambda_k|\delta_hU_k|^2
+\mathrm{Flux}_{N,h,\phi}.
\tag{G1.2}
```

The same source explicitly marks the flux estimate

```math
\int_I|\mathrm{Flux}_{N,h,\phi}(t)|\,dt
\le
\mathrm{Legal}_{N,h,\phi}(I)
\tag{G1.3}
```

as theorem data, not a consequence already delivered by the paired identity.

## 2. Direct proof attempt

Try to prove `(G1.1)` from `(G1.2)` with

```math
B_{Field+Visc}(W_j)
:=
\int_{W_j}(dE_{N,h}^{Field}+dVisc_{N,h})\to0.
\tag{G1.4}
```

The attempt stops at the flux term. Integrating `(G1.2)` over a retained window
gives

```math
E_{N,h,\phi}(t_2)
+D_{N,h,\phi}(I)
\le
E_{N,h,\phi}(t_1)
+\int_I C\,M_N(t)E_{N,h,\phi}(t)\,dt
+\int_I \mathrm{Flux}_{N,h,\phi}(t)\,dt,
\tag{G1.5}
```

where `D` is the viscous defect dissipation and `M_N` abbreviates the ordinary
rung coefficient in `(G1.2)`.

Vanishing of `D` and the Field bill does not control the last term in `(G1.5)`.
The flux can move localized tower defect or localized record through the
window boundary without creating interior Field/viscous payment.

## 3. Scalar flux countermodel to the inference

This is the exact logical obstruction in its simplest form. Let `a` obey a
transport conservation law

```math
\partial_t a+\nabla\cdot(aV)=0,
\qquad
\nabla\cdot V=0,
\tag{G1.6}
```

and localize by a fixed cutoff `\phi`. Then

```math
{d\over dt}\int\phi^2a
=
\int a\,V\cdot\nabla(\phi^2).
\tag{G1.7}
```

There is no interior dissipation and no interior defect production. A coherent
packet of `a` can enter the support of `\phi`, producing a unit positive
localized record, while the interior bill is zero; the whole event is carried
by the cutoff flux on the collar.

This model is not presented as a Navier-Stokes bad solution. It proves the
logical point needed for Gate 1: a localized balance cannot convert vanishing
interior Field/viscous bills into compactness or record passage unless the
collar flux is controlled, absorbed, or declared a route-out.

## 4. Physical reading for the NS relay

For the same-fluid relay, the flux term is the possibility that the relay
record is not born inside the retained window. It can be carried across the
material/cutoff collar by pressure, transport, or localization motion. In that
case the central window sees a unit record, but the window did not retain the
same source address that produced it.

Thus a sequence with

```math
R(W_j)=1,
\qquad
\int_{W_j}(dE_{N,h}^{Field}+dVisc_{N,h})\to0
\tag{G1.8}
```

has a first possible escape:

```math
\limsup_j
\int_{W_j}|\mathrm{Flux}_{N,h,\phi_j}|>0.
\tag{G1.9}
```

This is not a zero-bill retained relay. It is flux/cutoff transport of the
record through the boundary of the chosen retained read.

## 5. Smaller theorem required by Gate 1

The exact first remaining theorem is:

```math
\boxed{
\texttt{RetainedRelayFluxCutoffNoEscape.A}
}
\tag{G1.10}
```

Statement. For any retained same-fluid relay sequence with `R(W_j)=1` and

```math
\int_{W_j}
\big(dE_{N,h}^{Field}+dVisc_{N,h}\big)\to0,
\tag{G1.11}
```

one of the following holds:

```math
\begin{array}{ll}
\text{Flux vanishes/absorbs:}
&
\int_{W_j}|\mathrm{Flux}_{N,h,\phi_j}|\to0
\quad\text{after the legal material recentering,}\\[1mm]
\text{Bill augmentation:}
&
\int_{W_j}|\mathrm{Flux}_{N,h,\phi_j}|
\le C\,B(W_j)+o(1),\\[1mm]
\text{Route-out:}
&
\limsup_j\int_{W_j}|\mathrm{Flux}_{N,h,\phi_j}|>0
\quad\text{is typed as legal/collar/Pack-Part loss, not a retained relay record.}
\end{array}
\tag{G1.12}
```

Only after `(G1.10)` is installed can Gate 1 read
`dE_{N,h}^{Field}+dVisc_{N,h}\to0` as compactness of the neighboring tower
reads on the retained relay windows.

## 6. Consequence for the active c_0 goal

This is the first failed gate of the current `c_0` extraction. It does not
refute Navier-Stokes smoothness and it does not refute the zero-bill kernel.
It refutes the unsupported inference that the three-window bill `B` already
contains all compactness-loss modes.

For `NormalizedRelayBillCompactnessRecordPassage.A`, either the bill must be
augmented to

```math
B^{aug}
=
dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h}+dLegalFlux_{N,h,\phi},
\tag{G1.13}
```

or `(G1.10)` must prove that the flux/cutoff term cannot carry a unit retained
relay record in the vanishing-bill regime.
