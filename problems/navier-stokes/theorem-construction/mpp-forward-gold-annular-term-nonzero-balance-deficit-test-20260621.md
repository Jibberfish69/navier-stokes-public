---
ns_viewer:
  theorem_id: forward-gold-annular-term-nonzero-balance-deficit-test-20260621
  status: exact-stage2-balance-deficit-lemma-installed-not-gold-production
  proof_role: forward_gold_stage2_annular_balance_test
  logical_landing_node: annular_term_nonzero_requires_balance_deficit
  edge_effect: "Turns the fallback annular-term statement into an exact local-balance lemma. On a fixed rescaled packet, the local energy identity forces a nonzero annular term only when the interior energy change plus dissipation has a nonzero normalized balance deficit. Persistent normalized mass or unit-scale cubic activity alone does not imply such a deficit: a constant rescaled smooth solution has positive local mass and unit-scale cubic activity, but zero dissipation, zero energy change, and zero annular terms for compact cutoffs. Thus Stage 2 is useful only after the word feeding is made quantitative by a nonzero balance deficit, or after the terminal pulse is routed as an endpoint source/core atom."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-annular-feed-two-stage-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-heat-scale-cutoff-nojump-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-shared-participation-heat-scale-direct-test-20260619.md
  downstream_consequence: "Do not use SomeAnnularTermStaysNonzeroIfInfiniteFeed.A from persistent badness alone. The exact implication is balance-deficit to annular nonzero. If no such deficit is present, the branch is not annular feeding; it is nested-core terminal atom, endpoint source defect, no-waste/profile production, or CM Pack/Part/Field consumption after same-witness admission."
---

# MPP Forward-Gold Annular Term Nonzero Balance-Deficit Test

Date: 2026-06-21

## Status

This note tests the Stage 2 fallback from the rescaled annular-feed split:

\[
\text{persistent heat-scale feeding}
\Longrightarrow
\text{some annular term stays nonzero.}
\tag{ATN.1}
\]

The exact conclusion is narrower. A local balance can force an annular term
only from a nonzero balance deficit. Persistent normalized mass or unit-scale
critical activity alone is not enough.

## 1. Fixed rescaled local balance

Let \((v,q)\) solve the rescaled Navier-Stokes equation on a fixed cylinder:

\[
\partial_s v+(v\cdot\nabla)v+\nabla q=\nu\Delta v,
\qquad
\nabla\cdot v=0.
\tag{ATN.2}
\]

Let \(\rho\in C_c^\infty(B_1)\), \(0\le\rho\le1\), and define

\[
M(s):=\int {1\over2}|v(s,y)|^2\rho(y)\,dy.
\tag{ATN.3}
\]

The exact localized energy identity is

\[
\begin{aligned}
M'(s)
&+\nu\int |\nabla v|^2\rho\,dy\\
&=
{1\over2}\int |v|^2v\cdot\nabla\rho\,dy
+\int qv\cdot\nabla\rho\,dy
+{\nu\over2}\int |v|^2\Delta\rho\,dy .
\end{aligned}
\tag{ATN.4}
\]

For an interval \(I=[a,b]\), set

\[
\mathcal B_I
:=
M(b)-M(a)
+\nu\int_I\int |\nabla v|^2\rho\,dy\,ds,
\tag{ATN.5}
\]

\[
\mathcal T_I
:=
\int_I {1\over2}\int |v|^2v\cdot\nabla\rho\,dy\,ds,
\tag{ATN.6}
\]

\[
\mathcal P_I
:=
\int_I\int qv\cdot\nabla\rho\,dy\,ds,
\tag{ATN.7}
\]

and

\[
\mathcal V_I
:=
{\nu\over2}\int_I\int |v|^2\Delta\rho\,dy\,ds.
\tag{ATN.8}
\]

Integrating `(ATN.4)` gives

\[
\boxed{
\mathcal B_I=\mathcal T_I+\mathcal P_I+\mathcal V_I .
}
\tag{ATN.9}
\]

This is the exact Stage 2 accounting identity.

## 2. Exact nonzero-annular implication

If the interior balance deficit is bounded below,

\[
|\mathcal B_I|\ge b_0>0,
\tag{ATN.10}
\]

then `(ATN.9)` gives

\[
|\mathcal T_I|+|\mathcal P_I|+|\mathcal V_I|
\ge b_0.
\tag{ATN.11}
\]

Consequently at least one annular term is nonzero at the same scale:

