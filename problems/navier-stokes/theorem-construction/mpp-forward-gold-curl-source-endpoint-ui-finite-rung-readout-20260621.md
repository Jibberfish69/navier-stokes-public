---
ns_viewer:
  theorem_id: forward-gold-curl-source-endpoint-ui-finite-rung-readout-20260621
  status: exact-curl-source-criterion-installed-finite-rung-readout-not-gold-production
  proof_role: forward_gold_curl_source_endpoint_ui_consumer_and_finite_rung_readout
  logical_landing_node: curl_source_endpoint_ui_finite_rung_readout
  edge_effect: "Splits the curl-source half of the native-carrier criterion. For C_eta(s)=||eta omega||_2 ||eta curl N||_2, bounded same-carrier vorticity height plus L_s^2 L_y^2 control of eta curl N gives endpoint UI by Cauchy-Schwarz. Conversely, a retained curl-source atom of mass a0 on a window of length theta_j forces int ||eta curl N||_2^2 ds >= a0^2/(X_*^2 theta_j) under vorticity height X_*. On a fixed normalized chart, ||eta curl N||_2 <= C_eta ||eta_1 v||_{H^2}^2, so the same atom forces theta_j sup ||eta_1 v||_{H^2}^2 >= c a0/X_*. This is an exact consumer/readout theorem, not a production theorem from local energy."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-carrier-curl-source-transport-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-source-native-carrier-domination-nogo-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-source-l2-sobolev-readout-reduction-20260621.md
  downstream_consequence: "The curl-source partner is killed by same-carrier vorticity height plus curl-source square control, or it becomes an H^2 Field readout after same-witness admission. Current energy inputs do not supply the required L_s^2 L_y^2 curl-source bound, so the unweighted critical-action/source-square/no-waste/profile-production problem remains open."
---

# MPP Forward-Gold Curl-Source Endpoint UI Finite-Rung Readout

Date: 2026-06-21

## Status

This note isolates the curl-source half of the native positive stretching
criterion.  It does not replace Navier-Stokes by a linear model, and it does
not replace the native carrier by the projected source \(N\).

It starts from the exact decomposition already installed in the native-carrier
criterion:

\[
[\omega\cdot S\omega]_+
\le
|\omega|\,|\nabla\times N|
+
|v|\,|\omega|\,|\nabla\omega|.
\tag{CSE.1}
\]

The transport half is handled separately in
`mpp-forward-gold-transport-term-endpoint-ui-enstrophy-dissipation-criterion-20260621.md`.
Here the object is only

\[
C_\eta(s)
:=
\|\eta\omega(s)\|_{L^2}
\|\eta\nabla\times N(s)\|_{L^2}.
\tag{CSE.2}
\]

This is a consumer/readout theorem.  It says exactly which bound kills the
curl-source endpoint atom, and exactly what finite-rung blowup is forced if the
atom survives.

## 1. Endpoint UI criterion

Let \(v_j\) be a terminal normalized sequence on a fixed chart, let

\[
\omega_j:=\nabla\times v_j,
\qquad
N_j:=-\mathbb P\nabla\cdot(v_j\otimes v_j),
\tag{CSE.3}
\]

and let \(\eta\in C_c^\infty\) be the selected cutoff.

Assume same-carrier vorticity height:

\[
\sup_j\sup_{-1\le s\le0}
\|\eta\omega_j(s)\|_{L^2}
\le
X_*<\infty,
\tag{CSE.4}
\]

and same-carrier curl-source square control:

\[
\sup_j
\int_{-1}^{0}
\|\eta\nabla\times N_j(s)\|_{L^2}^2\,ds
\le
Y_*^2<\infty.
\tag{CSE.5}
\]

Then for \(0<\theta<1\), Cauchy-Schwarz gives

\[
\begin{aligned}
\int_{-\theta}^{0}C_{\eta,j}(s)\,ds
&\le
X_*
\int_{-\theta}^{0}
\|\eta\nabla\times N_j(s)\|_{L^2}\,ds\\
&\le
X_*\theta^{1/2}
\left(
\int_{-\theta}^{0}
\|\eta\nabla\times N_j(s)\|_{L^2}^2\,ds
\right)^{1/2}\\
&\le
X_*Y_*\theta^{1/2}.
\end{aligned}
\tag{CSE.6}
\]

Therefore

\[
\boxed{
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}C_{\eta,j}(s)\,ds
=0.
}
\tag{CSE.7}
\]

So the curl-source half has endpoint UI under exactly the two same-carrier
inputs `(CSE.4)` and `(CSE.5)`.

## 2. Atom readout

Conversely, suppose a retained curl-source endpoint atom survives on windows
\(\theta_j\downarrow0\):

\[
\int_{-\theta_j}^{0}C_{\eta,j}(s)\,ds
\ge
a_0>0.
\tag{CSE.8}
\]

