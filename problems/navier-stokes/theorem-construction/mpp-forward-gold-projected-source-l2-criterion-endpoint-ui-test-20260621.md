---
ns_viewer:
  theorem_id: forward-gold-projected-source-l2-criterion-endpoint-ui-test-20260621
  status: criterion-installed-l2-projected-source-would-pay-endpoint-ui-but-is-not-produced
  proof_role: forward_gold_same_carrier_projected_source_square_criterion
  logical_landing_node: projected_source_l2_to_selected_endpoint_ui
  edge_effect: "Installs the exact endpoint criterion supplied by a same-carrier L2 projected nonlinear source bound. If the selected positive endpoint carrier is dominated by the actual local projected source N=-P div(v tensor v) in L2, modulo legal endpoint-UI residue, then an L2_s L2_y bound on N gives SelectedCarrierEndpointUI.A by Cauchy-Schwarz. Conversely, a terminal atom of mass a0 on a layer of length tau forces L2 source-square cost at least a0^2/(C tau). Current Navier-Stokes inputs do not produce this L2 source-square bound: energy gives only L_s^(5/3) W_y^(-1,5/3) visibility, and the L2 criterion is a strong same-carrier square theorem rather than an installed supplier. It pays Clause A only; Clause B still needs square-reserve/source-square/no-waste production."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-duhamel-terminal-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-source-norm-upgrade-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-negative-source-norm-to-positive-carrier-countermodel-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-duhamel-maximal-regularity-square-reserve-test-20260620.md
  downstream_consequence: "Do not confuse negative-order projected-source visibility with the strong L2 same-carrier source-square criterion. The criterion is a valid consumer for the endpoint atom branch, but the forward-gold route still needs production of that L2/source-square bound, selected critical-strain/CKN reserve, strict no-waste, polar saturation/no-free Zeno, or profile production."
---

# MPP Forward-Gold Projected Source L2 Criterion Endpoint UI Test

Date: 2026-06-21

## Status

This note isolates one exact sufficient criterion for the endpoint time-face
atom branch.  It uses the actual projected Navier-Stokes source

\[
N_j:=-\mathbb P\nabla\cdot(v_j\otimes v_j)
\tag{PSL.1}
\]

from the exact normalized equation

\[
\partial_s v_j-\nu\Delta v_j=N_j.
\tag{PSL.2}
\]

The criterion is useful, but it is not currently produced by the installed
Navier-Stokes inputs:

\[
\boxed{
\text{same-carrier }L_s^2L_y^2\text{ projected-source control}
\Longrightarrow
\text{endpoint UI;}
}
\tag{PSL.3}
\]

\[
\boxed{
\text{energy-class source visibility}
\not\Longrightarrow
\text{same-carrier }L_s^2L_y^2\text{ projected-source control.}
}
\tag{PSL.4}
\]

So this is a criterion-plus-gap result, not a closure theorem.

## 1. Same-carrier projected-source criterion

On a normalized selected terminal cylinder, let \(a_j(s)\ge0\) be the selected
positive endpoint carrier.  Suppose the local selected carrier is controlled on
the same packet by the actual projected source:

\[
a_j(s)
\le
C_{\rm sel}\|N_j(s)\|_{L^2(B_R)}
\ell_j(s),
\qquad -1\le s\le0,
\tag{PSL.5}
\]

where the legal residue has endpoint UI:

\[
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}\ell_j(s)\,ds=0.
\tag{PSL.6}
\]

If

\[
\sup_j
\int_{-1}^{0}\|N_j(s)\|_{L^2(B_R)}^2\,ds
\le C_N<\infty,
\tag{PSL.7}
\]

then Cauchy--Schwarz gives

\[
\int_{-\theta}^{0}a_j(s)\,ds
\le
C_{\rm sel}\theta^{1/2}C_N^{1/2}
+\int_{-\theta}^{0}\ell_j(s)\,ds.
\tag{PSL.8}
\]

Taking \(\limsup_j\) and then \(\theta\downarrow0\) proves

\[
\boxed{
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}a_j(s)\,ds=0.
}
\tag{PSL.9}
\]

Thus a same-carrier \(L_s^2L_y^2\) projected-source bound is a valid endpoint
anti-atom supplier.

