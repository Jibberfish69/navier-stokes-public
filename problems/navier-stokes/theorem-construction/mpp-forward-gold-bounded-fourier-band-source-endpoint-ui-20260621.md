---
ns_viewer:
  theorem_id: forward-gold-bounded-fourier-band-source-endpoint-ui-20260621
  status: exact-bounded-fourier-band-endpoint-ui-installed
  proof_role: forward_gold_exact_finite_band_source_ui_test
  logical_landing_node: bounded_fourier_band_source_endpoint_ui
  edge_effect: "Proves an exact finite-band endpoint UI statement for the actual projected Navier-Stokes nonlinearity on the torus. If v(s) is supported in a fixed Fourier band |k|_infty<=K and has sup_s ||v(s)||_2^2<=E, then N=-P div(v tensor v) satisfies ||N(s)||_2<=C_K E, hence every unit selected positive source carrier has terminal strip mass at most C_K E theta. Thus a terminal source atom cannot live in a fixed Fourier band under bounded energy. Any surviving heat-scale endpoint atom must involve frequency escape K_m->infty, energy/amplitude blowup, localization/cutoff defect, or a same-carrier residual/source-balanced mechanism outside this finite-band bound."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-transported-shear-no-terminal-source-atom-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-convective-normal-form-full-ns-residual-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-mode-residue-evacuation-rank-test-20260620.md
  downstream_consequence: "Finite Fourier-band source atoms are removed from the forward-gold heat-scale obstruction. The remaining terminal pulse must be high-frequency, unbounded-amplitude, local-collar/cutoff-defective, or genuinely residual/source-balanced in a way not controlled by a fixed finite-band energy estimate."
---

# MPP Forward-Gold Bounded Fourier Band Source Endpoint UI

Date: 2026-06-21

## Status

This note proves an exact endpoint uniform-integrability statement for the
actual projected Navier-Stokes nonlinearity in a fixed Fourier band.

The point is:

\[
\boxed{
\text{a terminal positive source atom cannot live inside a fixed Fourier band
with bounded kinetic energy.}
}
\tag{FBU.1}
\]

This is a finite-band result. It does not control frequency-escaping terminal
pulses.

## 1. Fourier normalization

Work on \(\mathbb T^3=[0,2\pi]^3\) with the orthonormal basis

\[
\phi_k(y):=(2\pi)^{-3/2}e^{ik\cdot y},
\qquad
k\in\mathbb Z^3.
\tag{FBU.2}
\]

Write

\[
v(s,y)=\sum_{k\in\mathbb Z^3}\widehat v_k(s)\phi_k(y),
\qquad
k\cdot\widehat v_k(s)=0,
\tag{FBU.3}
\]

and assume \(v\) is real-valued, so

\[
\widehat v_{-k}=\overline{\widehat v_k}.
\tag{FBU.4}
\]

Assume fixed Fourier support:

\[
\widehat v_k(s)=0
\quad\text{when}\quad
|k|_\infty>K.
\tag{FBU.5}
\]

Assume also the energy bound

\[
\sup_{s\in[-1,0]}\|v(s)\|_{L^2(\mathbb T^3)}^2
\le E.
\tag{FBU.6}
\]

By Parseval,

\[
\sum_{|k|_\infty\le K}|\widehat v_k(s)|^2
\le E.
\tag{FBU.7}
\]

## 2. Exact projected nonlinear coefficient

Let

\[
N(s):=-\mathbb P\nabla\cdot(v(s)\otimes v(s)).
\tag{FBU.8}
\]

Since

\[
\phi_k\phi_\ell=(2\pi)^{-3/2}\phi_{k+\ell},
\qquad
\nabla\phi_\ell=i\ell\,\phi_\ell,
\tag{FBU.9}
\]

the Fourier coefficient of \(\nabla\cdot(v\otimes v)\) at \(h\) is

\[
\widehat{\nabla\cdot(v\otimes v)}_h
=
i(2\pi)^{-3/2}
\sum_{k+\ell=h}
(\widehat v_k\cdot \ell)\widehat v_\ell.
\tag{FBU.10}
\]

Let \(P_h\) be the orthogonal projection onto \(h^\perp\), with \(P_0=0\). Then

\[
\widehat N_h
=
-i(2\pi)^{-3/2}
P_h
\sum_{k+\ell=h}
(\widehat v_k\cdot \ell)\widehat v_\ell.
\tag{FBU.11}
\]

This is the exact incompressible Navier-Stokes projected source.

## 3. Fixed-band \(L^2\) source bound

