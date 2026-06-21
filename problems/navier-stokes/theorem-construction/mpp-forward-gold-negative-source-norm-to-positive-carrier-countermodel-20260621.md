---
ns_viewer:
  theorem_id: forward-gold-negative-source-norm-to-positive-carrier-countermodel-20260621
  status: direct-countermodel-complete-negative-source-norm-does-not-dominate-positive-carrier
  proof_role: forward_gold_source_norm_to_selected_carrier_bridge_test
  logical_landing_node: negative_source_norm_to_positive_carrier
  edge_effect: "Gives an exact projected-divergence countermodel showing that the energy-class source norm L_s^(5/3) W_y^(-1,5/3) cannot by itself dominate a selected positive terminal carrier. On the torus, F_n=n^(-1) sin(nx_1) e_2 tensor e_1 has -P div F_n=-cos(nx_1)e_2, with W^(-1,5/3) norm O(n^(-1)) but fixed positive oriented readout. After terminal time scaling tau_n=n^(-5/2), the L_s^(5/3) W^(-1,5/3) norm stays bounded, the linear negative-norm strip tends to zero, and the selected positive readout keeps fixed terminal mass. This is not asserted to be v tensor v from an exact Navier-Stokes solution; it is a functional no-go for any bridge using only the negative projected-source norm."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-source-norm-upgrade-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-polar-readout-vs-carrier-saturation-20260620.md
  downstream_consequence: "A successful forward-gold source bridge must use more than the energy-class negative projected-source norm. It must add same-carrier positive polar saturation, source-square carrier domination, selected critical-strain/CKN tail depletion, strict no-waste, or rigid Zeno/profile production."
---

# MPP Forward-Gold Negative Source Norm To Positive Carrier Countermodel

Date: 2026-06-21

## Status

This note tests the exact bridge left after the nonlinear source-norm estimate:

\[
\boxed{
N\in L_s^{5/3}W_y^{-1,5/3}
\quad\Longrightarrow\quad
\text{selected positive terminal carrier control.}
}
\tag{NSP.1}
\]

The bridge is false if it uses only the negative projected-source norm. The
countermodel below keeps the exact projected-divergence structure and still
separates the signed negative norm from the selected positive readout.

This is not asserted to be \(v\otimes v\) from an exact Navier-Stokes solution.
It is a functional no-go for the proposed estimate.

## 1. Spatial projected-divergence model

Work on the flat torus

\[
\mathbb T^3=[0,2\pi]^3.
\tag{NSP.2}
\]

For an integer \(n\ge1\), define the matrix field

\[
F_n(x)
=
n^{-1}\sin(nx_1)\,e_2\otimes e_1.
\tag{NSP.3}
\]

Then

\[
\nabla\cdot F_n
=
\partial_1(F_n)_{21}\,e_2
=
\cos(nx_1)e_2.
\tag{NSP.4}
\]

This vector field is divergence-free and has zero mean, so the Leray projection
leaves it unchanged:

\[
\mathbb P\nabla\cdot F_n
=
\cos(nx_1)e_2.
\tag{NSP.5}
\]

Set

\[
N_n:=-\mathbb P\nabla\cdot F_n
=
-\cos(nx_1)e_2.
\tag{NSP.6}
\]

## 2. Negative norm is small

