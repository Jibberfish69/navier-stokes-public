---
theorem_id: forward-gold-nozeno-record-return-branch-routing-20260627
status: record-return-mechanism-routed-onto-nozeno-reuse-escape-branches
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / no-Zeno reuse-escape dichotomy
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - NoZenoReuseEscapeDichotomyStrictCharge.A
  - RepeatedCoreNonreuseStorageBound.A
  - ShrinkingCoreEscapeCapacityLowerBound.A
  - StoppedPrimitivePLSRecordReturnDescent.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-strict-half-barrier-minimal-bad-chain-direct-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-history-affine-burst-nozeno-dichotomy-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-same-history-affine-burst-nozeno-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-branch-selected-capacity-closure-audit-20260626.md
effect: >-
  Prevents the new record/return BV mechanism from becoming a third route label.
  It lands the mechanism on the repeated-core branch of
  NoZenoReuseEscapeDichotomyStrictCharge.A and separates the genuinely different
  shrinking-core branch, which still needs a scale-invariant selected capacity /
  collar-turnstile lower bound rather than another single-core storage.
next_hinge:
  - RepeatedCoreRecordReturnStorageBound.A
  - ShrinkingCoreEscapeCapacityLowerBound.A
---

# No-Zeno record/return branch routing

The current relay edge is:

```text
NoZenoReuseEscapeDichotomyStrictCharge.A.
```

The minimal bad chain audit splits every surviving stopped fresh affine /
material-time high-ratio chain into two branches:

```text
repeated core,
or shrinking core escape.
```

The record/return BV descent is not a third branch.  It is the right mechanism
for the repeated-core branch, and it exposes why the shrinking-core branch needs
a different selected-capacity lower bound.

## 1. Repeated core

In the repeated-core branch, all retained selected visits stay on one material
ancestry line or on a nested core with persistent material identity.

After the signed scale-potential lift, the selected positive primitive driver
on that core has the one-dimensional form

```math
Y_+=Y+Y_-,
\qquad
Y=\partial_\sigma\Psi+S^{spill}+E.
\tag{NBR.1}
```

On the ordered core, positive variation splits into records and returns:

```math
V_+(\Psi;I_M)
=
\operatorname{Rec}_M(\Psi)
+V_-^{return}(\Psi;I_M)
+O(R_M^{spill/legal}).
\tag{NBR.2}
```

The selected first-ratio action on the retained visits is controlled by that
positive variation:

```math
\sum_{Q_k\subset\mathcal A}A_{\rm sel}^{fresh}(Q_k)
\lesssim
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
+R_{\rm legal}(\mathcal A).
\tag{NBR.3}
```

Thus the repeated-core branch is closed by the finite original-data storage:

```text
RepeatedCoreRecordReturnStorageBound.A
```

in the form

```math
\int_{\mathcal F_{\rm lam}}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right)d\mathcal R_{\rm ancestry}(\mathcal A)
\le
C_N(u_0)+R_{\rm legal}.
\tag{NBR.4}
```

This is the record/return version of `RepeatedCoreNonreuseStorageBound.A`.
It is sharper than the older generic variation wording because it names the
two ways a repeated core can spend selected action: record growth or negative
return.

The exact open inputs are still:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
StoppedPotentialRecordAverageBound.A
StoppedNegativeScaleReturnCharge.A.
```

## 2. Shrinking core escape

The shrinking-core branch is different.  Here the selected visits avoid one
fixed material core by restarting on smaller transported cores:

```math
r_k\downarrow0,
\qquad
A_{\rm sel}^{fresh}(Q_k)\simeq1,
\qquad
\sum_kR_{\rm raw}(Q_k)<\infty.
\tag{NBR.5}
```

A single-core record/return storage can reset at every new core.  Therefore
`(NBR.2)` alone does not sum over the escaping family.  The missing theorem is
not another bounded variation law on one core; it is a lower bound that makes
each restart pay a scale-invariant selected charge:

```text
ShrinkingCoreEscapeCapacityLowerBound.A.
```

The required form is:

```math
\sum_{Q_k\ {\rm escaping}}A_{\rm sel}^{fresh}(Q_k)
\le
C_N\sum_k
\left(
\operatorname{Cap}_{PH}^{sel}(Q_k)
+\operatorname{CollarTurnstile}^{sel}(Q_k)
+R_{\rm legal}(Q_k)
\right).
\tag{NBR.6}
```

The important word is selected.  Raw heat-scale capacity can scale like
\(r_k\), while normalized selected action remains order one.  A raw capacity
bound would replay the half-tail.  The escaping-core theorem must prove that
creating a new selected pressure-Hodge / critical-strain core costs either
scale-invariant selected capacity or a parent-child reset charge that is already
legal/reselection/collar-turnstile material.

## 3. Dichotomy after record/return

The record/return note sharpened the repeated-core half of the dichotomy:

```text
repeated core
  -> record growth or negative return.
```

The shrinking-core branch remains:

```text
shrinking core
  -> selected capacity / collar-turnstile no-escape.
```

So the no-Zeno theorem now has the clean branch form:

```text
RepeatedCoreRecordReturnStorageBound.A
+
ShrinkingCoreEscapeCapacityLowerBound.A
=>
NoZenoReuseEscapeDichotomyStrictCharge.A
=>
StoppedPrimitivePLSStrictHalfBarrierBreak.A.
```

This is narrower than the full tent theorem.  It only has to rule out the
minimal stopped high-ratio chain after visible Schur defect, silent source,
spent-source reuse, selector/reselection, recirculation/return, entrance/legal,
subheat, nonlaminar exits, and local orientation have already been removed.

## 4. Result

The better current idea remains the record/return descent, but it should be
stored as a branch mechanism:

```text
RepeatedCoreRecordReturnStorageBound.A.
```

The other branch is still genuinely open:

```text
ShrinkingCoreEscapeCapacityLowerBound.A.
```

Any next proof attempt should either prove the signed scale-potential lift and
record/return charge on reused cores, or attack the selected capacity lower
bound for escaping cores.  A local detector, raw Bessel estimate, or stopped BMO
consumer does not hit the current no-Zeno branch split.
