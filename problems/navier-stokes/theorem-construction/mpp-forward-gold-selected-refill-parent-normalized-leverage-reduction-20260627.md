---
theorem_id: forward-gold-selected-refill-parent-normalized-leverage-reduction-20260627
status: conditional-reduction-selector-admission-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - ScaleNormalizedStressNoveltyBellmanLeverage.A
  - EffectiveResistanceSelectedActionAdmission.A
  - RetainedActiveRawBellmanCapacity.A
uses:
  - ParentSubtractedSelectedReadoutDecomposition.A
  - ParentSubtractedInheritedDirectionBesselClosure.A
  - ProjectionJumpFirstExitCarlesonFromRouteEnergy.A
  - StoppedSelectorBoundedProjectionOriginalParticipationLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-normalized-stress-novelty-bellman-leverage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-effective-resistance-bellman-capacity-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-readout-parent-subtracted-current-admission-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projection-jump-first-exit-carleson-from-route-energy-20260627.md
effect: >-
  Proves the Bellman/leverage telescope from a precise selected-refill
  admission identity.  This does not close Gold.  It narrows the remaining
  theorem to SelectedRefillParentNormalizedAdmission.A: the stopped Navier-Stokes
  selected readout must count only parent-normalized new leverage, not raw
  heat-scale level reuse.  It also records the surviving shrinking orthogonal
  chain showing that fresh Bessel and first-exit reset payment do not imply the
  admission identity.
---

# Selected refill parent-normalized leverage reduction

The stress source is not missing. It is the same Cauchy stress history of the
same transported material packet. The scale-normalized gap is that a small
heat-scale stress read could still be declared one selected refill unless the
selector measures novelty against the parent stress record.

This note proves the algebraic part cleanly and isolates the remaining
Navier-Stokes admission line.

## 1. Installed parent-subtracted current

Fix a stopped parent \(P\). Work in

\[
\mathfrak H_P=L^2_{\rm sym,tr}(\operatorname{Hist}(P)),
\qquad
G=2\nu S_A .
\]

For a retained child stress test \(a_Q\), split against the parent-known past:

\[
a_Q=b_Q+d_Q,
\qquad
b_Q=\Pi_{E_{Q^-}}a_Q,
\qquad
d_Q=(I-\Pi_{E_{Q^-}})a_Q .
\]

The parent-subtracted current is

\[
\Delta J_Q^{new}
=
\langle G,a_Q\rangle-\langle G,b_Q\rangle
=
\langle G,d_Q\rangle .
\tag{1}
\]

Thus exact reuse is already parent current:

\[
d_Q=0
\quad\Rightarrow\quad
\Delta J_Q^{new}=0.
\tag{2}
\]

Fresh orthogonal use is Bessel-paid, and changed inherited use is the installed
projection-jump / first-exit branch. Those statements do not yet control the
scale-normalized unit count. They only say what can be legitimately new.

## 2. The needed admission identity

The remaining selector admission theorem is:

\[
\boxed{
\omega_Q^{new}
\le
C_N
\min\left\{
1,\,
\frac{|\langle G,d_Q\rangle|^2}{s_{Q^-}}
\right\}
+R_Q^{reset}+R_Q^{legal}+Stop_Q .
}
\tag{3}
\]

Here \(s_{Q^-}\) is the parent stress-record size already available before
\(Q\) is admitted. One convenient normalization is

\[
s_{Q}
=
s_{Q^-}+\mu_G(\widehat Q),
\qquad
s_{P,0}>0,
\tag{4}
\]

where

\[
\mu_G(\widehat Q)
=
\int_{\widehat Q} |G|_{\mathfrak H_P}^2
\]

denotes the same-material raw stress work in the stopped hat of \(Q\), read in
the parent route metric.

Equation `(3)` is exactly the physical novelty rule. A child can count as a
selected refill only through leverage against the parent record. A repeated
read of an already recorded stress direction is not a new unit; a changed read
is reset/legal/stop; a genuinely fresh read is measured by its parent-normalized
stress increment.

## 3. Bellman leverage follows from `(3)`

The stopped tests are normalized in the parent route Hilbert metric:

\[
\|d_Q\|_{\mathfrak H_P}\le 1
\tag{5}
\]

after the inherited projection and selector normalization. Hence Cauchy gives

\[
|\langle G,d_Q\rangle|^2
\le
\mu_G(\widehat Q)\,\|d_Q\|_{\mathfrak H_P}^2
\le
\mu_G(\widehat Q).
\tag{6}
\]

Substitute `(6)` into `(3)`:

\[
\omega_Q^{new}
\le
C_N
\min\left\{
1,\,
\frac{\mu_G(\widehat Q)}{s_{Q^-}}
\right\}
+R_Q^{reset}+R_Q^{legal}+Stop_Q .
\tag{7}
\]

