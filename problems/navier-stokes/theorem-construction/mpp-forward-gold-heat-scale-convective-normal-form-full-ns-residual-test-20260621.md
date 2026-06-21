---
ns_viewer:
  theorem_id: forward-gold-heat-scale-convective-normal-form-full-ns-residual-test-20260621
  status: exact-residual-test-complete-normal-form-not-ns-trajectory
  proof_role: forward_gold_exact_equation_residual_boundary_test
  logical_landing_node: heat_scale_convective_normal_form_full_ns_residual
  edge_effect: "Computes the full projected Navier-Stokes residual of the heat-scale convective radius-discount normal form. The profile has exact projected convective source -P div(V_m tensor V_m)=-b_m cos(n_m y_1)e_2, but it does not satisfy the projected Navier-Stokes equation. Its divergence-free residual R_m=partial_s V_m-nu Delta V_m+P div(V_m tensor V_m) has L^2 action at least C int b_m^2 ds=C_chi/tau_m. Therefore the normal form cannot be used as an exact Navier-Stokes solution or as a small-residual approximation to one. Any actual heat-scale terminal pulse must be a genuinely coupled residual-free Navier-Stokes profile, or the residual/source is a paid Part/legal defect."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-exact-convective-radius-discount-normal-form-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-duhamel-terminal-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-duhamel-smoothing-does-not-produce-uniform-radius-20260621.md
  downstream_consequence: "The heat-scale normal form remains an exact algebraic/scaling boundary test only. It proves that fixed-cylinder dissipation throttling does not close shrinking heat-scale selected carriers, and this residual test proves the same normal form is not an NS trajectory. The remaining gold target is a same-carrier theorem for actual residual-free Navier-Stokes dynamics: unweighted action reserve, strict no-waste, selected source-square domination, selected critical-strain/CKN tail depletion, no-free terminal Zeno donor-chain control, or profile production."
---

# MPP Forward-Gold Heat-Scale Convective Normal Form Full NS Residual Test

Date: 2026-06-21

## Status

This note computes the full projected Navier-Stokes residual of the heat-scale
convective normal form from
`mpp-forward-gold-heat-scale-exact-convective-radius-discount-normal-form-20260621.md`.

The point is exact and narrow:

\[
\boxed{
\text{the normal form has exact convective algebra, but it is not a
Navier-Stokes trajectory.}
}
\tag{RNS.1}
\]

The calculation below prevents the normal form from being used as a linearized,
approximate, or residual-free model for a terminal Navier-Stokes pulse.

## 1. The projected equation being tested

In normalized variables, the incompressible Navier-Stokes equation is

\[
\partial_s v+(v\cdot\nabla)v+\nabla q=\nu\Delta v,
\qquad
\nabla\cdot v=0.
\tag{RNS.2}
\]

After Leray projection,

\[
\partial_s v-\nu\Delta v
=
-\mathbb P\nabla\cdot(v\otimes v).
\tag{RNS.3}
\]

For a candidate profile \(V_m\), define its projected equation residual by

\[
R_m
:=
\partial_s V_m-\nu\Delta V_m
+\mathbb P\nabla\cdot(V_m\otimes V_m).
\tag{RNS.4}
\]

Thus \(R_m=0\) is exactly the projected Navier-Stokes equation. Since pressure is
removed by \(\mathbb P\), a nonzero \(R_m\) cannot be repaired by choosing a
different pressure.

## 2. The heat-scale convective normal form

Work on \(\mathbb T^3=[0,2\pi]^3\). For this residual test take
\(\chi\in C_c^\infty((-1,0))\), \(\chi\ge0\), with

\[
\int_{-1}^{0}\chi(\sigma)\,d\sigma=1.
\tag{RNS.5}
\]

This smooth subcase is enough for the heat-scale normal-form conclusions.
Set

\[
b_m(s):=
{1\over\tau_m}\chi\!\left({s\over\tau_m}\right),
\qquad
\tau_m\downarrow0,
\qquad
n_m\to\infty,
\tag{RNS.6}
\]

and

\[
V_m(s,y)
=
e_1+{b_m(s)\over n_m}\sin(n_my_1)e_2.
\tag{RNS.7}
\]

Then

\[
\nabla\cdot V_m=0.
\tag{RNS.8}
\]

The exact projected convective source, already computed in the heat-scale
normal-form note, is

\[
N_m:=
-\mathbb P\nabla\cdot(V_m\otimes V_m)
=
-b_m(s)\cos(n_my_1)e_2.
\tag{RNS.9}
\]

Equivalently,

\[
\mathbb P\nabla\cdot(V_m\otimes V_m)
=
b_m(s)\cos(n_my_1)e_2.
\tag{RNS.10}
\]

## 3. Exact time and viscosity terms

The time derivative is

