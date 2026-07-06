---
theorem_id: forward-gold-wkb-beltrami-output-maximal-sideband-shield-criterion-20260706
status: exact-output-maximal-sideband-shield-necessary-condition
later_followup: >-
  Shielded output-maximal duplicates are nonempty: the minimal coplanar
  two-pair witness in
  mpp-forward-gold-wkb-beltrami-shielded-two-pair-same-side-leak-20260706.md
  passes the off-diagonal shield test but leaks unique dangerous same-side
  sidebands. Thus the shield criterion is a necessary condition, not a proof
  that shielded graphs are impossible.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - FiniteBeltramiNeutralizer.OutputMaximalSidebandShieldCriterion
  - MultiRadiusResonantGraph.TOP-SIDEBAND-SHIELD-NECESSARY
  - BeltramiFiniteGraphConstructionExclusion.REMAINING-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-vector-moment-minimal-gadget-sideband-leak-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-radius-sum-vector-moment-correction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-shielded-two-pair-same-side-leak-20260706.md
completion_truth: >-
  Exact finite-graph necessary condition only. In a finite same-helicity
  Beltrami Fourier cloud, choose an active dangerous cross-shell pair p,q with
  maximal output norm |p+q|. If projected neutrality cancels its nonzero
  coefficient, then some other active dangerous pair a,b must satisfy
  a+b=p+q. Write d=a-p=q-b. The off-diagonal sidebands are a+q=(p+q)+d and
  p+b=(p+q)-d, and at least one has strictly larger output norm. Since p,q was
  chosen output-maximal among dangerous pairs, every norm-increasing
  off-diagonal sideband pair must be degenerate: same shell, collinear, or zero
  amplitude. Hence any finite neutralizer must shield every output-maximal
  resonant parallelogram by degenerating its larger off-diagonal sidebands.
  This kills all unshielded output-maximal resonant gadgets, including the
  minimal vector-moment gadget already filed. It does not close shielded
  output-maximal graphs, infinite/dense WKB baths, localization, same-fluid
  custody, the confinement constant, or MPP closure.
---

# Output-maximal resonant sidebands must be shielded

## 1. Object

The local vector-moment gadget showed that one Fourier output can be canceled,
but the same modes created unique dangerous sidebands. This note records the
finite-graph reason that sideband leakage is not accidental.

The physical object is still one finite same-helicity Beltrami/WKB Fourier
cloud inside the same fluid-field-object. This note only tests the algebra of
one projected nonlinear mismatch row.

## 2. Dangerous pairs

Call an active pair \((p,q)\) dangerous when
\[
  |p|\ne |q|,\qquad p\nparallel q,
  \qquad a_pa_q\ne0.
  \tag{OMS.1}
\]
For such a pair the nonresonant two-mode theorem gives a nonzero projected
coefficient at
\[
  m=p+q.
  \tag{OMS.2}
\]

Let \(S\) be finite, and choose a dangerous pair \((p,q)\) maximizing
\[
  |p+q|
  \tag{OMS.3}
\]
among all active dangerous pairs in \(S\).

## 3. Cancellation forces a duplicate

If the cloud is projected-neutral at \(m=p+q\), the nonzero coefficient from
\((p,q)\) must be canceled by at least one other active dangerous pair
\[
  a+b=m.
  \tag{OMS.4}
\]
Same-shell pairs have zero eigenvalue-gap coefficient, and collinear pairs do
not supply the nonresonant dangerous coefficient. Thus a genuine cancellation
partner must itself be dangerous.

Set
\[
  d=a-p=q-b.
  \tag{OMS.5}
\]
Since \((a,b)\ne(p,q)\), we have \(d\ne0\).

The off-diagonal sideband outputs are
\[
  a+q=m+d,
  \qquad
  p+b=m-d.
  \tag{OMS.6}
\]

At least one of these has strictly larger norm than \(m\). Indeed,
\[
  |m+d|^2+|m-d|^2=2|m|^2+2|d|^2>2|m|^2.
  \tag{OMS.7}
\]
So
\[
  \max\{|m+d|,|m-d|\}>|m|.
  \tag{OMS.8}
\]

## 4. Shield criterion

Suppose \(|m+d|>|m|\). If the pair \((a,q)\) were dangerous, then it would be
an active dangerous pair with output norm larger than the chosen maximum,
contradicting (OMS.3). Hence \((a,q)\) must be harmless:
\[
  |a|=|q|,
  \qquad\hbox{or}\qquad
  a\parallel q,
  \qquad\hbox{or}\qquad
  a_a a_q=0.
  \tag{OMS.9}
\]

Likewise, if \(|m-d|>|m|\), then the off-diagonal pair \((p,b)\) must be
harmless:
\[
  |p|=|b|,
  \qquad\hbox{or}\qquad
  p\parallel b,
  \qquad\hbox{or}\qquad
  a_p a_b=0.
  \tag{OMS.10}
\]

The amplitudes in (OMS.9) and (OMS.10) are nonzero when all four modes are in
the active support. In that common case, harmless means same-shell or
collinear.

Therefore any output-maximal resonant cancellation must shield every
norm-increasing off-diagonal sideband by degeneracy.

## 5. Consequence

A finite neutral Beltrami graph cannot have an output-maximal dangerous
parallelogram with an unshielded norm-increasing off-diagonal sideband. Such a
sideband would be a dangerous active pair with larger output norm, impossible
by maximality.

This explains the minimal vector-moment gadget. Its selected output cancels
locally, but it creates sidebands such as
\[
  q_3+q_{4,e_3}=(0,-32,-45)
  \tag{OMS.11}
\]
that are noncollinear, cross-shell, active, and unique. They are unshielded
dangerous sidebands, so the gadget cannot be a finite neutralizer.

The remaining finite graph branch is correspondingly sharper: a survivor must
be made of output-maximal resonant parallelograms whose larger off-diagonal
sidebands are all same-shell or collinear, and then the same condition must
hold recursively at the next exposed dangerous outputs.

The follow-up shielded two-pair check shows this open branch is nonempty. A
coplanar two-pair duplicate can make the larger off-diagonal sideband
same-shell harmless. That minimal shielded duplicate still fails neutrality
because the same-side outputs are unique dangerous sidebands. Hence this note
should be used only as a necessary shield criterion; the finite branch now
requires full sideband-graph closure, not merely off-diagonal shielding.

## 6. Four-sentence result

Choose a dangerous pair \(p,q\) with maximal output norm \(|p+q|\) in a finite
same-helicity Beltrami cloud. Any cancellation partner \(a,b\) with
\(a+b=p+q\) creates off-diagonal sidebands \((p+q)\pm(a-p)\), at least one of
which has larger norm. Since no dangerous pair may have larger output norm, the
larger off-diagonal sideband pair must be same-shell, collinear, or inactive.
Thus any finite neutralizer must shield every output-maximal resonant
parallelogram by degenerating its norm-increasing sidebands.

## 7. State

This kills the unshielded output-maximal finite resonant graph branch.

The shielded branch is real. The minimal shielded two-pair duplicate is killed
by same-side sidebands, but no general shielded finite graph exclusion is
proved here.

It proves no exclusion of shielded output-maximal graphs, no infinite/dense WKB
bath theorem, no finite-energy localization theorem, no same-fluid custody
theorem, no confinement constant, and no MPP closure.
