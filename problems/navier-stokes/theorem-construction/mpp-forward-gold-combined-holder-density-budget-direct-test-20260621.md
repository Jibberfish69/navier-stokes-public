---
ns_viewer:
  theorem_id: forward-gold-combined-holder-density-budget-direct-test-20260621
  status: exact-direct-test-complete-combined-holder-density-algebraic-consumer-not-energy-produced-budget
  proof_role: forward_gold_combined_holder_density_budget_direct_test
  logical_landing_node: combined_holder_density_budget
  edge_effect: >-
    Records the exact status of the combined critical Holder density
    |Sigma|^(5/2)+|W|^(10/3). Young's inequality makes it an algebraic consumer
    for the native selected trilinear carrier, so each retained carrier atom
    forces a positive combined-density quantum. The current energy/local-energy
    package does not supply the required unweighted terminal-family budget:
    physical L^(10/3) velocity mass controls r^(5/3) times the normalized
    velocity quantum, and energy-level strain controls only the L^2 strain bill
    r times the normalized dissipation. The L^(5/2) strain part is exactly
    unweighted but is not produced by energy. Therefore the combined Holder
    density is a correct consumer currency, not an installed forward-gold
    supplier.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-readout-to-critical-budget-identification-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-strain-carrier-ui-holder-saturation-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-terminal-critical-reserve-consolidation-20260619.md
  downstream_consequence: >-
    Do not cite Young/Holder critical domination as a gold closure unless an
    unweighted terminal-family budget or terminal-tail depletion is also proved
    for the combined density. The remaining suppliers are SelectedCriticalStrainCarleson.A,
    an unweighted velocity/CKN reserve, source-square domination, strict no-waste,
    or profile production.
---

# MPP Forward-Gold Combined Holder Density Budget Direct Test

Date: 2026-06-21

## Status

The native selected trilinear carrier has an exact algebraic consumer:
the combined critical Holder density.  This note tests whether the current
Navier-Stokes energy/local-energy inputs produce the required unweighted
terminal-family budget for that density.

They do not.  The combined density is the correct currency, but it is not an
installed reserve.

## 1. Exact algebraic consumer

On a normalized selected terminal heat-scale packet, write the carrier as

\[
a_m(s)
=
\int_{B_1}
\left[
\left\langle
\Sigma_m^{loc}(s,y)W_m(s,y),W_m(s,y)
\right\rangle
\right]_+dy.
\tag{CHB.1}
\]

Dropping the positive part only for an upper estimate gives

\[
a_m(s)
\le
\int_{B_1}
|\Sigma_m^{loc}(s,y)|\,|W_m(s,y)|^2\,dy.
\tag{CHB.2}
\]

Young's inequality with exponents \(5/2\) and \(5/3\) gives

\[
|\Sigma|\,|W|^2
\le
{2\over5}|\Sigma|^{5/2}
+
{3\over5}|W|^{10/3}.
\tag{CHB.3}
\]

Therefore

\[
a_m(s)
\le
{2\over5}
\int_{B_1}|\Sigma_m^{loc}|^{5/2}\,dy
+
{3\over5}
\int_{B_1}|W_m|^{10/3}\,dy.
\tag{CHB.4}
\]

Define the combined Holder density

\[
H_m(s)
:=
\int_{B_1}|\Sigma_m^{loc}(s,y)|^{5/2}\,dy
+
\int_{B_1}|W_m(s,y)|^{10/3}\,dy.
\tag{CHB.5}
\]

If a selected endpoint atom satisfies

\[
\int_{I_m}a_m(s)\,ds\ge a_0>0,
\tag{CHB.6}
\]

then `(CHB.4)` implies the positive combined-density quantum

\[
\int_{I_m}H_m(s)\,ds
\ge
c_H a_0,
\qquad
c_H={1\over\max(2/5,3/5)}={5\over3}.
\tag{CHB.7}
\]

The constant is not important.  The point is exact: for the trilinear carrier,
the finite selected atom is seen by the combined critical Holder density.

## 2. What would close the branch

The forward-gold contradiction would follow from an unweighted terminal-family
budget

\[
\sum_m\int_{I_m}H_m(s)\,ds<\infty
\tag{CHB.8}
\]

or terminal-tail depletion of the same sum after legal exits.  Combining
`(CHB.7)` with `(CHB.8)` forbids infinitely many retained endpoint atoms.

Thus the combined Holder route is a valid consumer theorem:

\[
\boxed{
\text{unweighted combined Holder budget}
\Longrightarrow
\text{no retained terminal selected-carrier atom.}
}
\tag{CHB.9}
\]

## 3. Energy gives the velocity side only with a radius discount

Let a physical heat-scale packet be written as

\[
u(t,x)
=
r^{-1}U\!\left({t-T\over r^2},{x-x_0\over r}\right).
\tag{CHB.10}
\]

