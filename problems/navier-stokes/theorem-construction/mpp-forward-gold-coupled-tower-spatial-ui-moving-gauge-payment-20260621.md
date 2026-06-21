---
ns_viewer:
  theorem_id: forward-gold-coupled-tower-spatial-ui-moving-gauge-payment-20260621
  status: exact-conditional-payment-installed-forward-gold-not-proved
  proof_role: forward_gold_coupled_tower_spatial_ui_bridge
  logical_landing_node: coupled_tower_spatial_ui_to_moving_gauge_payment
  edge_effect: >-
    Proves the exact pass-side bridge from a surviving positive coupled tower
    radius to spatial uniform integrability of the selected carrier. If the
    selected carrier has a finite-order local density controlled by the same
    localized H^sigma tower with sigma>3/2, then positive tower radius gives
    an L_infty spacetime density bound. Consequently the moving-gauge defect
    is paid by C times |E_j^gauge|. This closes only the density side; it still
    requires geometric smallness or summability of |E_j^gauge|. Without that
    geometric tail-smallness input, tower regularity gives bounded density but not
    small moving-gauge mass. If the same tower survives as a CM Field readout,
    it is continuation-strength H^s, s>5/2, not an independent source-square
    producer.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-symmetric-difference-payment-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-source-square-spatial-domination-noalias-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-mixed-tower-radius-lower-bound-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-coupled-mixed-tower-radius-spend-identity-20260621.md
  downstream_consequence: >-
    Do not treat coupled tower/radius language as a free source-square producer.
    Positive radius pays the moving-gauge set only after the selected carrier is
    a finite-order same-tower density and the geometric defect volume is tail-small
    or summable. Failure of the radius returns to SummableRadiusSpend.A versus
    ControlledCoupledTowerRadiusCollapse.A. Survival of enough tower as Field is
    CM continuation/readout strength.
---

# MPP Forward-Gold Coupled Tower Spatial UI Moving-Gauge Payment

Date: 2026-06-21

## Status

This note is the spatial counterpart of the endpoint-time tower bridge.  It
answers the exact question left by the moving-gauge no-alias note:

\[
\boxed{
\text{Does coupled tower radius supply spatial UI on }E_j^{gauge}?
}
\tag{TSU.1}
\]

Answer: yes, conditionally, but only as a density bridge.  Positive tower radius
gives an \(L^\infty\) bound for finite-order selected carrier densities.  The
moving-gauge mass is then controlled by the geometric size of the moving-gauge
set.  The tower does not by itself make that geometric set small.

## 1. Selected carrier density

Let the controlled moving-gauge set be

\[
E_j^{gauge}
=
\Delta_j^{gauge}\cap\Omega_j .
\tag{TSU.2}
\]

Assume the selected positive carrier is absolutely continuous on \(\Omega_j\):

\[
d\mu_j=\rho_j(s,y)\,dy\,ds,
\qquad
\rho_j\ge0.
\tag{TSU.3}
\]

For the native strain/vorticity carrier, this density has the model form

\[
\rho_j(s,y)
=
\left[
\left\langle
\Sigma_j^{loc}(s,y)\omega_j^{sel}(s,y),
\omega_j^{sel}(s,y)
\right\rangle
\right]_+ .
\tag{TSU.4}
\]

The only structural assumption used below is finite-order same-tower control:
there are \(\sigma>3/2\), an integer \(K\), and \(C_{\mathrm{sel}}<\infty\),
independent of \(j\), such that

\[
\|\rho_j\|_{L^\infty(\Omega_j)}
\le
C_{\mathrm{sel}}
\left(
\sup_{s\in[-1,0]}
\sum_{|\alpha|\le K}
\|\chi\,\partial_y^\alpha v_j(s)\|_{H^\sigma_y}
\right)^3 .
\tag{TSU.5}
\]

This is the exact carrier-typing hypothesis.  It says the selected density is a
finite-order local functional of the same rescaled field, not a separate hidden
measure.

## 2. Positive coupled tower radius gives bounded density

Use the localized coupled tower energy

\[
\mathcal E_{j,\chi}^{(\sigma)}(\tau,\rho;s)
=
{1\over2}
\sum_{m,\alpha}
{\tau^{2m}\rho^{2|\alpha|}\over(m!)^2(\alpha!)^2}
\|\chi\,\partial_s^m\partial_y^\alpha v_j(s)\|_{H^\sigma_y}^2 .
\tag{TSU.6}
\]

Assume positive tower radius survives:

\[
\exists \tau_*>0,\ \rho_*>0,\ E_*<\infty,\ J
\quad\text{such that}\quad
\sup_{j\ge J}\sup_{-1\le s\le0}
\mathcal E_{j,\chi}^{(\sigma)}(\tau_*,\rho_*;s)
\le E_* .
\tag{TSU.7}
\]

Taking the terms with \(m=0\) and \(|\alpha|\le K\) gives

\[
\sup_{j\ge J}\sup_{-1\le s\le0}
\sum_{|\alpha|\le K}
\|\chi\,\partial_y^\alpha v_j(s)\|_{H^\sigma_y}
\le
C_{K,\rho_*}E_*^{1/2},
\tag{TSU.8}
\]

