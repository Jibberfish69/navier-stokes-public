---
ns_viewer:
  theorem_id: forward-gold-transport-term-endpoint-ui-enstrophy-dissipation-criterion-20260621
  status: exact-transport-term-criterion-installed-enstrophy-dissipation-readout-not-gold-production
  proof_role: forward_gold_transport_term_endpoint_ui_consumer_and_enstrophy_dissipation_readout
  logical_landing_node: transport_term_endpoint_ui_enstrophy_dissipation_criterion
  edge_effect: "Installs the exact estimate for the transport term left by the native-carrier curl-source criterion. On nested cutoffs eta <= eta_1, T_eta=int eta^2 |v||omega||grad omega| obeys T_eta <= C_eta ||eta_1 v||_{H1} ||eta_1 omega||_2^(1/2) Z_eta^(3/2), where Z_eta=||eta_1 grad omega||_2+||eta_1 omega||_2. Hence uniform same-carrier H1/enstrophy height and L_s^2 control of Z_eta give endpoint UI for T_eta. Conversely, a retained terminal transport atom on a window of length theta forces int Z_eta^2 >= c theta^(-1/3) under bounded H1/enstrophy height. This is an exact finite-rung/enstrophy-dissipation readout, not a source-square or no-waste production theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-carrier-curl-source-transport-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-enstrophy-stretching-source-square-production-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-height-enstrophy-throttle-direct-attempt-20260620.md
  downstream_consequence: "The transport partner in the native-carrier criterion is not free. It is killed by continuation-strength local H1/enstrophy height plus enstrophy-gradient dissipation, and a retained transport atom becomes a finite-rung or enstrophy-dissipation concentration readout after same-witness admission. Current energy inputs do not supply the required uniform terminal bounds."
---

# MPP Forward-Gold Transport Term Endpoint UI Enstrophy-Dissipation Criterion

Date: 2026-06-21

## Status

This note works only on the transport term left by the native-carrier
curl-source criterion:

\[
T_\eta(s)
:=
\int \eta^2 |v|\,|\omega|\,|\nabla\omega|(s,y)\,dy.
\tag{TTC.1}
\]

It proves an exact sufficient criterion for endpoint UI of \(T_\eta\), and an
exact readout if a terminal transport atom survives.  It does not produce the
missing bounds from energy.

## 1. Local product estimate

Let \(\eta,\eta_1\in C_c^\infty(B_R)\) with \(\eta_1\equiv1\) on
\(\operatorname{supp}\eta\).  Define

\[
X_\eta(s):=\|\eta_1 v(s)\|_{H^1},
\qquad
Y_\eta(s):=\|\eta_1\omega(s)\|_{L^2},
\tag{TTC.2}
\]

and

\[
Z_\eta(s):=
\|\eta_1\nabla\omega(s)\|_{L^2}
+
\|\eta_1\omega(s)\|_{L^2}.
\tag{TTC.3}
\]

Using Hölder,

\[
T_\eta(s)
\le
\|\eta v(s)\|_{L^6}
\|\eta\omega(s)\|_{L^3}
\|\eta_1\nabla\omega(s)\|_{L^2}.
\tag{TTC.4}
\]

Sobolev on the fixed chart gives

\[
\|\eta v\|_{L^6}
\le
C_\eta\|\eta_1 v\|_{H^1},
\tag{TTC.5}
\]

and Gagliardo--Nirenberg gives

\[
\|\eta\omega\|_{L^3}
\le
C_\eta
\|\eta_1\omega\|_{L^2}^{1/2}
Z_\eta^{1/2}.
\tag{TTC.6}
\]

Therefore

\[
\boxed{
T_\eta(s)
\le
C_\eta
X_\eta(s)
Y_\eta(s)^{1/2}
Z_\eta(s)^{3/2}.
}
\tag{TTC.7}
\]

This is the exact local transport estimate used below.

## 2. Endpoint UI criterion

