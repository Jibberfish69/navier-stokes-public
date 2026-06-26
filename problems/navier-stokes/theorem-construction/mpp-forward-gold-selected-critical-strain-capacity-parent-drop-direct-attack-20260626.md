---
theorem_id: forward-gold-selected-critical-strain-capacity-parent-drop-direct-attack-20260626
status: direct-attack-fails-parent-drop-and-critical-strain-capacity-remain-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AdjointSelectedCapacityGain.A
  - OriginalHistorySelectedReserve.A
  - SelectedActionCarlesonRootReserve.A
  - PressureHodgeCapacityCarleson.A
  - SelectedCriticalStrainCapacityReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-reserve-normal-form-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-reserve-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-capacity-installed-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-branch-selected-capacity-closure-audit-20260626.md
---

# Selected critical-strain capacity parent-drop direct attack

The original-history selected reserve normal form says that the live Gold
theorem is a selected action Carleson bound on the retained material ancestry:

```math
\sup_{Q_0}
\sum_{Q\subseteq Q_0} A(Q)
\le
C_N\,\mathcal R_{\rm root}(Q_0)+R_{\rm legal}(Q_0),
\qquad
\sum_{Q_0{\rm\ roots}}\mathcal R_{\rm root}(Q_0)\le C_N(u_0).
\tag{SCC.1}
```

The only concrete non-tautological candidate currently identified is the
pressure-Hodge parent-collar capacity reserve.  For a retained laminar material
node \(Q\), let

```math
B_{\rm cap}(Q)
:=
\inf
\left\{
\int_{A_Q}|\nabla_A W|_G^2\,da:
W|_{\partial_{\rm in}A_Q}=U_Q,\quad
W|_{\partial_{\rm out}A_Q}=0
\right\}.
\tag{SCC.2}
```

Here \(U_Q\) is the gauge-reduced pressure-Hodge-stress trace on the parent
transported collar.  This is same-material, nonnegative, and attached to the
retained pressure/Hodge participation object.

## 1. The needed Bellman drop

To close `(SCC.1)` with `(SCC.2)`, one needs the parent-child inequality

```math
\sum_{Q'\in ch(Q)} A(Q')
+
\sum_{Q'\in ch(Q)} B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)
+
R_{\rm legal}(Q).
\tag{SCC.3}
```

Then summing `(SCC.3)` over the laminar tree telescopes:

```math
\sum_{Q\subseteq Q_0}A(Q)
\le
B_{\rm cap}(Q_0)+R_{\rm legal}(Q_0).
\tag{SCC.4}
```

So the reserve root would be

```math
\mathcal R_{\rm root}(Q_0):=B_{\rm cap}(Q_0).
\tag{SCC.5}
```

This is the sharp capacity-coordinate version of the Gold hinge.

## 2. Root finiteness is not the hard part by itself

The root pressure-Hodge capacity is controlled by original-data elliptic source
norms and legal collar terms in the already installed pressure-Hodge capacity
test.  The obstruction is not naming a finite-looking root quantity.  The
obstruction is the strict drop `(SCC.3)`: child selected action is scale
invariant, while raw parent capacity can see only critical scale.

The installed linear adjoint/Stokes test reaches the raw capacity boundary.  It
does not supply the extra dyadic gain needed to beat the half-tail:

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty.
\tag{SCC.6}
```

Thus `(SCC.3)` cannot be derived from raw pressure-Hodge capacity monotonicity
alone.

## 3. Holder split exposes the missing selected critical-strain reserve

The selected pressure-Hodge/collar action has the same combined structure as the
earlier Gold carrier: one velocity/Hodge side and one critical-strain side.  The
velocity/Hodge half is already attached to \(B_{\rm cap}\).  The missing factor
is the selected critical-strain reserve, schematically

```math
\int_{\mathcal F_{\rm lam}}
|\Sigma|^{5/2}\,d\mathcal R_{\rm cap}
<\infty .
\tag{SCC.7}
```

Energy gives only

```math
\Sigma\in L^2_{t,x},
\tag{SCC.8}
```

and the installed endpoint/half-tail model blocks promotion from `(SCC.8)` to
the selected \(5/2\)-capacity reserve `(SCC.7)`.  Local affine material-time
profiles can have order-one normalized selected action while their raw heat
mass is summable.

## 4. Direct proof attempt

Try to prove `(SCC.3)` by expanding the parent capacity over disjoint child
collars.  Orthogonality gives only

```math
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+R_{\rm legal}(Q)
\tag{SCC.9}
```

after legal overlap and collar synchronization.

The selected action term \(A(Q')\) is an additional critical readout.  To insert
it into the left side, one needs a strict capacity surplus:

```math
A(Q')
\le
c\left(
B_{\rm cap}(Q;Q')-B_{\rm cap}(Q')
\right)
+R_{\rm legal}(Q').
\tag{SCC.10}
```

But `(SCC.10)` is exactly the missing selected critical-strain capacity gain.
The installed same-line deformation/frame tax gives orientation and
single-ancestry attachment.  It does not give the root finiteness needed to
turn `(SCC.10)` into a summable bound.

## 5. Referee boundary

The pressure-Hodge capacity Bellman route is the best concrete representation of
the selected action Carleson/root reserve.  The direct proof stops at one
precise missing estimate:

```text
SelectedCriticalStrainCapacityParentDrop.A
```

meaning:

```math
\sum_{Q'\in ch(Q)} A(Q')
+
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+R_{\rm legal}(Q)
\tag{SCC.11}
```

with root finiteness from original data.

Equivalently, prove the selected critical-strain capacity reserve `(SCC.7)`.
Without `(SCC.11)` or `(SCC.7)`, the one-child half-tail `(SCC.6)` remains
compatible with the installed support axioms:

- laminar ancestry;
- raw pressure-Hodge capacity finiteness;
- complete-frame orientation;
- material Hodge attachment;
- same-line conditional deformation/frame tax.

So this note does not close the Gold route.  It narrows the live theorem from an
abstract selected reserve to the capacity-coordinate parent-drop theorem
`SelectedCriticalStrainCapacityParentDrop.A`.

