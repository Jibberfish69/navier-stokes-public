---
ns_viewer:
  theorem_id: forward-gold-native-carrier-curl-source-transport-criterion-20260621
  status: exact-sufficient-criterion-installed-native-carrier-endpoint-ui-not-produced
  proof_role: forward_gold_native_carrier_endpoint_ui_consumer_and_field_readout
  logical_landing_node: native_carrier_curl_source_transport_criterion
  edge_effect: "Installs the exact replacement for the false projected-source-to-native-carrier domination. For smooth divergence-free v with N=-P div(v tensor v), the identity curl N=S omega-(v dot grad)omega gives [omega dot S omega]_+ <= |omega||curl N|+|v||omega||grad omega|. Thus endpoint UI for the native positive stretching carrier follows from a same-carrier L-infinity_s L2_y vorticity bound, same-carrier endpoint control of the curl-source term, and endpoint control of the transport term. Finite local H2 control consumes a retained native endpoint atom as a Field readout, since the carrier is bounded by C||v||_{H2}^3 on a fixed normalized chart. This is not a production theorem from energy and does not supply source-square/no-waste."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-source-native-carrier-domination-nogo-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-source-l2-sobolev-readout-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-enstrophy-stretching-source-square-production-direct-test-20260621.md
  downstream_consequence: "The native carrier bridge must keep curl N and the transport/cutoff current. A retained native endpoint atom either violates same-carrier curl-source plus transport endpoint UI or forces a finite-rung H2 Field readout after same-witness CM admission. The result does not prove the missing unweighted action reserve."
---

# MPP Forward-Gold Native Carrier Curl-Source Transport Criterion

Date: 2026-06-21

## Status

This note records the exact sufficient criterion left by the projected-source
native-carrier no-go.  It does not replace the native carrier by the projected
source \(N\).  It keeps the missing transport term.

The criterion is:

\[
\boxed{
\text{native positive stretching endpoint UI follows from same-carrier
endpoint control of }\nabla\times N\text{ and the transport term.}
}
\tag{NCT.1}
\]

This is a consumer/readout theorem.  It does not produce the curl-source or
transport endpoint bounds from energy.

## 1. Exact pointwise decomposition

Let \(v\) be smooth and divergence-free on a fixed normalized chart.  Set

\[
\omega:=\nabla\times v,
\qquad
S:={1\over2}\left(\nabla v+\nabla v^T\right),
\qquad
N:=-\mathbb P\nabla\cdot(v\otimes v).
\tag{NCT.2}
\]

The exact identity from the no-go note is

\[
\nabla\times N
=
S\omega-(v\cdot\nabla)\omega.
\tag{NCT.3}
\]

Pairing with \(\omega\),

\[
\omega\cdot S\omega
=
\omega\cdot(\nabla\times N)
+v\cdot\nabla {|\omega|^2\over2}.
\tag{NCT.4}
\]

Therefore, pointwise,

\[
\boxed{
[\omega\cdot S\omega]_+
\le
|\omega|\,|\nabla\times N|
+
|v|\,|\omega|\,|\nabla\omega|.
}
\tag{NCT.5}
\]

This is the exact replacement for the false bound by \(\|N\|_{L^2}\).  The
bridge sees \(\nabla\times N\), not \(N\), and it keeps the transport factor.

## 2. Local carrier inequality

Let \(\eta\in C_c^\infty\) be a fixed spatial cutoff and define

\[
A_\eta(s)
:=
\int \eta^2[\omega\cdot S\omega]_+(s,y)\,dy.
\tag{NCT.6}
\]

From `(NCT.5)`,

\[
\boxed{
A_\eta(s)
\le
\|\eta\omega(s)\|_{L^2}
\|\eta\nabla\times N(s)\|_{L^2}
+
T_\eta(s),
}
\tag{NCT.7}
\]

where

\[
T_\eta(s)
:=
\int \eta^2 |v|\,|\omega|\,|\nabla\omega|(s,y)\,dy.
\tag{NCT.8}
\]

The signed cutoff identity is still available:

\[
\int \eta^2\,\omega\cdot S\omega
=
\int \eta^2\,\omega\cdot(\nabla\times N)
-
{1\over2}\int |\omega|^2\,v\cdot\nabla(\eta^2).
\tag{NCT.9}
\]