\[
\partial_s V_m
=
{b_m'(s)\over n_m}\sin(n_my_1)e_2.
\tag{RNS.11}
\]

The Laplacian is

\[
\Delta V_m
=
-n_m b_m(s)\sin(n_my_1)e_2.
\tag{RNS.12}
\]

Therefore

\[
\partial_s V_m-\nu\Delta V_m
=
\left({b_m'(s)\over n_m}+\nu n_m b_m(s)\right)
\sin(n_my_1)e_2.
\tag{RNS.13}
\]

Substituting `(RNS.10)` into `(RNS.4)` gives

\[
\boxed{
R_m(s,y)
=
\left({b_m'(s)\over n_m}+\nu n_m b_m(s)\right)
\sin(n_my_1)e_2
+
b_m(s)\cos(n_my_1)e_2.
}
\tag{RNS.14}
\]

This residual is divergence-free. Hence it is not a pressure artifact.

## 4. The residual action is forced

On \(\mathbb T^3\),

\[
\int_{\mathbb T^3}\sin^2(n_my_1)\,dy
=
\int_{\mathbb T^3}\cos^2(n_my_1)\,dy
=
(2\pi)^2\pi,
\tag{RNS.15}
\]

and

\[
\int_{\mathbb T^3}
\sin(n_my_1)\cos(n_my_1)\,dy
=0.
\tag{RNS.16}
\]

Thus

\[
\|R_m(s)\|_{L^2(\mathbb T^3)}^2
=
(2\pi)^2\pi
\left[
\left({b_m'(s)\over n_m}+\nu n_m b_m(s)\right)^2
+b_m(s)^2
\right].
\tag{RNS.17}
\]

In particular,

\[
\boxed{
\int_{-1}^{0}\|R_m(s)\|_{L^2(\mathbb T^3)}^2\,ds
\ge
(2\pi)^2\pi
\int_{-1}^{0}b_m(s)^2\,ds.
}
\tag{RNS.18}
\]

Using `(RNS.6)`,

\[
\int_{-1}^{0}b_m(s)^2\,ds
=
{1\over\tau_m}
\int_{-1}^{0}\chi(\sigma)^2\,d\sigma.
\tag{RNS.19}
\]

Therefore

\[
\boxed{
\int_{-1}^{0}\|R_m(s)\|_{L^2(\mathbb T^3)}^2\,ds
\ge
{C_\chi\over\tau_m},
\qquad
C_\chi:=(2\pi)^2\pi\int_{-1}^{0}\chi(\sigma)^2\,d\sigma>0.
}
\tag{RNS.20}
\]

The projected residual action diverges as \(\tau_m\downarrow0\).

## 5. Scaling the residual back to physical variables

If

\[
u_m(t,x)=r_m^{-1}V_m\!\left({t-T\over r_m^2},{x\over r_m}\right),
\tag{RNS.21}
\]

then the physical projected equation residual is

\[
\mathcal R_m(t,x)
=
r_m^{-3}
R_m\!\left({t-T\over r_m^2},{x\over r_m}\right).
\tag{RNS.22}
\]

Consequently

\[
\int_{T-r_m^2}^{T}\int_{\mathbb T^3_{r_m}}
|\mathcal R_m(t,x)|^2\,dx\,dt
=
{1\over r_m}
\int_{-1}^{0}\int_{\mathbb T^3}|R_m(s,y)|^2\,dy\,ds.
\tag{RNS.23}
\]

Together with `(RNS.20)`,

\[
\boxed{
\int_{T-r_m^2}^{T}\int_{\mathbb T^3_{r_m}}
|\mathcal R_m|^2\,dx\,dt
\ge
{C_\chi\over r_m\tau_m}.
}
\tag{RNS.24}
\]

For the schedule

\[
r_m=2^{-2m},
\qquad
\tau_m=2^{-m},
\qquad
n_m=2^m,
\tag{RNS.25}
\]

this lower bound is \(C_\chi2^{3m}\). So the same schedule that makes the
physical dissipation of the normal form summable makes the equation residual
large.

## Verdict

The heat-scale normal form remains useful only as an exact algebraic/scaling
boundary test:

\[
\boxed{
\text{it shows why fixed-cylinder dissipation throttling does not close
shrinking heat-scale carriers.}
}
\tag{RNS.26}
\]

The residual test adds the missing exactness boundary:

\[
\boxed{
\text{the same normal form is not an exact or small-residual
Navier-Stokes trajectory.}
}
\tag{RNS.27}
\]

So an actual heat-scale terminal pulse has to be treated as a genuinely coupled
Navier-Stokes object. It must either be residual-free through the full
pressure-transport-viscosity-incompressibility law, or the nonzero residual is
a paid source/Part/legal defect. The remaining gold burden is still an
unweighted same-carrier theorem for actual Navier-Stokes dynamics: strict
no-waste, source-square domination, selected critical-strain/CKN tail depletion,
selected polar saturation plus no-free terminal Zeno donor-chain control, or
profile production.
