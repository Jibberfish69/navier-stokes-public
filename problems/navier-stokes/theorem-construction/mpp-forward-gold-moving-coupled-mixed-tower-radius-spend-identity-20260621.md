---
ns_viewer:
  theorem_id: forward-gold-moving-coupled-mixed-tower-radius-spend-identity-20260621
  status: moving-radius-identity-installed-summable-spend-is-exact-survival-condition
  proof_role: forward_gold_coupled_mixed_tower_radius_spend_test
  logical_landing_node: moving_coupled_mixed_tower_radius_spend
  edge_effect: "Derives the time-dependent factorial mixed-tower radius identity. When the tower radii tau(t), rho(t) move, their derivatives create explicit tower-moment terms: -tau'/tau times the time-level moment and -rho'/rho times the spatial-level moment. Positive terminal radius is exactly finite logarithmic spend, i.e. integral -tau'/tau and integral -rho'/rho finite. The identity shows that NoLossCoupledTowerRadiusPropagation.A is too strong from current inputs; the correct supplier is SummableRadiusSpend.A or a controlled-collapse theorem for divergent spend. This also gives a precise place where terminal time-face atom formation appears in the tower: divergent time-radius spend."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-mixed-tower-radius-lower-bound-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
    - problems/navier-stokes/theorem-construction/weighted-mixed-jet-radius-loss-energy-reduction.md
  downstream_consequence: "Replace bare no-loss wording with the exact moving-radius alternative: either finite logarithmic tower-radius spend leaves a positive coupled mixed tower radius, or divergent spend must be routed to the terminal time-face atom/profile branch. Future attempts should estimate the spend rates, not just compare fixed radii."
---

# MPP Forward-Gold Moving Coupled Mixed Tower Radius Spend Identity

Date: 2026-06-21

## Status

This note continues the coupled mixed tower route. The previous direct test
showed that fixed-radius estimates only give radius loss. The next question is
what happens if the factorial radii are allowed to move.

The exact answer is: moving radii create explicit tower-moment terms. Positive
terminal radius is equivalent to finite logarithmic radius spend.

## 1. Weighted mixed tower with moving radii

Let

\[
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p.
\tag{MRS.1}
\]

For time-dependent radii \(\tau(t)>0\) and \(\rho(t)>0\), set

\[
w_{m,\alpha}(t)
:=
{\tau(t)^m\rho(t)^{|\alpha|}\over m!\,\alpha!}.
\tag{MRS.2}
\]

Define the squared weighted tower energy

\[
\mathfrak E_s(t)
:=
\sum_{m,\alpha} w_{m,\alpha}(t)^2
\|J_{m,\alpha}(t)\|_{H^s}^2,
\tag{MRS.3}
\]

and the weighted dissipation

\[
\mathfrak D_s(t)
:=
\sum_{m,\alpha} w_{m,\alpha}(t)^2
\|\nabla J_{m,\alpha}(t)\|_{H^s}^2.
\tag{MRS.4}
\]

Also define the tower moments

\[
\mathfrak M_t(t)
:=
\sum_{m,\alpha} m\,w_{m,\alpha}(t)^2
\|J_{m,\alpha}(t)\|_{H^s}^2,
\tag{MRS.5}
\]

\[
\mathfrak M_x(t)
:=
\sum_{m,\alpha} |\alpha|\,w_{m,\alpha}(t)^2
\|J_{m,\alpha}(t)\|_{H^s}^2.
\tag{MRS.6}
\]

These moments measure how much tower energy sits away from the base rung in the
time and space directions.

## 2. Exact derivative of the moving weights

The logarithmic derivative of each weight is

