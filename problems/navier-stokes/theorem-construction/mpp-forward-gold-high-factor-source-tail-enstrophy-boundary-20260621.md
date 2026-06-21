---
ns_viewer:
  theorem_id: forward-gold-high-factor-source-tail-enstrophy-boundary-20260621
  status: exact-high-factor-negative-norm-bound-installed-selected-carrier-bridge-open
  proof_role: forward_gold_high_factor_source_boundary
  logical_landing_node: high_factor_source_tail_enstrophy_boundary
  edge_effect: >-
    After low-low source removal, the escaping source N_hi^(K) contains at least
    one high-frequency factor v_>K. The exact projected-divergence estimate gives
    ||N_hi^(K)||_{\dot H^{-1}} <= 2 b_K E^(1/2)||v_>K||_2 + C_GN
    ||v_>K||_2^(1/2)||grad v_>K||_2^(3/2), with
    b_K=(2pi)^(-3/2)(2K+1)^(3/2). Integrated over a terminal strip, this is
    controlled by theta K^(3/2)E plus theta^(1/4)E^(1/4) times high-tail
    enstrophy^(3/4). This is exact negative-norm visibility. It does not control
    the selected positive L1 carrier, because Leray/divergence negative norms and
    positive-part selection are separated by high-frequency cancellation. Therefore
    frequency escape still needs same-carrier source-square, selected
    critical-strain/CKN tail depletion, strict no-waste, polar saturation/no-free
    Zeno donor-chain control, or profile production.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-source-atom-forces-frequency-escape-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-source-norm-upgrade-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-negative-source-norm-to-positive-carrier-countermodel-20260621.md
  downstream_consequence: >-
    The high-frequency factor is visible in a negative Sobolev tail/enstrophy
    currency, but this currency is not the native selected positive endpoint
    carrier. The remaining gold bridge cannot be a bare high-tail negative-norm
    estimate; it must identify or coerce the same selected carrier through
    source-square, critical-strain/CKN, strict no-waste, polar saturation/no-free
    Zeno donor chain, or minimal profile production.
---

# MPP Forward-Gold High-Factor Source Tail-Enstrophy Boundary

Date: 2026-06-21

## Status

This note continues the exact frequency-escape reduction.

The prior result says that after low-low removal, any surviving terminal source
atom must live in

\[
N_{\mathrm{hi}}^{(K)}
=
-\mathbb P\nabla\cdot F_{\mathrm{hi}}^{(K)},
\tag{HFB.1}
\]

where

\[
F_{\mathrm{hi}}^{(K)}
=
v_{\le K}\otimes v_{>K}
+v_{>K}\otimes v_{\le K}
+v_{>K}\otimes v_{>K}.
\tag{HFB.2}
\]

Every term in \(F_{\mathrm{hi}}^{(K)}\) contains at least one high-frequency
factor. The question tested here is what exact estimate this buys.

The answer is narrow:

\[
\boxed{
\text{the high-factor source is controlled in a negative Sobolev
tail/enstrophy currency, not in the selected positive carrier currency.}
}
\tag{HFB.3}
\]

## 1. Setup

Work on

\[
\mathbb T^3=[0,2\pi]^3
\tag{HFB.4}
\]

with the orthonormal Fourier basis

\[
e_k(x)=(2\pi)^{-3/2}e^{ik\cdot x}.
\tag{HFB.5}
\]

Let \(K\in\mathbb N\), and write

\[
v_{\le K}:=P_{\le K}v,
\qquad
v_{>K}:=v-v_{\le K}.
\tag{HFB.6}
\]

Assume

\[
\sup_{s\in I}\|v(s)\|_{2}^{2}\le E.
\tag{HFB.7}
\]

The homogeneous negative norm is

\[
\|f\|_{\dot H^{-1}}^{2}
=
\sum_{k\ne0}|k|^{-2}|\widehat f(k)|^{2}.
\tag{HFB.8}
\]

## 2. Exact projected-divergence bound

For every matrix field \(F\in L^2(\mathbb T^3)\) with zero-mean projected
divergence,

\[
\boxed{
\|\mathbb P\nabla\cdot F\|_{\dot H^{-1}}
\le
\|F\|_{2}.
}
\tag{HFB.9}
\]

Indeed, by duality, for every mean-zero test field \(\varphi\),

\[
\begin{aligned}
\left|
\left\langle \mathbb P\nabla\cdot F,\varphi\right\rangle
\right|
&=
\left|
\left\langle \nabla\cdot F,\mathbb P\varphi\right\rangle
\right|\\
&=
\left|
\int_{\mathbb T^3}F:\nabla\mathbb P\varphi\,dx
\right|\\
&\le
\|F\|_2\|\nabla\mathbb P\varphi\|_2\\
&\le
\|F\|_2\|\nabla\varphi\|_2.
\end{aligned}
\tag{HFB.10}
\]

Taking the supremum over \(\|\nabla\varphi\|_2\le1\) gives `(HFB.9)`.

Applying this to `(HFB.1)` gives

\[
\|N_{\mathrm{hi}}^{(K)}(s)\|_{\dot H^{-1}}
\le
\|F_{\mathrm{hi}}^{(K)}(s)\|_2.
\tag{HFB.11}
\]

## 3. High-factor product estimate

