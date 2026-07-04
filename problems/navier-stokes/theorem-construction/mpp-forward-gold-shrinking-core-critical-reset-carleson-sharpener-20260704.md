---
theorem_id: forward-gold-shrinking-core-critical-reset-carleson-sharpener-20260704
status: strict-reduction-and-checked-obstruction
created: 2026-07-04
problem: navier-stokes
route: forward-gold original-history selected-critical fresh source / shrinking-core branch
target_object: ScaleInvariantSelectedCapacityNoEscape.A
role: >
  Sharpens the shrinking-core branch into the genuine fresh parent-child reset
  problem, and records that raw capacity, raw reset distance, Bessel freshness,
  compactness, and reverse-Holder consumer wording do not prove the branch.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-extremal-two-branch-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-escape-capacity-lower-bound-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bellman-root-capacity-branch-collapse-and-shrinking-core-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-collar-normal-compression-capacity-lower-bound-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-observability-reserve-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-critical-weight-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-reset-overrun-carleson-boundary-20260627.md
completion_truth: >-
  This note does not prove ScaleInvariantSelectedCapacityNoEscape.A. It installs
  the sharper physical reduction: after repeated-core inheritance is routed to
  record/return, the shrinking-core branch is exactly the genuinely fresh
  parent-child reset branch. It closes only if a critical weighted reset charge
  is generated from original-history scale derivative, collar/turnstile,
  exchange, covector/frame, or equivalent same-material reset structure before
  child selected readout.
---

# Shrinking-core critical reset Carleson sharpener

## 1. Same physical packet

The shrinking-core branch is still one original Navier-Stokes material history.
It is not a collection of unrelated dyadic boxes. The selected readout avoids
reusing one fixed core by restarting on smaller transported cores:

\[
Q_k,\qquad r_k\downarrow0,\qquad A_{\rm sel}(Q_k)\simeq1.
\]

The same velocity field, pressure, viscosity, incompressibility, transported
metric, pressure-Hodge frame, collar/turnstile state, selector, and scale-time
history are present at every restart.

The physical question is whether those restarts are genuinely new parent-child
selected states, or only inherited parent state re-read on smaller cores.

## 2. Checked obstruction to raw capacity

For a heat-scale affine packet,

\[
|\Sigma|\simeq r^{-2},\qquad |Q_r|\simeq r^5.
\]

The raw square/capacity bill scales like

\[
R_{\rm raw}(Q_r)\sim \int_{Q_r}|\Sigma|^2\simeq r,
\]

while selected critical action is scale invariant:

\[
A_{\rm sel}(Q_r)\sim \int_{Q_r}|\Sigma|^{5/2}\simeq1.
\]

Thus a shrinking family can satisfy

\[
\sum_k R_{\rm raw}(Q_{r_k})<\infty,
\qquad
\sum_k A_{\rm sel}(Q_{r_k})=\infty.
\]

This defeats raw pressure-Hodge capacity, raw collar area, raw turnstile cost,
raw reset distance, and raw Bessel freshness. A proof that pays selected action
from any of those raw quantities has silently inserted the missing critical
weight.

Compactness also does not close the branch. Rescaling a shrinking packet may
produce a local affine pressure-strain profile compatible with the local
incompressible Navier-Stokes law; the global matching and collar defects can
remain radius-weighted. The compactness limit shows the enemy profile, not its
exclusion.

## 3. Reset-or-repeated-core dichotomy

The parent-child reset reserve gives the right physical split.

