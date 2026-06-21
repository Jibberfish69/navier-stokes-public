---
ns_viewer:
  theorem_id: forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621
  status: bridge-proved-surviving-coupled-tower-radius-implies-selected-endpoint-ui
  proof_role: forward_gold_coupled_tower_endpoint_ui_bridge
  logical_landing_node: coupled_tower_radius_survival_to_endpoint_ui
  edge_effect: "Proves the pass-side bridge from a uniform positive coupled mixed-tower radius to selected carrier endpoint UI. If a positive radius pair tau,rho keeps the localized H^sigma coupled tower energy uniformly bounded on the whole normalized terminal window, then the normalized selected positive carrier is uniformly L_infty in rescaled time. Hence its terminal strip mass is bounded by C theta and endpoint UI follows. Therefore failure of endpoint UI forces failure of uniform coupled tower radius survival, modulo the fixed legal finite-order selected-carrier operator bounds."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-coupled-radius-collapse-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-endpoint-uniform-integrability-direct-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  downstream_consequence: "This closes the pass branch of the coupled-tower fork: positive uniform coupled tower radius rules out the terminal time-face selected-carrier atom. The remaining obstruction is exactly production of that uniform tower radius, or classification of its failure as finite-rung readout versus high-rung-only endpoint collapse."
---

# MPP Forward-Gold Coupled Tower Radius Survival Implies Endpoint UI

Date: 2026-06-21

## Status

This note proves the pass-side bridge:

\[
\boxed{
\text{uniform positive coupled tower radius on the terminal window}
\Longrightarrow
\text{SelectedCarrierEndpointUI.A}.
}
\tag{RSE.1}
\]

It does not prove that the radius survives. It proves that, if the coupled
velocity-pressure-incompressibility tower survives with a positive radius, then
the selected carrier cannot concentrate into a last-instant atom.

## 1. Normalized selected carrier

On a terminal heat-scale cylinder, write

\[
v_j(s,y)=r_j u(T+r_j^2s,x_j+r_jy),
\qquad
-1\le s\le0.
\tag{RSE.2}
\]

Let the normalized selected positive carrier be

\[
a_j(s)
:=
\int_{B_1}
\left[
\left\langle
\Sigma_j^{loc}(s,y)\,\Omega_j(s,y),
\Omega_j(s,y)
\right\rangle
\right]_+
dy.
\tag{RSE.3}
\]

Here \(\Sigma_j^{loc}\) and \(\Omega_j\) are the normalized selected strain and
vorticity-side fields used by the native carrier. The only structural
assumption used in this note is the fixed legal finite-order operator bound:
there are \(\sigma>3/2\) and \(C_{\mathrm{sel}}<\infty\), independent of \(j\),
such that

\[
\|\Sigma_j^{loc}(s)\|_{L^\infty(B_1)}
+\|\Omega_j(s)\|_{L^\infty(B_1)}
\le
C_{\mathrm{sel}}
\sum_{|\alpha|\le1}\|\chi\,\partial_y^\alpha v_j(s)\|_{H^\sigma_y},
\tag{RSE.4}
\]

where \(\chi\in C_c^\infty(B_2)\) satisfies \(\chi\equiv1\) on \(B_1\).

This is the fixed-carrier compatibility condition. It says the selected carrier
is a legal finite-order local functional of the same rescaled velocity field.

## 2. Uniform coupled tower radius survival

For \(\tau,\rho>0\), define the localized \(H^\sigma\) coupled tower energy

\[
\mathcal E^{(\sigma)}_{j,\chi}(\tau,\rho;s)
:=
{1\over2}
\sum_{m,\alpha}
{\tau^{2m}\rho^{2|\alpha|}\over(m!)^2(\alpha!)^2}
\|\chi\,\partial_s^m\partial_y^\alpha v_j(s)\|_{H^\sigma_y}^2.
\tag{RSE.5}
\]

Uniform coupled tower radius survival means

\[
\exists \tau_*>0,\ \exists\rho_*>0,\ \exists E_*<\infty,\ \exists J
\quad\text{such that}\quad
\sup_{-1\le s\le0}
\mathcal E^{(\sigma)}_{j,\chi}(\tau_*,\rho_*;s)
\le E_*
\quad\text{for all }j\ge J.
\tag{RSE.6}
\]

Taking the \((m,\alpha)=(0,0)\) and \((0,e_i)\) terms in `(RSE.5)` gives

