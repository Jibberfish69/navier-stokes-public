---
theorem_id: forward-gold-c0-gate1-material-cutoff-flux-reduction-20260706
status: proved-transport-flux-removal-reduces-gate1-to-pressure-viscous-collar-legalization
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 flux closure
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - RetainedRelayFluxCutoffClosure.A
  - TC.31
  - TC.31a
  - RetainedPressureViscousCollarFluxLegalization.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Gate 1 proof pass. This does not install NormalizedRelayBillCompactnessRecordPassage.A
  or TC.31a. It proves a smaller material-cutoff reduction: choosing the cutoff
  to ride the same carrier used in the finite-difference energy identity removes
  the pure transport flux from the localized tower-defect energy. Viscous cutoff
  commutators are absorbable into interior viscous defect plus a collar term.
  Therefore Gate 1 reduces to a pressure/viscous collar theorem on the same
  retained family: RetainedPressureViscousCollarFluxLegalization.A. Proving
  that collar theorem would imply RetainedRelayFluxCutoffClosure.A, hence clear
  Gate 1, but Gates 2--4 would still remain for NormalizedRelayBillCompactnessRecordPassage.A.
---

# Gate 1 material cutoff reduction

## 1. Physical object

Gate 1 is about one velocity field and one retained relay read. The cutoff is
not a wall of a sub-fluid. It is a read window placed on the same
Navier-Stokes field. If the read window is held fixed in space, a packet can
cross its boundary and create a cutoff flux. If the read window rides the same
carrier used in the finite-difference identity, that artificial transport
through the window disappears.

This is the only part of the flux problem that can be removed by the ontology
alone. Pressure still redistributes through the boundary of the read window,
and viscosity still creates cutoff/collar commutators.

## 2. Starting identity

The allowed participation/coherence source gives, for each rung,

```math
\frac12(\partial_t+u(x+h,t)\cdot\nabla-\nu\Delta)|\delta_hU_k|^2
+\nu|\nabla\delta_hU_k|^2
=
\mathcal P^{red}_{k,h}
+\nabla\cdot\Pi^{press}_{k,h}
-\delta_hU_k:((\delta_hu)\cdot\nabla U_k)
+\delta_hU_k:\delta_hB_k .
\tag{MCF.1}
```

This identity already contains the physical split: viscosity has sign,
pressure is redistribution plus flux, and dangerous growth is the
strain/cascade interaction.

Let \(\phi=\phi_{j,h}\) be transported by the same carrier appearing in
`(MCF.1)`:

```math
(\partial_t+u(x+h,t)\cdot\nabla)\phi=0.
\tag{MCF.2}
```

Define

```math
E_{N,h,\phi}(t)
=
\sum_{k=0}^{N}\lambda_k\int\phi^2|\delta_hU_k|^2\,dx.
\tag{MCF.3}
```

## 3. Transport flux cancels

Multiply `(MCF.1)` by \(\lambda_k\phi^2\), integrate in space, and sum in
\(k\). The time derivative and the advective derivative combine as

```math
\frac12\int\phi^2(\partial_t+u(x+h,t)\cdot\nabla)|\delta_hU_k|^2
=
\frac12\frac{d}{dt}\int\phi^2|\delta_hU_k|^2,
\tag{MCF.4}
```

because `(MCF.2)' gives

```math
(\partial_t+u(x+h,t)\cdot\nabla)\phi^2=0,
\tag{MCF.5}
```

and \(u\) is divergence-free. Thus the advective cutoff flux is not a retained
relay event. It is a coordinate artifact of using a fixed read window.

## 4. Viscous cutoff commutator

The viscous part gives, after integration by parts,

```math
-\frac{\nu}{2}\int\phi^2\Delta|\delta_hU_k|^2
+\nu\int\phi^2|\nabla\delta_hU_k|^2
=
\nu\int|\nabla(\phi\,\delta_hU_k)|^2
-\nu\int|\nabla\phi|^2|\delta_hU_k|^2
\tag{MCF.6}
```

Equivalently, by the elementary \(2ab\) inequality, for every \(\eta>0\),

```math
\nu\int|\nabla(\phi\,\delta_hU_k)|^2
\ge
(1-\eta)\nu\int\phi^2|\nabla\delta_hU_k|^2
-C_\eta\nu\int|\nabla\phi|^2|\delta_hU_k|^2 .
\tag{MCF.7}
```

Thus the localized viscous dissipation absorbs the interior gradient term, and
the only viscous price of the cutoff is the collar read

```math
\mathrm{CollarVisc}_{N,h,\phi}
:=
\nu\sum_{k=0}^{N}\lambda_k\int|\nabla\phi|^2|\delta_hU_k|^2 .
\tag{MCF.8}
```

It is not controlled by \(B=dE^{Field}+dA_{4B}+dVisc\) unless the retained
relay family makes this collar read legal, small, or a route-out.

## 5. Pressure collar term

The pressure-divergence term becomes

```math
\sum_{k=0}^{N}\lambda_k
\int\phi^2\nabla\cdot\Pi^{press}_{k,h}
=
-2\sum_{k=0}^{N}\lambda_k
\int\phi\nabla\phi\cdot\Pi^{press}_{k,h}.
\tag{MCF.9}
```

This is the irreducible pressure/cutoff flux in Gate 1. It is exactly why the
allowed source says `Flux_{N,h,\phi}` is theorem data. Incompressibility says
pressure redistributes; it does not make the boundary redistribution vanish.

## 6. Reduced Gate 1 theorem

The material-cutoff calculation proves:

```math
\texttt{RetainedPressureViscousCollarFluxLegalization.A}
\Longrightarrow
\texttt{RetainedRelayFluxCutoffClosure.A}.
\tag{MCF.10}
```

The smaller theorem is:

```math
\texttt{RetainedPressureViscousCollarFluxLegalization.A}.
\tag{MCF.11}
```

For every retained same-fluid relay sequence with \(R(W_j)=1\) and
\(B(W_j)\to0\), there are legal same-carrier material cutoffs \(\phi_j\) such
that

```math
\int_{W_j}
\left|
2\sum_{k=0}^{N}\lambda_k
\int\phi_j\nabla\phi_j\cdot\Pi^{press}_{k,h_j}
\right|dt
+\int_{W_j}\mathrm{CollarVisc}_{N,h_j,\phi_j}\,dt
\to0
\tag{MCF.12}
```

or the nonzero limsup of the left-hand side is typed as legal/collar/Pack-Part
route-out rather than retained relay record.

With `(MCF.12)', the localized estimate `(TC.31)' becomes usable on the retained
relay family:

```math
B(W_j)\to0
\quad\Longrightarrow\quad
\text{localized tower differences are compact on }W_j.
\tag{MCF.13}
```

That is precisely Gate 1.

## 7. Consequence for the active c_0 objective

This pass moves Gate 1 but does not close it. The transport part of flux is
removed by choosing the read window on the same carrier. The remaining first
gate is pressure/viscous collar legalization on the retained relay family.

Physically: the proof may not let a fixed-window boundary crossing masquerade
as a retained tower relay. After riding with the carrier, any surviving boundary
effect is genuine pressure/collar redistribution. It must be paid, vanish, or
route out before the compactness theorem can be used.
