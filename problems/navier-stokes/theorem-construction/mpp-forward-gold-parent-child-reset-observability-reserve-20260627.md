---
theorem_id: forward-gold-parent-child-reset-observability-reserve-20260627
status: parent-child-reset-reserve-proposed-open-unifies-nozeno-branches
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / no-Zeno reset reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
answers_prompt: better idea after invisible-child multicurrency and no-Zeno record-return fork
attacks_hinge:
  - RepeatedCoreRecordReturnStorageBound.A
  - ShrinkingCoreEscapeCapacityLowerBound.A
  - SelectedCompressionRootReserve.A
new_hinge:
  - ParentChildSelectedResetReserve.A
  - ParentChildResetOrRepeatedCoreDichotomy.A
  - ResetVisibleSelectedCarrierObservability.A
source_surfaces:
  - /Users/thomasbirnie/.codex/attachments/fecb99eb-1583-4598-99bb-fa5a4a66021b/pasted-text.txt
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-multicurrency-invisible-child-to-stopped-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parentdrop-to-hs-relay-verification-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-record-return-branch-routing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-escape-capacity-lower-bound-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-branch-selected-capacity-closure-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-selected-tree-dichotomy-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-flux-bellman-monotonicity-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-reselection-root-reserve-convergence-20260627.md
effect: >-
  Replaces the raw shrinking-core capacity target with a parent-child reset
  reserve target. Repeated-core record/return becomes the no-reset branch;
  shrinking-core escape becomes the fresh-reset branch. The note does not close
  Gold: it isolates the noncircular theorem needed to make a fresh selected child
  pay a scale-invariant original-history reset charge instead of raw heat-scale
  capacity.
---

# Parent-child reset observability reserve

The better idea is not to make every shrinking child expensive at its own raw
scale.  The better idea is to make freshness expensive relative to the parent.

The child has only two lawful ways to carry retained selected action:

```text
same selected parent state
  -> repeated-core visit
  -> record/return storage pays it;

fresh selected parent-child state
  -> reset/reselection/collar-turnstile event
  -> parent-child reset charge pays it.
```

This keeps the supplied invisible-child object in the right role.  The object

```math
A_\infty>0,
\qquad
\mathsf S_\infty U_\infty=0
```

means: the child has real selected critical-strain action while the parent
pressure-Hodge boundary sees no defect.  The multicurrency analysis already
showed that pure boundary observability is too strong as a global theorem.  It
pays the pressure-visible quotient.  Schur-silent selected source must be routed
through same-material strain/exchange, viscous/radius service, or legal/reselection
loss.

The current no-Zeno fork needs the same idea one level higher: a child that is
invisible as a fresh child is not a fresh child.  It is part of the repeated-core
branch.  A genuinely fresh selected child must change the parent state in a
scale-invariant currency.

## 1. Why raw shrinking-core capacity still fails

The shrinking-core countermodel is the pressure-Hessian-balanced affine packet:

```math
Q_k,\qquad r_k\downarrow0,
```

with unit selected action

```math
A_{\rm sel}^{fresh}(Q_k)\simeq1
```

and raw collar / pressure-Hodge / turnstile cost

```math
R_{\rm raw}(Q_k)\lesssim r_k,\qquad \sum_kr_k<\infty.
```

Thus

```math
\sum_kR_{\rm raw}(Q_k)<\infty,
\qquad
\sum_kA_{\rm sel}^{fresh}(Q_k)=\infty.
```

Carleman, Rellich, microlocal, DtN Riccati, and adjoint-polarization currencies
are still useful, but only after the target is parent-visible reset.  Used as
raw child capacity, they replay the half-tail obstruction.

## 2. Candidate parent theorem

For one original smooth material history and one retained stopped laminar tree
\(\mathcal T(P)\), construct:

```text
B(Q) >= 0
```

a forward-native parent reserve, and

```text
J_reset(Q -> Q') >= 0
```

a paid reset charge for stopped parent-child transitions.  Both must be built
from original-history quantities: pressure-Hodge boundary state, collar normal,
wave covector, selector/order-lock motion, same-material strain/exchange,
viscous/radius service, and legal loss.  They cannot be defined from the future
selected descendant tail.

The local Bellman inequality should be:

```math
\sum_{Q'\in ch_{\rm stop}(Q)}A_{\rm sel}^{fresh}(Q')
+\sum_{Q'\in ch_{\rm stop}(Q)}B(Q')
\le
B(Q)
+\sum_{Q'\in ch_{\rm stop}(Q)}J_{\rm reset}(Q\to Q')
+R_{\rm legal}(Q).
\tag{1}
```

The root charge must satisfy:

```math
B(P)
+\sum_{Q\subseteq P}\sum_{Q'\in ch_{\rm stop}(Q)}
J_{\rm reset}(Q\to Q')
\le
C_N(u_0)+R_{\rm legal}(P).
\tag{2}
```