But `(NCT.9)` is signed.  The one-sided selected carrier in `(NCT.6)` is
controlled by `(NCT.7)` unless an additional polar/saturation theorem restores
the missing signed partner.

## 3. Endpoint UI criterion

For a terminal sequence \(v_j\), suppose on the same selected normalized carrier
that

\[
\sup_j\sup_{-1\le s\le0}\|\eta\omega_j(s)\|_{L^2}\le X_*<\infty,
\tag{NCT.10}
\]

\[
\sup_j\|\eta\nabla\times N_j\|_{L_s^2(-1,0;L_y^2)}\le Y_*<\infty,
\tag{NCT.11}
\]

and the transport term is endpoint uniformly integrable:

\[
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}T_{\eta,j}(s)\,ds
=0.
\tag{NCT.12}
\]

Then `(NCT.7)` gives

\[
\int_{-\theta}^{0}A_{\eta,j}(s)\,ds
\le
X_*\theta^{1/2}Y_*
+
\int_{-\theta}^{0}T_{\eta,j}(s)\,ds.
\tag{NCT.13}
\]

Taking \(\limsup_j\) and then \(\theta\downarrow0\) proves

\[
\boxed{
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}A_{\eta,j}(s)\,ds
=0.
}
\tag{NCT.14}
\]

Thus a native positive stretching endpoint atom is impossible under the
same-carrier curl-source \(L_s^2L_y^2\) bound and transport endpoint UI.

This criterion is exact but stronger than the installed energy-class control.
It asks for one derivative more than projected-source \(L^2\), and it asks for
the transport factor on the same selected carrier.

## 4. Finite-rung Field readout

On a fixed normalized chart with cutoff \(\eta\), local \(H^2\) control gives

\[
\|\eta\omega\|_{L^2}
\le
C_\eta\|v\|_{H^2(B_R)},
\tag{NCT.15}
\]

\[
\|\eta\nabla\times N\|_{L^2}
\le
C_\eta\|v\|_{H^2(B_R)}^2,
\tag{NCT.16}
\]

because \(\nabla\times N=-\nabla\times((v\cdot\nabla)v)\) and \(H^2\) controls
the products \(v\,\nabla^2v\) and \(\nabla v\,\nabla v\) locally in three
dimensions.  Also

\[
T_\eta(s)
\le
\|v(s)\|_{L^\infty(B_R)}
\|\omega(s)\|_{L^2(B_R)}
\|\nabla\omega(s)\|_{L^2(B_R)}
\le
C_\eta\|v(s)\|_{H^2(B_R)}^3.
\tag{NCT.17}
\]

Consequently,

\[
\boxed{
A_\eta(s)
\le
C_\eta\|v(s)\|_{H^2(B_R)}^3.
}
\tag{NCT.18}
\]

If a retained native endpoint atom has mass at least \(a_0>0\) on a terminal
window of length \(\theta_j\),

\[
\int_{-\theta_j}^{0}A_{\eta,j}(s)\,ds\ge a_0,
\tag{NCT.19}
\]

then `(NCT.18)` forces

\[
\boxed{
\theta_j
\left(\operatorname*{ess\,sup}_{-\theta_j\le s\le0}
\|v_j(s)\|_{H^2(B_R)}\right)^3
\ge
{a_0\over C_\eta}.
}
\tag{NCT.20}
\]

Thus the native endpoint atom is finite-rung Field-facing after same-witness
CM admission: a retained atom contradicts any same-carrier Field certificate
that keeps the normalized \(H^2\) rung uniformly bounded on the shrinking
terminal windows.

## Verdict

The exact native-carrier replacement is:

\[
\boxed{
\text{native carrier}
\le
\text{curl projected source}
+
\text{transport current}.
}
\tag{NCT.21}
\]

This is useful because it removes the false shortcut through \(\|N\|_{L^2}\)
alone.  It gives a precise endpoint UI criterion and a finite-rung \(H^2\)
readout.  It does not prove source-square, strict no-waste, or the unweighted
terminal critical-action reserve on the actual selected positive carrier.