For a retained selected child \(Q'\subset Q\), either the child carries the same
selected parent state, up to paid legal/collar/selector errors, or it is a
genuinely fresh parent-child selected state.

No genuine reset means:

```text
inherited selected parent state
-> repeated-core record/return branch.
```

Genuine freshness means:

```text
new selected parent-child state
-> critical weighted reset charge.
```

So shrinking-core escape is not a third physical source after repeated-core
inheritance has been removed. It is the fresh reset branch.

## 4. Correct charge

The raw reset charge

\[
J_{\rm raw}(Q\to Q')
\simeq
\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{\rm raw}}^2
+J_{\rm selector/collar}^{raw}
+R_{\rm legal}
\]

fails the fresh orthogonal half-tail:

\[
\|\Delta Z_\ell^{fresh}\|_{\mathcal H_{\rm raw}}^2
=
\nu_\ell
=
{2^{-\ell}\over \ell+1}.
\]

Then

\[
\sum_\ell J_{\rm raw,\ell}<\infty,
\qquad
\sum_\ell A_\ell^{sel}
\simeq
\sum_\ell2^\ell\nu_\ell
=\infty.
\]

The reset charge must be critical-weighted:

\[
J_{\rm crit}(Q\to Q')
\simeq
w(Q')\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{\rm raw}}^2
+J_{\rm select/lock}^{crit}
+J_{\rm collar/turn}^{crit}
+R_{\rm legal}.
\]

The local lower edge is:

\[
A_{\rm sel}^{fresh}(Q')
\le
CJ_{\rm crit}(Q\to Q')
+C\langle U_Q,\mathsf S_Q^{stop}U_Q\rangle
+C\Omega_Q^{strain/ex}
+CD_Q^{vis/rad}
+R_{\rm legal}(Q).
\tag{SCR.1}
\]

The root theorem is:

\[
\sum_{Q\subseteq P}\sum_{Q'\in ch_{\rm stop}(Q)}
J_{\rm crit}(Q\to Q')
\le
C_N(u_0)+R_{\rm legal}(P).
\tag{SCR.2}
\]

Together, `(SCR.1)` and `(SCR.2)` imply the shrinking-core selected action
bound after repeated-core inherited visits are routed to record/return.

## 5. Noncircular source of the weight

Reverse Holder, Gehring, entropy, and BMO language are consumers once the
parent-known source density or log-density square function is produced. They do
not by themselves generate the critical reset weight.

The weight must be born before child selected readout from original-history
scale motion. The current nonduplicate source is:

```text
CriticalWeightedParentChildResetCarleson.A
/ LogScaleResetDerivativeCarrierBound.A
/ MovingLowHighInterfaceLowerEdge.A.
```

In concrete terms, a genuinely fresh selected child must be represented by
original-history log-scale derivative, collar/turnstile, exchange, covector/frame
motion, or equivalent same-material reset structure:

\[
\Delta Z_{Q\to Q'}^{fresh}
\approx
\int_{\log r(Q')}^{\log r(Q)}
\partial_\sigma Z(\sigma)\,d\sigma
+\text{turnstile}
+\text{exchange}
+\text{covector/frame}
+\text{legal}.
\tag{SCR.3}
\]

Then a harmonic active-weight Cauchy/Carleson estimate can pay `(SCR.2)` only
after the parent-announced reset derivative in `(SCR.3)` has been constructed
from the original material history.

## 6. Strict reduction

The shrinking-core branch now has the nonduplicate form:

\[
\begin{aligned}
&\texttt{ParentChildResetOrRepeatedCoreDichotomy.A}\\
&+\texttt{ResetVisibleSelectedCarrierObservability.A}\\
&+\texttt{CriticalWeightedParentChildResetCarleson.A}\\
&\Longrightarrow
\texttt{ScaleInvariantSelectedCapacityNoEscape.A}.
\end{aligned}
\tag{SCR.4}
\]

The first line sends inherited no-reset children back to repeated-core
record/return. The second line gives the local lower edge for genuinely fresh
children. The third line supplies the original-history root bound for critical
reset charge.

## 7. Current proof truth

This is a strict reduction and checked obstruction, not closure. Raw shrinking
capacity, raw reset distance, raw Bessel freshness, tree disjointness, and local
compactness do not prove `ScaleInvariantSelectedCapacityNoEscape.A`.

The remaining PDE wall is to construct the parent-announced critical reset
derivative/current from the same original Navier-Stokes packet and prove its
Carleson packing before child selected readout.