Then tree summation gives:

```math
\sum_{Q\in\mathcal T(P)}A_{\rm sel}^{fresh}(Q)
\le
C_N(u_0)+R_{\rm legal}(P),
\tag{3}
```

which is the selected first-ratio / compression root reserve.

Call this theorem:

```text
ParentChildSelectedResetReserve.A
```

## 3. Reset-or-repeated-core dichotomy

The noncircular heart is not `(1)` by itself.  The heart is the dichotomy that
decides whether a child is actually fresh:

```text
ParentChildResetOrRepeatedCoreDichotomy.A
```

Statement:

For a retained stopped selected child \(Q'\subset Q\) with
\(A_{\rm sel}^{fresh}(Q')\simeq1\), either:

1. the selected pressure-Hodge / collar / selector / strain-exchange state of
   \(Q'\) is inherited from \(Q\), up to paid legal and already-classified
   errors; then \(Q'\) belongs to the repeated-core branch and is paid by
   record growth or negative return of the stopped scale potential;
2. or \(Q'\) is a genuine fresh child; then

```math
J_{\rm reset}(Q\to Q')\gtrsim 1
\tag{4}
```

in an original-history reset currency.

This is the place where the invisible-child tools belong.  They should prove:

```text
ResetVisibleSelectedCarrierObservability.A
```

in the form

```math
A_{\rm sel}^{fresh}(Q')
\le
C\langle U_Q,\mathsf S_Q^{stop}U_Q\rangle
C\Omega_Q^{strain/ex}
CD_Q^{vis/rad}
CJ_{\rm reset}(Q\to Q')
R_{\rm legal}(Q).
\tag{5}
```

If the Schur term, strain/exchange term, viscous/radius term, legal term, and
reset term all vanish, then selected action vanishes.  If selected action does
not vanish, the child either inherits the parent state and is repeated, or it
pays reset.

## 4. How this unifies the two current branches

In the repeated-core branch, the reset charge is zero or already paid.  The
child is not creating a new selected state; it is revisiting the same material
core.  The record/return note then applies:

```math
Y=\partial_\sigma\Psi+S^{spill}+E,
\qquad
Y_+=Y+Y_-.
```

Selected positive visits force either new records of \(\Psi\) or negative
return.  The remaining repeated-core inputs are still:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
StoppedPotentialRecordAverageBound.A
StoppedNegativeScaleReturnCharge.A
```

In the shrinking-core branch, single-core storage resets at every smaller core.
That is exactly why raw capacity fails.  The parent-child theorem says the reset
itself is not free.  A sequence of shrinking affine selected packets can only
survive the root bound if every restart has

```math
J_{\rm reset}(Q_k\to Q_{k+1})\ll1.
```

So the sharp failed-proof test is:

```text
Can the transported affine-core half-tail keep changing cores while keeping
parent-child reset charge summable?
```

If yes, `ParentChildSelectedResetReserve.A` is false in the proposed form.  If
no, the shrinking-core branch closes without inventing a separate raw-capacity
theorem.

## 5. What must be proved next

The next proof unit is not another Schur-only invisible-child theorem.  It is
the reset theorem:

```text
ParentChildSelectedResetReserve.A
```

with three subclaims.

First:

```text
ParentChildResetOrRepeatedCoreDichotomy.A
```

Zero reset means the child keeps the same selected parent state and routes to
repeated-core record/return.

Second:

```text
ResetVisibleSelectedCarrierObservability.A
```

A genuinely fresh selected child forces a visible parent-child reset currency.
Carleman, Rellich/Pohozaev, microlocal defect, DtN Riccati, and adjoint
polarization are proof tools for this reset-visible statement, not standalone
Gold producers.

Third:

```text
OriginalHistoryResetChargeCarleson.A
```

The total reset charge is controlled from original smooth data:

```math
\sum_{Q\subseteq P}\sum_{Q'\in ch_{\rm stop}(Q)}
J_{\rm reset}(Q\to Q')
\le
C_N(u_0)+R_{\rm legal}(P).
\tag{6}
```

This is the noncircular root side.  It must be proved from parent-state
variation, selector/order-lock variation, collar-turnstile motion,
same-material exchange, and viscous/radius service.  It may not define
\(J_{\rm reset}\) to be selected action itself.

## 6. Result

The better Gold object is:

```text
parent-child reset reserve
```

not raw shrinking-core capacity and not standalone invisible-child
observability.

It says: a retained selected child that is invisible from the parent is not fresh
unless it pays a reset charge.  No reset routes the child into repeated-core
record/return.  Genuine reset must be Carleson from the original material
history.  That single parent theorem would collapse the current

```text
RepeatedCoreRecordReturnStorageBound.A
/
ShrinkingCoreEscapeCapacityLowerBound.A
```

fork into one selected compression root reserve.
