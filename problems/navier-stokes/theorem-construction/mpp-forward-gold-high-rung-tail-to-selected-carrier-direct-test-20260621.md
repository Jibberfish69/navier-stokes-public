---
ns_viewer:
  theorem_id: forward-gold-high-rung-tail-to-selected-carrier-direct-test-20260621
  status: direct-test-complete-high-rung-tail-does-not-dominate-finite-order-selected-carrier
  proof_role: forward_gold_high_rung_tail_selected_carrier_test
  logical_landing_node: high_rung_tail_to_selected_endpoint_carrier
  edge_effect: "Tests HighRungTailToSelectedEndpointCarrier.A at the level of the coupled tower data. It does not follow from the tower tail alone. A tiny-amplitude high-frequency divergence-free packet can make every fixed finite derivative rung bounded or small, make the finite-order selected carrier tend to zero, and still make every positive factorial analytic radius diverge through high rungs. Therefore high-rung analytic tail mass does not dominate the native finite-order selected carrier without an extra same-carrier/dynamical theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-radius-collapse-not-endpoint-ui-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-coupled-radius-collapse-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
  downstream_consequence: "Do not use high-rung analytic tail divergence as a proxy for the selected positive endpoint carrier. The remaining possible gold suppliers must add a dynamical same-carrier bridge: strict no-waste, unweighted terminal critical action, selected source-square domination, or minimal Zeno profile production."
---

# MPP Forward-Gold High-Rung Tail Does Not Dominate The Selected Carrier

Date: 2026-06-21

## Status

This note tests the bridge isolated by the high-rung collapse audit:

\[
\boxed{
\text{HighRungTailToSelectedEndpointCarrier.A}.
}
\tag{HTC.1}
\]

The direct implication from high-rung analytic tail mass to the finite-order
selected positive carrier is false at the level of tower data. The selected
carrier is finite-order. The analytic tail can live arbitrarily far above it.

## 1. A divergence-free high-frequency packet

Let \(\chi\in C_c^\infty(B_1)\) satisfy \(\chi\equiv1\) on \(B_{1/2}\). Let
\(N_j\to\infty\), and set

\[
\varepsilon_j:=e^{-\sqrt{N_j}}.
\tag{HTC.2}
\]

Define a compactly supported vector potential

\[
A_j(y):=
\left(0,0,{\varepsilon_j\over N_j}\chi(y)\sin(N_jy_1)\right),
\tag{HTC.3}
\]

and let

\[
V_j:=\nabla\times A_j.
\tag{HTC.4}
\]

Then

\[
\nabla\cdot V_j=0.
\tag{HTC.5}
\]

On \(B_{1/2}\),

\[
V_j(y)=
\left(0,-\varepsilon_j\cos(N_jy_1),0\right).
\tag{HTC.6}
\]

Use the time-independent rescaled fields

\[
v_j(s,y):=V_j(y),
\qquad
-1\le s\le0.
\tag{HTC.7}
\]

This is a data-level test of the proposed bridge, not a claimed exact
Navier-Stokes solution.

## 2. Fixed finite rungs are bounded

For every fixed \(k\ge0\), there is \(C_k<\infty\) such that

\[
\sup_{-1\le s\le0}
\| \nabla_y^k v_j(s)\|_{L^2(B_1)}
\le
C_k\,\varepsilon_j N_j^k
\le C_k
\tag{HTC.8}
\]

for all sufficiently large \(j\). Since

\[
\varepsilon_jN_j^k=e^{-\sqrt{N_j}}N_j^k\to0,
\tag{HTC.9}
\]

every fixed finite derivative rung is not only bounded; it eventually becomes
small.

## 3. The finite-order selected carrier vanishes

Any native selected positive carrier built from a fixed finite number of local
velocity derivatives obeys a bound of the form

\[
a_j(s)
\le
C_{\mathrm{sel}}
\sum_{k\le K}
\|\nabla_y^k v_j(s)\|_{L^\infty(B_1)}^{p_k},
\tag{HTC.10}
\]

for fixed \(K\), fixed powers \(p_k>0\), and fixed \(C_{\mathrm{sel}}\). For
the strain-vorticity cubic carrier, one may take \(K=1\) and total degree
three.

By `(HTC.8)` plus Sobolev embedding after increasing the fixed \(k\) in the
estimate,

\[
\sup_{-1\le s\le0}a_j(s)\to0.
\tag{HTC.11}
\]

Therefore endpoint UI holds:

\[
\lim_{\theta\downarrow0}\limsup_{j\to\infty}
\int_{-\theta}^{0}a_j(s)\,ds
=0.
\tag{HTC.12}
\]

## 4. Every positive analytic radius still fails

On \(B_{1/2}\), the \(n\)-th \(y_1\)-derivative of the second component has
size \(\varepsilon_jN_j^n\). Hence there is \(c>0\) such that, for all large
\(j\) and all \(n\ge1\),

\[
\|\partial_{y_1}^n V_j\|_{L^2(B_{1/2})}
\ge
c\,\varepsilon_jN_j^n.
\tag{HTC.13}
\]

Fix any \(\rho>0\). Choose

\[
n_j:=\lfloor \rho N_j\rfloor.
\tag{HTC.14}
\]

The \(n_j\)-th spatial rung contributes at least

\[
{\rho^{2n_j}\over(n_j!)^2}
\|\partial_{y_1}^{n_j}V_j\|_{L^2(B_{1/2})}^2
\ge
c^2\varepsilon_j^2
\left({\rho N_j\over n_j!^{1/n_j}}\right)^{2n_j}.
\tag{HTC.15}
\]

By Stirling,

\[
n_j!^{1/n_j}
\le
C\,{n_j\over e}
\le
C_\rho N_j,
\tag{HTC.16}
\]

and more sharply the selected term grows like

\[
\varepsilon_j^2\,e^{2n_j}
=
\exp\!\left(-2\sqrt{N_j}+2\rho N_j+o(N_j)\right)
\to\infty.
\tag{HTC.17}
\]

Thus, for every \(\rho>0\),

\[
\limsup_{j\to\infty}
\sum_{\alpha}
{\rho^{2|\alpha|}\over(\alpha!)^2}
\|\partial_y^\alpha V_j\|_{L^2(B_{1/2})}^2
=\infty.
\tag{HTC.18}
\]

The coupled spatial analytic radius collapses through the high rungs, even
though every fixed finite rung is harmless and the selected carrier tends to
zero.

## Verdict

The direct bridge fails:

\[
\boxed{
\text{high-rung analytic tail divergence}
\not\Longrightarrow
\text{selected endpoint carrier mass}.
}
\tag{HTC.19}
\]

The high-rung tail is an infinite-order object. The selected positive carrier
is finite-order. A proof connecting them must use additional Navier-Stokes
dynamics, not just the tower tail size.

The remaining possible gold suppliers are therefore:

\[
\boxed{
\text{strict no-waste, unweighted terminal critical action, selected source-square
domination, or minimal Zeno profile production.}
}
\tag{HTC.20}
\]
