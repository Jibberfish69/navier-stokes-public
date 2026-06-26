---
theorem_id: forward-gold-selected-critical-strain-capacity-reserve-audit-20260626
status: audit-installed-pressure-hodge-capacity-is-sharper-root-representation-not-closure
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - RootPositiveFluxReserveCoercivity.A
  - PressureHodgeCapacityCarleson.A
  - SelectedCriticalStrainCapacityReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-holder-split-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-positive-flux-reserve-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossband-decay-core-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-ancestry-target-audit-and-root-reserve-placement-20260626.md
---

# Selected Critical Strain Capacity Reserve Audit

This note audits the relay handoff that narrows:

```text
RootPositiveFluxReserveCoercivity.A
```

to a pressure-Hodge capacity representation and then to:

```text
SelectedCriticalStrainCapacityReserve.A
```

## 1. The representation is real

For a laminar material node \(Q\), the pressure-Hodge capacity note defines a
same-packet reserve:

```math
B_{\rm cap}(Q)
:=
\inf\left\{
\int_{A_Q}|\nabla_A W|_G^2\,da:
W|_{\partial_{\rm in}A_Q}=U_Q,\quad W|_{\partial_{\rm out}A_Q}=0
\right\}.
```

This is not the tautological descendant-tail reserve. It is a concrete
elliptic/capacity representation for the strong Bellman root reserve: child
stress-work must pass through the parent pressure-Hodge collar.

The desired Bellman inequality is:

```math
\sum_{Q'\in ch(Q)}A(Q')
+
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+R_{\rm legal}(Q).
```

If this inequality holds and \(B_{\rm cap}(Q_{\rm root})\) is finite from
original data, the first-ratio action follows.

## 2. The Holder split closes only the velocity side

The holder split reads the native trilinear carrier as:

```math
[\langle \Sigma W,W\rangle]_+
\le
C|\Sigma|^{5/2}
+
C|W|^{10/3}.
```

The velocity term is compatible with the classical energy class:

```math
u\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x
\Longrightarrow
u\in L^{10/3}_{t,x}.
```

So the velocity half is not the active obstruction.

The surviving half is:

```math
\int_{\mathcal F_{\rm lam}}|\Sigma|^{5/2}\,d\mathcal R_{\rm cap}<\infty.
```

This is the selected critical strain / pressure-Hessian capacity reserve.

## 3. Placement under the current Gold hinge

The pressure-Hodge capacity route should be retained as the current concrete
implementation target under:

```text
RootPositiveFluxReserveCoercivity.A
```

It is sharper than the abstract root-reserve wording because it identifies the
candidate root currency:

```text
laminar pressure-Hodge capacity through the parent collar.
```

It does not close the Gold route yet. The installed notes do not prove the
selected \(|\Sigma|^{5/2}\)-type terminal-family reserve from original data.

Thus the current live chain is:

```math
\text{laminar ancestry}
\Longrightarrow
\text{pressure-Hodge capacity root representation}
\Longrightarrow
\text{velocity side paid}
\Longrightarrow
\text{selected critical strain capacity reserve remains}.
```

## 4. Audit result

The relay update is accepted with this classification:

```text
PressureHodgeCapacityCarleson.A: concrete root-reserve representation.
SelectedCriticalStrainCapacityReserve.A: current hard sub-hinge.
```

The note is support plus narrowing, not a proof of smoothness.

The remaining theorem is:

```text
SelectedCriticalStrainCapacityReserve.A
```

Plain statement:

For the original smooth transported Navier-Stokes material history, prove a
selected laminar high-ratio capacity reserve controlling the critical
strain/pressure-Hessian contribution, with only original data and legal ledgers
as input. This reserve must make the pressure-Hodge Bellman root finite and
therefore control the first-ratio action.
