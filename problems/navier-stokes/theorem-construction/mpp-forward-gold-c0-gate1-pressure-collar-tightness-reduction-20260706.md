---
theorem_id: forward-gold-c0-gate1-pressure-collar-tightness-reduction-20260706
status: proved-viscous-collar-large-window-reduction-pressure-flux-tightness-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 pressure collar
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - RetainedRelayFluxCutoffClosure.A
  - RetainedPressureViscousCollarFluxLegalization.A
  - RetainedPressureFluxTightnessOrRouteOut.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-material-cutoff-flux-reduction-20260706.md
  - problems/navier-stokes/spine.md
completion_truth: >-
  Gate 1 proof reduction. This does not install NormalizedRelayBillCompactnessRecordPassage.A
  or TC.31a. After the material-cutoff reduction removes pure transport flux,
  this note proves that the viscous collar can be made small by expanding the
  same-carrier read window, provided the retained finite-depth tower L2 mass is
  finite on the normalized window. The remaining first-gate obstruction is the
  pressure collar term. Thus RetainedRelayFluxCutoffClosure.A is reduced to
  RetainedPressureFluxTightnessOrRouteOut.A: pressure redistribution through
  the cutoff collar must be L1-tight on the retained relay family, absorbed by
  the bill, or classified as legal/collar/Pack-Part route-out.
---

# Gate 1 pressure collar tightness reduction

## 1. Physical object

The previous Gate 1 reduction chose the read window to move with the same
carrier as the finite-difference identity. That removes artificial advection
through the window. What remains is a collar question: when the read window is
expanded around the retained relay, do the boundary terms vanish, or is a real
pressure/collar event carrying the record through the edge of the read?

The answer separates into two pieces. Viscosity is local and sign-bearing, so
its cutoff collar is controlled by finite tower mass and a large material
window. Pressure is nonlocal redistribution, so its collar term needs its own
tightness or route-out theorem.

## 2. Input from the material-cutoff reduction

After material transport of the cutoff, Gate 1 is reduced to the pressure and
viscous collar expression

```math
\mathcal C_{N,h,\phi}^{collar}(W)
=
\int_W
\left|
2\sum_{k=0}^{N}\lambda_k
\int\phi\nabla\phi\cdot\Pi^{press}_{k,h}
\right|dt
+\int_W\mathrm{CollarVisc}_{N,h,\phi}\,dt,
\tag{PCT.1}
```

where

```math
\mathrm{CollarVisc}_{N,h,\phi}
=
\nu\sum_{k=0}^{N}\lambda_k\int|\nabla\phi|^2|\delta_hU_k|^2.
\tag{PCT.2}
```

The goal is to show that `(PCT.1)' either tends to zero, is absorbed into the
bill, or is not a retained relay record.

## 3. Large material windows kill the viscous collar

Let \(\phi_R\) be a same-carrier material cutoff with

```math
\phi_R=1\ \text{on the retained core},\qquad
|\nabla\phi_R|\le {C\over R},
\tag{PCT.3}
```

and with collar lying in the material annulus of thickness comparable to \(R\).
Assume the retained finite-depth tower mass on the normalized window is finite:

```math
M_{N,h}(W)
:=
\int_W
\sum_{k=0}^{N}\lambda_k
\int |\delta_hU_k|^2\,dx\,dt
<\infty .
\tag{PCT.4}
```

Then

```math
\int_W\mathrm{CollarVisc}_{N,h,\phi_R}\,dt
\le
{C\nu\over R^2}
M_{N,h}(W)
\xrightarrow[R\to\infty]{}0.
\tag{PCT.5}
```

Thus viscosity does not create the hard Gate 1 collar obstruction once the read
window is allowed to expand on the same carrier. It is either absorbed by the
viscous bill or made small by the material cutoff choice.

## 4. Pressure is the surviving collar obstruction

The pressure term under the same cutoff is

```math
\mathcal C_{N,h,R}^{press}(W)
=
\int_W
\left|
2\sum_{k=0}^{N}\lambda_k
\int\phi_R\nabla\phi_R\cdot\Pi^{press}_{k,h}
\right|dt .
\tag{PCT.6}
```

The estimate \(|\nabla\phi_R|\le C/R\) is not enough by itself unless the
pressure-flux density is tight in the collar:

```math
\lim_{R\to\infty}
\int_W
{1\over R}
\int_{\mathrm{collar}(R)}
\sum_{k=0}^{N}\lambda_k|\Pi^{press}_{k,h}|\,dx\,dt
=0.
\tag{PCT.7}
```

The allowed participation source does not supply `(PCT.7)'. It says pressure
acts as redistribution plus flux and that the flux bound is theorem data. So
large windows turn Gate 1 into pressure-flux tightness; they do not eliminate
pressure by incompressibility alone.

## 5. Reduced theorem

The first Gate 1 theorem can now be stated more sharply:

```math
\texttt{RetainedPressureFluxTightnessOrRouteOut.A}.
\tag{PCT.8}
```

For every retained same-fluid relay sequence with \(R(W_j)=1\) and
\(B(W_j)\to0\), there are same-carrier material cutoffs \(\phi_{j,R}\) with
large retained core and controlled collar such that either

```math
\lim_{R\to\infty}\limsup_{j\to\infty}
\mathcal C_{N,h_j,R}^{press}(W_j)=0,
\tag{PCT.9}
```

or every nonzero limiting pressure-collar flux is legal/collar/Pack-Part
route-out rather than retained relay record.

Together with the material-cutoff reduction and the viscous estimate `(PCT.5)',
`(PCT.8)' implies

```math
\texttt{RetainedRelayFluxCutoffClosure.A}.
\tag{PCT.10}
```

Thus `(PCT.8)' is the sharpened first-gate theorem.

## 6. Consequence for the active c_0 objective

This note does not prove \(c_0>0\). It moves the first failed gate from generic
flux/cutoff language to one pressure statement:

```math
\text{pressure flux through the retained material collar is tight,}
\quad
\text{or it is not a retained relay record.}
\tag{PCT.11}
```

Physically, the same-fluid read window can be chosen so the packet does not
cross an artificial wall. If the record still appears through the boundary, the
event is pressure redistribution through the collar. That is now the first
remaining Gate 1 object.
