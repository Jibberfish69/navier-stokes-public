---
ns_viewer:
  theorem_id: forward-gold-terminal-duhamel-smoothing-does-not-produce-uniform-radius-20260621
  status: supplier-boundary-test-complete-heat-smoothing-alone-does-not-supply-radius
  proof_role: forward_gold_heat_smoothing_supplier_boundary_test
  logical_landing_node: heat_smoothing_supplier_boundary
  edge_effect: "Mechanism test only. This is not a Navier-Stokes reduction, not a linearization of Navier-Stokes, not a Navier-Stokes normal form, not a Navier-Stokes model, and not a replacement for the nonlinear pressure-transport-viscosity system. The forcing in this note is an external heat-equation test input, not a proxy for -P div(v tensor v). It tests only the narrower supplier claim that heat semigroup smoothing by itself supplies a uniform coupled tower radius for terminal-layer input. In the forced heat test, terminal-layer forcing has smoothing time tending to zero, so the Duhamel average converges to the unsmoothed input. Any Navier-Stokes use still has to start from the exact Leray-Duhamel identity and estimate the actual nonlinear Duhamel contribution on the selected carrier."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-tail-to-selected-carrier-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-summable-coupled-radius-spend-direct-test-20260621.md
  downstream_consequence: "Do not claim that viscosity/parabolic smoothing alone supplies uniform coupled radius survival on terminal heat windows. This note supplies no linear approximation to Navier-Stokes, and any citation that identifies the external heat forcing with the Navier-Stokes nonlinearity is invalid unless the exact nonlinear Duhamel split is used. A successful route must control the actual terminal nonlinear/pressure contribution itself through endpoint UI, unweighted action, strict no-waste, source-square domination, or profile production."
---

# MPP Forward-Gold Terminal Duhamel Smoothing Does Not Produce Uniform Radius

Date: 2026-06-21

## Status

This note is a supplier-boundary test. It does not replace the Navier-Stokes
nonlinear Duhamel term by a linear forcing, it is not a Navier-Stokes normal
form, and it does not approximate the pressure-transport-viscosity system.

The calculation is an external forced-heat supplier-boundary test. It is only a
counterexample to the narrower claim that heat semigroup smoothing, by itself,
forces a uniform positive tower radius at the terminal face.

The Navier-Stokes-facing formula for this branch is the exact Leray-Duhamel
identity with source

\[
-\mathbb P\nabla\cdot(v\otimes v).
\]

The forced heat calculation below is only a separate test of the heat kernel's
smoothing strength when the input is born at the endpoint.

The exactness boundary is strict: the forcing \(f_m\) below is an external
heat-equation test input. It is not a linear approximation to
\(-\mathbb P\nabla\cdot(v\otimes v)\), and it cannot be cited as a
Navier-Stokes normal form or model unless the separate exact Leray-Duhamel
identity supplies that actual nonlinear term.

The exact Navier-Stokes Duhamel identity is recorded separately in
`mpp-forward-gold-exact-nonlinear-duhamel-terminal-split-20260621.md`. Any
Navier-Stokes-facing use of this note must pass through that exact identity,
where the terminal source is the actual Leray-projected nonlinearity
\(-\mathbb P\nabla\cdot(v\otimes v)\), not the external test forcing below.

Citation rule. This note may be cited only as a negative supplier test:
terminal heat time alone does not force a uniform analytic/tower radius. It may
not be cited as a Navier-Stokes normal form, Navier-Stokes model, nonlinear
approximation, source model, or selected-carrier identity.

It tests only whether parabolic smoothing alone can produce the uniform coupled
tower radius needed by the endpoint UI bridge:

\[
\boxed{
\text{heat semigroup smoothing acting alone on terminal-layer input}
\Longrightarrow
\text{uniform positive coupled tower radius near the terminal face}.
}
\tag{TDS.1}
\]

That supplier claim fails already in a forced heat test. This licenses only the
negative conclusion that bare viscosity/heat smoothing is not the missing
radius supplier.

## 1. Forced heat test

The forcing below is an external test input. It is not asserted to equal,
approximate, or model the Navier-Stokes nonlinear/pressure contribution. It
only tests whether the heat semigroup itself supplies the missing uniform
radius when source mass is born in the terminal layer.

Consider

\[
\partial_s v-\nu\Delta v=f_m,
\qquad
v(-1)=0,
\qquad
-1\le s\le0.
\tag{TDS.2}
\]

Choose \(F\in C_c^\infty(B_1)\) so that \(F\) is smooth but not real analytic
on \(B_{1/4}\), for instance by making it flat across a smooth interior surface
inside \(B_{1/4}\). Set

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

along a subsequence. For each fixed multiindex \(\alpha\), the convergence in
`(TDS.6)` gives

\[
\partial_y^\alpha v_m(0)\to \partial_y^\alpha F
\quad\text{in }L^2(B_{1/2}).
\tag{TDS.8}
\]

Fatou's lemma applied to the nonnegative weighted derivative sum gives

\[
\sum_\alpha
{\rho^{2|\alpha|}\over(\alpha!)^2}
\|\partial_y^\alpha F\|_{L^2(B_{1/2})}^2
\le E.
\tag{TDS.9}
\]

By the local \(L^2\) analytic-vector criterion, `(TDS.9)` implies that \(F\) is
real analytic on every compact subball of \(B_{1/2}\), in particular on
\(B_{1/4}\). This contradicts the choice of \(F\).

Therefore heat smoothing acting alone on terminal-layer forcing does not supply
a uniform positive analytic radius.

## 3. The source marginal still forms an endpoint atom

The normalized external source marginal of `(TDS.3)` is

\[
g_m(s):={1\over\tau_m}\mathbf 1_{(-\tau_m,0]}(s).
\tag{TDS.10}
\]

It has fixed mass:

\[
\int_{-1}^{0}g_m(s)\,ds=1,
\tag{TDS.11}
\]

but fails endpoint UI:

\[
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}g_m(s)\,ds
=1.
\tag{TDS.12}
\]

The heat operator sees this external source only after it is born. At the
terminal face, the forced heat layer has no positive smoothing time left.

## Verdict

The supplier-boundary obstruction is:

\[
\boxed{
\text{heat smoothing alone has no time to regularize terminal-layer input
before the endpoint is tested.}
}
\tag{TDS.13}
\]

For Navier-Stokes this gives only a negative license: do not use bare viscosity
as the missing tower-radius supplier. It does not linearize the equation and it
does not prove anything about an actual Navier-Stokes terminal Duhamel term.

The missing theorem must control the actual terminal nonlinear/pressure
contribution itself:

\[
\boxed{
\text{endpoint UI, unweighted action, strict no-waste, source-square domination,
or profile production.}
}
\tag{TDS.14}
\]
