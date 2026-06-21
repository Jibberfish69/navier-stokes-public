---
ns_viewer:
  theorem_id: forward-gold-heat-scale-exact-convective-radius-discount-normal-form-20260621
  status: exact-normal-form-installed-heat-scale-radius-discount-preserves-terminal-pulse
  proof_role: forward_gold_exact_nonlinear_heat_scale_radius_discount_test
  logical_landing_node: heat_scale_exact_convective_radius_discount
  edge_effect: "Installs the heat-scale sequel to the fixed-cylinder convective throttle. The normalized divergence-free torus profile V_m=e1+(b_m/n_m)sin(n_m y1)e2 has exact projected nonlinearity -P_y div_y(V_m tensor V_m)=-b_m cos(n_m y1)e2. After Navier-Stokes scaling u_m=r_m^(-1)V_m((t-T)/r_m^2,x/r_m), the physical energy is O(r_m), the physical dissipation is C r_m int b_m^2 ds, and the normalized selected positive source carrier is C int b_m ds. Choosing b_m=tau_m^(-1)chi(s/tau_m), r_m/tau_m summable, and n_m large keeps physical dissipation summable, makes the negative source norm vanish, and keeps a fixed normalized terminal endpoint atom. This is not a Navier-Stokes solution; it is an exact convective-algebra and scaling normal form showing why fixed-radius dissipation throttling does not close the shrinking heat-scale case."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-convective-source-vs-fixed-cylinder-dissipation-throttle-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-pressure-flux-throttle-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-action-to-source-curve-modulus-connector-20260619.md
  downstream_consequence: "The exact fixed-cylinder throttle cannot be promoted to a gold proof across shrinking heat-scale packets using only physical energy/dissipation. The remaining needed theorem is exactly an unweighted normalized same-carrier reserve: source-square domination, selected critical-strain/CKN tail depletion, strict no-waste, selected polar saturation plus no-free terminal Zeno donor chain, or profile production."
---

# MPP Forward-Gold Heat-Scale Exact Convective Radius-Discount Normal Form

Date: 2026-06-21

## Status

This note is the heat-scale sequel to
`mpp-forward-gold-exact-convective-source-vs-fixed-cylinder-dissipation-throttle-20260621.md`.

The fixed-cylinder note proved that a fixed-radius terminal pulse in the exact
convective normal form forces divergent dissipation. Here the same exact
convective algebra is placed on shrinking Navier-Stokes heat scales.

The result is:

\[
\boxed{
\text{physical dissipation is radius-discounted, while the normalized selected
carrier is not.}
}
\tag{HCR.1}
\]

This is not a constructed Navier-Stokes solution and not a linear
approximation. It is an exact nonlinear source normal form plus the exact
Navier-Stokes scaling calculation.

## 1. Normalized exact convective source

Work first in normalized variables \((s,y)\in[-1,0]\times\mathbb T^3\), with
\(\mathbb T^3=[0,2\pi]^3\). Let \(\chi\in C_c^\infty((-1,0])\) be nonnegative
and satisfy

\[
\int_{-1}^{0}\chi(\sigma)\,d\sigma=1.
\tag{HCR.2}
\]

Let \(\tau_m\downarrow0\), \(n_m\to\infty\), and set

\[
b_m(s):=
{1\over\tau_m}\chi\!\left({s\over\tau_m}\right).
\tag{HCR.3}
\]

Then \(b_m\) is supported in \((-\tau_m,0]\), and

\[
\int_{-1}^{0}b_m(s)\,ds=1,
\qquad
\int_{-1}^{0}b_m(s)^2\,ds
=
{1\over\tau_m}\int_{-1}^{0}\chi(\sigma)^2\,d\sigma.
\tag{HCR.4}
\]

Define the divergence-free normalized velocity profile

\[
V_m(s,y)
=
e_1+{b_m(s)\over n_m}\sin(n_my_1)e_2.
\tag{HCR.5}
\]

At every fixed \(s\),

\[
\nabla_y\cdot V_m=0.
\tag{HCR.6}
\]

As in the fixed-cylinder calculation,

\[
(V_m\cdot\nabla_y)V_m
=
b_m(s)\cos(n_my_1)e_2.
\tag{HCR.7}
\]

