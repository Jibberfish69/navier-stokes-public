---
theorem_id: forward-gold-stopped-source-carrier-direct-production-test-20260627
status: stopped-source-carrier-production-reduces-to-selected-action-trace-coercivity-and-stop-mass-noescape
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped source-carrier production
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedSourceCarrierAndPaidReselection.A
  - StoppedIndependentRootHilbertCarrierBound.A
  - PaidReselectionStoppingCarleson.A
  - SelectedActionTraceCoercivity.A
  - ScaleInvariantSelectedCapacityNoEscape.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-holder-split-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-reserve-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-capacity-schur-complement-coercivity-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
---

# Stopped source-carrier direct production test

The stopped-carrier reduction gives the right logical shape.  This note tests
whether the stopped source carrier is already produced by the pressure-Hodge
capacity machinery and the selector/order-lock ledgers.

It is not fully produced.  The stopping reformulation removes the false demand
for global selector nondegeneracy, but it does not by itself create the root
source energy.  The root energy still needs a lower trace coercivity estimate
that pays selected action, and the stopping measure still needs a no-escape
theorem when reselection is not visibly charged.

## 1. What the stopped reduction asks for

On a stopped interval \(S\), the previous note asks for a source-origin carrier

```math
Z^S=Z^S_{\rm vis}\oplus Z^S_{\rm sil}\oplus Z^S_{\rm ex},
\tag{1}
```

and a fixed-carrier readout

```math
\log r_Q
=\ell_Q(\Delta_QZ^S)-\psi_Q+e_Q^S
\qquad (Q\subseteq S \text{ before the next stop}).
\tag{2}
```

The consumer theorem then needs

```math
\sum_{S\subseteq P}\sum_{Q\subseteq S}
\|\Delta_QZ^S\|_{\mathcal H_{\rm src}}^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)+R_{\rm stop}(P)+R_{\rm legal}(P),
\tag{3}
```

and

```math
R_{\rm stop}(P)
+\sum_{S\subseteq P}\sum_{Q\subseteq S}
|e_Q^S|^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{4}
```

Equations `(3)`--`(4)` imply the selected-density reverse Holder theorem by
the stopped stochastic-exponential martingale lemma.  They are the producer
side.

## 2. Capacity representation of the stopped root carrier

The existing pressure-Hodge capacity route gives the only concrete
non-tautological root carrier currently installed.  For a stopped laminar
parent \(S\), define the parent-collar capacity

```math
B_{\rm cap}(S)
=
\inf\left\{
\int_{A_S}|\nabla_A W|_G^2\,da:
W|_{\partial_{\rm in}A_S}=U_S,\quad
W|_{\partial_{\rm out}A_S}=0
\right\}.
\tag{5}
```

This is a legitimate source-origin candidate for
\(\|Z^S\|_{\mathcal H_{\rm src}}^2\).  It uses the transported
pressure-Hodge/stress trace, not a descendant selected density.