\[
\boxed{
\max\{|\mathcal T_I|,|\mathcal P_I|,|\mathcal V_I|\}
\ge {b_0\over3}.
}
\tag{ATN.12}
\]

This proves the exact valid Stage 2 lemma:

\[
\boxed{
\text{nonzero normalized interior balance deficit}
\Longrightarrow
\text{nonzero annular balance term.}
}
\tag{ATN.13}
\]

For logarithmic heat variables, the dilation terms are simply added to the
right side of `(ATN.4)`. The same statement holds with those dilation terms
included among the interface terms.

## 3. Persistent badness alone does not imply the deficit

The implication

\[
\text{persistent normalized mass or unit-scale critical activity}
\Longrightarrow
|\mathcal B_I|\ge b_0
\tag{ATN.14}
\]

is false.

Take a constant divergence-free rescaled velocity

\[
v(s,y)\equiv c,
\qquad
q(s,y)\equiv0,
\qquad
c\ne0.
\tag{ATN.15}
\]

Then `(ATN.2)` is satisfied. Also,

\[
M(s)={|c|^2\over2}\int\rho\,dy>0,
\tag{ATN.16}
\]

and the unit-scale cubic activity is positive:

\[
\int_I\int_{B_1}|v|^3\,dy\,ds
=
|I|\,|B_1|\,|c|^3>0.
\tag{ATN.17}
\]

But

\[
\nabla v=0,
\qquad
M(b)-M(a)=0,
\qquad
\mathcal B_I=0.
\tag{ATN.18}
\]

The annular terms vanish as well. Since \(q=0\) and \(\Delta |v|^2=0\),

\[
\mathcal P_I=0,
\qquad
\mathcal V_I=0.
\tag{ATN.19}
\]

For the transport term,

\[
\mathcal T_I
=
{|c|^2\over2}\int_I\int c\cdot\nabla\rho\,dy\,ds
=
{|c|^2\over2}|I|\,c\cdot\int\nabla\rho\,dy
=0.
\tag{ATN.20}
\]

Thus a fixed rescaled packet can have positive local mass and positive
unit-scale cubic activity while every annular balance term is zero. This is not
a terminal Navier-Stokes blowup model. It is the exact local-balance
counterexample to deriving annular nonzero from persistent badness alone.

## 4. What "feeding" must mean

The word "feeding" is mathematically stronger than "nonzero interior mass."
For Stage 2 to be a theorem, feeding must include a nonzero balance deficit
like `(ATN.10)`, or an equivalent statement saying that the interior pulse is
being maintained against a positive local loss.

Without such a deficit, there are only two exact possibilities:

\[
\text{the packet is locally self-carried at this scale,}
\tag{ATN.21}
\]

or

\[
\text{the surviving object is an endpoint source/core atom not seen by the
annular wall.}
\tag{ATN.22}
\]

The second case is precisely the terminal nested-core/time-face branch already
isolated by the no-annular-share reduction. It must be handled by endpoint UI,
source-square, strict no-waste, selected critical-strain/CKN, signed
saturation, profile production, or same-witness CM consumption.

## 5. Consequence for the two-stage split

Stage 1 remains the direct rigidity question:

\[
\boxed{
\text{same rescaled law}
+\text{same-solution nested compatibility}
+\text{persistent normalized badness}
\Rightarrow
\text{no infinite feed / strict descent / rigid profile.}
}
\tag{ATN.23}
\]

Stage 2 is valid only in this exact form:

\[
\boxed{
\text{nonzero balance deficit}
\Rightarrow
\text{some annular term is nonzero.}
}
\tag{ATN.24}
\]

It is not valid as:

\[
\boxed{
\text{persistent normalized badness}
\Rightarrow
\text{some annular term is nonzero.}
}
\tag{ATN.25}
\]

The latter statement confuses a retained interior/core pulse with annular feed.

## Verdict

`SomeAnnularTermStaysNonzeroIfInfiniteFeed.A` has an exact paid core:

\[
\boxed{
|\mathcal B_I|\ge b_0
\Longrightarrow
\max\{|\mathcal T_I|,|\mathcal P_I|,|\mathcal V_I|\}\ge {b_0\over3}.
}
\tag{ATN.26}
\]

The missing gold theorem is the production of the balance deficit itself, or a
direct consumption of the no-deficit core pulse as endpoint source, no-waste
failure, rigid profile, or CM Pack/Part/Field face after same-witness
admission.
