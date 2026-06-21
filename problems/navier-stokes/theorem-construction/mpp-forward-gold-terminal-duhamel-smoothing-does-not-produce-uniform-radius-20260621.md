---
ns_viewer:
  theorem_id: forward-gold-terminal-duhamel-smoothing-does-not-produce-uniform-radius-20260621
  status: direct-test-complete-terminal-duhamel-source-defeats-heat-smoothing-radius
  proof_role: forward_gold_uniform_coupled_radius_survival_test
  logical_landing_node: terminal_duhamel_smoothing_radius
  edge_effect: "Tests whether parabolic smoothing alone can produce the uniform coupled tower radius needed for endpoint UI. It cannot. In the forced heat normal form, source born in a terminal layer has smoothing time tending to zero. Duhamel averaging of a terminal layer converges to the unsmoothed source profile at the terminal face, so no positive analytic radius or endpoint UI follows from heat smoothing alone. This identifies the nonlinear NS issue precisely: the terminal source/current must be controlled on the same carrier, not merely passed through viscosity."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-tail-to-selected-carrier-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-summable-coupled-radius-spend-direct-test-20260621.md
  downstream_consequence: "Do not claim that viscosity/parabolic smoothing supplies uniform coupled radius survival on terminal heat windows. A successful route must control the terminal Duhamel source/current itself through endpoint UI, unweighted action, strict no-waste, source-square domination, or profile production."
---

# MPP Forward-Gold Terminal Duhamel Smoothing Does Not Produce Uniform Radius

Date: 2026-06-21

## Status

This note tests whether parabolic smoothing alone can produce the uniform
coupled tower radius needed by the endpoint UI bridge:

\[
\boxed{
\text{heat smoothing}
\Longrightarrow
\text{uniform positive coupled tower radius near the terminal face}.
}
\tag{TDS.1}
\]

The implication fails in the exact linear forced-heat normal form. A source born
at the terminal face has vanishing smoothing time.

## 1. Forced heat model

Consider

\[
\partial_s v-\nu\Delta v=f_m,
\qquad
v(-1)=0,
\qquad
-1\le s\le0.
\tag{TDS.2}
\]

Let \(F\in C_c^\infty(B_1)\) be smooth but nonanalytic across an interior
surface, and set

\[
f_m(s,y):=
{1\over\tau_m}\mathbf 1_{(-\tau_m,0]}(s)F(y),
\qquad
\tau_m\downarrow0.
\tag{TDS.3}
\]

Then Duhamel gives

\[
v_m(0)
=
{1\over\tau_m}
\int_{-\tau_m}^{0}
e^{\nu(0-\sigma)\Delta}F\,d\sigma.
\tag{TDS.4}
\]

Changing variables \(r=-\sigma\),

\[
v_m(0)
=
{1\over\tau_m}
\int_{0}^{\tau_m}
e^{\nu r\Delta}F\,dr.
\tag{TDS.5}
\]

Since \(e^{\nu r\Delta}F\to F\) in \(H^k_{\mathrm{loc}}\) for every fixed
\(k\),

\[
v_m(0)\to F
\quad\text{in }H^k_{\mathrm{loc}}
\quad\text{for every fixed }k.
\tag{TDS.6}
\]

Thus all fixed finite rungs can converge to a smooth finite limit.

## 2. No uniform analytic radius follows

If the terminal averages \(v_m(0)\) had a uniform positive analytic radius, then
for some \(\rho>0\) and \(E<\infty\),

\[
\sum_\alpha
{\rho^{2|\alpha|}\over(\alpha!)^2}
\|\partial_y^\alpha v_m(0)\|_{L^2(B_{1/2})}^2
\le E
\tag{TDS.7}
\]

along a subsequence. Passing to the \(H^k_{\mathrm{loc}}\) limits in each fixed
rung would give

\[
\sum_\alpha
{\rho^{2|\alpha|}\over(\alpha!)^2}
\|\partial_y^\alpha F\|_{L^2(B_{1/2})}^2
\le E.
\tag{TDS.8}
\]

By the Cauchy-Hadamard/Sobolev analytic criterion, \(F\) would be analytic on
\(B_{1/2}\), contradicting the choice of \(F\).

Therefore terminal Duhamel smoothing does not supply a uniform positive
analytic radius.

## 3. The source marginal still forms an endpoint atom

The normalized source marginal of `(TDS.3)` is

\[
g_m(s):={1\over\tau_m}\mathbf 1_{(-\tau_m,0]}(s).
\tag{TDS.9}
\]

It has fixed mass:

\[
\int_{-1}^{0}g_m(s)\,ds=1,
\tag{TDS.10}
\]

but fails endpoint UI:

\[
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}g_m(s)\,ds
=1.
\tag{TDS.11}
\]

The heat operator sees the source only after it is born. At the terminal face,
the Duhamel layer has no positive smoothing time left.

## Verdict

The exact obstruction is:

\[
\boxed{
\text{viscosity smooths old material, but it does not smooth a source created
at the terminal face before the endpoint is tested.}
}
\tag{TDS.12}
\]

So parabolic smoothing does not produce uniform coupled tower radius survival
from current inputs. The missing theorem must control the terminal
Duhamel/source/current itself:

\[
\boxed{
\text{endpoint UI, unweighted action, strict no-waste, source-square domination,
or profile production.}
}
\tag{TDS.13}
\]