The finite-band Bernstein estimate is

\[
\|v_{\le K}(s)\|_\infty
\le
b_K\|v_{\le K}(s)\|_2,
\qquad
b_K=(2\pi)^{-3/2}(2K+1)^{3/2}.
\tag{HFB.12}
\]

Therefore, using `(HFB.7)`,

\[
\|v_{\le K}\otimes v_{>K}
+v_{>K}\otimes v_{\le K}\|_2
\le
2b_KE^{1/2}\|v_{>K}\|_2.
\tag{HFB.13}
\]

For the high-high term,

\[
\|v_{>K}\otimes v_{>K}\|_2
=
\|v_{>K}\|_4^2.
\tag{HFB.14}
\]

Since \(v_{>K}\) has zero spatial mean, Sobolev interpolation on the torus gives

\[
\|v_{>K}\|_4^2
\le
C_{\mathrm{GN}}
\|v_{>K}\|_2^{1/2}
\|\nabla v_{>K}\|_2^{3/2}.
\tag{HFB.15}
\]

Combining `(HFB.11)` through `(HFB.15)`,

\[
\boxed{
\|N_{\mathrm{hi}}^{(K)}(s)\|_{\dot H^{-1}}
\le
2b_KE^{1/2}\|v_{>K}(s)\|_2
+
C_{\mathrm{GN}}
\|v_{>K}(s)\|_2^{1/2}
\|\nabla v_{>K}(s)\|_2^{3/2}.
}
\tag{HFB.16}
\]

This is the exact high-factor tail/enstrophy estimate.

## 4. Terminal strip form

Let \(I_\theta=(-\theta,0]\). Integrating `(HFB.16)` over \(I_\theta\) and
using \(\|v_{>K}\|_2\le E^{1/2}\) gives

\[
\begin{aligned}
\int_{-\theta}^{0}
\|N_{\mathrm{hi}}^{(K)}(s)\|_{\dot H^{-1}}\,ds
&\le
2b_K E\,\theta\\
&\quad+
C_{\mathrm{GN}}E^{1/4}
\int_{-\theta}^{0}
\|\nabla v_{>K}(s)\|_2^{3/2}\,ds.
\end{aligned}
\tag{HFB.17}
\]

By Holder,

\[
\int_{-\theta}^{0}
\|\nabla v_{>K}(s)\|_2^{3/2}\,ds
\le
\theta^{1/4}
\left(
\int_{-\theta}^{0}
\|\nabla v_{>K}(s)\|_2^2\,ds
\right)^{3/4}.
\tag{HFB.18}
\]

Hence

\[
\boxed{
\begin{aligned}
\int_{-\theta}^{0}
\|N_{\mathrm{hi}}^{(K)}(s)\|_{\dot H^{-1}}\,ds
&\le
2b_K E\,\theta\\
&\quad+
C_{\mathrm{GN}}E^{1/4}\theta^{1/4}
\left(
\int_{-\theta}^{0}
\|\nabla v_{>K}(s)\|_2^2\,ds
\right)^{3/4}.
\end{aligned}
}
\tag{HFB.19}
\]

Thus high-factor source visibility is governed by the high-frequency \(L^2\)
tail and the high-frequency enstrophy.

## 5. Why this does not close the endpoint carrier

The frequency-escape note gives a lower bound in the selected positive carrier
or in \(L^1\):

\[
\int_{-\theta}^{0}\int_{\mathbb T^3}
|N_{\mathrm{hi}}^{(K)}|\,dy\,ds
\ge
{a\over2}
\tag{HFB.20}
\]

after low-low removal. Formula `(HFB.19)` is an upper bound in
\(\dot H^{-1}\).

Those are different currencies. The implication

\[
\boxed{
\int |N_{\mathrm{hi}}^{(K)}|
\ \text{or}\ 
\int[\sigma\cdot N_{\mathrm{hi}}^{(K)}]_+
\lesssim
\int\|N_{\mathrm{hi}}^{(K)}\|_{\dot H^{-1}}
}
\tag{HFB.21}
\]

is false in general. High-frequency oscillation can have small negative norm
and large positive half-wave mass. This is exactly the separation recorded in
the negative-source-norm countermodel.

So `(HFB.19)` does not contradict `(HFB.20)`. It only says that the escaping
source is visible after antiderivative smoothing. The native gold carrier keeps
the positive side before that cancellation is used.

## Verdict

The exact high-factor estimate is:

\[
\boxed{
\int_{-\theta}^{0}
\|N_{\mathrm{hi}}^{(K)}(s)\|_{\dot H^{-1}}\,ds
\le
2b_K E\,\theta
+
C_{\mathrm{GN}}E^{1/4}\theta^{1/4}
\left(
\int_{-\theta}^{0}
\|\nabla v_{>K}(s)\|_2^2\,ds
\right)^{3/4}.
}
\tag{HFB.22}
\]

This is useful, but it is not the endpoint UI theorem.

The remaining bridge is still same-carrier:

\[
\boxed{
\text{selected positive carrier}
\Longleftarrow
\text{source-square, critical-strain/CKN tail depletion, strict no-waste,
polar saturation/no-free Zeno chain, or profile production.}
}
\tag{HFB.23}
\]

The high-factor route therefore does not close by a bare tail/enstrophy
negative-norm estimate.