\[
{w_{m,\alpha}'(t)\over w_{m,\alpha}(t)}
=
m\,{\tau'(t)\over\tau(t)}
+
|\alpha|\,{\rho'(t)\over\rho(t)}.
\tag{MRS.7}
\]

Therefore

\[
\sum_{m,\alpha}w_{m,\alpha}(t)w_{m,\alpha}'(t)
\|J_{m,\alpha}\|_{H^s}^2
=
{\tau'\over\tau}\mathfrak M_t
+
{\rho'\over\rho}\mathfrak M_x.
\tag{MRS.8}
\]

This is the exact radius-spend term.

## 3. Moving-radius energy identity

Use the repaired rung-level \(H^s\) inequality: after the fractional
commutator is kept, the fixed-weight estimate has the form

\[
{1\over2}{d\over dt}\|J_{m,\alpha}\|_{H^s}^2
+
c\nu\|\nabla J_{m,\alpha}\|_{H^s}^2
\le
\mathcal N_{m,\alpha},
\tag{MRS.9}
\]

where \(\mathcal N_{m,\alpha}\) includes the off-diagonal tower convolution and
the \(H^s\) base-transport commutator.

Multiplying by \(w_{m,\alpha}(t)^2\), summing over \((m,\alpha)\), and using
`(MRS.8)` gives

\[
\boxed{
{1\over2}{d\over dt}\mathfrak E_s
+
c\nu\mathfrak D_s
-
{\tau'\over\tau}\mathfrak M_t
-
{\rho'\over\rho}\mathfrak M_x
\le
\mathfrak N_s.
}
\tag{MRS.10}
\]

Here \(\mathfrak N_s\) is the weighted sum of the repaired nonlinear and
commutator terms.

When the radii are decreasing,

\[
\tau'(t)\le0,
\qquad
\rho'(t)\le0,
\tag{MRS.11}
\]

the two radius terms on the left are nonnegative:

\[
-{\tau'\over\tau}\mathfrak M_t\ge0,
\qquad
-{\rho'\over\rho}\mathfrak M_x\ge0.
\tag{MRS.12}
\]

This is the precise way analytic radius pays for the tower.

## 4. What no-loss would require

No-loss propagation would mean that the same positive radii survive without
spending them:

\[
\tau'(t)=0,
\qquad
\rho'(t)=0.
\tag{MRS.13}
\]

Then `(MRS.10)` loses the moment terms:

\[
{1\over2}{d\over dt}\mathfrak E_s
+
c\nu\mathfrak D_s
\le
\mathfrak N_s.
\tag{MRS.14}
\]

The installed mixed-jet machinery does not make \(\mathfrak N_s\) sign-definite
or absorb it without either a larger radius, a moving radius, or an additional
smallness/compactness theorem.

Therefore `NoLossCoupledTowerRadiusPropagation.A` is not supplied by the
current tower energy structure.

## 5. Summable spend is the exact survival condition

Let

\[
\mu_t(t):=-{\tau'(t)\over\tau(t)},
\qquad
\mu_x(t):=-{\rho'(t)\over\rho(t)}.
\tag{MRS.15}
\]

Then

\[
\tau(t)=\tau(t_0)\exp\left(-\int_{t_0}^{t}\mu_t(s)\,ds\right),
\tag{MRS.16}
\]

\[
\rho(t)=\rho(t_0)\exp\left(-\int_{t_0}^{t}\mu_x(s)\,ds\right).
\tag{MRS.17}
\]

Thus a positive radius survives to \(T\) exactly when the logarithmic spend is
finite:

\[
\int_{t_0}^{T}\mu_t(s)\,ds<\infty,
\qquad
\int_{t_0}^{T}\mu_x(s)\,ds<\infty.
\tag{MRS.18}
\]

If either integral diverges, the corresponding radius collapses:

\[
\int_{t_0}^{T}\mu_t(s)\,ds=\infty
\quad\Longrightarrow\quad
\tau(t)\downarrow0,
\tag{MRS.19}
\]

\[
\int_{t_0}^{T}\mu_x(s)\,ds=\infty
\quad\Longrightarrow\quad
\rho(t)\downarrow0.
\tag{MRS.20}
\]

So the exact theorem replacing bare no-loss is:

\[
\boxed{
\text{SummableRadiusSpend.A}
}
\tag{MRS.21}
\]

meaning that the required \(\mu_t,\mu_x\) are integrable on the terminal
interval.

## 6. Cross-cylinder interpretation

For adjacent heat-scale cylinders,

\[
\tau_j=\lambda_j^2\tau_{j+1},
\qquad
\rho_j=\lambda_j\rho_{j+1}.
\tag{MRS.22}
\]

Taking logarithms gives the discrete spend:

\[
\log \tau_{j+1}-\log\tau_j=-2\log\lambda_j,
\tag{MRS.23}
\]

\[
\log \rho_{j+1}-\log\rho_j=-\log\lambda_j.
\tag{MRS.24}
\]

Along a terminal Zeno chain, a positive normalized child radius can still
correspond to physical radius collapse because the product of the heat-scale
factors goes to zero:

\[
\prod_{j}\lambda_j=0.
\tag{MRS.25}
\]

So the cross-cylinder version of `(MRS.18)` is not automatic. It asks whether
the additional radius loss beyond the forced parabolic rescaling is summable,
and whether the forced collapse is already classified as the terminal
time-face atom/profile branch.

## 7. Controlled-collapse alternative

The exact alternative to summable spend is:

\[
\boxed{
\text{divergent coupled tower-radius spend}
\Longrightarrow
\text{terminal time-face atom/profile branch.}
}
\tag{MRS.26}
\]

This is not a no-loss theorem. It is a classification theorem. It says that if
the tower can only be kept coherent by spending all remaining time or space
radius, then the endpoint object is precisely the terminal branch already
isolated by the gold program.

## Verdict

The moving-radius identity gives the clean fork:

\[
\boxed{
\text{finite logarithmic spend}
\Longleftrightarrow
\text{positive coupled tower radius survives.}
}
\tag{MRS.27}
\]

and

\[
\boxed{
\text{divergent spend}
\Longleftrightarrow
\text{coupled tower radius collapses into the terminal face.}
}
\tag{MRS.28}
\]

Current inputs do not prove finite spend. They also do not yet prove the
controlled-collapse implication `(MRS.26)`.

So the live theorem has been sharpened from no-loss propagation to the exact
two-door radius statement:

\[
\boxed{
\text{SummableRadiusSpend.A}
\quad\text{or}\quad
\text{ControlledCoupledTowerRadiusCollapse.A.}
}
\tag{MRS.29}
\]
