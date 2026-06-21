---
ns_viewer:
  theorem_id: forward-gold-curl-source-collar-endpoint-ui-enstrophy-gradient-readout-20260621
  status: exact-collar-endpoint-ui-criterion-installed-not-production
  proof_role: forward_gold_curl_source_collar_readout
  logical_landing_node: curl_source_collar_endpoint_ui_enstrophy_gradient_readout
  edge_effect: "Refines the collar alternative left by the localized vorticity residual split. For fixed nested cutoffs, the collar commutator B_eta^omega is bounded by a fixed constant times ||eta_1 omega||_2+||eta_1 grad omega||_2. Uniform L_s^2 control of this collar enstrophy-gradient quantity gives endpoint UI by Cauchy-Schwarz. Conversely, a retained collar atom on a terminal window of length theta_j forces collar enstrophy-gradient square action at least c theta_j^(-1), or equivalently a finite-rung H^2 height blowup on that collar. This is an exact readout/consumer only; local energy does not supply the H^2/enstrophy-gradient square control."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-curl-source-vorticity-parabolic-residual-boundary-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-curl-source-endpoint-ui-finite-rung-readout-20260621.md
  downstream_consequence: "The collar branch is not a free legal ledger and not a viscosity-smoothing theorem. It is endpoint UI only after an explicit same-collar L_s^2 enstrophy-gradient bound. Without that bound, a surviving collar atom is a finite-rung Field/enstrophy-gradient readout after same-witness CM-test admission, or the route returns to unweighted critical-action/source-square/no-waste/profile production."
---

# MPP Forward-Gold Curl-Source Collar Endpoint UI Enstrophy-Gradient Readout

Date: 2026-06-21

## Status

This note refines the collar branch in
`mpp-forward-gold-curl-source-vorticity-parabolic-residual-boundary-20260621.md`.
It does not add a new production theorem.

The exact point is:

\[
\boxed{
\text{a curl-source collar atom is excluded by same-collar }
L_s^2\text{ enstrophy-gradient control.}
}
\tag{CCE.1}
\]

If that control is absent, the collar atom is not hidden.  It becomes a
finite-rung enstrophy-gradient readout.

## 1. Collar term from the exact localized identity

The localized vorticity residual note defines

\[
B_\eta^\omega(s)
:=
\nu\|(\Delta\eta)\omega(s)\|_{L^2}
+2\nu\|\nabla\eta\cdot\nabla\omega(s)\|_{L^2}.
\tag{CCE.2}
\]

This is the cutoff collar in

\[
\eta\nabla\times N
=
(\partial_s-\nu\Delta)(\eta\omega)
+\nu(\Delta\eta)\omega
+2\nu\nabla\eta\cdot\nabla\omega.
\tag{CCE.3}
\]

No sign or cancellation is used here.  This is just the product rule applied to
the exact vorticity identity

\[
\nabla\times N=(\partial_s-\nu\Delta)\omega.
\tag{CCE.4}
\]

## 2. Fixed-collar enstrophy-gradient domination

Choose cutoffs

\[
\eta,\eta_1\in C_c^\infty(B_R),
\qquad
\eta_1\equiv1
\quad\text{on}\quad
\operatorname{supp}\nabla\eta\cup\operatorname{supp}\Delta\eta.
\tag{CCE.5}
\]

Define the collar enstrophy-gradient quantity

\[
Z_{\eta,\mathrm{coll}}(s)
:=
\|\eta_1\omega(s)\|_{L^2}
+\|\eta_1\nabla\omega(s)\|_{L^2}.
\tag{CCE.6}
\]

Then the collar term satisfies the exact fixed-cutoff bound

\[
\boxed{
B_\eta^\omega(s)
\le
C_{\eta,\nu}\,
Z_{\eta,\mathrm{coll}}(s),
}
\tag{CCE.7}
\]

where

\[
C_{\eta,\nu}
=
\nu\|\Delta\eta\|_{L^\infty}
+2\nu\|\nabla\eta\|_{L^\infty}.
\tag{CCE.8}
\]

The constant is harmless only because the normalized chart and cutoff are fixed.
It is not a scale-free statement over moving, shrinking, or degenerating
cutoffs unless those cutoff constants are separately controlled.

## 3. Endpoint UI criterion for the collar

Assume same-collar square control:

\[
\sup_j
\int_{-1}^{0}
Z_{\eta,\mathrm{coll},j}(s)^2\,ds
\le
D_*<\infty.
\tag{CCE.9}
\]

Then by `(CCE.7)` and Cauchy-Schwarz,

\[
\int_{-\theta}^{0}
B_{\eta,j}^\omega(s)\,ds
\le
C_{\eta,\nu}
\int_{-\theta}^{0}
Z_{\eta,\mathrm{coll},j}(s)\,ds
\le
C_{\eta,\nu}D_*^{1/2}\theta^{1/2}.
\tag{CCE.10}
\]

Therefore

\[
\boxed{
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}
B_{\eta,j}^\omega(s)\,ds
=0.
}
\tag{CCE.11}
\]

Thus the collar branch in `(CVR.16)` is paid by an explicit
\(L_s^2L_y^2\) enstrophy-gradient bound on the collar.  The proof is only
Cauchy-Schwarz plus the fixed-cutoff commutator bound.

## 4. Consequence for the curl-source atom