For a terminal sequence \(v_j\), assume the same selected cutoffs satisfy

\[
\sup_j\sup_{-1\le s\le0} X_{\eta,j}(s)\le X_*<\infty,
\tag{TTC.8}
\]

\[
\sup_j\sup_{-1\le s\le0} Y_{\eta,j}(s)\le Y_*<\infty,
\tag{TTC.9}
\]

and

\[
\sup_j
\int_{-1}^{0}Z_{\eta,j}(s)^2\,ds
\le D_*<\infty.
\tag{TTC.10}
\]

Then for \(0<\theta<1\), `(TTC.7)` and Hölder give

\[
\begin{aligned}
\int_{-\theta}^{0}T_{\eta,j}(s)\,ds
&\le
C_\eta X_*Y_*^{1/2}
\int_{-\theta}^{0}Z_{\eta,j}(s)^{3/2}\,ds\\
&\le
C_\eta X_*Y_*^{1/2}
\theta^{1/4}
\left(
\int_{-\theta}^{0}Z_{\eta,j}(s)^2\,ds
\right)^{3/4}\\
&\le
C_\eta X_*Y_*^{1/2}D_*^{3/4}\theta^{1/4}.
\end{aligned}
\tag{TTC.11}
\]

Thus

\[
\boxed{
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}T_{\eta,j}(s)\,ds
=0.
}
\tag{TTC.12}
\]

So the transport term has endpoint UI under uniform same-carrier
\(H^1\)/enstrophy height and local enstrophy-gradient \(L_s^2L_y^2\) control.

## 3. Atom readout

Conversely, suppose a terminal transport atom survives:

\[
\int_{-\theta_j}^{0}T_{\eta,j}(s)\,ds\ge a_0>0,
\qquad
\theta_j\downarrow0.
\tag{TTC.13}
\]

If \(X_{\eta,j}\le X_*\) and \(Y_{\eta,j}\le Y_*\) on the same windows, then
`(TTC.11)` forces

\[
a_0
\le
C_\eta X_*Y_*^{1/2}
\theta_j^{1/4}
\left(
\int_{-\theta_j}^{0}Z_{\eta,j}(s)^2\,ds
\right)^{3/4}.
\tag{TTC.14}
\]

Hence

\[
\boxed{
\int_{-\theta_j}^{0}Z_{\eta,j}(s)^2\,ds
\ge
c_\eta
{a_0^{4/3}\over X_*^{4/3}Y_*^{2/3}}
\theta_j^{-1/3}.
}
\tag{TTC.15}
\]

A retained transport atom therefore cannot stay invisible under bounded
\(H^1\)/enstrophy height.  It forces local enstrophy-gradient action to blow up
at least at the rate \(\theta_j^{-1/3}\).

## 4. Meaning for the gold route

The criterion pays the transport partner in the native-carrier estimate only
under stronger finite-rung input:

\[
\boxed{
\sup_s\|\eta_1v_j(s)\|_{H^1},
\quad
\sup_s\|\eta_1\omega_j(s)\|_2,
\quad
\int Z_{\eta,j}^2\,ds.
}
\tag{TTC.16}
\]

Those are not consequences of the basic local energy inequality.  Basic energy
controls \(v\) in \(L_s^\infty L_y^2\) and \(\nabla v\) in \(L_s^2L_y^2\), while
`(TTC.16)` asks for terminal enstrophy height and one more derivative of
vorticity on the selected carrier.

Therefore this note does not close the forward-gold theorem.  It sharpens the
fork:

\[
\boxed{
\text{transport endpoint UI is supplied by finite-rung/enstrophy-dissipation
control, or a retained transport atom becomes a Field/readout obstruction.}
}
\tag{TTC.17}
\]

The remaining forward-gold production problem is still the unweighted
same-carrier critical-action reserve, source-square/no-waste, selected
critical-strain/CKN tail depletion, polar saturation/no-free Zeno, or profile
production.
