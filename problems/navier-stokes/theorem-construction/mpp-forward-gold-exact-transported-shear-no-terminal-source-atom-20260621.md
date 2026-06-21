---
ns_viewer:
  theorem_id: forward-gold-exact-transported-shear-no-terminal-source-atom-20260621
  status: exact-residual-free-shear-subcase-terminal-atom-excluded
  proof_role: forward_gold_exact_residual_free_subcase_test
  logical_landing_node: exact_transported_shear_no_terminal_source_atom
  edge_effect: "Tests the residual-free version of the heat-scale shear geometry. For V=e_1+w(s,y_1)e_2, the projected Navier-Stokes equation is exactly partial_s w+partial_1 w=nu partial_1^2 w. A single Fourier mode must be phase-transported, w=A(s)n^(-1)sin(n(y_1-s)), with A'=-nu n^2 A. Its projected nonlinear source is N=-partial_1 w e_2=-A(s)cos(n(y_1-s))e_2. If the entrance amplitude is bounded, A(0)=A(-1)e^{-nu n^2} and the terminal selected carrier on [-theta,0] is at most C theta A(0), hence vanishes; keeping an order-one terminal carrier requires exponentially large entrance amplitude. Thus the residual-free transported-shear subcase cannot create a terminal endpoint source atom from bounded old data. The remaining heat-scale obstruction must use genuine nonlinear same-carrier refill, pressure coupling, profile production, or become a paid source/Part/legal defect."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-convective-normal-form-full-ns-residual-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-direct-lpas-raw-active-square-false-shear-counterexample-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-residual-refill-ledger-and-spine-consolidation-20260611.md
  downstream_consequence: "The exact shear gauge is now separated from the true terminal source problem. Raw heat/shear descendants remain excluded from residual LPAS by the residual-refill ledger, and the convective fixed-phase normal form remains excluded as a non-small-residual model. Any surviving heat-scale endpoint atom must be residual/source-balanced in the full coupled Navier-Stokes dynamics."
---

# MPP Forward-Gold Exact Transported Shear No Terminal Source Atom

Date: 2026-06-21

## Status

This note tests the exact residual-free shear version of the heat-scale normal
form.

The previous residual calculation showed that

\[
V_m(s,y)=e_1+{b_m(s)\over n_m}\sin(n_my_1)e_2
\tag{ETS.1}
\]

has the desired convective source algebra, but does not satisfy the projected
Navier-Stokes equation unless the source vanishes.

Here the phase is corrected so that the shear really solves Navier-Stokes. The
result is:

\[
\boxed{
\text{exact transported shear can carry old heat ancestry, but it cannot
create a terminal source atom from bounded entrance data.}
}
\tag{ETS.2}
\]

This is a subcase result, not a proof of the full gold theorem.

## 1. Exact shear reduction

Work on \(\mathbb T^3=[0,2\pi]^3\) in normalized variables. Let

\[
V(s,y)=e_1+w(s,y_1)e_2.
\tag{ETS.3}
\]

Then

\[
\nabla\cdot V=0.
\tag{ETS.4}
\]

Since \(w\) depends only on \(y_1\),

\[
(V\cdot\nabla)V
=
\partial_1w(s,y_1)e_2.
\tag{ETS.5}
\]

This vector field is divergence-free and has zero spatial mean, so the Leray
projection leaves it unchanged. Therefore the projected nonlinear source is

\[
N:=
-\mathbb P\nabla\cdot(V\otimes V)
=
-\partial_1w(s,y_1)e_2.
\tag{ETS.6}
\]

The projected Navier-Stokes equation

\[
\partial_sV-\nu\Delta V=N
\tag{ETS.7}
\]

is exactly

\[
\boxed{
\partial_sw+\partial_1w=\nu\partial_1^2w.
}
\tag{ETS.8}
\]

Thus the exact shear branch is a transported heat equation. This is not a
linear approximation of Navier-Stokes; it is the exact equation on the shear
ansatz `(ETS.3)`.

## 2. Exact Fourier mode

For one mode, take

\[
w_m(s,y_1)
=
{A_m(s)\over n_m}\sin(n_m(y_1-s)).
\tag{ETS.9}
\]

Then

