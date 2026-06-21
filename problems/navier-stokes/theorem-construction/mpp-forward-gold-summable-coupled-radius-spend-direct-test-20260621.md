---
ns_viewer:
  theorem_id: forward-gold-summable-coupled-radius-spend-direct-test-20260621
  status: direct-test-complete-summable-spend-not-supplied-by-native-tower-identity
  proof_role: forward_gold_coupled_mixed_tower_radius_spend_test
  logical_landing_node: summable_coupled_radius_spend
  edge_effect: "Tests whether Thomas's rescaled velocity-pressure-incompressibility tower directly proves SummableRadiusSpend.A. It does not. The local moving-radius tower identity is exact, but it only says that decreasing factorial radii pay through the tower moments. To prove finite logarithmic spend one still needs an integrable same-carrier coefficient or a no-waste Lyapunov drop. Physical energy gives only radius-discounted normalized action over heat-scale shells, not the unweighted spend needed across a Zeno chain. Cross-cylinder coupling prevents false independent-packet counting, but it does not remove the heat-scale discount."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-coupled-mixed-tower-radius-spend-identity-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-mixed-tower-radius-lower-bound-direct-test-20260621.md
  downstream_consequence: "SummableRadiusSpend.A is not a native consequence of the coupled tower identity plus physical energy. The remaining forward-gold options are a same-carrier unweighted action/no-waste supplier, or ControlledCoupledTowerRadiusCollapse.A, which must classify divergent spend as a terminal time-face atom/profile or a Pack/Part/Field-facing exit."
---

# MPP Forward-Gold Summable Coupled Radius Spend Direct Test

Date: 2026-06-21

## Status

This note tests whether the rescaled participation tower itself proves

\[
\boxed{\text{SummableRadiusSpend.A}.}
\tag{SCR.1}
\]

The answer is no from current inputs. The coupled tower gives the exact place
where radius is spent, but it does not prove that the spend is summable.

## 1. The exact local coupled tower identity

On a rescaled heat cylinder, let

\[
W_{m,\alpha}:=\partial_s^m\partial_y^\alpha v,
\qquad
Q_{m,\alpha}:=\partial_s^m\partial_y^\alpha q,
\tag{SCR.2}
\]

and let \(\eta(y)\) be a fixed cutoff. The mixed tower has the form
and let \(\eta(y)\) be a fixed cutoff. The mixed tower equation is

\[
\left(\partial_s+v\cdot\nabla-\nu\Delta\right)W_{m,\alpha}
+\nabla Q_{m,\alpha}
=
-B_{m,\alpha},
\qquad
\nabla\cdot W_{m,\alpha}=0,
\tag{SCR.3}
\]

where \(B_{m,\alpha}\) is the off-diagonal mixed Leibniz sum. Multiplying by
\(\eta^2W_{m,\alpha}\) gives

\[
\begin{aligned}
{1\over2}{d\over ds}\int \eta^2|W_{m,\alpha}|^2
+\nu\int \eta^2|\nabla W_{m,\alpha}|^2
&=
{1\over2}\int |W_{m,\alpha}|^2v\cdot\nabla(\eta^2) \\
&\quad+\int Q_{m,\alpha}W_{m,\alpha}\cdot\nabla(\eta^2) \\
&\quad-\nu\int \partial_k(\eta^2)(W_{m,\alpha})_i
\partial_k(W_{m,\alpha})_i \\
&\quad-\int \eta^2W_{m,\alpha}\cdot B_{m,\alpha}.
\end{aligned}
\tag{SCR.4}
\]

This is the local participation law in the rescaled tower. The pressure,
transport, viscosity, and off-diagonal tower coupling are in the same identity.

## 2. Moving factorial radii

For moving factorial radii \(\tau(s),\rho(s)\), set

\[
w_{m,\alpha}(s):={\tau(s)^m\rho(s)^{|\alpha|}\over m!\,\alpha!}.
\tag{SCR.5}
\]

Define

\[
\mathcal E_\eta
:=
{1\over2}\sum_{m,\alpha}w_{m,\alpha}^2
\int\eta^2|W_{m,\alpha}|^2,
\tag{SCR.6}
\]

\[
\mathcal D_\eta
:=
\sum_{m,\alpha}w_{m,\alpha}^2
\int\eta^2|\nabla W_{m,\alpha}|^2,
\tag{SCR.7}
\]

and the tower moments

\[
\mathcal M_t
:=
\sum_{m,\alpha}m\,w_{m,\alpha}^2
\int\eta^2|W_{m,\alpha}|^2,
\qquad
\mathcal M_x
:=
\sum_{m,\alpha}|\alpha|\,w_{m,\alpha}^2
\int\eta^2|W_{m,\alpha}|^2.
\tag{SCR.8}
\]

Let

