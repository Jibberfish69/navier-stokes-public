---
ns_viewer:
  theorem_id: forward-gold-curl-source-vorticity-parabolic-residual-boundary-20260621
  status: exact-curl-source-residual-boundary-installed-not-production
  proof_role: forward_gold_curl_source_residual_reduction_and_field_readout
  logical_landing_node: curl_source_vorticity_parabolic_residual_boundary
  edge_effect: "Refines the curl-source branch using the exact vorticity equation. In heat-scale variables with N=-P div(v tensor v), curl N=(partial_s-nu Delta)omega. After localization, eta curl N=(partial_s-nu Delta)(eta omega)+nu(Delta eta)omega+2nu grad eta dot grad omega. Thus curl-source endpoint UI follows from same-carrier vorticity height, L_s^2 L_y^2 control of the localized vorticity heat residual, and endpoint UI of the collar commutator. Conversely, a retained curl-source atom forces either residual square action at least c theta^{-1}, or a collar/enstrophy-gradient atom. This is an exact residual/readout reduction; it does not produce the residual square bound from energy."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-curl-source-endpoint-ui-finite-rung-readout-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-duhamel-terminal-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-carrier-curl-source-transport-criterion-20260621.md
  downstream_consequence: "Do not treat curl-source control as a free consequence of viscosity. It is a same-carrier vorticity parabolic-residual or maximal-regularity theorem plus cutoff-collar payment. Current energy/enstrophy inputs do not supply that L_s^2 L_y^2 residual bound, so the branch remains a readout or returns to unweighted critical-action/source-square/no-waste/profile production."
---

# MPP Forward-Gold Curl-Source Vorticity Parabolic Residual Boundary

Date: 2026-06-21

## Status

This note refines the curl-source half of the native-carrier split.  It does not
linearize Navier--Stokes and it does not use heat smoothing as a substitute for
the nonlinear equation.

The point is exact:

\[
\boxed{
\nabla\times N
=
(\partial_s-\nu\Delta)\omega
}
\tag{CVR.1}
\]

in terminal heat-scale variables.  Therefore a proof that kills the curl-source
endpoint atom is a same-carrier vorticity parabolic-residual theorem, with
localization commutators included.

## 1. Exact global identity

On a terminal heat-scale chart,

\[
\partial_s v+(v\cdot\nabla)v+\nabla q
=
\nu\Delta v,
\qquad
\nabla\cdot v=0.
\tag{CVR.2}
\]

Let

\[
N:=-\mathbb P\nabla\cdot(v\otimes v).
\tag{CVR.3}
\]

Applying the Leray projection gives

\[
\partial_s v-\nu\Delta v=N.
\tag{CVR.4}
\]

Taking curl and writing \(\omega=\nabla\times v\),

\[
\boxed{
\partial_s\omega-\nu\Delta\omega
=
\nabla\times N.
}
\tag{CVR.5}
\]

This is the same identity as

\[
\nabla\times N
=
S\omega-(v\cdot\nabla)\omega,
\tag{CVR.6}
\]

because the vorticity equation is

\[
\partial_s\omega+(v\cdot\nabla)\omega
=
S\omega+\nu\Delta\omega.
\tag{CVR.7}
\]

No approximation is being made.  The curl-source term is exactly the heat
residual of vorticity.

## 2. Local selected-carrier identity

Let \(\eta\in C_c^\infty(B_R)\).  Define the localized vorticity heat residual

\[
R_{\eta}^{\omega}
:=
(\partial_s-\nu\Delta)(\eta\omega).
\tag{CVR.8}
\]

Since \(\eta\) is time-independent here,

\[
R_{\eta}^{\omega}
=
\eta(\partial_s-\nu\Delta)\omega
-\nu(\Delta\eta)\omega
-2\nu\nabla\eta\cdot\nabla\omega.
\tag{CVR.9}
\]

Using `(CVR.5)`,

\[
\boxed{
\eta\nabla\times N
=
R_\eta^\omega
+\nu(\Delta\eta)\omega
+2\nu\nabla\eta\cdot\nabla\omega.
}
\tag{CVR.10}
\]

Thus the localized curl-source is not just the localized heat residual.  The
cutoff collar must also be paid.

Set

\[
B_\eta^\omega(s)
:=
\nu\|(\Delta\eta)\omega(s)\|_{L^2}
+2\nu\|\nabla\eta\cdot\nabla\omega(s)\|_{L^2}.
\tag{CVR.11}
\]

Then

\[
\|\eta\nabla\times N(s)\|_{L^2}
\le
\|R_\eta^\omega(s)\|_{L^2}
+B_\eta^\omega(s).
\tag{CVR.12}
\]

This is the exact local identity that replaces any loose appeal to viscosity or
heat smoothing.

## 3. Endpoint UI criterion

Recall the curl-source contribution