For fixed stopped children \(S'\subset S\), capacity monotonicity gives only

```math
\sum_{S'\in ch_{\rm stop}(S)}B_{\rm cap}(S')
\le
B_{\rm cap}(S)+R_{\rm legal}(S).
\tag{6}
```

This pays the descendant carrier energy, but it does not pay the selected
action produced at the children.

The needed inequality is stronger:

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
+
\sum_{S'\in ch_{\rm stop}(S)}B_{\rm cap}(S')
\le
B_{\rm cap}(S)
+R_{\rm stop}(S)+R_{\rm legal}(S).
\tag{7}
```

The new stopping language changes the children from ordinary tree children to
stop children.  It does not change the missing sign: the selected action term
\(\sum A(S')\) still needs a lower bound from the parent-child capacity drop.

## 3. Schur-complement form of the stopped missing estimate

Let \(\Lambda_S\) be the parent transported collar Dirichlet-to-Neumann form and
let \(\Lambda_{S'}\) be the stop-child collar forms after legal
synchronization.  The stopped capacity drop is the Schur complement

```math
\mathsf S_S^{\rm stop}
:=
\Lambda_S-\bigoplus_{S'\in ch_{\rm stop}(S)}\Lambda_{S'} .
\tag{8}
```

Capacity monotonicity says

```math
\langle U_S,\mathsf S_S^{\rm stop}U_S\rangle\ge0.
\tag{9}
```

The Gold estimate needs

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
\langle U_S,\mathsf S_S^{\rm stop}U_S\rangle
+R_{\rm stop}(S)+R_{\rm legal}(S).
\tag{10}
```

This is the stopped version of the already isolated operator theorem:

```text
StoppedSelectedActionTraceCoercivity.A
```

Statement:

```math
\text{retained stopped child selected action}
\le
\text{parent-stop-child DtN Schur complement}
+\text{paid reselection/order-lock/legal defects}.
\tag{11}
```

Without `(10)`, the capacity route gives root geometry but not root selected
action.  The descendant Hilbert square function then remains below the strength
needed for first-ratio gain.

## 4. Holder split on the stopped carrier

The installed Holder split for the capacity root reads

```math
[\langle \Sigma W,W\rangle]_+
\le
C|\Sigma|^{5/2}+C|W|^{10/3}.
\tag{12}
```

The velocity term is compatible with the energy class:

```math
u\in L_t^\infty L_x^2\cap L_t^2\dot H_x^1
\Longrightarrow
u\in L_{t,x}^{10/3}.
\tag{13}
```

The remaining selected stopped root currency is therefore still the critical
strain / pressure-Hessian reserve

```math
\sum_{S\subseteq P}
\int_{\mathcal F_S}|\Sigma|^{5/2}\,d\mathcal R_{\rm cap}
<\infty.
\tag{14}
```

Stopping helps only by saying which selected intervals are fixed-carrier before
the next reselection.  It does not turn the raw \(L^2\) strain ledger into the
selected \(L^{5/2}\) capacity reserve.

Thus the root-energy side of `StoppedSourceCarrierAndPaidReselection.A`
reduces to:

```text
StoppedSelectedCriticalStrainCapacityReserve.A
```

or, in the parent-drop form, `(10)`.

## 5. Reselection charge test

The selector/order-lock surfaces do pay visible stops.  The paid pieces are:

1. finite-menu or compact selector stabilization, where the label increment is
   zero on the retained tail;
2. visible selector/collar variation;
3. full-packet order-lock gap;
4. retained Body-II/III defects \(K_{\rm sel}\), \(K_C^+\), and legal
   synchronization loss.

For these stops,

```math
R_{\rm stop}^{paid}(P)
\le
C\Omega_{\rm ol/sel}(P)
+C(K_{\rm sel}+K_C^++R_{\rm legal})(P).
\tag{15}
```

The unpaid case is a nested family of reselected children with no visible
variation, no full-packet order-lock payment, and no legal Body defect.  Such a
family has exactly the old critical half-tail form:

```math
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty.
\tag{16}
```

Therefore the reselection side reduces to:

```text
StoppedReselectionNoEscape.A
```

Statement:

```math
\text{unpaid stop mass at summable raw cost cannot retain unit selected action
through infinitely many shrinking stopped windows on the same original
material history.}
\tag{17}
```

This is the stopped-selector form of `ScaleInvariantSelectedCapacityNoEscape.A`.

## 6. Result

The stopped source-carrier route is still the best current synthesis because it
turns the selected log-amplification problem into two producer estimates with
clear source ownership:

```text
StoppedSelectedActionTraceCoercivity.A
```

for the source-root / capacity-drop side, and

```text
StoppedReselectionNoEscape.A
```

for the unpaid stop-mass side.

Together they imply `StoppedSourceCarrierAndPaidReselection.A`; then the
previous stopped martingale theorem gives selected-density reverse Holder and
the strict selected first-ratio gain.

The direct production test does not close Gold.  It removes the vague
source-origin wording and identifies the exact next mathematical pressure:

```math
\boxed{
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\le
\langle U_S,
(\Lambda_S-\bigoplus_{S'}\Lambda_{S'})
U_S\rangle
+R_{\rm stop}(S)+R_{\rm legal}(S)
}
\tag{18}
```

plus the no-escape theorem for stops that have no visible charge.  This is the
noncircular production form of the stopped-carrier idea.
