---
ns_viewer:
  theorem_id: forward-gold-selected-atom-not-high-rung-only-after-threshold-split-20260621
  status: exact-branch-pruning-installed-not-production
  proof_role: forward_gold_selected_atom_high_rung_branch_pruning
  logical_landing_node: selected_atom_not_high_rung_only_after_threshold_split
  edge_effect: "Combines the threshold-margin selector fork with the finite Sobolev gradient bound. If a terminal selected projected-source atom survives, the projected tensor action tends to zero, and the peak selected-source height branch is bounded, then the selected-source gradient branch forces theta_m sup_I ||v_m||_{H^(gamma+1)}^2 -> infinity for every gamma>5/2. Hence the surviving atom cannot be carried by a pure high-rung-only analytic tail while every fixed finite Sobolev rung remains bounded. High-rung-only analytic collapse remains a tower-radius failure, but not the carrier of this selected source atom after the threshold split. The remaining branches are tensor action, height/source-square or tail UI, finite-rung Sobolev/CM Part/Field consumption, strict no-waste, or profile production."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-threshold-margin-selector-capture-fork-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-atom-height-gradient-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-atom-square-tail-cost-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-gradient-branch-sobolev-tower-blowup-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-gradient-sobolev-branch-to-cm-face-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-tail-to-selected-carrier-direct-test-20260621.md
  downstream_consequence: "Do not leave pure high-rung analytic-tail collapse as a separate selected-source atom branch after the threshold-margin split. For the exact projected Navier-Stokes source, tensor-small plus height-controlled terminal atoms force finite Sobolev tower blowup, which is CM-facing after same-witness admission. Pure high-rung-only radius collapse still needs a tail-to-carrier/no-waste/profile theorem before it can affect endpoint UI."
---

# MPP Forward-Gold Selected Atom Is Not High-Rung-Only After Threshold Split

Date: 2026-06-21

## Status

This note prunes one branch in the terminal source-atom analysis.  It does not
prove the forward-gold reserve.

The exact point is:

\[
\boxed{
\text{after the threshold-selector split, a surviving selected source atom
cannot be explained only by high-rung analytic tail collapse.}
}
\tag{SAH.1}
\]

If tensor action is small and the height branch is not active, the atom forces a
finite Sobolev rung to blow up on the terminal window.

## 1. Selected atom and threshold fork input

Work on

\[
\mathbb T^3=[0,2\pi]^3.
\tag{SAH.2}
\]

Let \(I_m\) be terminal time strips with

\[
\theta_m:=|I_m|\downarrow0.
\tag{SAH.3}
\]

Let

\[
N_m=-\mathbb P\nabla\cdot F_m,
\qquad
g_m=\sigma_m\cdot N_m,
\qquad
|\sigma_m|=1,
\tag{SAH.4}
\]

and define the selected positive source marginal

\[
A_m(s):=\int_{\mathbb T^3}[g_m(s,x)]_+\,dx.
\tag{SAH.5}
\]

Assume a terminal selected atom survives:

\[
\int_{I_m}A_m(s)\,ds\ge a>0.
\tag{SAH.6}
\]

Define the strip height and gradient:

\[
A_m^*:=
\operatorname*{ess\,sup}_{s\in I_m}A_m(s),
\qquad
G_m^*:=
\operatorname*{ess\,sup}_{s\in I_m}
\|\nabla_xg_m(s)\|_{L^\infty}.
\tag{SAH.7}
\]

The threshold-margin selector fork gives the exact lower bound

\[
\int_{I_m}\|F_m(s)\|_2\,ds
\ge
{a^3\over
36(8|\mathbb T^3|)^{3/2}G_m^*A_m^*\theta_m^2}.
\tag{SAH.8}
\]

Therefore, if the projected tensor action tends to zero,

\[
\int_{I_m}\|F_m(s)\|_2\,ds\to0,
\tag{SAH.9}
\]

then

\[
\boxed{
G_m^*A_m^*\theta_m^2\to\infty.
}
\tag{SAH.10}
\]

This is exactly the height-gradient split input.

## 2. Removing the height branch forces the gradient branch

The atom condition alone gives

\[
A_m^*\theta_m\ge a.
\tag{SAH.11}
\]

The height branch is the stronger growth

\[
A_m^*\theta_m\to\infty.
\tag{SAH.12}
\]

Assume the height branch is absent along a subsequence; equivalently, for some
finite \(H_*\),

\[
A_m^*\theta_m\le H_*.
\tag{SAH.13}
\]

Combining `(SAH.10)` and `(SAH.13)`,

