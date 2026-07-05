---
theorem_id: forward-gold-bathtub-momentum-flux-gate-producer-attempt-20260704
status: candidate-producer-coordinate-two-calibration-passes-currency-mismatch-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height / bathtub packet-momentum flux gate
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - WLF.60
  - ParentWeightedSelectedFirstAdmissionPulseMeasure.A
  - PredictableActiveWeightTransitionCarleson.A
authorship: >-
  Physical principle: Thomas Birnie, bathtub packet-momentum insight,
  conversation 078-anisotropic-regularization-in-fluids, 2025-01-05
  ("locally all the particles must share a net momentum... even if the small
  eddies thrash about wildly, they can't overcome the total momentum of the
  tensor as it moves"). Formalization, calibration tests, and obstruction
  audit: Claude (Fable), 2026-07-04, working under the lane's entrance-order
  and physical-story rules.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-fluid-physical-story-entrance-order-consolidation-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-restart-after-positive-clipping-demotion-20260702.md
completion_truth: >-
  This note proves no smoothness theorem and does not pay WLF.60. It installs
  the bathtub principle as a flux-gate coordinate: child-scale admission is
  gated multiplicatively by co-located resolved strain (stress-against-strain
  work), which is a true-NS identity in the Tao-surviving structure class. Two
  calibration tests pass: the gate mechanism is absent in the half-tail
  countermodel (killing its free re-reading mechanism) and absent in averaged
  nonlinearities (Tao class). One new obstruction is identified precisely: the
  record-cost accounting closes at the level of upcrossing bookkeeping but is
  paid in H-dot-3/2 window-dissipation currency, while the only a priori
  global budget (Leray) is in H-dot-1 currency; the missing half derivative
  reappears as a currency mismatch between record cost and available budget.
  The surviving open question is record self-financing: whether the
  window-local H-dot-3/2 dissipation that a record upcrossing itself forcibly
  generates can be produced as the same-window strain persistence payment the
  gate requires.
---

# Bathtub momentum flux-gate producer attempt

## 1. The physical principle, in the owner's words

From the 2025-01-05 conversation (source: `078-anisotropic-regularization-in-fluids`):

> "locally all the particles must share a net momentum ... even if the small
> eddies thrash about wildly, they can't overcome the total momentum of the
> tensor as it moves."

Physical reading in the current grammar: a child eddy is carried inside its
parent packet. The packet's mean motion does no work on the child; only
*relative* motion — resolved strain across the child's scale — can feed it.
Uniform motion feeds nothing. This is a transport-and-pressure statement about
the same fluid packet, hence in the structure class that survives nonlinearity
averaging (see the Tao survival audit in the current session record).

## 2. The gate identity

Let \(u_\ell\) denote the resolved (coarse-grained) field at scale \(\ell\)
inside the stopped parent packet, and let

\[
\tau_\ell := (u\otimes u)_\ell - u_\ell\otimes u_\ell
\]

be the subscale stress. The resolved kinetic-energy balance gives the exact
local flux identity (standard: Germano / Duchon–Robert / LES literature; no
new estimate is claimed here):

\[
\Pi_\ell = -\,\tau_\ell : \nabla u_\ell .
\tag{BFG.1}
\]

The energy admitted to scales below \(\ell\) in a spacetime window is the work
of the subscale stress against the *co-located resolved strain*. Three
consequences, all structural:

1. **Multiplicative gate.** \(|\Pi_\ell| \le |\tau_\ell|\,|\nabla u_\ell|\).
   Zero same-window strain means zero admission, regardless of how much
   energy or momentum the parent carries. This is the bathtub principle as
   an inequality: the packet's net momentum is not a source; only its strain
   is.
2. **Signed flux.** \(\Pi_\ell\) is signed; misaligned stress gives
   backscatter (energy returns to the parent). Persistent admission requires
   persistent *alignment*, which connects this coordinate to the installed
   angle-lock / paid-rotation reductions.
3. **Predictable weight.** The gate weight \(\nabla u_\ell\) is the packet's
   present resolved strain — produced by the original history, not selected
   from the future tail. Taking the predictable active weight of `(WPT.19)`
   to be the co-located resolved strain answers the noncircularity
   requirement structurally: the weight is parent-announced by construction.

## 3. Calibration test 1: the half-tail countermodel

The half-tail model (`WPT.6`) reads one fixed parent vector through infinitely
many increasingly expensive selected windows; its weighted linear bill
diverges while raw square mass stays finite. Under the gate, each window's
admission requires strain co-located in that window; a fixed parent vector
with finite total strain, re-read through shrinking windows, admits vanishing
flux per window. The divergence mechanism of the countermodel — free
re-reading — is not available once admission must be gated by `(BFG.1)`.

This is the required calibration direction: the countermodel is transport-free
and must be killed by any candidate producer. It does not prove the NS-side
bound; it shows the gate is the right *kind* of mechanism.

## 4. Calibration test 2: Tao class

For averaged nonlinearities in the Tao class, energy transfer is implemented
by engineered frequency-local multipliers; there is no identity of the form
`(BFG.1)` tying admission to co-located resolved strain of a transporting
field. The gate is therefore true-NS structure, not preserved by averaging —
consistent with the requirement that any actual producer payment must live in
the destroyed class.

## 5. Record-cost accounting and the currency-mismatch obstruction

Write \(H(t)=\tfrac12\|\Lambda^{1/2}u\|_2^2\),
\(D_{3/2}(t)=\|\Lambda^{3/2}u\|_2^2\), and recall the standard critical
estimate (`WPT.9`):

\[
\frac{dH}{dt} \le C\sqrt{H}\,D_{3/2} - \nu D_{3/2}.
\tag{BFG.2}
\]

On a record upcrossing \([a,b]\) from height \(\lambda\) to \(2\lambda\), the
record identity plus `(BFG.2)` force

\[
\lambda + \nu\!\int_a^b\! D_{3/2}
\;\le\; C\sqrt{2\lambda}\int_a^b\! D_{3/2}
\quad\Longrightarrow\quad
\int_a^b D_{3/2}\;\gtrsim\;\frac{\sqrt{\lambda}}{C}.
\tag{BFG.3}
\]

So each doubling record at height \(\lambda\) forcibly generates
window-dissipation of size \(\sqrt{\lambda}\) in \(\dot H^{3/2}\) currency,
and a climb to peak \(\Lambda\) costs a geometric sum
\(\gtrsim \sqrt{\Lambda}\) in that currency. If the climb cost were payable
against an a priori budget, a finite peak bound would follow by upcrossing
accounting alone.

**The obstruction, stated exactly:** the only a priori global budget from
arbitrary data is Leray,
\(\nu\int_0^T \|\nabla u\|_{L^2}^2\,dt \le \tfrac12\|u_0\|_2^2\),
which is \(\dot H^1\) currency. The record cost `(BFG.3)` is \(\dot H^{3/2}\)
currency. No interpolation converts the budget upward without invoking a norm
above the budget's control. The missing half derivative of the classical
criticality wall reappears here as a **currency mismatch between record cost
and available budget**. This note therefore does not pay WLF.60; it relocates
the wall into a sharper coordinate.

## 6. The surviving question: record self-financing

`(BFG.3)` cuts both ways. The record does not merely *cost*
\(\dot H^{3/2}\)-dissipation; it *forcibly produces* it, inside its own
window, as a consequence of the record happening at all. The gate `(BFG.1)`
says continued admission needs same-window strain; `(BFG.3)` says the record
manufactures same-window dissipation, i.e. strain-squared at the child-facing
scales, of size \(\sqrt{\lambda}\).

The precise open question this produces:

\[
\textbf{Record self-financing: is the } \dot H^{3/2}\text{-dissipation that a
record forcibly generates the same strain the gate requires the parent to
persist — and does its viscous decay tax the next admission at a strict
subunit rate?}
\tag{BFG.4}
\]

If the forced dissipation and the required gate-strain are the same
same-window object (a same-carrier identity in the sense of `(SFP.12c)`),
the coupled storage matrix acquires a diagonal feedback term with a physical
origin: every record spends the resource that admission needs, and viscosity
converts the spend into heat rather than returning it. If they are different
objects (strain produced at the wrong scales or the wrong location), the
mismatch should be constructible as a countermodel, which would demote this
coordinate to support.

## 7. Classification under the entrance order

Proof: none claimed. `(BFG.1)` is a standard identity; `(BFG.3)` is immediate
from `(BFG.2)` and the record identity.

Strict reduction: the gate coordinate reduces the predictable-weight
requirement of `(WPT.19)` to co-located resolved strain, removing the
future-tail selection risk for that clause.

Checked obstruction: the currency mismatch of Section 5 — upcrossing
accounting with the classical estimate cannot close from the Leray budget;
any closure must use window-local production, not global budget.

Support: the alignment/backscatter reading of Section 2 attaches to the
installed angle-lock and paid-rotation reductions but does not discharge
them.

Open: `(BFG.4)`, the record self-financing question, proposed as the next
pressure test for the same-parent coupled storage object.
