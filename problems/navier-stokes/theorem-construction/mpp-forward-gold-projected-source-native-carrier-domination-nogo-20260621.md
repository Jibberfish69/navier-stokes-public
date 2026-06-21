---
ns_viewer:
  theorem_id: forward-gold-projected-source-native-carrier-domination-nogo-20260621
  status: exact-nogo-installed-projected-source-does-not-dominate-native-positive-stretching-carrier
  proof_role: forward_gold_projected_source_to_native_carrier_bridge_test
  logical_landing_node: projected_source_native_carrier_domination
  edge_effect: "Tests the direct bridge from the actual projected nonlinear source N=-P div(v tensor v) to the native positive vortex-stretching carrier. The exact identity is curl N=S omega-(v dot grad)omega, so the signed stretching ledger is controlled only after pairing curl N with omega and retaining the transport/cutoff term. Direct domination by N in L2 is false. A high-frequency Beltrami/ABC Navier-Stokes packet has N=0 because its self-interaction is a pressure gradient, while the local positive stretching density [S omega dot omega]_+ is nonzero. Therefore projected-source L2 control is a consumer for a projected-source carrier only; the native selected carrier still needs transport/cutoff/legal saturation, source-square, strict no-waste, or profile production."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-source-l2-criterion-endpoint-ui-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-source-l2-sobolev-readout-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-enstrophy-stretching-source-square-production-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-trilinear-same-carrier-reserve-direct-attempt-20260620.md
  downstream_consequence: "Do not use the projected-source L2 endpoint criterion as a native selected-carrier theorem. To reach the native positive carrier one must prove a separate same-carrier identification/saturation theorem retaining transport and cutoff partners, or consume the branch through finite-rung readout, source-square/no-waste, or profile production."
---

# MPP Forward-Gold Projected Source Native Carrier Domination No-Go

Date: 2026-06-21

## Status

This note tests the direct bridge

\[
\boxed{
\text{actual projected source }N=-\mathbb P\nabla\cdot(v\otimes v)
\quad\Longrightarrow\quad
\text{native positive stretching carrier}.
}
\tag{PNC.1}
\]

That bridge is false in this direct form. The projected source is a velocity
equation object. The native carrier is a vorticity-stretching object. The exact
connection loses one derivative and includes a transport/cutoff partner.

## 1. Exact identity

Let \(v\) be smooth and divergence-free, set

\[
\omega:=\nabla\times v,
\qquad
S:={1\over2}\left(\nabla v+\nabla v^T\right),
\tag{PNC.2}
\]

and define the actual Leray-projected nonlinear source

\[
N:=-\mathbb P\nabla\cdot(v\otimes v).
\tag{PNC.3}
\]

Since Leray projection changes a vector field only by a gradient,

\[
\nabla\times N
=
-\nabla\times\big((v\cdot\nabla)v\big).
\tag{PNC.4}
\]

For divergence-free \(v\),

\[
\nabla\times\big((v\cdot\nabla)v\big)
=
(v\cdot\nabla)\omega-(\omega\cdot\nabla)v.
\tag{PNC.5}
\]

Also \((\omega\cdot\nabla)v=S\omega\), because the antisymmetric part of
\(\nabla v\) annihilates \(\omega\). Hence

\[
\boxed{
\nabla\times N
=
S\omega-(v\cdot\nabla)\omega.
}
\tag{PNC.6}
\]

Pairing with \(\omega\) gives the signed identity

\[
\omega\cdot S\omega
=
\omega\cdot(\nabla\times N)
+v\cdot\nabla {|\omega|^2\over2}.
\tag{PNC.7}
\]

With a fixed spatial cutoff \(\eta\),

\[
\boxed{
\int \eta^2\,\omega\cdot S\omega
=
\int \eta^2\,\omega\cdot(\nabla\times N)
-
{1\over2}\int |\omega|^2\,v\cdot\nabla(\eta^2).
}
\tag{PNC.8}
\]