Then

\[
\int_{T-r^2}^{T}\int_{B_r(x_0)}
|u(t,x)|^{10/3}\,dxdt
=
r^{5/3}
\int_{-1}^{0}\int_{B_1}
|U(s,y)|^{10/3}\,dyds.
\tag{CHB.11}
\]

So the energy-class Sobolev interpolation

\[
u\in L^{10/3}_{t,x}
\tag{CHB.12}
\]

controls the radius-weighted sum

\[
\sum_m r_m^{5/3}
\int_{I_m}\int_{B_1}|W_m|^{10/3}\,dyds,
\tag{CHB.13}
\]

not the unweighted sum needed in `(CHB.8)`.

For \(r_m=2^{-m}\) and normalized velocity quantum equal to one, the weighted
sum is finite:

\[
\sum_m r_m^{5/3}<\infty,
\tag{CHB.14}
\]

while the unweighted count diverges:

\[
\sum_m1=\infty.
\tag{CHB.15}
\]

Thus the velocity half of `(CHB.8)` is not produced by the energy-class
\(L^{10/3}\) estimate.

## 4. Energy-level strain is one half-power short

Under the same heat-scale normalization,

\[
S_x(u)(t,x)
=
r^{-2}S_y(U)(s,y).
\tag{CHB.16}
\]

The energy-level strain bill scales as

\[
\int_{T-r^2}^{T}\int_{B_r(x_0)}
|S_x(u)|^2\,dxdt
=
r
\int_{-1}^{0}\int_{B_1}|S_y(U)|^2\,dyds.
\tag{CHB.17}
\]

This is the dissipative energy currency.  It controls only a radius-weighted
normalized \(L^2\) strain sum.

The critical strain bill is exactly unweighted:

\[
\int_{T-r^2}^{T}\int_{B_r(x_0)}
|S_x(u)|^{5/2}\,dxdt
=
\int_{-1}^{0}\int_{B_1}|S_y(U)|^{5/2}\,dyds.
\tag{CHB.18}
\]

This is why selected critical strain is the right bill.  It is also why it is
not produced by the energy inequality: the installed global control is
\(S\in L^2_{t,x}\), not \(S\in L^{5/2}_{t,x}\) on the selected terminal family.

## 5. Exact energy-only no-go model

Let \(U\in C_c^\infty((-1,0)\times B_1;\mathbb R^3)\) be divergence-free, with
both \(U\) and \(S_y(U)\) nonzero.  Choose pairwise disjoint heat-scale packets
with \(r_m=2^{-m}\), and set

\[
u_m(t,x)
=
r_m^{-1}
U\!\left({t-t_m\over r_m^2},{x-x_m\over r_m}\right).
\tag{CHB.19}
\]

Then the energy-level quantities satisfy

\[
\sum_m
\int_{Q_m}|u_m|^{10/3}\,dxdt
=
\left(\int_{Q_1}|U|^{10/3}\right)
\sum_m r_m^{5/3}
<\infty,
\tag{CHB.20}
\]

and

\[
\sum_m
\int_{Q_m}|S_x(u_m)|^2\,dxdt
=
\left(\int_{Q_1}|S_y(U)|^2\right)
\sum_m r_m
<\infty.
\tag{CHB.21}
\]

But the normalized combined Holder quantum is fixed on each packet:

\[
\int_{-1}^{0}\int_{B_1}
\left(
|S_y(U)|^{5/2}+|U|^{10/3}
\right)dyds
=
c_U>0.
\tag{CHB.22}
\]

Therefore

\[
\sum_m c_U=\infty.
\tag{CHB.23}
\]

This is not a Navier-Stokes solution counterexample.  It proves the exact
scaling boundary: no estimate can derive `(CHB.8)` using only energy-class
\(L^{10/3}\) velocity, \(L^2\) strain, heat-scale normalization, and bounded
overlap.

## Verdict

The combined Holder density is the correct algebraic consumer of the selected
trilinear carrier:

\[
\boxed{
a_m
\le
{2\over5}|\Sigma_m^{loc}|^{5/2}
+
{3\over5}|W_m|^{10/3}
\quad\text{after spatial integration.}
}
\tag{CHB.24}
\]

But the current Navier-Stokes energy/local-energy package does not prove the
unweighted terminal-family budget

\[
\boxed{
\sum_m\int_{I_m}H_m(s)\,ds<\infty.
}
\tag{CHB.25}
\]

The remaining noncircular suppliers are exactly the stronger mechanisms that
would produce `(CHB.25)` or bypass it:

\[
\boxed{
\text{SelectedCriticalStrainCarleson.A,\quad unweighted velocity/CKN reserve,
\quad source-square domination,\quad strict no-waste,\quad profile production.}
}
\tag{CHB.26}
\]
