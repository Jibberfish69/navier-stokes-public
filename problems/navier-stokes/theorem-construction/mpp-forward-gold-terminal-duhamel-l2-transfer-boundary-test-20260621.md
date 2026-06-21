---
ns_viewer:
  theorem_id: forward-gold-terminal-duhamel-l2-transfer-boundary-test-20260621
  status: exact-boundary-test-complete-duhamel-requires-source-square
  proof_role: forward_gold_exact_duhamel_l2_transfer_boundary
  logical_landing_node: terminal_duhamel_l2_transfer_boundary
  edge_effect: >-
    Tests the exact L2 transfer content of the Navier-Stokes Leray-Duhamel
    identity. Old material evolved by the heat semigroup is L2-contractive.
    Terminal Duhamel material satisfies ||A_h F(0)||_2 <= h^(1/2)
    ||F||_{L_s^2 L_y^2}; hence order-one terminal refill inside a window of
    length h forces source-square cost at least h^(-1). This is a theorem about
    the exact Duhamel operator, not a linear approximation to Navier-Stokes.
    For Navier-Stokes, F is the actual source N=-P div(v tensor v). Therefore
    Duhamel can consume a same-carrier source-square theorem but does not
    produce it from local energy or viscosity alone.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-duhamel-terminal-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-no-spreading-l2-transfer-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-duhamel-maximal-regularity-square-reserve-test-20260620.md
  downstream_consequence: >-
    Do not use Duhamel, heat smoothing, or global L2 contractivity as a producer
    of the missing same-carrier square reserve. They become decisive only after
    a same-carrier L_s^2 L_y^2 bound for the actual nonlinear source, an
    endpoint UI/no-waste theorem, or a profile-production contradiction has
    already supplied the source-square currency.
---

# MPP Forward-Gold Terminal Duhamel \(L^2\) Transfer Boundary Test

Date: 2026-06-21

## Status

This note tests the exact \(L^2\) transfer strength of the Duhamel identity
already installed for the rescaled Navier-Stokes sequence. It does not replace
Navier-Stokes by a linear model.

The Navier-Stokes-facing equation is still

\[
\partial_s v-\nu\Delta v=N,
\qquad
N=-\mathbb P\nabla\cdot(v\otimes v),
\tag{DLT.1}
\]

with \(N\) the actual Leray-projected nonlinearity. The calculation below uses
the linear Duhamel operator only because `(DLT.1)` is exactly linear in the
source once the actual source \(N\) is fixed.

The point is:

\[
\boxed{
\text{Duhamel consumes }L^2\text{ source-square control; it does not create it.}
}
\tag{DLT.2}
\]

## 1. Old material is \(L^2\)-contractive

Let \(g\in L^2(\mathbb R^3)\), and let

\[
w(s)=e^{\nu(s+h)\Delta}g,
\qquad
-h\le s\le0.
\tag{DLT.3}
\]

Since the heat semigroup is \(L^2\)-contractive,

\[
\|w(s)\|_{L^2}
\le
\|g\|_{L^2},
\qquad
-h\le s\le0.
\tag{DLT.4}
\]

Consequently,

\[
\int_{-h}^{0}\|w(s)\|_{L^2}^2\,ds
\le
h\|g\|_{L^2}^2.
\tag{DLT.5}
\]

So old material does not receive a square amplification from heat evolution.
This is the exact part of the viscosity intuition that is valid.

It is also not the terminal atom problem. A terminal atom is created or refilled
by source inside the final window, not merely inherited from data already
present before that window.

## 2. Terminal Duhamel material needs source-square input

On the terminal interval \(I_h=[-h,0]\), define the Duhamel operator

\[
(A_hF)(s)
=
\int_{-h}^{s}
e^{\nu(s-\sigma)\Delta}F(\sigma)\,d\sigma.
\tag{DLT.6}
\]

By \(L^2\)-contractivity of the heat semigroup,

\[
\|(A_hF)(s)\|_{L^2}
\le
\int_{-h}^{s}\|F(\sigma)\|_{L^2}\,d\sigma.
\tag{DLT.7}
\]

In particular, by Cauchy-Schwarz,