\[
\mu_t:=-{\tau'\over\tau},
\qquad
\mu_x:=-{\rho'\over\rho}.
\tag{SCR.9}
\]

Multiplying `(SCR.4)` by \(w_{m,\alpha}^2\), summing over the tower, and using
the logarithmic derivative of \(w_{m,\alpha}\) gives the exact identity

\[
\boxed{
{d\over ds}\mathcal E_\eta
+\nu\mathcal D_\eta
+\mu_t\mathcal M_t
+\mu_x\mathcal M_x
=
\mathcal F_{\mathrm{tr}}
+\mathcal F_{\mathrm{p}}
+\mathcal F_{\nu,\partial}
+\mathcal N_{\mathrm{tow}}.
}
\tag{SCR.10}
\]

Here the four right-hand terms are exactly the weighted sums of the four
right-hand terms in `(SCR.4)`:

\[
\mathcal F_{\mathrm{tr}}
:=
{1\over2}\sum_{m,\alpha}w_{m,\alpha}^2
\int |W_{m,\alpha}|^2v\cdot\nabla(\eta^2),
\tag{SCR.11}
\]

\[
\mathcal F_{\mathrm{p}}
:=
\sum_{m,\alpha}w_{m,\alpha}^2
\int Q_{m,\alpha}W_{m,\alpha}\cdot\nabla(\eta^2),
\tag{SCR.12}
\]

\[
\mathcal F_{\nu,\partial}
:=
-\nu\sum_{m,\alpha}w_{m,\alpha}^2
\int \partial_k(\eta^2)(W_{m,\alpha})_i\partial_k(W_{m,\alpha})_i,
\tag{SCR.13}
\]

\[
\mathcal N_{\mathrm{tow}}
:=
-\sum_{m,\alpha}w_{m,\alpha}^2
\int \eta^2W_{m,\alpha}\cdot B_{m,\alpha}.
\tag{SCR.14}
\]

Formula `(SCR.10)` is the exact coupled participation-spend identity.

## 3. What summable spend would require

Positive terminal tower radius is equivalent to

\[
\int^{S}\mu_t(s)\,ds<\infty,
\qquad
\int^{S}\mu_x(s)\,ds<\infty.
\tag{SCR.15}
\]

The tower identity can prove `(SCR.15)` only if the right-hand side of
`(SCR.10)` is controlled by an integrable same-carrier coefficient. A sufficient
form would be

\[
\mathcal F_{\mathrm{tr}}
+\mathcal F_{\mathrm{p}}
+\mathcal F_{\nu,\partial}
+\mathcal N_{\mathrm{tow}}
\le
{1\over2}\nu\mathcal D_\eta
+{1\over2}\mu_t\mathcal M_t
+{1\over2}\mu_x\mathcal M_x
+R(s),
\tag{SCR.16}
\]

with

\[
\int^{S}R(s)\,ds<\infty
\tag{SCR.17}
\]

and with \(\mu_t,\mu_x\) themselves integrable. The current native tower
identity does not supply this. It identifies the terms that must be paid, but
it does not make the pressure/transport/tower forcing sign-definite or
integrably small.

## 4. Why physical energy gives only discounted control

For a heat-scale cylinder of radius \(r_j\), define the normalized base
dissipation action

\[
A_j(R)
:=
\int_{I_j}\int_{B_R}|\nabla_y v_j(s,y)|^2\,dy\,ds.
\tag{SCR.18}
\]

Changing variables back to physical coordinates gives

\[
\int_{T-r_j^2|I_j|}^{T}\int_{B_{Rr_j}(x_*)}
|\nabla_x u(t,x)|^2\,dx\,dt
=
r_j A_j(R).
\tag{SCR.19}
\]

Thus the physical energy inequality can control a sum of the form

\[
\sum_j r_j A_j(R)<\infty.
\tag{SCR.20}
\]

It does not control

\[
\sum_j A_j(R)<\infty.
\tag{SCR.21}
\]

The arithmetic obstruction is exact: for \(r_j=2^{-j}\) and \(A_j(R)=1\),

\[
\sum_j r_jA_j(R)<\infty,
\qquad
\sum_j A_j(R)=\infty.
\tag{SCR.22}
\]

So physical energy cannot by itself supply the unweighted terminal reserve
needed to force summable radius spend.

## 5. What cross-cylinder coupling fixes, and what it does not fix

The cross-cylinder identity

\[
W_{j+1,m,\alpha}(s,y)
=
\lambda_j^{2m+|\alpha|+1}
W_{j,m,\alpha}(\lambda_j^2s,\lambda_j y)
\tag{SCR.23}
\]

means the cylinders are not independent packets. They are the same solution
seen through nested heat-scale frames.

This prevents false double-counting. The correct object is the same-solution
shell increment between adjacent scales, not a free family of unrelated
cylinders.

But the shell increment still carries the same heat-scale discount as
`(SCR.19)`. Cross-cylinder coupling tells us how the tower is transported; it
does not turn the discounted bound `(SCR.20)` into the unweighted bound
`(SCR.21)`.

## 6. Verdict

The user-supplied participation law is the correct native language:

\[
\boxed{
\text{participation is the survival of the coupled
velocity-pressure-incompressibility tower after rescaling.}
}
\tag{SCR.24}
\]

The direct spend test gives:

\[
\boxed{
\text{the native tower identity installs the exact spend terms, but does not
prove that the spend is summable.}
}
\tag{SCR.25}
\]

Therefore

\[
\boxed{
\text{SummableRadiusSpend.A is not proved from current inputs.}
}
\tag{SCR.26}
\]

The remaining live alternatives are:

\[
\boxed{
\text{a same-carrier unweighted action/no-waste theorem}
}
\tag{SCR.27}
\]

or

\[
\boxed{
\text{ControlledCoupledTowerRadiusCollapse.A.}
}
\tag{SCR.28}
\]

The second alternative must show that divergent coupled radius spend is not a
free hidden survival mechanism: it must become the terminal time-face
atom/profile branch or a Pack/Part/Field-facing exit.
