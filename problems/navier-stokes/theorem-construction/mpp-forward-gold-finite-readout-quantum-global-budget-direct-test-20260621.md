---
ns_viewer:
  theorem_id: forward-gold-finite-readout-quantum-global-budget-direct-test-20260621
  status: exact-global-budget-test-complete-radius-discount-does-not-sum-finite-readout-quanta
  proof_role: forward_gold_finite_readout_quantum_budget_test
  logical_landing_node: finite_readout_quantum_global_budget
  edge_effect: >-
    Tests whether the per-strip finite-readout quantum forced by a selected
    endpoint atom gives a global contradiction from current physical ledgers.
    The answer is no for any ledger that sees the normalized quantum Q_m only
    through a radius-discounted physical cost r_m^kappa Q_m with kappa>0. A
    dyadic Zeno chain r_m=2^(-m), Q_m=1 has sum_m r_m^kappa Q_m<infinity while
    sum_m Q_m=infinity. In particular, physical energy and L^2 dissipation have
    exactly this heat-scale discount for the base energy/dissipation readouts.
    Therefore the new finite-readout quantum is real, but a forward-gold
    contradiction still needs an unweighted budget, source-square/no-waste,
    profile production, or CM Pack/Part/Field consumption.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-atom-forces-finite-order-readout-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-pressure-flux-throttle-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-summable-coupled-radius-spend-direct-test-20260621.md
  downstream_consequence: >-
    Per-atom finite-readout quanta do not close the gold route unless they are
    controlled in an unweighted same-carrier budget or routed to CM face failure.
    The live forward-positive suppliers remain source-square domination, strict
    no-waste/unweighted critical action, selected critical-strain/CKN Carleson,
    or profile production.
---

# MPP Forward-Gold Finite Readout Quantum Global Budget Direct Test

Date: 2026-06-21

## Status

The finite-readout atom criterion gives a genuine per-strip quantum:

\[
\int_{I_m}X_m(s)^p\,ds\ge c_0>0.
\tag{FRB.1}
\]

This note tests whether the current physical ledgers turn `(FRB.1)` into a
global contradiction over a terminal Zeno chain.

They do not, whenever the available physical ledger controls only a
radius-discounted version of the normalized quantum.

## 1. Exact discounted-budget obstruction

Let \(r_m\downarrow0\) be the terminal heat-scale radii and let

\[
Q_m:=\int_{I_m}X_m(s)^p\,ds.
\tag{FRB.2}
\]

Assume the only available global budget has the form

\[
\sum_m r_m^\kappa Q_m\le C
\tag{FRB.3}
\]

for some fixed \(\kappa>0\).

This does not imply

\[
\sum_m Q_m<\infty.
\tag{FRB.4}
\]

Indeed, take

\[
r_m=2^{-m},
\qquad
Q_m=1.
\tag{FRB.5}
\]

Then

\[
\sum_m r_m^\kappa Q_m
=
\sum_m 2^{-\kappa m}
<\infty,
\tag{FRB.6}
\]

while

\[
\sum_m Q_m
=
\sum_m 1
=\infty.
\tag{FRB.7}
\]

Thus a radius-discounted physical budget cannot sum the unweighted readout
quanta forced by the endpoint atom.

## 2. Heat-scale energy and dissipation have the discount

For the standard heat-scale normalization

\[
u(t,x)
=
r^{-1}U\!\left({t-T\over r^2},{x-x_0\over r}\right),
\tag{FRB.8}
\]

with \(s=(t-T)/r^2\) and \(y=(x-x_0)/r\), the physical energy on a ball of
radius \(r\) is

\[
\int_{B_r(x_0)}|u(t,x)|^2\,dx
=
r\int_{B_1}|U(s,y)|^2\,dy.
\tag{FRB.9}
\]

Similarly, the physical \(L^2\) dissipation on the heat-scale cylinder is

\[
\int_{T-r^2}^{T}\int_{B_r(x_0)}
|\nabla_x u(t,x)|^2\,dxdt
=
r\int_{-1}^{0}\int_{B_1}
|\nabla_y U(s,y)|^2\,dyds.
\tag{FRB.10}
\]

So for base energy and dissipation readouts the physical ledger controls
\(rQ_m\), not \(Q_m\). This is `(FRB.3)` with \(\kappa=1\).

Consequently, finite physical energy or finite physical dissipation is
compatible with one order-one normalized quantum on every dyadic heat scale:

\[
Q_m=1,
\qquad
r_m=2^{-m}.
\tag{FRB.11}
\]

## 3. What would be enough

An unweighted same-carrier budget would be enough. If one proved

\[
\sum_m Q_m\le C
\tag{FRB.12}
\]

and each selected endpoint atom strip forced

\[
Q_m\ge c_0>0,
\tag{FRB.13}
\]

then infinitely many retained atom strips would be impossible.

Equivalently, a terminal anti-atom theorem can come from any exact mechanism
that supplies `(FRB.12)` for the same selected carrier family:

\[
\boxed{
\text{source-square domination, strict no-waste, unweighted critical action,
selected critical-strain/CKN Carleson, or profile production.}
}
\tag{FRB.14}
\]

## 4. Relation to the CM consumer

The failure of the global forward budget does not make the finite-readout
quantum useless. It has a different exact use.

After same-carrier CM admission, retained \(Pack_Q\), retained \(Part_{N,Q}\),
and a positive \(Field_{N,\rho,Q}\) certificate give a uniform finite-rung
readout bound on the selected terminal windows. That contradicts the finite
readout growth forced by a retained atom.

So the branch has two exact exits:

\[
\boxed{
\text{unweighted forward budget}
\quad\text{or}\quad
\text{CM Pack/Part/Field face consumption.}
}
\tag{FRB.15}
\]

Current physical energy and dissipation supply neither the first exit nor a
replacement for same-carrier CM admission.

## Verdict

The finite-readout atom criterion is a real improvement, but it does not by
itself close the forward-gold anti-atom theorem:

\[
\boxed{
\int_{I_m}X_m^p\,ds\ge c_0
\quad\text{for each atom strip}
}
\tag{FRB.16}
\]

does not contradict a physical ledger of the form

\[
\boxed{
\sum_m r_m^\kappa\int_{I_m}X_m^p\,ds<\infty,
\qquad
\kappa>0.
}
\tag{FRB.17}
\]

The remaining forward-positive requirement is exactly an unweighted
same-carrier budget or an equivalent no-waste/profile/source-square theorem.