In the residual split, the curl-source contribution is

\[
C_\eta(s)
:=
\|\eta\omega(s)\|_{L^2}
\|\eta\nabla\times N(s)\|_{L^2}.
\tag{CCE.12}
\]

With same-carrier vorticity height

\[
\sup_j\sup_{-1\le s\le0}
\|\eta\omega_j(s)\|_{L^2}
\le
X_*<\infty,
\tag{CCE.13}
\]

the localized vorticity residual note gives

\[
\int_{-\theta}^{0}C_{\eta,j}(s)\,ds
\le
X_*Y_*\theta^{1/2}
+X_*
\int_{-\theta}^{0}B_{\eta,j}^\omega(s)\,ds,
\tag{CCE.14}
\]

provided

\[
\sup_j
\int_{-1}^{0}
\|(\partial_s-\nu\Delta)(\eta\omega_j)(s)\|_{L^2}^2\,ds
\le
Y_*^2<\infty.
\tag{CCE.15}
\]

Combining `(CCE.10)` and `(CCE.14)` gives

\[
\int_{-\theta}^{0}C_{\eta,j}(s)\,ds
\le
X_*Y_*\theta^{1/2}
+X_*C_{\eta,\nu}D_*^{1/2}\theta^{1/2}.
\tag{CCE.16}
\]

Hence the curl-source endpoint atom is excluded under the combined residual and
collar \(L_s^2\) controls.

## 5. Retained collar atom readout

Suppose instead the collar branch survives on windows
\(\theta_j\downarrow0\):

\[
\int_{-\theta_j}^{0}
B_{\eta,j}^\omega(s)\,ds
\ge
b_0>0.
\tag{CCE.17}
\]

Using `(CCE.7)` and Cauchy-Schwarz,

\[
b_0
\le
C_{\eta,\nu}
\int_{-\theta_j}^{0}
Z_{\eta,\mathrm{coll},j}(s)\,ds
\le
C_{\eta,\nu}\theta_j^{1/2}
\left(
\int_{-\theta_j}^{0}
Z_{\eta,\mathrm{coll},j}(s)^2\,ds
\right)^{1/2}.
\tag{CCE.18}
\]

Therefore

\[
\boxed{
\int_{-\theta_j}^{0}
Z_{\eta,\mathrm{coll},j}(s)^2\,ds
\ge
{b_0^2\over C_{\eta,\nu}^2\,\theta_j}.
}
\tag{CCE.19}
\]

If the collar branch is the alternative forced by a curl-source atom of mass
\(a_0\), then the residual split gives

\[
b_0={a_0\over 2X_*},
\tag{CCE.20}
\]

and therefore

\[
\boxed{
\int_{-\theta_j}^{0}
Z_{\eta,\mathrm{coll},j}(s)^2\,ds
\ge
{a_0^2\over
4C_{\eta,\nu}^2X_*^2\,\theta_j}.
}
\tag{CCE.21}
\]

So a retained collar atom forces the same \(\theta_j^{-1}\) square-action
blowup as the residual alternative, but now on the collar
\(\omega,\nabla\omega\) quantity.

## 6. Finite-rung meaning

On a fixed normalized chart, vorticity and its first derivative are controlled
by two spatial derivatives of velocity.  If \(\eta_2\in C_c^\infty(B_R)\) is a
larger cutoff with \(\eta_2\equiv1\) on \(\operatorname{supp}\eta_1\), then

\[
Z_{\eta,\mathrm{coll}}(s)
\le
C_\eta\|\eta_2 v(s)\|_{H^2(B_R)}.
\tag{CCE.22}
\]

Thus a collar atom is a finite-rung readout.  In particular, `(CCE.17)` implies

\[
\operatorname*{ess\,sup}_{-\theta_j\le s\le0}
\|\eta_2v_j(s)\|_{H^2(B_R)}
\ge
{b_0\over C_{\eta,\nu}C_\eta\,\theta_j}.
\tag{CCE.23}
\]

Equivalently, the retained collar atom cannot coexist with a uniform fixed-chart
\(H^2\) height bound on that terminal collar.

## 7. Why this is not supplied by local energy

The local energy inequality controls the energy level

\[
v\in L_s^\infty L_y^2,
\qquad
\nabla v\in L_s^2L_y^2
\tag{CCE.24}
\]

on localized charts.  It does not control

\[
\nabla\omega\in L_s^2L_y^2,
\tag{CCE.25}
\]

which is the \(H^2\)-level part of `\(Z_{\eta,\mathrm{coll}}\)`.

Therefore `(CCE.9)` is a real additional hypothesis.  It is not produced by
viscosity alone, and it is not a consequence of the basic local energy ledger.

## Verdict

The collar branch has the exact status:

\[
\boxed{
\text{same-collar }L_s^2\text{ control of }\omega,\nabla\omega
\Longrightarrow
\text{collar endpoint UI.}
}
\tag{CCE.26}
\]

Conversely,

\[
\boxed{
\text{retained collar atom}
\Longrightarrow
\theta_j^{-1}\text{ collar enstrophy-gradient square action}
\Longrightarrow
\text{finite-rung }H^2\text{ readout.}
}
\tag{CCE.27}
\]

This closes only the collar bookkeeping left by the vorticity residual split.
It does not prove the unweighted selected-carrier reserve and does not solve the
forward-gold theorem.