Let \(p=5/3\), \(p'=5/2\). For every
\(\varphi\in W^{1,p'}(\mathbb T^3;\mathbb R^3)\),

\[
\left|\int_{\mathbb T^3}N_n\cdot\varphi\,dx\right|
=
\left|\int_{\mathbb T^3}F_n:\nabla\varphi\,dx\right|
\le
\|F_n\|_{L^p}\|\nabla\varphi\|_{L^{p'}}.
\tag{NSP.7}
\]

Therefore

\[
\|N_n\|_{W^{-1,5/3}(\mathbb T^3)}
\le
\|F_n\|_{L^{5/3}}
=
C n^{-1}.
\tag{NSP.8}
\]

This is the exact negative-source visibility scale.

## 3. Positive selected readout is not small

Use the fixed oriented selector \(-e_2\). Then

\[
\left[-N_n\cdot e_2\right]_+
=
\left[\cos(nx_1)\right]_+.
\tag{NSP.9}
\]

Since \(n\) is an integer,

\[
\int_0^{2\pi}\left[\cos(nx_1)\right]_+\,dx_1=2.
\tag{NSP.10}
\]

Hence the positive readout has fixed mass:

\[
\int_{\mathbb T^3}
\left[-N_n\cdot e_2\right]_+\,dx
=
2(2\pi)^2.
\tag{NSP.11}
\]

Thus

\[
\boxed{
\|N_n\|_{W^{-1,5/3}}\to0
\quad\text{while}\quad
\int_{\mathbb T^3}[-N_n\cdot e_2]_+\,dx=2(2\pi)^2.
}
\tag{NSP.12}
\]

The negative norm sees the high-frequency antiderivative. The positive selected
readout sees the pointwise positive half-wave.

## 4. Terminal time scaling

Now place the same source on a terminal time layer. Let

\[
\tau_n=n^{-5/2},
\qquad
g_n(s)=\tau_n^{-1}\mathbf 1_{(-\tau_n,0]}(s),
\tag{NSP.13}
\]

and define

\[
\mathcal N_n(s,x)=g_n(s)N_n(x).
\tag{NSP.14}
\]

The \(L_s^{5/3}W_x^{-1,5/3}\) norm stays bounded:

\[
\begin{aligned}
\|\mathcal N_n\|_{L_s^{5/3}W_x^{-1,5/3}}^{5/3}
&=
\int_{-\tau_n}^{0}
\tau_n^{-5/3}\|N_n\|_{W^{-1,5/3}}^{5/3}\,ds\\
&\le
C\,\tau_n^{-2/3}n^{-5/3}.
\end{aligned}
\tag{NSP.15}
\]

Since \(\tau_n=n^{-5/2}\),

\[
\tau_n^{-2/3}n^{-5/3}
=
n^{5/3}n^{-5/3}
=1.
\tag{NSP.16}
\]

So

\[
\sup_n
\|\mathcal N_n\|_{L_s^{5/3}W_x^{-1,5/3}}
<\infty.
\tag{NSP.17}
\]

The linear negative-norm terminal strip mass tends to zero:

\[
\int_{-\tau_n}^{0}
\|\mathcal N_n(s)\|_{W^{-1,5/3}}\,ds
\le
\tau_n\tau_n^{-1} Cn^{-1}
=
Cn^{-1}\to0.
\tag{NSP.18}
\]

But the selected positive terminal carrier has fixed mass:

\[
\begin{aligned}
\int_{-\tau_n}^{0}\int_{\mathbb T^3}
\left[-\mathcal N_n(s,x)\cdot e_2\right]_+\,dx\,ds
&=
\int_{-\tau_n}^{0}
\tau_n^{-1}\,ds
\int_{\mathbb T^3}
\left[-N_n(x)\cdot e_2\right]_+\,dx\\
&=
2(2\pi)^2.
\end{aligned}
\tag{NSP.19}
\]

Moreover, for every \(\theta>0\), all sufficiently large \(n\) satisfy
\(\tau_n<\theta\), hence

\[
\lim_{\theta\downarrow0}\limsup_n
\int_{-\theta}^{0}\int_{\mathbb T^3}
\left[-\mathcal N_n(s,x)\cdot e_2\right]_+\,dx\,ds
=
2(2\pi)^2.
\tag{NSP.20}
\]

So endpoint uniform integrability fails for the selected positive carrier.

## 5. Proof consequence

The exact implication

\[
\boxed{
\|\mathcal N_n\|_{L_s^{5/3}W_x^{-1,5/3}}\le C
\Longrightarrow
\text{endpoint UI of the selected positive carrier}
}
\tag{NSP.21}
\]

is false, even with projected-divergence structure.

The exact implication

\[
\boxed{
\int_{-\theta}^{0}\|\mathcal N_n(s)\|_{W^{-1,5/3}}\,ds\to0
\Longrightarrow
\int_{-\theta}^{0}\int[\text{selected positive carrier}]\to0
}
\tag{NSP.22}
\]

is also false.

The missing information is not the existence of a projected source norm. It is
the same-carrier one-sided identification:

\[
\boxed{
\text{negative projected-source visibility}
\not\Rightarrow
\text{selected positive native-carrier saturation.}
}
\tag{NSP.23}
\]

## Verdict

This closes the negative-source-norm bridge as an independent gold supplier.
The energy-class nonlinear source estimate remains useful visibility, but it
does not control the selected positive carrier.

The remaining live suppliers are still the one-sided same-carrier ones:

\[
\boxed{
\text{SelectedSourceSquareCarrierDomination.A,\quad SelectedPositivePolarSaturation.A,
\quad SourceSquareReserve.A,\quad SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A,
\quad StrictRescaledNoWasteLyapunov.A,\quad MinimalZenoProfileProduction.A.}
}
\tag{NSP.24}

