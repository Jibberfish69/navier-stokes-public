---
theorem_id: forward-gold-k5-finite-selector-menu-locality-dichotomy-20260706
status: exact-dichotomy-finite-menu-locality-requires-support-or-uniform-threshold
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5FiniteSelectorMenu.NotLocalityAlone
  - K5BoundedSupportSelectorMenu.LocalityPigeonhole
  - K5AtomicRecordAdmission.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-selector-capture-finite-score-scope-audit-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-record-edge-selector-menu-modulus-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-selected-throughput-local-density-alias-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-distributed-low-density-riesz-admission-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-record-charge-submeasure-locality-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-finite-lp-admission-locality-obstruction-20260706.md
completion_truth: >-
  Strict reduction only. A finite selected-score menu does not by itself force
  K5 record locality: a one-element menu containing the global spread test
  \(a_L=L^{-1/p'}\mathbf 1_{[0,L]}e\) reads the finite-\(L^p\) witness
  \(G_L=A L^{-1/p}\mathbf 1_{[0,L]}e\) with fixed norm and fixed selected
  action while every bounded effective cell carries \(O(L^{-1})\) mass. A
  bounded-diameter selected menu does force locality: if each active test is
  supported on a cell of length at most \(\ell_*\), has \(L^{p'}\)-norm at
  most \(B\), and the score uses a fixed threshold/max rule, then the selected
  cell has \(L^p\)-mass at least \((A_0/B)^p\); for a finite sum the same
  statement loses a factor \(M\), so \(M\) must be uniform. Thus the missing
  K5 producer is not finite label count; it is atomic/bounded-diameter
  selected support plus a uniform threshold or multiplicity law before readout,
  or else a paid/exit/admission-failure classification for length-growing
  tests. This proves no K5 cap, no actual Navier-Stokes route-out, no
  confinement constant, and no MPP closure.
---

# K5 finite selector menu: locality requires bounded support

## 1. Object

The finite-\(L^p\) obstruction left a possible selector-side repair:

\[
  \text{the selected K5 record is carried by a finite parent-known menu.}
  \tag{FML.1}
\]

This note tests the exact implication

\[
  \text{finite selected-score menu}
  \Longrightarrow
  \text{bounded effective support or fixed local density}.
  \tag{FML.2}
\]

The answer is a dichotomy. Finite label count alone is not locality. Finite
label count plus bounded effective support and a uniform threshold/multiplicity
law is locality by one Hölder estimate.

Physically, the issue is one same-fluid K5 carrier. A parent-known score may
name the carrier before readout, but that does not say whether the score sees
a bounded subpacket or the whole long endpoint-delay length.

## 2. Bounded-support menus force a local floor

Work on the K5 effective coordinate \(I_L=[0,L]\) after the transverse/profile
factors have been fixed. Let \(G\in L^p(I_L;E)\), \(1\le p<\infty\), and let
\(p'\) be the dual exponent.

Let the parent menu be

\[
  \mathcal A=\{a_i:1\le i\le M\},
  \tag{FML.3}
\]

with

\[
  \operatorname{supp} a_i\subset J_i,\qquad
  |J_i|\le\ell_*,
  \qquad
  \|a_i\|_{L^{p'}}\le B .
  \tag{FML.4}
\]

If the selected score is a max/threshold score and

\[
  \max_{1\le i\le M}
  \left|\int_{I_L}\langle G(z),a_i(z)\rangle\,dz\right|
  \ge A_0,
  \tag{FML.5}
\]

then for one index \(i_*\),

\[
  A_0
  \le
  \|G\|_{L^p(J_{i_*})}\|a_{i_*}\|_{L^{p'}}
  \le
  B\|G\|_{L^p(J_{i_*})}.
  \tag{FML.6}
\]

Hence

\[
  \int_{J_{i_*}}|G|^p\,dz
  \ge
  \left({A_0\over B}\right)^p .
  \tag{FML.7}
\]

Since \(|J_{i_*}|\le\ell_*\), this also gives a bounded-cell density floor:

\[
  {1\over |J_{i_*}|}\int_{J_{i_*}}|G|^p\,dz
  \ge
  {1\over \ell_*}\left({A_0\over B}\right)^p .
  \tag{FML.8}
\]

Thus bounded-support selected capture is exactly a local-density or atomic
record premise.

If instead the score is a finite sum and

\[
  \sum_{i=1}^M
  \left|\int_{I_L}\langle G,a_i\rangle\right|
  \ge A_0,
  \tag{FML.9}
\]

then some \(i_*\) satisfies

\[
  \int_{J_{i_*}}|G|^p\,dz
  \ge
  \left({A_0\over MB}\right)^p .
  \tag{FML.10}
\]

So a sum-score gives a uniform local floor only when \(M\) is uniformly bounded
in the K5 length/Reynolds parameter, or when the score has a fixed threshold
that one menu element must cross.

## 3. Finite menus alone do not force locality

Now remove the support bound. A one-element menu already defeats (FML.2).

For \(1\le p<\infty\), take

\[
  G_L=A L^{-1/p}\mathbf 1_{[0,L]}e,
  \qquad
  a_L=L^{-1/p'}\mathbf 1_{[0,L]}e,
  \tag{FML.11}
\]

with \(a_L=\mathbf 1_{[0,L]}e\) when \(p=1\). The menu is finite:

\[
  \mathcal A_L=\{a_L\}.
  \tag{FML.12}
\]

It has fixed dual norm and fixed selected read:

\[
  \|a_L\|_{L^{p'}}=1,
  \qquad
  \int_{0}^{L}\langle G_L,a_L\rangle\,dz=A .
  \tag{FML.13}
\]

But every bounded effective cell \(J\) with \(|J|\le\ell_*\) carries

\[
  \int_J |G_L|^p\,dz
  \le
  A^p{\ell_*\over L}
  \longrightarrow0 .
  \tag{FML.14}
\]

Thus "finite menu" is only a count of selector labels. It does not prevent a
single selected label from being a length-growing global test.

## 4. Selector-score translation

The installed finite-score theorem has the correct downstream scope:

\[
  \text{finite stopped scores pay selector/reset motion after an
  order-locked retained chart exists.}
  \tag{FML.15}
\]

The July 4 selector-capture audit already separated that theorem from the prior
producer:

\[
  \texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}.
  \tag{FML.16}
\]

This note adds the K5 locality condition to that producer. The menu must not
only be finite and parent-known. For K5 route-out it must also supply one of:

1. bounded effective support for the selected score;
2. fixed local density on the endpoint-delay carrier;
3. a uniformly bounded multiplicity/sum-score loss;
4. a paid/stop/legal/exit/admission-failure classification for length-growing
   global tests.

Equivalently, the useful K5 implication is

\[
\begin{aligned}
&\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}\\
&+\texttt{BoundedDiameterSelectedSupport.A}\\
&+\texttt{UniformThresholdOrMultiplicity.A}
\end{aligned}
\Longrightarrow
\texttt{K5LocalDensity.Concentration}.
\tag{FML.17}
\]

The false implication is

\[
  \texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}
  \Longrightarrow
  \texttt{K5RecordLocality}.
  \tag{FML.18}
\]

It is false because the single global test (FML.11)--(FML.14) is already a
finite parent-known menu at the level of label count.

## 5. Consequence for K5

This closes the finite-menu shortcut. The remaining selector-side K5 object is
strictly sharper:

\[
  \text{atomic or bounded-diameter selected record admission before readout,}
  \tag{FML.19}
\]

with a uniform threshold/max rule or a uniformly bounded multiplicity loss.

Absent that, the long diluted K5 record remains admitted by every finite
\(L^p\) packet currency tested so far, including the one-element finite-menu
read above. Excluding it must come from an actual Navier-Stokes admission
failure, non-affine/broadband transport, endpoint/curve/core/crowd
contamination, or construction/exclusion of the bath itself.

## 6. Four-sentence result

A finite selector menu does not by itself localize a K5 record. One global
length-growing test is already a one-element finite menu and reads the long
diluted witness with fixed selected action while every bounded cell vanishes.
Bounded-diameter selected tests do localize: Hölder gives an order-one
bounded-cell \(L^p\) floor, with only a uniform multiplicity loss for sum
scores. Therefore K5 still needs an atomic/bounded-diameter selected record
admission theorem, or a paid/exit/admission-failure route for global
length-growing tests.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
