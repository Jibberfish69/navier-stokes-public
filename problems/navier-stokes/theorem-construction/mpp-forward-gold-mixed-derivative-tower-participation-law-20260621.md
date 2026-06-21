---
ns_viewer:
  theorem_id: forward-gold-mixed-derivative-tower-participation-law-20260621
  status: audited-form-installed-mixed-tower-needed-for-terminal-time-face
  proof_role: forward_gold_participation_tower_form
  logical_landing_node: mixed_derivative_tower_participation_law
  edge_effect: "Audits and extends Thomas's rescaled derivative-tower formulation. The supplied spatial tower is correct under the stated fixed-cutoff conventions, with the usual pressure sign convention. The terminal time-face problem requires the mixed tower W_{j,m,alpha}=partial_s^m partial_y^alpha v_j. Its cross-cylinder coupling is W_{j+1,m,alpha}=lambda_j^(2m+|alpha|+1) W_{j,m,alpha}(lambda_j^2 s,lambda_j y), and the pressure rung has power 2m+|alpha|+2. Participation is the survival of this coupled velocity-pressure-incompressibility tower; Pack/window notation is later carrier language, not the source of participation."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-cross-cylinder-time-tower-coupling-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-annular-feed-two-stage-split-20260621.md
  downstream_consequence: "Future heat-scale pulse tests should use the mixed factorial/Gevrey weights tau^m rho^|alpha|/(m! alpha!) and the cross-cylinder radius transport tau_j=lambda_j^2 tau_{j+1}, rho_j=lambda_j rho_{j+1}. The missing theorem is a positive lower bound or controlled-collapse alternative for this coupled mixed tower radius."
---

# MPP Forward-Gold Mixed Derivative Tower Participation Law

Date: 2026-06-21

## Status

This note audits the rescaled derivative-tower formulation and installs the
form needed for the terminal time-face problem.

The supplied spatial tower is the right local participation language. The
refinement is that the heat-scale terminal pulse cannot be tested with spatial
rungs alone. It needs the mixed tower:

\[
W_{j,m,\alpha}:=\partial_s^m\partial_y^\alpha v_j,
\qquad
Q_{j,m,\alpha}:=\partial_s^m\partial_y^\alpha q_j.
\tag{MT.1}
\]

Participation is the survival of this velocity-pressure-incompressibility
tower. Packet/window notation can record carriers later, but it is not the
source of participation.

## 1. Rescaled law

For

\[
v_r(s,y)=r\,u(T+r^2s,x_*+ry),
\qquad
q_r(s,y)=r^2p(T+r^2s,x_*+ry),
\tag{MT.2}
\]

the rescaled equation is

\[
\partial_s v_r+(v_r\cdot\nabla)v_r+\nabla q_r
=\nu\Delta v_r,
\qquad
\nabla\cdot v_r=0.
\tag{MT.3}
\]

Taking divergence gives, with the standard sign convention for `(MT.3)`,

\[
-\Delta q_r
=
\partial_i(v_r)_j\,\partial_j(v_r)_i.
\tag{MT.4}
\]

## 2. Spatial derivative tower audit

For

\[
V_\alpha=\partial_y^\alpha v_r,
\qquad
Q_\alpha=\partial_y^\alpha q_r,
\tag{MT.5}
\]

the spatial tower is

\[
\left(\partial_s+v_r\cdot\nabla-\nu\Delta\right)V_\alpha+\nabla Q_\alpha
=
-\sum_{0<\beta\le\alpha}
{\alpha\choose\beta}
\left(V_\beta\cdot\nabla\right)V_{\alpha-\beta},
\tag{MT.6}
\]

\[
\nabla\cdot V_\alpha=0,
\tag{MT.7}
\]

and

\[
-\Delta Q_\alpha
=
\sum_{\beta\le\alpha}
{\alpha\choose\beta}
\partial_i(V_\beta)_j
\partial_j(V_{\alpha-\beta})_i.
\tag{MT.8}
\]

This is correct as a local derivative tower. The pressure constant is irrelevant
because only \(\nabla Q_\alpha\) enters the velocity equation.

## 3. Local participation identity

For a fixed spatial cutoff \(\eta(y)\) independent of \(s\), multiply `(MT.6)`
by \(\eta^2V_\alpha\) and integrate. Using incompressibility gives

\[
\begin{aligned}
{1\over2}{d\over ds}\int \eta^2|V_\alpha|^2
+\nu\int \eta^2|\nabla V_\alpha|^2
&=
{1\over2}\int |V_\alpha|^2\,v_r\cdot\nabla(\eta^2) \\
&\quad+\int Q_\alpha V_\alpha\cdot\nabla(\eta^2) \\
&\quad-\nu\int \partial_k(\eta^2)(V_\alpha)_i\partial_k(V_\alpha)_i \\
&\quad-\int \eta^2 V_\alpha\cdot B_\alpha ,
\end{aligned}
\tag{MT.9}
\]

where

\[
B_\alpha
:=
\sum_{0<\beta\le\alpha}
{\alpha\choose\beta}
\left(V_\beta\cdot\nabla\right)V_{\alpha-\beta}.
\tag{MT.10}
\]

This identity is the local participation law at rung \(\alpha\): transport,
pressure, viscosity, incompressibility, and lower-rung nonlinear coupling appear
in one balance.

## 4. Logarithmic heat variables

In logarithmic heat variables, with