\[
\|(A_hF)(0)\|_{L^2}
\le
h^{1/2}
\|F\|_{L_s^2(I_h;L_y^2)}.
\tag{DLT.8}
\]

The whole-window version is

\[
\|A_hF\|_{L_s^2(I_h;L_y^2)}
\le
h
\|F\|_{L_s^2(I_h;L_y^2)}.
\tag{DLT.9}
\]

Thus, if terminal refill has order-one endpoint size,

\[
\|(A_hF)(0)\|_{L^2}\ge c_0>0,
\tag{DLT.10}
\]

then `(DLT.8)` forces

\[
\int_{-h}^{0}\|F(s)\|_{L^2}^2\,ds
\ge
{c_0^2\over h}.
\tag{DLT.11}
\]

This is exactly the source-square cost. As \(h\downarrow0\), an order-one
terminal Duhamel refill is expensive in \(L_s^2L_y^2\).

## 3. Why this does not close the Navier-Stokes branch

For Navier-Stokes, \(F=N\), where

\[
N=-\mathbb P\nabla\cdot(v\otimes v).
\tag{DLT.12}
\]

Therefore `(DLT.11)` would close the branch if the proof already had a
same-carrier estimate of the form

\[
\int_{I_h}\|N(s)\|_{L^2(\text{selected carrier})}^2\,ds
\le
\text{legal}+o(1).
\tag{DLT.13}
\]

That estimate is not supplied by local energy, heat smoothing, or the Duhamel
identity. The installed energy-class source estimate is weaker and negative
order:

\[
N\in L_s^{5/3}W_y^{-1,5/3},
\tag{DLT.14}
\]

on normalized cylinders with bounded scale-invariant energy and dissipation.
That visibility estimate does not imply `(DLT.13)`.

The endpoint example behind this is simple. If \(G\in L^2\) and

\[
F_h(s)=h^{-1}\mathbf 1_{[-h,0]}(s)G,
\tag{DLT.15}
\]

then \(F_h\) has bounded \(L_s^1L_y^2\) mass, but

\[
\int_{-h}^{0}\|F_h(s)\|_{L^2}^2\,ds
=
h^{-1}\|G\|_{L^2}^2
\to\infty.
\tag{DLT.16}
\]

Meanwhile,

\[
(A_hF_h)(0)
=
\int_{-h}^{0}h^{-1}e^{\nu(-\sigma)\Delta}G\,d\sigma
\to
G
\quad\text{in }L^2
\tag{DLT.17}
\]

as \(h\downarrow0\). This shows the exact boundary: \(L^1\)-type terminal
source residence can keep endpoint output alive while the square cost blows up.

## 4. Localization and selection do not improve this

The selected positive carrier is local, weighted, lifted, and cut off. Even
though \(\mathbb P\) is \(L^2\)-bounded on the whole space, localization creates
commutators:

\[
\eta\mathbb P\nabla\cdot(v\otimes v)
\ne
\mathbb P\nabla\cdot(\eta v\otimes v).
\tag{DLT.18}
\]

Those commutators are cutoff/collar/legal terms only after a separate payment
theorem. Positive-part selection also loses the signed cancellation that global
\(L^2\) contractivity sees.

So the Duhamel \(L^2\) estimate is a consumer theorem:

\[
\boxed{
\text{same-carrier }L_s^2L_y^2\text{ source control}
\Longrightarrow
\text{terminal Duhamel refill is square-paid}.
}
\tag{DLT.19}
\]

It is not a producer theorem:

\[
\boxed{
\text{Duhamel/viscosity/local energy}
\not\Longrightarrow
\text{same-carrier source-square control}.
}
\tag{DLT.20}
\]

## 5. Consequence

The exact \(L^2\) transfer boundary is:

\[
\boxed{
\text{old heat-evolved material is contractive, but terminal Duhamel material
requires source-square input.}
}
\tag{DLT.21}
\]

Therefore the remaining forward-gold supplier is still one of:

\[
\boxed{
\text{source-square domination, endpoint UI, strict no-waste, signed saturation
with no-free Zeno donor chain, or profile production.}
}
\tag{DLT.22}
\]

Duhamel is exact and useful, but it does not by itself supply the missing
same-carrier unweighted square reserve.
