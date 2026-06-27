---
theorem_id: forward-gold-boundary-flat-selected-carrier-exchange-charge-audit-20260627
status: no-countermodel-reduces-to-hidden-bubble-root-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / selected first-ratio gain
attacks_hinge:
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - SilentKernelSourceOriginNormalForm.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-source-origin-normal-form-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-hilbert-bubble-decomposition-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-pressure-probe-demotion-material-service-routing-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
---

# Boundary-flat selected carrier exchange-charge audit

## 1. What the silent source can do

Schur-only observability fails. A nonzero pressure potential bubble

```math
w\in C_c^\infty(Q),
\qquad
f=L_Aw
\tag{1}
```

is boundary-flat and invisible to the parent pressure-Hodge Schur trace.

This only proves that boundary trace is not enough. It does not prove that a
retained selected critical-strain carrier can be invisible at zero material
service.

## 2. Hidden pressure potential is harmless as pressure force

For the material Hodge projector,

```math
\mathbb P_A(A^\top\nabla_aw)=0.
\tag{2}
```

So a boundary-flat hidden pressure potential does no projected velocity work.
In this role it is gauge/constraint material and has zero selected action.

The only way it can matter for the selected critical-strain carrier is through
the strain equation, where pressure reappears as a Hessian.

## 3. Selected silent source enters through strain Hessian

In material/Eulerian principal form,

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_AS+\text{coefficient/legal terms}.
\tag{3}
```

For the silent part `q=w`, a selected positive pressure-Hessian contribution
is tied to

```math
-e\cdot\nabla_A^2w\,e
=
D_t\lambda_e+\lambda_e^2-|\Omega e|^2
-\nu e\cdot\Delta_AS\,e
+\text{coefficient/legal terms}.
\tag{4}
```

Therefore a genuinely selected silent source is not free. It is charged by
top-strain log/exchange, viscous/tower service, coefficient/frame motion, or
legal lower-order terms.

## 4. Complete-frame line blocks the transverse null countermodel

The pressure-Hodge-null transverse mode is already routed by the complete-frame
trace-free payment:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+[-n\cdot Sn]_+ .
\tag{5}
```

Thus a selected transverse pressure-null mode must pay wave-covector
compression or packet-normal/collar compression on the same material packet.

The affine-strain model also does not give zero service. It has zero interior
viscous forcing, but it carries material metric and annular stress/strain
service.

## 5. No countermodel found

The countermodel search finds only the weaker object `(1)`: a nonzero
boundary-flat source invisible to the boundary. It does not produce a retained
selected carrier with zero exchange/material service.

The first unproved line is not the local exchange charge. It is the root
summability of the hidden pressure-potential bubble energy:

```math
\sum_{Q\subseteq Q_0}
\|w_Q\|_{\mathcal H_A(Q)}^2
\le
C_N(u_0)
+C\sum_{Q\subseteq Q_0}\mathcal S_{\rm material}(Q)
+R_{\rm legal}(Q).
\tag{6}
```

Equivalently, prove the source-origin evolution law

```math
d\mathcal B_N
+c\,d\Omega_N^{\rm silent,bubble}
\le
C\,d\Omega_N^{\rm top\text{-}strain/exchange}
+dR_{\rm legal},
\qquad
\mathcal B_N\ge -C_N(u_0).
\tag{7}
```

## 6. Current theorem

The useful theorem is therefore:

```text
SilentSourceBubbleEnergyCarleson.A
```

Statement:

Boundary-flat selected pressure-Hodge sources decompose into Hilbert pressure
bubbles. Their selected bubble energy is either unselected/gauge, or is paid
by top-strain exchange, covector compression, packet-normal/collar compression,
viscous/tower service, and legal terms. Across the retained laminar tree, the
total selected bubble energy obeys the Carleson bound `(6)`.

This theorem feeds directly into

```text
SelectedDensityMartingaleSquareFunctionCarleson.A
```

by controlling the boundary-flat/silent increment in the selected density
martingale square function.

## 7. Status

`BoundaryFlatSelectedCarrierExchangeCharge.A` is locally supported by the
strain-Hessian identity and complete-frame payment, and no zero-service selected
countermodel was found.

The Gold route is still not closed. The remaining proof line is the finite
original-history Carleson/root reserve for selected silent pressure-potential
bubble energy, or the equivalent source-origin evolution law `(7)`.