\[
\partial_sw_m+\partial_1w_m
=
{A_m'(s)\over n_m}\sin(n_m(y_1-s)),
\tag{ETS.10}
\]

and

\[
\partial_1^2w_m
=
-n_mA_m(s)\sin(n_m(y_1-s)).
\tag{ETS.11}
\]

Therefore `(ETS.8)` is equivalent to

\[
\boxed{
A_m'(s)=-\nu n_m^2A_m(s).
}
\tag{ETS.12}
\]

Hence

\[
A_m(s)=A_m(-1)e^{-\nu n_m^2(s+1)}
\qquad
(-1\le s\le0).
\tag{ETS.13}
\]

The exact projected nonlinear source is

\[
N_m(s,y)
=
-A_m(s)\cos(n_m(y_1-s))e_2.
\tag{ETS.14}
\]

## 3. Selected carrier on terminal strips

For the selector \(e_2\mapsto -e_2\),

\[
[-N_m\cdot e_2]_+
=
A_m(s)[\cos(n_m(y_1-s))]_+
\tag{ETS.15}
\]

when \(A_m(s)\ge0\). Therefore

\[
\int_{\mathbb T^3}[-N_m(s,y)\cdot e_2]_+\,dy
=
2(2\pi)^2A_m(s).
\tag{ETS.16}
\]

Using `(ETS.13)`,

\[
\int_{-\theta}^{0}\int_{\mathbb T^3}
[-N_m\cdot e_2]_+\,dy\,ds
=
2(2\pi)^2A_m(-1)
\int_{-\theta}^{0}e^{-\nu n_m^2(s+1)}\,ds.
\tag{ETS.17}
\]

Since \(s+1\ge1-\theta\) on \([-\theta,0]\),

\[
\int_{-\theta}^{0}\int_{\mathbb T^3}
[-N_m\cdot e_2]_+\,dy\,ds
\le
2(2\pi)^2\theta A_m(-1)e^{-\nu n_m^2(1-\theta)}.
\tag{ETS.18}
\]

Thus, if

\[
\sup_m A_m(-1)<\infty,
\tag{ETS.19}
\]

then for every fixed \(\theta<1\),

\[
\lim_{m\to\infty}
\int_{-\theta}^{0}\int_{\mathbb T^3}
[-N_m\cdot e_2]_+\,dy\,ds
=0.
\tag{ETS.20}
\]

In particular the exact transported-shear branch cannot produce a nonzero
terminal endpoint atom from bounded entrance amplitude.

## 4. Order-one terminal carrier requires old-data blowup

Conversely, suppose an order-one terminal carrier survives on a strip
\([-\theta,0]\). Then `(ETS.18)` forces

\[
A_m(-1)
\ge
c_\theta e^{\nu n_m^2(1-\theta)}
\tag{ETS.21}
\]

for some \(c_\theta>0\) along the selected subsequence.

The entrance energy of the oscillatory component is

\[
\int_{\mathbb T^3}|w_m(-1,y_1)e_2|^2\,dy
=
{A_m(-1)^2\over n_m^2}(2\pi)^2\pi.
\tag{ETS.22}
\]

Therefore an order-one terminal carrier in this exact shear branch requires

\[
\int_{\mathbb T^3}|w_m(-1,y_1)e_2|^2\,dy
\ge
C_\theta {e^{2\nu n_m^2(1-\theta)}\over n_m^2}.
\tag{ETS.23}
\]

That is not hidden terminal refill. It is enormous old heat ancestry.

## 5. Physical heat-scale reading

Under Navier-Stokes heat scaling,

\[
u_m(t,x)
=
r_m^{-1}V_m\!\left({t-T\over r_m^2},{x\over r_m}\right),
\tag{ETS.24}
\]

the normalized statement above is unchanged. A residual-free transported shear
on the normalized cylinder is simply old material convected by \(e_1\) and
diffused by viscosity. It cannot be compressed into a last-instant source atom
without paying at the entrance cylinder.

This is exactly the distinction made by the residual refill ledger: raw
heat/shear descendants are not positive nonlinear refill.

## Verdict

The fixed-phase heat-scale normal form has the terminal selected carrier but
has a large projected Navier-Stokes residual. The phase-corrected transported
shear solves Navier-Stokes exactly, but bounded entrance data make its terminal
selected source vanish.

Thus the shear geometry is now split cleanly:

\[
\boxed{
\begin{gathered}
\text{fixed phase: terminal carrier survives, but residual is large;}\\
\text{transported phase: residual vanishes, but terminal source atom dies
unless old data blows up.}
\end{gathered}
}
\tag{ETS.25}
\]

The remaining heat-scale obstruction must therefore use genuine same-carrier
nonlinear refill in the coupled Navier-Stokes dynamics, pressure/geometry
profile production, or else appear as a paid source/Part/legal defect.