\[
G_m^*\theta_m
=
{G_m^*A_m^*\theta_m^2\over A_m^*\theta_m}
\ge
{G_m^*A_m^*\theta_m^2\over H_*}
\to\infty.
\tag{SAH.14}
\]

Thus the residual branch is not an abstract selector-complexity failure. It is a
first spatial selected-source gradient blowup:

\[
\boxed{
G_m^*\theta_m\to\infty.
}
\tag{SAH.15}
\]

## 3. Exact projected Navier-Stokes source gradient bound

Now specialize to the actual projected Navier-Stokes source

\[
N_m=-\mathbb P\nabla\cdot(v_m\otimes v_m).
\tag{SAH.16}
\]

For every fixed \(\gamma>5/2\), define

\[
S_{m,\gamma}:=
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{H^{\gamma+1}_F(\mathbb T^3)}.
\tag{SAH.17}
\]

The finite Sobolev gradient bound gives

\[
G_m^*
\le
C_{\nabla,\gamma}C_{\mathrm{alg},\gamma+1}
S_{m,\gamma}^2.
\tag{SAH.18}
\]

Here

\[
C_{\nabla,\gamma}
=
\left(
\sum_{k\in\mathbb Z^3}
|k|^2(1+|k|^2)^{-\gamma}
\right)^{1/2}
<\infty,
\tag{SAH.19}
\]

and \(C_{\mathrm{alg},\gamma+1}\) is the Sobolev algebra constant in
\(H^{\gamma+1}_F(\mathbb T^3)\).

Combining `(SAH.15)` and `(SAH.18)` yields

\[
\boxed{
\theta_m S_{m,\gamma}^2\to\infty.
}
\tag{SAH.20}
\]

This is a fixed finite-rung Sobolev tower blowup.

## 4. Pure high-rung-only collapse cannot carry this atom

Pure high-rung-only analytic tail collapse means that every fixed Sobolev rung
stays bounded while the factorial analytic tail loses every positive radius.
In particular, for each fixed \(\gamma>5/2\),

\[
\sup_m S_{m,\gamma}<\infty.
\tag{SAH.21}
\]

But `(SAH.21)` implies

\[
\theta_m S_{m,\gamma}^2\to0,
\tag{SAH.22}
\]

which contradicts `(SAH.20)`.

Therefore, under the tensor-small and height-controlled hypotheses, the selected
atom cannot be carried by a pure high-rung-only analytic tail:

\[
\boxed{
\begin{gathered}
\text{selected atom}
+\text{ tensor action }o(1)
+\text{ bounded }A_m^*\theta_m\\
\Longrightarrow
\text{finite Sobolev rung blowup, not pure high-rung-only collapse.}
\end{gathered}
}
\tag{SAH.23}
\]

## 5. Relation to CM Part/Field consumption

The existing finite-rung consumer applies to `(SAH.20)`.  After the same
terminal object is admitted to the CM witness test, the branch lands as

\[
\boxed{
\neg Pack_Q
\quad\vee\quad
\neg Part_{N,Q}
\quad\vee\quad
\forall\rho>0\,\neg Field_{N,\rho,Q},
}
\tag{SAH.24}
\]

with \(N\) chosen above the Sobolev readout depth.

This is not a forward-positive deletion of the branch. It is the CM-facing
consumption of the finite-rung source-gradient branch after same-witness
admission.

## 6. Exact branch accounting

After the threshold-selector fork, a retained selected projected-source atom
has the following exact alternatives:

\[
\boxed{
\text{nonvanishing projected tensor action;}
}
\tag{SAH.25}
\]

\[
\boxed{
\text{height/source-square/tail UI failure;}
}
\tag{SAH.26}
\]

\[
\boxed{
\text{finite Sobolev source-gradient tower blowup;}
}
\tag{SAH.27}
\]

or one must install a stronger theorem such as strict no-waste or profile
production that removes the endpoint defect before this split is needed.

The high-rung-only analytic tail branch remains meaningful as a tower-radius
failure, but it is not a separate carrier of the selected terminal atom after
`(SAH.8)` through `(SAH.20)`.

## Verdict

The branch-pruning theorem is:

\[
\boxed{
\text{pure high-rung analytic tail collapse is not the residual selected-atom
branch after tensor action and height have been separated.}
}
\tag{SAH.28}
\]

The remaining forward-gold production gap is still the same-carrier unweighted
reserve on the actual selected positive carrier.  Without that production, the
finite-rung branch is CM-facing after same-witness admission; the height branch
is the source-square/tail UI gap; and the tensor-action branch returns to
critical action, no-waste, or profile production.
