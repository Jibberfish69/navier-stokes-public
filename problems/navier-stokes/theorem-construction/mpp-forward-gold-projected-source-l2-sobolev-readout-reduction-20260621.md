---
ns_viewer:
  theorem_id: forward-gold-projected-source-l2-sobolev-readout-reduction-20260621
  status: exact-reduction-installed-l2-source-criterion-implies-finite-rung-readout-not-new-supplier
  proof_role: forward_gold_projected_source_l2_finite_rung_readout_reduction
  logical_landing_node: projected_source_l2_sobolev_readout
  edge_effect: "Connects the projected-source L2 endpoint criterion to the finite-rung tower. On a fixed normalized torus chart, the actual projected nonlinear source N=-P div(v tensor v) satisfies ||N||_2 <= C_2 ||v||_{H^2}^2. Therefore same-carrier endpoint atom plus L2-source domination forces theta_j sup_{I_j}||v_j||_{H^2}^2 >= c>0. Any retained same-carrier Field certificate controlling H^2 uniformly contradicts this as theta_j->0, after Pack/Part admission. This is a branch consumer/readout theorem only: it does not produce the same-carrier L2 source-square bound from energy, and local selected-carrier use still requires cutoff and Leray-commutator legality."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-source-l2-criterion-endpoint-ui-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-duhamel-terminal-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-atom-forces-finite-order-readout-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-gradient-sobolev-branch-to-cm-face-20260621.md
  downstream_consequence: "Do not treat projected-source L2 control as an independent production theorem. If the L2-source domination hypothesis holds and an endpoint atom remains, the atom is visible as finite-rung Sobolev growth; after same-witness CM admission it lands in Pack/Part/Field face failure unless a separate global budget, source-square/no-waste theorem, or profile-production route consumes it."
---

# MPP Forward-Gold Projected Source L2 Sobolev Readout Reduction

Date: 2026-06-21

## Status

This note connects the projected-source \(L^2\) endpoint criterion to the
finite-rung tower.

It is not a new source-square supplier. It proves:

\[
\boxed{
\text{endpoint atom plus same-carrier projected-source }L^2\text{ domination}
\Longrightarrow
\text{finite }H^2\text{ tower growth at heat-window scale.}
}
\tag{PLR.1}
\]

So this branch is visible to finite-rung Field/Part readout after the same
terminal object is admitted to the CM witness grammar. It is not hidden in a
pure high-rung analytic tail.

## 1. Exact projected-source Sobolev bound

Work first on the normalized torus \(\mathbb T^3\) with Fourier Sobolev norm.
Let

\[
N=-\mathbb P\nabla\cdot(v\otimes v).
\tag{PLR.2}
\]

For \(F=v\otimes v\), the Leray projection is an \(L^2\) orthogonal projection
on each nonzero Fourier mode. Hence

\[
\|N\|_{L^2}^2
\le
\sum_{k\in\mathbb Z^3}|k|^2|\widehat F(k)|_{\mathrm{Frob}}^2
\le
\|F\|_{H^1}^2.
\tag{PLR.3}
\]

Since \(H^2(\mathbb T^3)\) is an algebra and controls \(H^1\) products, define
the finite product constant

\[
C_{2,1}
:=
\sup_{v\ne0}
{\|v\otimes v\|_{H^1}\over \|v\|_{H^2}^2}
<\infty .
\tag{PLR.4}
\]

Then

\[
\boxed{
\|-\mathbb P\nabla\cdot(v\otimes v)\|_{L^2}
\le
C_{2,1}\|v\|_{H^2}^2.
}
\tag{PLR.5}
\]

This is an exact finite-rung estimate for the actual Navier-Stokes nonlinear
source. It is not an energy estimate.

## 2. Consequence on a terminal strip

Let \(I_j=(-\theta_j,0]\), with \(\theta_j\downarrow0\), and let

\[
S_j:=
\operatorname*{ess\,sup}_{s\in I_j}
\|v_j(s)\|_{H^2}.
\tag{PLR.6}
\]

From `(PLR.5)`,

\[
\int_{I_j}\|N_j(s)\|_{L^2}^2\,ds
\le
C_{2,1}^2\theta_jS_j^4.
\tag{PLR.7}
\]

Now assume the same-carrier \(L^2\) projected-source domination hypothesis from
the endpoint criterion:

\[
a_j(s)
\le
C_{\rm sel}\|N_j(s)\|_{L^2}
+\ell_j(s),
\tag{PLR.8}
\]

and suppose an endpoint atom survives on \(I_j\):

\[
\int_{I_j}a_j(s)\,ds\ge a_0>0,
\qquad
\int_{I_j}\ell_j(s)\,ds\le {a_0\over2}.
\tag{PLR.9}
\]

The projected-source criterion gives

\[
\int_{I_j}\|N_j(s)\|_{L^2}^2\,ds
\ge
{a_0^2\over4C_{\rm sel}^2\theta_j}.
\tag{PLR.10}
\]

Combining `(PLR.7)` and `(PLR.10)` yields

\[
C_{2,1}^2\theta_jS_j^4
\ge
{a_0^2\over4C_{\rm sel}^2\theta_j}.
\tag{PLR.11}
\]

Equivalently,

\[
\boxed{
\theta_jS_j^2
\ge
{a_0\over2C_{\rm sel}C_{2,1}}.
}
\tag{PLR.12}
\]

Thus the endpoint atom forces a finite-rung Sobolev readout quantum.

## 3. CM-facing consumption

After same-terminal-object admission to the CM witness test, choose the Field
depth \(N\) high enough to control \(H^2\) on the normalized selected windows.

If the windows cannot be placed on a compatible same-fluid carrier, then

\[
\neg Pack_Q.
\tag{PLR.13}
\]

If the differentiated pressure-viscosity-incompressibility tower through that
depth cannot be written for the same solution, then

\[
\neg Part_{N,Q}.
\tag{PLR.14}
\]

If both Pack and Part survive and some positive Field certificate controls the
finite \(H^2\) rung on the same windows, then

\[
S_j\le C_{Q,N,\rho}<\infty .
\tag{PLR.15}
\]

Since \(\theta_j\downarrow0\), `(PLR.15)` gives

\[
\theta_jS_j^2\to0,
\tag{PLR.16}
\]

contradicting `(PLR.12)`. Therefore the same branch lands in the face split:

\[
\boxed{
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}.
}
\tag{PLR.17}
\]

## 4. Boundary of the reduction

This note has two strict boundaries.

First, it consumes a branch under the same-carrier domination hypothesis
`(PLR.8)`. It does not prove that hypothesis.

Second, local selected-carrier use is not obtained by simply multiplying the
global projected source by a cutoff. The exact localized identity carries
heat/cutoff and Leray/cutoff commutators. Those must be retained on the same
ledger or paid legally before `(PLR.8)` is available.

## Verdict

The projected-source \(L^2\) endpoint criterion is now tied to a finite-rung
readout:

\[
\boxed{
\text{endpoint atom under same-carrier }L^2\text{ source domination}
\Longrightarrow
\theta_j
\left(
\operatorname*{ess\,sup}_{s\in I_j}
\|v_j(s)\|_{H^2}
\right)^2
\ge c>0.
}
\tag{PLR.18}
\]

This makes the branch CM-consumable after same-witness admission. It does not
produce the missing global square budget, strict no-waste theorem, or profile
production theorem.