where one may take

\[
C_{K,\rho_*}
=
\sqrt2\sum_{|\alpha|\le K}\rho_*^{-|\alpha|}.
\tag{TSU.9}
\]

Combining `(TSU.5)` and `(TSU.8)` gives the same-carrier density bound

\[
\boxed{
\sup_{j\ge J}\|\rho_j\|_{L^\infty(\Omega_j)}
\le
C_{\mathrm{sp}}
:=
C_{\mathrm{sel}}\left(C_{K,\rho_*}E_*^{1/2}\right)^3 .
}
\tag{TSU.10}
\]

## 3. Moving-gauge payment from density plus geometry

By `(TSU.10)`,

\[
\mu_j(E_j^{gauge})
=
\int_{E_j^{gauge}}\rho_j(s,y)\,dy\,ds
\le
C_{\mathrm{sp}}\,|E_j^{gauge}|.
\tag{TSU.11}
\]

Since \(E_j^{gauge}\subset\Delta_j^{gauge}\), the geometric estimate from the
moving-gauge criterion gives

\[
|E_j^{gauge}|
\le
|\Delta_j^{gauge}|
\le
C\lambda_j^4\min\{|b_j|,\lambda_j\}.
\tag{TSU.12}
\]

Therefore

\[
\boxed{
\mu_j(E_j^{gauge})
\le
C_{\mathrm{sp}}C
\lambda_j^4\min\{|b_j|,\lambda_j\}.
}
\tag{TSU.13}
\]

This proves the conditional spatial-UI bridge:

\[
\boxed{
\text{positive coupled tower radius}
+
\text{finite-order same-tower carrier density}
+
\text{geometric tail-smallness of }E_j^{gauge}
\Longrightarrow
\text{moving-gauge defect payment.}
}
\tag{TSU.14}
\]

For summable payment, the exact condition is

\[
\sum_j\lambda_j^4\min\{|b_j|,\lambda_j\}<\infty .
\tag{TSU.15}
\]

For tail-small replacement, the exact condition is

\[
\lambda_j^4\min\{|b_j|,\lambda_j\}\to0
\quad\text{on the retained tail.}
\tag{TSU.16}
\]

## 4. What the tower does not supply

The tower estimate supplies density control.  It does not supply the geometric
no-drift condition.

For example, if \(\lambda_j\equiv1/2\) and \(|b_j|\ge c>0\), then

\[
\lambda_j^4\min\{|b_j|,\lambda_j\}\ge c_0>0
\tag{TSU.17}
\]

after adjusting \(c_0\) to the dimensional constants.  In that case `(TSU.13)`
only gives boundedness of the defect mass.  It does not give smallness or
summability.

Thus tower/radius survival does not replace the moving-gauge geometry problem.
It pays the density side of the defect, while the geometry still asks for

\[
\lambda_j^4\min\{|b_j|,\lambda_j\}\to0
\quad\text{or}\quad
\sum_j\lambda_j^4\min\{|b_j|,\lambda_j\}<\infty,
\tag{TSU.18}
\]

or for an explicit collar/legal/readout charge when that fails.

## 5. Relation to Field/readout

The same tower regularity is continuation-strength when it is promoted to the
CM Field readout.  In the installed CM participation-field record grammar, a retained
\(H^s\)-readout with

\[
s>5/2
\tag{TSU.19}
\]

gives local Navier-Stokes continuation past the alleged terminal time.  Therefore
a branch that keeps Pack and Part and also keeps that Field readout cannot remain
a finite-time failure witness.

So the tower has two exact uses:

\[
\boxed{
\text{positive tower radius with the finite-order carrier bound}
\Longrightarrow
\text{same-carrier spatial/time UI, modulo geometric tail-smallness,}
}
\tag{TSU.20}
\]

and

\[
\boxed{
\text{positive tower radius at Field/readout strength after CM admission}
\Longrightarrow
\text{continuation contradiction.}
}
\tag{TSU.21}
\]

Neither use proves the missing radius survival theorem.  The radius-production
burden remains the one already isolated:

\[
\boxed{
\text{SummableRadiusSpend.A}
\quad\text{or}\quad
\text{ControlledCoupledTowerRadiusCollapse.A.}
}
\tag{TSU.22}
\]

## Verdict

Coupled tower radius is a real conditional payment mechanism for the
moving-gauge spatial defect, but it is not a free source-square replacement.

\[
\boxed{
\text{tower radius}
\Longrightarrow
\text{bounded selected-carrier density}
\Longrightarrow
\mu_j(E_j^{gauge})\le C|E_j^{gauge}|.
}
\tag{TSU.23}
\]

The remaining unpaid parts are exact:

\[
\boxed{
\text{produce the tower radius, and produce geometric tail-smallness
of }E_j^{gauge}.
}
\tag{TSU.24}
\]

Failure of the tower radius returns to the terminal radius-collapse branch; failure
of geometric tail-smallness remains a visible moving-gauge/collar/readout defect
or the MinimalZenoProfileProduction.A problem.