## 2. Endpoint atom forces divergent L2 source-square cost

The same calculation gives the converse cost.  Assume that on a terminal layer
\(I_j=(-\tau_j,0]\),

\[
\int_{I_j}a_j(s)\,ds\ge a_0>0,
\qquad
\int_{I_j}\ell_j(s)\,ds\le {a_0\over2}.
\tag{PSL.10}
\]

Then `(PSL.5)` gives

\[
{a_0\over2}
\le
C_{\rm sel}
\int_{I_j}\|N_j(s)\|_{L^2(B_R)}\,ds.
\tag{PSL.11}
\]

Another application of Cauchy--Schwarz yields

\[
\boxed{
\int_{I_j}\|N_j(s)\|_{L^2(B_R)}^2\,ds
\ge
{a_0^2\over4C_{\rm sel}^2\,\tau_j}.
}
\tag{PSL.12}
\]

Therefore a genuine endpoint atom with \(\tau_j\downarrow0\) cannot coexist
with a uniform same-carrier \(L_s^2L_y^2\) projected-source square bound.

This is the exact fixed-cylinder throttle in source form.

## 3. Why current Navier-Stokes inputs do not produce the criterion

The installed energy-class estimate for the actual projected nonlinear source
is weaker:

\[
\|N_j\|_{L_s^{5/3}W_y^{-1,5/3}(Q)}
\le
C E_Q.
\tag{PSL.13}
\]

This is a real Navier-Stokes estimate.  It is also in the wrong currency for
`(PSL.7)`.

There is no implication

\[
L_s^{5/3}W_y^{-1,5/3}
\Longrightarrow
L_s^2L_y^2
\tag{PSL.14}
\]

on terminal heat-scale packets.  The negative norm sees an antiderivative and
allows high-frequency cancellation, while the selected positive carrier is
one-sided and local.

The previously recorded projected-divergence countermodel shows the functional
gap:

\[
\|N_n\|_{W^{-1,5/3}}\to0
\quad\text{while}\quad
\int[-N_n\cdot e]_+\,dy\ge c>0.
\tag{PSL.15}
\]

The exact convective normal-form test shows the same positive/negative-norm
gap occurs in the algebra of
\(-\mathbb P\nabla\cdot(v\otimes v)\), while the full residual test prevents
that normal form from being used as a Navier-Stokes trajectory.

So a successful use of `(PSL.7)` would have to prove a genuinely new
same-carrier \(L^2\) source-square theorem for actual residual-free
Navier-Stokes dynamics.

## 4. What this criterion pays, and what it does not pay

The criterion pays only the endpoint time-face atom clause:

\[
\boxed{
\text{same-carrier }L_s^2L_y^2\text{ projected source}
\Longrightarrow
\text{EndpointUI.A.}
}
\tag{PSL.16}
\]

It does not by itself pay the first-created interior square-reserve clause.
For that branch one still needs a square-strength theorem in the selected
reserve currency, such as

\[
\boxed{
\text{SourceSquareReserve.A,\quad SquareReserveEvolution.A,\quad
ActiveWindowHeight.A,\quad StrictRescaledNoWasteLyapunov.A.}
}
\tag{PSL.17}
\]

In particular, `(PSL.7)` is a strong source-square-type supplier if it is proved
on the actual selected carrier.  It is not a consequence of the current
energy-class projected-source estimate.

## Verdict

The exact endpoint criterion is installed:

\[
\boxed{
\text{same-carrier }L_s^2L_y^2\text{ control of }
N=-\mathbb P\nabla\cdot(v\otimes v)
\text{ excludes terminal endpoint atoms.}
}
\tag{PSL.18}
\]

The exact gap is also installed:

\[
\boxed{
\text{current inputs give }L_s^{5/3}W_y^{-1,5/3}\text{ visibility, not the }
L_s^2L_y^2\text{ same-carrier square bound.}
}
\tag{PSL.19}
\]

Thus this route sharpens the required source norm but does not solve forward
gold.  The remaining production theorem is still a same-carrier square or
unweighted critical-action reserve on the actual selected positive carrier, or
a strict no-waste / polar-saturation / profile-production substitute.