\[
\sup_{j\ge J}\sup_{-1\le s\le0}
\sum_{|\alpha|\le1}
\|\chi\,\partial_y^\alpha v_j(s)\|_{H^\sigma_y}
\le
C_{\rho_*}\,E_*^{1/2},
\tag{RSE.7}
\]

where one may take

\[
C_{\rho_*}
=
\sqrt{2}\left(1+3\rho_*^{-1}\right).
\tag{RSE.8}
\]

## 3. Endpoint UI follows

By `(RSE.4)` and `(RSE.7)`,

\[
\sup_{j\ge J}\sup_{-1\le s\le0}
\left(
\|\Sigma_j^{loc}(s)\|_{L^\infty(B_1)}
+\|\Omega_j(s)\|_{L^\infty(B_1)}
\right)
\le
C_{\mathrm{sel}}C_{\rho_*}E_*^{1/2}.
\tag{RSE.9}
\]

Therefore

\[
0\le a_j(s)
\le
|B_1|\,
\|\Sigma_j^{loc}(s)\|_{L^\infty(B_1)}
\|\Omega_j(s)\|_{L^\infty(B_1)}^2
\le
C_{\mathrm{UI}},
\tag{RSE.10}
\]

with

\[
C_{\mathrm{UI}}
:=
|B_1|\left(C_{\mathrm{sel}}C_{\rho_*}E_*^{1/2}\right)^3.
\tag{RSE.11}
\]

Hence, for every \(0<\theta<1\),

\[
\sup_{j\ge J}
\int_{-\theta}^{0}a_j(s)\,ds
\le
C_{\mathrm{UI}}\theta.
\tag{RSE.12}
\]

The finitely many indices \(j<J\) do not affect the terminal limsup. Thus

\[
\lim_{\theta\downarrow0}
\limsup_{j\to\infty}
\int_{-\theta}^{0}a_j(s)\,ds
=0.
\tag{RSE.13}
\]

This is exactly `SelectedCarrierEndpointUI.A`.

## 4. Contrapositive use

The contrapositive is also exact:

\[
\boxed{
\neg\text{SelectedCarrierEndpointUI.A}
\Longrightarrow
\neg\text{uniform coupled tower radius survival}
}
\tag{RSE.14}
\]

for the same selected carrier and the same legal finite-order operator bound
`(RSE.4)`.

So a true terminal selected-carrier time-face atom must break the coupled tower
radius somewhere. It cannot coexist with a uniformly surviving positive
mixed-tower radius.

## 5. Jet-family consequence

Uniform radius survival also gives an exact bounded jet-generating family.
Define

\[
\mathcal G_j(\zeta,z;s)
:=
\sum_{m,\alpha}
{\zeta^m z^\alpha\over m!\,\alpha!}
\chi\,\partial_s^m\partial_y^\alpha v_j(s).
\tag{RSE.15}
\]

For

\[
|\zeta|<\tau_*,
\qquad
|z_i|<\rho_*,
\tag{RSE.16}
\]

Cauchy--Schwarz and `(RSE.6)` give

\[
\|\mathcal G_j(\zeta,z;s)\|_{H^\sigma_y}
\le
(2E_*)^{1/2}
\left(1-{|\zeta|^2\over\tau_*^2}\right)^{-1/2}
\prod_{i=1}^3
\left(1-{|z_i|^2\over\rho_*^2}\right)^{-1/2}.
\tag{RSE.17}
\]

Thus the formal localized jet-generating family is uniformly bounded on every
smaller complex polydisc. By the compact embedding

\[
H^\sigma_{\mathrm{loc}}\hookrightarrow H^{\sigma'}_{\mathrm{loc}},
\qquad
\sigma'<\sigma,
\tag{RSE.18}
\]

subsequences of the generated \(H^\sigma\)-valued jets are compact in
\(H^{\sigma'}_{\mathrm{loc}}\) on smaller spatial balls.

This is the exact compactness supplied by tower-radius survival. It gives a
bounded local jet compactness statement. It does not by itself identify those
jets with a single translated analytic profile, and it does not give
stationarity, no-drift, source-residue evacuation, or a Landau-class profile.

## Verdict

The coupled tower gives a real pass-side theorem:

\[
\boxed{
\text{positive uniform coupled radius}
\Longrightarrow
\text{no selected terminal time-face atom.}
}
\tag{RSE.19}
\]

The remaining unsolved part is production/classification of the radius itself:

\[
\boxed{
\text{prove uniform coupled tower radius survival}
\quad\text{or}\quad
\text{classify canonical radius failure as finite-rung readout or high-rung
endpoint collapse.}
}
\tag{RSE.20}
\]
