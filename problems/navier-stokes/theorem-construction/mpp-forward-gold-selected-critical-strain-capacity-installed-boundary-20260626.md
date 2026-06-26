---
theorem_id: forward-gold-selected-critical-strain-capacity-installed-boundary-20260626
status: audit-installed-selected-critical-strain-capacity-is-current-hard-boundary-not-produced
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge: SelectedCriticalStrainCapacityReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-holder-split-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-carleson-direct-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-supplier-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-strain-carrier-ui-holder-saturation-test-20260620.md
---

# Selected Critical Strain Capacity Installed Boundary

This note audits whether the current hinge:

```text
SelectedCriticalStrainCapacityReserve.A
```

is already proved by earlier selected critical strain, critical density, or
CKN surfaces.

It is not proved. Those notes install the correct criterion and scaling
boundary.

## 1. The current hinge matches the older critical-density boundary

The pressure-Hodge capacity Holder split reduces the root capacity reserve to:

```math
|\Sigma|^{5/2}+|W|^{10/3}.
```

The velocity side is paid by the classical energy interpolation:

```math
u\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x
\Longrightarrow
u\in L^{10/3}_{t,x}.
```

The strain/pressure-Hessian side is:

```math
\int_{\mathcal F_{\rm lam}}|\Sigma|^{5/2}\,d\mathcal R_{\rm cap}<\infty.
```

This is the same selected \(L^{5/2}\)-strain/critical-density reserve isolated
in the older Gold notes.

## 2. What earlier notes prove

The selected critical strain supplier test proves the useful direction:

```math
\text{retained critical feed event}
\Longrightarrow
\text{fixed positive }L^{5/2}_{t,x}\text{ strain bill}.
```

The critical-density supplement proves the consumer criterion:

```math
dA_{\rm sel}
\le
C\bigl(|\Sigma|^{5/2}+|W|^{10/3}\bigr)
+dR_{\rm legal}+dK_{\rm rem}^+.
```

Thus an unweighted same-carrier budget for the critical density would pay the
selected carrier.

## 3. What earlier notes do not prove

The direct selected-strain attempt records that energy gives only:

```math
S\in L^2_{t,x},
```

not:

```math
S\in L^{5/2}_{t,x}
```

on the selected terminal family.

A heat-scale packet can have:

```math
\int_{Q_j}|S|^2\,dxdt\simeq r_j
```

while:

```math
\int_{Q_j}|S|^{5/2}\,dxdt\simeq 1.
```

So a Zeno sequence can be summable in the energy strain bill and divergent in
the selected critical strain bill.

The strain equation does not fix this by itself.  Its pressure/source/current
terms have no usable one-sided sign without another theorem.

The Calderon-Zygmund pressure route also does not fix it.  It returns to the
same normalized CKN / critical-density reserve.

## 4. Endpoint product issue

Even uniform critical bounds on the two Holder factors do not imply endpoint
uniform integrability of the product.  The holder saturation note gives:

```math
\Sigma_m(s,y)=\tau_m^{-2/5}\sigma(y)\mathbf 1_{(-\tau_m,0]}(s),
```

```math
W_m(s,y)=\tau_m^{-3/10}\psi(y)\mathbf 1_{(-\tau_m,0]}(s),
```

with:

```math
\|\Sigma_m\|_{L^{5/2}_{s,y}}\simeq1,
\qquad
\|W_m\|_{L^{10/3}_{s,y}}\simeq1,
```

but:

```math
\int [\langle \Sigma_mW_m,W_m\rangle]_+\,dy
\simeq
\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s).
```

So endpoint depletion needs strict slack, direct product control, or
same-layer tail depletion.  Critical factor bounds alone are not enough.

## 5. Boundary result

The current pressure-Hodge capacity route is now classified exactly:

```text
PressureHodgeCapacityCarleson.A
```

is the concrete root-reserve representation.

```text
SelectedCriticalStrainCapacityReserve.A
```

is the surviving unproved capacity/critical-density production theorem.

The earlier selected critical strain notes are support and no-go evidence. They
do not supply the reserve.

Therefore the current Gold edge remains:

```text
Prove the selected laminar high-ratio critical strain / pressure-Hessian
capacity reserve from original data and legal ledgers.
```

Equivalently, produce strict endpoint slack, same-layer tail depletion, or a
same-material product/control theorem strong enough to make the pressure-Hodge
Bellman root finite.