\[
s=-\log(T-t),
\qquad
y={x-x_*\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\tag{MT.11}
\]

the base equation becomes

\[
\partial_s v+(v\cdot\nabla)v+\nabla q
+{1\over2}y\cdot\nabla v+{1\over2}v
=\nu\Delta v.
\tag{MT.12}
\]

Applying \(\partial_y^\alpha\) gives

\[
\left(
\partial_s+v\cdot\nabla+{1\over2}y\cdot\nabla
+{|\alpha|+1\over2}
-\nu\Delta
\right)V_\alpha
+\nabla Q_\alpha
=
-B_\alpha.
\tag{MT.13}
\]

The extra coefficient \((|\alpha|+1)/2\) comes from differentiating the
parabolic drift \(y\cdot\nabla v\) and the velocity scaling term \(v/2\).

The local identity `(MT.9)` then gets the corresponding drift/scaling
contribution. That is not a different law; it is the same tower written in the
terminal heat clock.

## 5. Mixed derivative tower

For the terminal time-face atom, the spatial tower has to be combined with the
time tower. Define

\[
W_{j,m,\alpha}
:=
\partial_s^m\partial_y^\alpha v_j,
\qquad
Q_{j,m,\alpha}
:=
\partial_s^m\partial_y^\alpha q_j.
\tag{MT.14}
\]

Applying \(\partial_s^m\partial_y^\alpha\) to `(MT.3)` and keeping the principal
transport term on the left gives

\[
\left(\partial_s+v_j\cdot\nabla-\nu\Delta\right)W_{j,m,\alpha}
+\nabla Q_{j,m,\alpha}
=
-B_{j,m,\alpha},
\tag{MT.15}
\]

where

\[
B_{j,m,\alpha}
:=
\sum_{\substack{0\le a\le m,\ \beta\le\alpha\\(a,\beta)\ne(0,0)}}
{m\choose a}{\alpha\choose\beta}
\left(W_{j,a,\beta}\cdot\nabla\right)
W_{j,m-a,\alpha-\beta}.
\tag{MT.16}
\]

The pressure tower is

\[
-\Delta Q_{j,m,\alpha}
=
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
{m\choose a}{\alpha\choose\beta}
\partial_i(W_{j,a,\beta})_l
\partial_l(W_{j,m-a,\alpha-\beta})_i.
\tag{MT.17}
\]

This is the full pressure-viscosity-incompressibility tower.

## 6. Factorial/Gevrey weights

Use mixed factorial weights

\[
A_{j,m,\alpha}
:=
{\tau^m\rho^{|\alpha|}\over m!\,\alpha!}
\|W_{j,m,\alpha}\|.
\tag{MT.18}
\]

Then the time and space binomial coefficients in `(MT.16)` cancel:

\[
{ \tau^m\rho^{|\alpha|}\over m!\,\alpha!}
{m\choose a}{\alpha\choose\beta}
\|W_{j,a,\beta}\|\,\|W_{j,m-a,\alpha-\beta}\|
=
A_{j,a,\beta}\,A_{j,m-a,\alpha-\beta}.
\tag{MT.19}
\]

This is the precise tower-level use of the Stirling/factorial idea.

## 7. Cross-cylinder mixed tower coupling

Let

\[
\lambda_j={r_{j+1}\over r_j}.
\tag{MT.20}
\]

The base same-solution identity is

\[
v_{j+1}(s,y)=\lambda_jv_j(\lambda_j^2s,\lambda_j y),
\qquad
q_{j+1}(s,y)=\lambda_j^2q_j(\lambda_j^2s,\lambda_j y).
\tag{MT.21}
\]

Taking \(m\) derivatives in \(s\) and \(\alpha\) derivatives in \(y\) gives

\[
\boxed{
W_{j+1,m,\alpha}(s,y)
=
\lambda_j^{2m+|\alpha|+1}
W_{j,m,\alpha}(\lambda_j^2s,\lambda_j y).
}
\tag{MT.22}
\]

For pressure,

\[
\boxed{
Q_{j+1,m,\alpha}(s,y)
=
\lambda_j^{2m+|\alpha|+2}
Q_{j,m,\alpha}(\lambda_j^2s,\lambda_j y).
}
\tag{MT.23}
\]

This is the cross-cylinder tower law.

The associated mixed analytic radius must be transported by

\[
\tau_j=\lambda_j^2\tau_{j+1},
\qquad
\rho_j=\lambda_j\rho_{j+1}.
\tag{MT.24}
\]

Indeed,

\[
{\tau_{j+1}^m\rho_{j+1}^{|\alpha|}\over m!\,\alpha!}
W_{j+1,m,\alpha}
=
\lambda_j
{(\lambda_j^2\tau_{j+1})^m(\lambda_j\rho_{j+1})^{|\alpha|}
\over m!\,\alpha!}
W_{j,m,\alpha}\circ(\lambda_j^2,\lambda_j).
\tag{MT.25}
\]

## 8. Correct target

The terminal heat-scale pulse should now be tested against the coupled mixed
tower:

\[
\left\{
{\tau_j^m\rho_j^{|\alpha|}\over m!\,\alpha!}
W_{j,m,\alpha}
\right\}_{j,m,\alpha}.
\tag{MT.26}
\]

The direct gold theorem would be a lower bound or controlled-collapse
alternative for the transported radius pair \((\tau_j,\rho_j)\):

\[
\boxed{
\text{CoupledMixedTowerRadiusLowerBound.A}
}
\tag{MT.27}
\]

or equivalently:

\[
\boxed{
\text{collapse of the coupled mixed tower radius forces the terminal
time-face atom/profile branch.}
}
\tag{MT.28}
\]

## Verdict

The audit result is:

\[
\boxed{
\text{rescale first, then every derivative rung still obeys the same coupled
velocity-pressure-incompressibility tower.}
}
\tag{MT.29}
\]

The useful correction is:

\[
\boxed{
\text{for the terminal time scenario, the tower must be mixed and coupled
across cylinders.}
}
\tag{MT.30}
\]

Current inputs do not prove `(MT.27)`. They install the correct object for the
next proof attempt.