This vector field is divergence-free and has zero spatial mean. Hence the Leray
projection leaves it unchanged:

\[
\mathbb P_y\nabla_y\cdot(V_m\otimes V_m)
=
b_m(s)\cos(n_my_1)e_2.
\tag{HCR.8}
\]

Thus the exact normalized projected convective source is

\[
\boxed{
N_m(s,y):=
-\mathbb P_y\nabla_y\cdot(V_m\otimes V_m)
=
-b_m(s)\cos(n_my_1)e_2.
}
\tag{HCR.9}
\]

## 2. Normalized endpoint atom survives

For the fixed selector \(-e_2\),

\[
[-N_m(s,y)\cdot e_2]_+
=
b_m(s)[\cos(n_my_1)]_+.
\tag{HCR.10}
\]

Therefore

\[
\int_{\mathbb T^3}[-N_m(s,y)\cdot e_2]_+\,dy
=
2(2\pi)^2 b_m(s).
\tag{HCR.11}
\]

The normalized selected positive carrier has fixed total mass:

\[
\int_{-1}^{0}\int_{\mathbb T^3}
[-N_m\cdot e_2]_+\,dy\,ds
=
2(2\pi)^2.
\tag{HCR.12}
\]

It violates endpoint uniform integrability. For every \(\theta>0\), all
sufficiently large \(m\) satisfy \(\tau_m<\theta\), so

\[
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int_{\mathbb T^3}
[-N_m\cdot e_2]_+\,dy\,ds
=
2(2\pi)^2.
\tag{HCR.13}
\]

The negative Sobolev norm can still vanish. For \(p=5/3\),

\[
\|N_m(s)\|_{W^{-1,5/3}(\mathbb T^3)}
\le
C{b_m(s)\over n_m}.
\tag{HCR.14}
\]

Consequently

\[
\int_{-1}^{0}
\|N_m(s)\|_{W^{-1,5/3}}\,ds
\le
{C\over n_m}
\to0.
\tag{HCR.15}
\]

Also

\[
\|N_m\|_{L_s^{5/3}W_y^{-1,5/3}}^{5/3}
\le
C n_m^{-5/3}\tau_m^{-2/3}.
\tag{HCR.16}
\]

For example, \(n_m=\tau_m^{-1}\) makes this quantity tend to zero.

Thus the exact convective algebra realizes the same one-sided endpoint carrier
gap in normalized heat variables:

\[
\boxed{
\text{negative source visibility can vanish while the selected positive
normalized carrier remains an endpoint atom.}
}
\tag{HCR.17}
\]

## 3. Physical Navier-Stokes scaling discounts the cost

Now put the normalized profile on a physical heat-scale torus
\(\mathbb T^3_{r_m}=[0,2\pi r_m]^3\). Let

\[
s={t-T\over r_m^2},
\qquad
y={x\over r_m},
\tag{HCR.18}
\]

and define the physical scaled velocity

\[
u_m(t,x):=
{1\over r_m}V_m(s,y).
\tag{HCR.19}
\]

This is exactly the Navier-Stokes scaling for velocity. The corresponding
physical projected convective source is

\[
-\mathbb P_x\nabla_x\cdot(u_m\otimes u_m)
=
{1\over r_m^3}N_m(s,y).
\tag{HCR.20}
\]

The physical kinetic energy at a fixed time is

\[
\int_{\mathbb T^3_{r_m}}|u_m(t,x)|^2\,dx
=
r_m
\int_{\mathbb T^3}|V_m(s,y)|^2\,dy.
\tag{HCR.21}
\]

Since

\[
\int_{\mathbb T^3}|V_m(s,y)|^2\,dy
=
(2\pi)^3
+
{b_m(s)^2\over n_m^2}(2\pi)^2\pi,
\tag{HCR.22}
\]

choosing \(n_m\ge \tau_m^{-1}\) keeps the normalized energy uniformly bounded.
Thus the physical energy is \(O(r_m)\).

The physical dissipation is

\[
\int_{T-r_m^2}^{T}\int_{\mathbb T^3_{r_m}}
|\nabla_xu_m|^2\,dx\,dt
=
r_m
\int_{-1}^{0}\int_{\mathbb T^3}
|\nabla_yV_m|^2\,dy\,ds.
\tag{HCR.23}
\]