Thus the signed stretching ledger sees \(\nabla\times N\), not merely \(N\),
and it also sees a cutoff/transport current. The positive selected carrier
\(\int \eta^2[\omega\cdot S\omega]_+\) is still one-sided, so `(PNC.8)` does
not dominate it without a polar/saturation theorem.

## 2. Exact Beltrami no-go example

For an integer \(n\ge1\), define the ABC Beltrami field on \(\mathbb T^3\):

\[
B_n(x,y,z)
=
\left(
\sin(nz)+\cos(ny),\,
\sin(nx)+\cos(nz),\,
\sin(ny)+\cos(nx)
\right).
\tag{PNC.9}
\]

It is divergence-free and satisfies

\[
\nabla\times B_n=nB_n,
\qquad
\Delta B_n=-n^2B_n.
\tag{PNC.10}
\]

The Beltrami identity gives

\[
(B_n\cdot\nabla)B_n
=
\nabla {|B_n|^2\over2}.
\tag{PNC.11}
\]

Therefore

\[
\mathbb P\nabla\cdot(B_n\otimes B_n)
=0.
\tag{PNC.12}
\]

The decaying field

\[
u_n(t)=e^{-\nu n^2t}B_n
\tag{PNC.13}
\]

is an exact smooth Navier-Stokes solution on \(\mathbb T^3\) with pressure

\[
p_n(t)=-e^{-2\nu n^2t}{|B_n|^2\over2}.
\tag{PNC.14}
\]

For this solution,

\[
N_n:=-\mathbb P\nabla\cdot(u_n\otimes u_n)=0.
\tag{PNC.15}
\]

But the local positive stretching density is not zero. At

\[
x=0,\qquad y=0,\qquad z={\pi\over4n},
\tag{PNC.16}
\]

write \(a=\sqrt2/2\). Then

\[
B_n=(1+a,\ a,\ 1),
\tag{PNC.17}
\]

and

\[
B_n\cdot\nabla {|B_n|^2\over2}
=
n\left({1\over2}+{3\sqrt2\over2}\right)>0.
\tag{PNC.18}
\]

Since \(\omega_n=\nabla\times u_n=e^{-\nu n^2t}nB_n\), this gives

\[
\omega_n\cdot S_{u_n}\omega_n
=
e^{-3\nu n^2t}n^2
\,B_n\cdot S_{B_n}B_n
=
e^{-3\nu n^2t}n^3
\left({1\over2}+{3\sqrt2\over2}\right)>0
\tag{PNC.19}
\]

at that point. By continuity, every sufficiently small cutoff around the point
has

\[
\int \eta^2[\omega_n\cdot S_{u_n}\omega_n]_+\,dx>0,
\tag{PNC.20}
\]

while \(N_n=0\) identically.

## 3. Consequence for the forward-gold bridge

The projected-source \(L^2\) endpoint criterion is valid for a carrier already
dominated by \(N\). It cannot be silently applied to the native positive
stretching carrier.

The direct domination

\[
\boxed{
\int \eta^2[\omega\cdot S\omega]_+
\le
C\|N\|_{L^2}
+\mathrm{endpoint\text{-}small\ legal}
}
\tag{PNC.21}
\]

is false as an algebraic Navier-Stokes statement. The Beltrami example has
\(\|N\|_{L^2}=0\) and a positive left-hand side.

The exact signed identity `(PNC.8)` shows what a real bridge would have to
retain:

\[
\boxed{
\nabla\times N,\quad
\text{the vorticity factor }\omega,\quad
\text{transport/cutoff current},\quad
\text{and positive-part saturation.}
}
\tag{PNC.22}
\]

This is precisely the missing same-carrier identification/saturation problem.

## Verdict

The direct projected-source route does not produce the native positive carrier:

\[
\boxed{
\text{projected-source }L^2\text{ visibility}
\not\Longrightarrow
\text{native selected positive stretching-carrier domination.}
}
\tag{PNC.23}
\]

The native branch still requires a separate theorem: selected positive polar
saturation, transport/cutoff legal reconciliation, source-square/no-waste, or
profile production.