Since

\[
\min\{1,x\}\le C\log(1+x)
\qquad (x\ge0),
\tag{8}
\]

we get

\[
\omega_Q^{new}
\le
C_N
\log\left(
1+\frac{\mu_G(\widehat Q)}{s_{Q^-}}
\right)
+R_Q^{reset}+R_Q^{legal}+Stop_Q .
\tag{9}
\]

This is the scale-normalized Bellman/leverage estimate.

## 4. Telescope on one parent ancestry line

Using `(4)`,

\[
\log\left(
1+\frac{\mu_G(\widehat Q)}{s_{Q^-}}
\right)
=
\log s_Q-\log s_{Q^-}.
\tag{10}
\]

Therefore, along a fixed stopped parent-known ancestry line,

\[
\sum_{Q\subset P}
\log\left(
1+\frac{\mu_G(\widehat Q)}{s_{Q^-}}
\right)
=
\log s_{\rm final}-\log s_{P,0}.
\tag{11}
\]

The final stress record is bounded by the original routed participation record:

\[
s_{\rm final}
\le
s_{P,0}+\mu_G(\widehat P)+R_{\rm legal}(P)+Stop(P).
\tag{12}
\]

Thus

\[
\sum_{Q\subset P}
\omega_Q^{new}
\le
C_N
\log\left(
1+\frac{\mu_G(\widehat P)}{s_{P,0}}
\right)
+R_{\rm reset}(P)+R_{\rm legal}(P)+Stop(P).
\tag{13}
\]

First-exit/reset Carleson controls \(R_{\rm reset}\). Bounded stopped overlap
and the bounded-projection theorem put \(\mu_G(\widehat P)\) under the original
same-material participation law. This gives the retained active Bellman
capacity estimate once `(3)` is proved.

## 5. The surviving shrinking-chain test

The admission identity `(3)` is not a consequence of the fresh Bessel estimate.
The minimal survivor is already visible in the parent Hilbert space.  Take
\(\ell_m=2^{-m}\), orthonormal stopped residual directions \(e_m\), and

\[
G=\sum_m \ell_m^{1/2}e_m .
\tag{14}
\]

Let the retained children \(Q_m\) have

\[
d_{Q_m}=e_m,\qquad
\mu_G(\widehat Q_m)=|\langle G,e_m\rangle|^2=\ell_m,
\qquad
R^{reset}_{Q_m}=R^{legal}_{Q_m}=Stop_{Q_m}=0 .
\tag{15}
\]

Then the installed payments all remain finite:

\[
\sum_m|\langle G,d_{Q_m}\rangle|^2
=
\sum_m\ell_m
<\infty .
\tag{16}
\]

This chain does not reuse the same direction, so exact-reuse subtraction is not
triggered.  It has no projection jump, collar movement, stop, or legal exit.
Pressure has already been removed by the divergence-free material tests.  Thus
fresh Bessel, pressure cancellation, and first-exit reset payment do not prevent
a selector from declaring

\[
\omega_{Q_m}^{new}\simeq 1
\qquad\text{for every }m .
\tag{17}
\]

The parent-normalized admission identity `(3)` is precisely the sentence that
rules out `(17)`, because with

\[
s_{Q_m^-}=s_{P,0}+\sum_{j<m}\ell_j
\tag{18}
\]

the permitted leverage is only

\[
\log\left(1+\frac{\ell_m}{s_{Q_m^-}}\right),
\tag{19}
\]

and these terms telescope to a finite parent stress-record budget.

The seed \(s_{P,0}\) is not a child-sized free denominator.  It must be a
parent-known normalization fixed before the selected tail is read.  Starting a
new empty account at each shrinking child would reintroduce the same missing
scale-normalized unit count under another name.

So the reduction is exact: the Bellman/log calculation proves finite action
after `(3)`, and the shrinking-chain test shows `(3)` is the genuine remaining
Navier-Stokes selector-admission theorem.

## 6. Exact remaining theorem

The remaining theorem is not another stress source theorem. It is the selector
admission identity:

\[
\boxed{
\texttt{SelectedRefillParentNormalizedAdmission.A}
}
\]

For every retained stopped child before selected readout, the selected refill
weight satisfies `(3)`. Equivalently, the stopped Navier-Stokes selector is not
allowed to promote raw heat-scale level reuse into a unit refill unless that
read has parent-normalized leverage, or else is charged to reset, legal exit, or
stop.

If this admission identity is installed, the Bellman telescope above gives
finite selected action. Combined with the existing downstream relays, that gives
finite full same-material action and the usual fixed-\(H^s\) continuation.

Partial, not Gold closed.