But

\[
\nabla_yV_m
=
b_m(s)\cos(n_my_1)e_2\otimes e_1,
\tag{HCR.24}
\]

so

\[
\int_{\mathbb T^3}|\nabla_yV_m|^2\,dy
=
(2\pi)^2\pi\, b_m(s)^2.
\tag{HCR.25}
\]

Therefore

\[
\boxed{
\int_{T-r_m^2}^{T}\int_{\mathbb T^3_{r_m}}
|\nabla_xu_m|^2\,dx\,dt
=
(2\pi)^2\pi\, r_m
\int_{-1}^{0}b_m(s)^2\,ds.
}
\tag{HCR.26}
\]

Using `(HCR.4)`,

\[
\int_{T-r_m^2}^{T}\int_{\mathbb T^3_{r_m}}
|\nabla_xu_m|^2\,dx\,dt
=
C_\chi {r_m\over\tau_m},
\qquad
C_\chi:=(2\pi)^2\pi\int_{-1}^{0}\chi(\sigma)^2\,d\sigma.
\tag{HCR.27}
\]

The normalized positive carrier from `(HCR.12)` is independent of \(r_m\), while
the physical dissipation carries the factor \(r_m/\tau_m\).

## 4. A summable Zeno schedule exists at the level of this normal form

Choose, for example,

\[
r_m=2^{-2m},
\qquad
\tau_m=2^{-m},
\qquad
n_m=2^m.
\tag{HCR.28}
\]

Then

\[
\sum_m {r_m\over\tau_m}
=
\sum_m2^{-m}
<\infty,
\tag{HCR.29}
\]

so the physical dissipation of this exact convective normal form is summable
over the Zeno stack.

At the same time, the normalized selected positive source carrier satisfies

\[
\int_{-1}^{0}\int_{\mathbb T^3}
[-N_m\cdot e_2]_+\,dy\,ds
=
2(2\pi)^2
\tag{HCR.30}
\]

for every \(m\), and endpoint uniform integrability fails by `(HCR.13)`.

The physical source measure of each packet is small:

\[
\int_{T-r_m^2}^{T}\int_{\mathbb T^3_{r_m}}
\left[
-{1\over r_m^3}N_m(s,y)\cdot e_2
\right]_+
dx\,dt
=
2(2\pi)^2 r_m^2.
\tag{HCR.31}
\]

The gold route, however, is testing the normalized carrier, equivalently the
physical source measure divided by \(r_m^2\). That normalized quantity stays
fixed.

## 5. Boundary of the result

This normal form does not solve Navier-Stokes and does not assert that an exact
Navier-Stokes solution realizes the schedule `(HCR.28)`. It records the exact
reason the fixed-cylinder dissipation argument cannot be promoted into the
shrinking heat-scale gold theorem.

The fixed-cylinder Cauchy-Schwarz throttle gives

\[
\int b_m^2\,ds
\ge
{c_0^2\over\tau_m}.
\tag{HCR.32}
\]

After Navier-Stokes heat-scale scaling, physical dissipation sees only

\[
r_m\int b_m^2\,ds
\ge
{c_0^2 r_m\over\tau_m}.
\tag{HCR.33}
\]

The radius factor is the whole obstruction.

Thus the exact lesson is:

\[
\boxed{
\text{fixed-radius participation kills terminal atoms; shrinking heat-scale
participation does not, unless an unweighted normalized reserve is proved.}
}
\tag{HCR.34}
\]

## Verdict

The previous fixed-cylinder throttle is exact, but it cannot close the forward
gold route by itself. Under heat-scale scaling, the same exact convective source
normal form has:

\[
\boxed{
\begin{gathered}
\text{fixed normalized selected positive carrier},\\
\text{vanishing negative source norm after high-frequency choice},\\
\text{summable physical energy/dissipation along } r_m/\tau_m\in\ell^1.
\end{gathered}
}
\tag{HCR.35}
\]

The remaining forward-gold theorem must therefore produce a genuinely
unweighted normalized same-carrier reserve: source-square domination, selected
critical-strain/CKN tail depletion, strict no-waste, selected polar saturation
plus no-free terminal Zeno donor-chain control, or profile production.