If \(|k|_\infty\le K\) and \(|\ell|_\infty\le K\), then

\[
|\ell|\le \sqrt3\,K.
\tag{FBU.12}
\]

Since \(P_h\) is an orthogonal projection,

\[
|\widehat N_h|
\le
(2\pi)^{-3/2}\sqrt3\,K
\sum_{k+\ell=h}
|\widehat v_k|\,|\widehat v_\ell|.
\tag{FBU.13}
\]

For each fixed \(h\), Cauchy-Schwarz gives

\[
\sum_{k+\ell=h}
|\widehat v_k|\,|\widehat v_\ell|
\le
\left(\sum_k|\widehat v_k|^2\right)^{1/2}
\left(\sum_k|\widehat v_{h-k}|^2\right)^{1/2}
\le E.
\tag{FBU.14}
\]

The source support is contained in

\[
|h|_\infty\le 2K.
\tag{FBU.15}
\]

There are at most \((4K+1)^3\) such \(h\). Therefore

\[
\begin{aligned}
\|N(s)\|_{L^2}^2
&=
\sum_h|\widehat N_h(s)|^2\\
&\le
(2\pi)^{-3}3K^2(4K+1)^3E^2.
\end{aligned}
\tag{FBU.16}
\]

Thus

\[
\boxed{
\|N(s)\|_{L^2(\mathbb T^3)}
\le
(2\pi)^{-3/2}\sqrt3\,K(4K+1)^{3/2}E.
}
\tag{FBU.17}
\]

## 4. Selected positive carrier endpoint UI

Let \(\sigma(s,y)\) be any measurable selector with

\[
|\sigma(s,y)|\le1.
\tag{FBU.18}
\]

The selected positive carrier is bounded by

\[
[\sigma\cdot N]_+
\le |N|.
\tag{FBU.19}
\]

Using Cauchy-Schwarz in space and `(FBU.17)`,

\[
\begin{aligned}
\int_{\mathbb T^3}[\sigma(s,y)\cdot N(s,y)]_+\,dy
&\le
\int_{\mathbb T^3}|N(s,y)|\,dy\\
&\le
(2\pi)^{3/2}\|N(s)\|_{L^2}\\
&\le
\sqrt3\,K(4K+1)^{3/2}E.
\end{aligned}
\tag{FBU.20}
\]

Therefore, for every \(\theta\in(0,1)\),

\[
\boxed{
\int_{-\theta}^{0}\int_{\mathbb T^3}
[\sigma\cdot N]_+\,dy\,ds
\le
\theta\,\sqrt3\,K(4K+1)^{3/2}E.
}
\tag{FBU.21}
\]

Taking \(\theta\downarrow0\),

\[
\boxed{
\lim_{\theta\downarrow0}
\sup
\int_{-\theta}^{0}\int_{\mathbb T^3}
[\sigma\cdot N]_+\,dy\,ds
=0,
}
\tag{FBU.22}
\]

where the supremum is over all fields satisfying `(FBU.5)`, `(FBU.6)`, and
`(FBU.18)` with the same \(K,E\).

## 5. Consequence for heat-scale terminal atoms

This removes one possible hiding place:

\[
\boxed{
\text{fixed finite Fourier-band nonlinear source cannot be a terminal
time-face atom under bounded energy.}
}
\tag{FBU.23}
\]

Thus a surviving normalized terminal atom must use at least one of the
following:

\[
\boxed{
\begin{gathered}
K_m\to\infty,\\
\sup_s\|v_m(s)\|_2^2\to\infty,\\
\text{a localization/cutoff/collar defect},\\
\text{or genuine same-carrier residual refill outside fixed-band control.}
\end{gathered}
}
\tag{FBU.24}
\]

This is exactly consistent with the earlier shear split. The residual-free
transported shear is old heat ancestry. The fixed-phase convective normal form
has a terminal carrier but a large projected Navier-Stokes residual. Fixed
finite-band nonlinear dynamics with bounded energy cannot create the endpoint
atom either.

## Verdict

The forward-gold heat-scale obstruction is now sharper:

\[
\boxed{
\text{the remaining terminal pulse is necessarily high-frequency,
unbounded-amplitude, local-defect-bearing, or genuinely residual/source-balanced.}
}
\tag{FBU.25}
\]

This note does not prove the full gold theorem. It removes the finite Fourier
band from the live obstruction and forces the remaining work back to the
same-carrier high-frequency reserve: source-square domination, selected
critical-strain/CKN tail depletion, strict no-waste, selected polar saturation
plus no-free terminal Zeno donor-chain control, or profile production.