If the vorticity height `(CSE.4)` holds on those windows, then `(CSE.6)` forces

\[
a_0
\le
X_*\theta_j^{1/2}
\left(
\int_{-\theta_j}^{0}
\|\eta\nabla\times N_j(s)\|_{L^2}^2\,ds
\right)^{1/2}.
\tag{CSE.9}
\]

Hence

\[
\boxed{
\int_{-\theta_j}^{0}
\|\eta\nabla\times N_j(s)\|_{L^2}^2\,ds
\ge
{a_0^2\over X_*^2\,\theta_j}.
}
\tag{CSE.10}
\]

Thus a curl-source atom cannot stay invisible under bounded vorticity height.
It forces curl-source square action to diverge at least like \(\theta_j^{-1}\).

If `(CSE.4)` fails instead, the same packet already has an enstrophy-height
Field readout.

## 3. Finite-rung local readout

Let \(\eta,\eta_1\in C_c^\infty(B_R)\), with \(\eta_1\equiv1\) on
\(\operatorname{supp}\eta\).  Since curl kills gradients,

\[
\nabla\times N
=
-\nabla\times\nabla\cdot(v\otimes v)
=
-\nabla\times((v\cdot\nabla)v).
\tag{CSE.11}
\]

The differentiated product contains only the local product types

\[
v\,\nabla^2 v,
\qquad
\nabla v\,\nabla v.
\tag{CSE.12}
\]

On a fixed three-dimensional chart,

\[
\|v\,\nabla^2v\|_{L^2(\operatorname{supp}\eta)}
\le
\|\eta_1v\|_{L^\infty}
\|\eta_1\nabla^2v\|_{L^2},
\tag{CSE.13}
\]

and

\[
\|\nabla v\,\nabla v\|_{L^2(\operatorname{supp}\eta)}
\le
\|\eta_1\nabla v\|_{L^4}^2.
\tag{CSE.14}
\]

The fixed-chart Sobolev and Gagliardo-Nirenberg estimates give

\[
\|\eta_1v\|_{L^\infty}
\le
C_\eta\|\eta_1v\|_{H^2},
\qquad
\|\eta_1\nabla v\|_{L^4}
\le
C_\eta\|\eta_1v\|_{H^2}.
\tag{CSE.15}
\]

Including the harmless cutoff-derivative collar terms in \(C_\eta\), one gets

\[
\boxed{
\|\eta\nabla\times N(s)\|_{L^2}
\le
C_\eta\|\eta_1v(s)\|_{H^2(B_R)}^2.
}
\tag{CSE.16}
\]

Combining `(CSE.8)` with `(CSE.16)` gives the finite-rung consequence

\[
a_0
\le
C_\eta
\left(
\sup_{-\theta_j\le s\le0}
\|\eta\omega_j(s)\|_{L^2}
\right)
\theta_j
\left(
\operatorname*{ess\,sup}_{-\theta_j\le s\le0}
\|\eta_1v_j(s)\|_{H^2(B_R)}
\right)^2.
\tag{CSE.17}
\]

Under vorticity height \(X_*\), this is

\[
\boxed{
\theta_j
\left(
\operatorname*{ess\,sup}_{-\theta_j\le s\le0}
\|\eta_1v_j(s)\|_{H^2(B_R)}
\right)^2
\ge
{a_0\over C_\eta X_*}.
}
\tag{CSE.18}
\]

So a retained curl-source endpoint atom is \(H^2\)-Field-facing.  If the
same-carrier \(H^2\) rung stays uniformly bounded on the shrinking terminal
windows, the curl-source atom is impossible.

## 4. Meaning for the gold route

The exact criterion is:

\[
\boxed{
\text{curl-source endpoint UI follows from vorticity height plus }
L_s^2L_y^2\text{ curl-source control on the same carrier.}
}
\tag{CSE.19}
\]

The exact readout is:

\[
\boxed{
\text{a retained curl-source atom forces either enstrophy-height failure or }
\theta_j\sup_{I_j}\|v_j\|_{H^2}^2\ge c.
}
\tag{CSE.20}
\]

This is not a gold production theorem.  Basic local energy controls the velocity
in \(L_s^\infty L_y^2\) and the gradient in \(L_s^2L_y^2\).  It does not supply
the same-carrier bound `(CSE.5)` for \(\nabla\times N\), which contains one
more derivative of the nonlinear source.

Thus the curl-source branch is now exact:

\[
\boxed{
\text{same-carrier curl-source square control kills the branch; otherwise the
branch becomes a finite-rung Field/enstrophy readout.}
}
\tag{CSE.21}
\]

The remaining forward-gold production problem is unchanged: one still needs an
unweighted same-carrier critical-action reserve, source-square/no-waste,
selected CKN depletion, polar saturation/no-free Zeno, or profile production.