\[
C_\eta(s)
:=
\|\eta\omega(s)\|_{L^2}
\|\eta\nabla\times N(s)\|_{L^2}.
\tag{CVR.13}
\]

For a terminal sequence, assume same-carrier vorticity height

\[
\sup_j\sup_{-1\le s\le0}
\|\eta\omega_j(s)\|_{L^2}
\le
X_*<\infty,
\tag{CVR.14}
\]

localized vorticity residual square control

\[
\sup_j
\int_{-1}^{0}
\|R_{\eta,j}^{\omega}(s)\|_{L^2}^2\,ds
\le
Y_*^2<\infty,
\tag{CVR.15}
\]

and collar endpoint UI

\[
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}B_{\eta,j}^\omega(s)\,ds
=0.
\tag{CVR.16}
\]

Then `(CVR.12)` gives

\[
\begin{aligned}
\int_{-\theta}^{0}C_{\eta,j}(s)\,ds
&\le
X_*
\int_{-\theta}^{0}
\|R_{\eta,j}^{\omega}(s)\|_{L^2}\,ds
+X_*
\int_{-\theta}^{0}
B_{\eta,j}^\omega(s)\,ds\\
&\le
X_*Y_*\theta^{1/2}
+X_*
\int_{-\theta}^{0}
B_{\eta,j}^\omega(s)\,ds.
\end{aligned}
\tag{CVR.17}
\]

Therefore

\[
\boxed{
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}C_{\eta,j}(s)\,ds=0.
}
\tag{CVR.18}
\]

So the curl-source atom is excluded by a same-carrier vorticity
maximal-regularity bound plus collar payment.

## 4. Retained atom readout

Suppose instead that a curl-source endpoint atom survives on
\(\theta_j\downarrow0\):

\[
\int_{-\theta_j}^{0}C_{\eta,j}(s)\,ds
\ge
a_0>0.
\tag{CVR.19}
\]

Under the vorticity height `(CVR.14)`, `(CVR.17)` implies

\[
a_0
\le
X_*
\int_{-\theta_j}^{0}
\|R_{\eta,j}^{\omega}(s)\|_{L^2}\,ds
+X_*
\int_{-\theta_j}^{0}
B_{\eta,j}^{\omega}(s)\,ds.
\tag{CVR.20}
\]

Thus at least one of the following alternatives holds along a subsequence:

\[
\int_{-\theta_j}^{0}
B_{\eta,j}^{\omega}(s)\,ds
\ge
{a_0\over 2X_*},
\tag{CVR.21}
\]

or

\[
\int_{-\theta_j}^{0}
\|R_{\eta,j}^{\omega}(s)\|_{L^2}\,ds
\ge
{a_0\over 2X_*}.
\tag{CVR.22}
\]

In the second case, Cauchy-Schwarz gives

\[
\boxed{
\int_{-\theta_j}^{0}
\|R_{\eta,j}^{\omega}(s)\|_{L^2}^2\,ds
\ge
{a_0^2\over 4X_*^2\,\theta_j}.
}
\tag{CVR.23}
\]

Therefore a retained curl-source atom forces either a collar/enstrophy-gradient
atom or a localized vorticity heat-residual square blowup at the same
\(\theta_j^{-1}\) rate.

If the height `(CVR.14)` fails, the packet already gives an enstrophy-height
Field readout.

## 5. Why this is not supplied by current energy

The local energy inequality gives energy-level control of \(v\) and
\(\nabla v\).  It does not give

\[
R_\eta^\omega
=(\partial_s-\nu\Delta)(\eta\omega)
\quad\text{in }L_s^2L_y^2.
\tag{CVR.24}
\]

Equivalently, the vorticity equation writes this residual as

\[
R_\eta^\omega
=
\eta\left(S\omega-(v\cdot\nabla)\omega\right)
-\nu(\Delta\eta)\omega
-2\nu\nabla\eta\cdot\nabla\omega,
\tag{CVR.25}
\]

which contains the same native stretching and transport terms that caused the
endpoint problem.  Treating `(CVR.24)` as free maximal regularity would assume
the missing square-strength source control.

This is also the local version of the exact Duhamel boundary already recorded:
the heat operator can smooth material born earlier, but a terminal residual
layer has vanishing heat time before the endpoint is tested.

## Verdict

The curl-source production problem has the exact form

\[
\boxed{
\text{prove same-carrier }L_s^2L_y^2\text{ control of }
(\partial_s-\nu\Delta)(\eta\omega)
\text{ plus collar payment.}
}
\tag{CVR.26}
\]

Without that theorem, the branch is not closed.  A surviving curl-source atom is
not invisible: it becomes one of

\[
\boxed{
\text{vorticity-height failure, collar/enstrophy-gradient atom, or localized
vorticity residual square blowup.}
}
\tag{CVR.27}
\]

This is a readout/reduction theorem, not the forward-gold source-square or
no-waste producer itself.
