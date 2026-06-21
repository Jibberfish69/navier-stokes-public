---
ns_viewer:
  theorem_id: forward-gold-coupled-tower-to-source-square-upgrade-direct-test-20260621
  status: direct-test-complete-coupled-tower-does-not-produce-source-square
  proof_role: forward_gold_coupled_tower_source_square_upgrade_boundary
  logical_landing_node: coupled_tower_to_same_carrier_square_reserve
  edge_effect: "Tests the exact upgrade from Thomas's coupled rescaled velocity-pressure-incompressibility tower to the same-carrier source-square / unweighted terminal critical-action reserve. The upgrade is not supplied by the tower identity or cross-cylinder coupling alone. Positive mixed-tower radius gives selected endpoint UI, but not a summable unweighted square reserve across a Zeno chain. Canonical radius failure gives either a finite-rung readout or high-rung analytic tail failure; the high-rung tail does not dominate the finite-order selected carrier. The heat-scale carrier normal form has vanishing linear residence and summable physical/bare-coefficient cost while its unweighted selected square reserve stays order one. Therefore the coupled tower remains the correct participation language, but source-square still needs a genuine same-carrier square supplier, selected critical-strain/CKN Carleson, strict no-waste, signed saturation/no-free Zeno donor-chain control, or profile production."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-coupled-radius-collapse-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-rung-tail-to-selected-carrier-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-coefficient-square-budget-direct-test-20260620.md
  downstream_consequence: "Do not cite tower participation or cross-cylinder coupling as SourceSquareReserve.A. The tower fork is exact but weaker: surviving radius gives endpoint UI; failed radius gives finite-rung readout or high-rung tail. The unweighted same-carrier square reserve remains an additional theorem."
---

# MPP Forward-Gold Coupled Tower To Source-Square Upgrade Direct Test

Date: 2026-06-21

## Status

This note tests the precise upgrade:

\[
\boxed{
\text{coupled rescaled velocity-pressure-incompressibility tower}
\Longrightarrow
\text{same-carrier source-square reserve}.
}
\tag{CTQ.1}
\]

The upgrade is not supplied by current inputs. The coupled tower is the correct
participation language, but it is not yet the missing square-strength payment.

The exact result is:

\[
\boxed{
\text{tower participation controls the equation of the packet, not the
unweighted square cost of retaining a heat-scale terminal feed.}
}
\tag{CTQ.2}
\]

## 1. The tower currency and the square-reserve currency

On a normalized terminal heat cylinder, the mixed tower is

\[
W_{j,m,\alpha}
=
\partial_s^m\partial_y^\alpha v_j,
\qquad
Q_{j,m,\alpha}
=
\partial_s^m\partial_y^\alpha q_j.
\tag{CTQ.3}
\]

The localized mixed analytic tower energy is

\[
\mathcal E_{j,\eta}(\tau,\rho;s)
:=
{1\over2}
\sum_{m,\alpha}
{\tau^{2m}\rho^{2|\alpha|}
\over
(m!)^2(\alpha!)^2}
\int \eta^2|W_{j,m,\alpha}|^2 .
\tag{CTQ.4}
\]

The same-carrier source-square currency is different. In the physical shell
notation of the selected carrier, let

\[
\Phi_j^+(t)
:=
\int_{B_{r_j}}
\left[
\left\langle
S_{<j}^{loc}(t,x)w_j(t,x),w_j(t,x)
\right\rangle
\right]_+ dx.
\tag{CTQ.5}
\]

The unweighted heat-scale square reserve is

\[
\mathcal S_j
:=
\int_{T-r_j^2}^{T}
r_j^{-1}\bigl(\Phi_j^+(t)\bigr)^2\,dt .
\tag{CTQ.6}
\]

Formula `(CTQ.4)` is a derivative-tower regularity currency. Formula
`(CTQ.6)` is a same-carrier positive source currency. A bridge between them
must be proved; it is not a definition.

## 2. Positive tower radius gives endpoint UI, not square summability

The installed bridge proves that, if there are \(\tau_*>0\), \(\rho_*>0\),
and \(E_*<\infty\) such that

\[
\sup_j\sup_{-1\le s\le0}
\mathcal E_{j,\eta}(\tau_*,\rho_*;s)
\le E_*,
\tag{CTQ.7}
\]

then the normalized selected positive carrier \(a_j(s)\) has a uniform
\(L^\infty_s\) bound:

\[
0\le a_j(s)\le C_{\mathrm{UI}}.
\tag{CTQ.8}
\]

Therefore terminal strips obey

\[
\int_{-\theta}^{0}a_j(s)\,ds
\le C_{\mathrm{UI}}\theta,
\tag{CTQ.9}
\]

and endpoint UI follows.

This does not imply the Zeno-chain square reserve

\[
\sum_j
\int_{-1}^{0}a_j(s)^2\,ds
<\infty.
\tag{CTQ.10}
\]

Indeed, `(CTQ.8)` permits

\[
a_j(s)\equiv a_0>0
\quad\text{on }[-1,0],
\tag{CTQ.11}
\]

for every \(j\). Then `(CTQ.9)` holds on each normalized terminal strip, but

\[
\sum_j
\int_{-1}^{0}a_j(s)^2\,ds
=
\sum_j a_0^2
=\infty.
\tag{CTQ.12}
\]

This is a functional implication test, not a construction of a Navier-Stokes
Zeno chain under positive tower radius.  It records exactly what `(CTQ.7)`
proves: endpoint strip uniform integrability.  It does not prove summability
over infinitely many retained normalized windows.

So positive tower radius is an endpoint-atom killer. It is not, by itself, a
summable unweighted-action theorem across a retained Zeno chain.

## 3. Radius failure also does not produce the square reserve

Canonical coupled radius failure has the exact fork:

\[
\boxed{
\text{finite-rung failure}
\quad\text{or}\quad
\text{high-rung-only analytic tail failure}.
}
\tag{CTQ.13}
\]

The finite-rung branch is visible after the same object is admitted to the CM
witness test. It is a readout branch, not a square-reserve estimate.

The high-rung branch has the form

\[
\sup_j\int \eta^2|W_{j,m,\alpha}|^2<\infty
\quad
\text{for every fixed }(m,\alpha),
\tag{CTQ.14}
\]

while every positive factorial radius still fails:

\[
\forall \tau_*>0,\ \forall\rho_*>0,\qquad
\limsup_{j\to\infty}
\sup_s
\mathcal E_{j,\eta}(\tau_*,\rho_*;s)
=\infty.
\tag{CTQ.15}
\]

The installed high-rung-tail test shows that `(CTQ.15)` does not dominate the
finite-order selected carrier. A tiny high-frequency divergence-free packet can
make every fixed finite rung and every finite-order selected carrier small,
while forcing every positive analytic radius to fail.

Thus radius failure also does not supply `(CTQ.6)`.

## 4. The heat-scale carrier normal form

The exact scale obstruction is already visible on one selected heat packet.
Let

\[
\lambda=r^{-1},
\qquad
I_r=(T-r^2,T].
\tag{CTQ.16}
\]

Fix constants

\[
0<c_\alpha\le C_\alpha<\infty,
\qquad
0<c_E\le C_E<\infty,
\tag{CTQ.17}
\]

independent of \(r\).  The heat-clock equality carrier has coefficient and
shell energy bounded by

\[
c_\alpha\nu r^{-2}
\le
\alpha_+(t,x)
\le
C_\alpha\nu r^{-2},
\qquad
c_Er^{3/2}
\le
E(t)=\|w_j(t)\|_2^2
\le
C_Er^{3/2},
\tag{CTQ.18}
\]

on \(I_r\times B_r\).  Since
\(\Phi^+(t)=\int_{B_r}\alpha_+(t,x)|w_j(t,x)|^2\,dx\) in this normal form,
there are constants \(c_\Phi,C_\Phi>0\), independent of \(r\), such that

\[
c_\Phi\nu r^{-1/2}
\le
\Phi^+(t)
\le
C_\Phi\nu r^{-1/2}.
\tag{CTQ.19}
\]

Its linear residence vanishes:

\[
c_\Phi\nu r^{3/2}
\le
\int_{I_r}\Phi^+(t)\,dt
\le
C_\Phi\nu r^{3/2}
\longrightarrow0.
\tag{CTQ.20}
\]

Its unweighted selected square reserve stays order one:

\[
c_\Phi^2\nu^2
\le
\int_{I_r}
r^{-1}\bigl(\Phi^+(t)\bigr)^2\,dt
\le
C_\Phi^2\nu^2.
\tag{CTQ.21}
\]

Meanwhile the bare coefficient-square cost is radius-discounted:

\[
c_{\alpha,2}\nu^2 r
\le
\int_{I_r}\int_{B_r}\alpha_+(t,x)^2\,dx\,dt
\le
C_{\alpha,2}\nu^2 r
\tag{CTQ.22}
\]

for constants \(c_{\alpha,2},C_{\alpha,2}>0\).  The physical dissipation of
the shell is also summably small at this scale.  With

\[
D(t)=r^{-2}E(t),
\tag{CTQ.23}
\]

one has

\[
c_Er^{3/2}
\le
\int_{I_r}D(t)\,dt
\le
C_Er^{3/2}.
\tag{CTQ.24}
\]

Thus a dyadic terminal chain can have

\[
\sum_j
\int_{I_{r_j}}\int_{B_{r_j}}\alpha_+^2
<\infty,
\qquad
\sum_j
\int_{I_{r_j}}D(t)\,dt
<\infty,
\tag{CTQ.25}
\]

while

\[
\sum_j
\int_{I_{r_j}}
r_j^{-1}\bigl(\Phi_j^+(t)\bigr)^2\,dt
=\infty.
\tag{CTQ.26}
\]

This is not asserted to be an exact Navier-Stokes solution. It is the exact
scaling normal form showing why the desired estimate cannot be derived from
physical first-moment energy, bare coefficient square, or the tower law alone.

## 5. What cross-cylinder coupling fixes

The mixed tower coupling is exact:

\[
W_{j+1,m,\alpha}(s,y)
=
\lambda_j^{2m+|\alpha|+1}
W_{j,m,\alpha}(\lambda_j^2s,\lambda_j y).
\tag{CTQ.27}
\]

This prevents treating nested cylinders as independent arbitrary packets. They
are the same solution in different heat-scale frames.

But this coupling preserves the same physical discount. For the base gradient
action,

\[
\int_{T-r_j^2}^{T}
\int_{B_{r_j}}
|\nabla_x u|^2\,dx\,dt
=
r_j
\int_{-1}^{0}
\int_{B_1}
|\nabla_y v_j|^2\,dy\,ds.
\tag{CTQ.28}
\]

So physical energy controls

\[
\sum_j r_j A_j<\infty,
\tag{CTQ.29}
\]

not

\[
\sum_j A_j<\infty.
\tag{CTQ.30}
\]

The cross-cylinder law says how the same tower transforms. It does not create
the missing factor \(r_j^{-1}\) needed by the selected square reserve.

## Verdict

The coupled tower gives the correct equation-level participation law:

\[
\boxed{
\text{rescale first, then the velocity, pressure, viscosity, incompressibility,
and derivative rungs remain coupled across cylinders.}
}
\tag{CTQ.31}
\]

The exact no-upgrade result is:

\[
\boxed{
\text{this coupled tower law does not by itself produce the same-carrier
source-square reserve.}
}
\tag{CTQ.32}
\]

The remaining non-aliased suppliers are still:

\[
\boxed{
\begin{gathered}
\text{SourceSquareReserve.A plus carrier domination},\\
\text{SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{SelectedPositivePolarSaturation.A plus NoFreeTerminalZenoDonorChain.A},\\
\text{or MinimalZenoProfileProduction.A.}
\end{gathered}
}
\tag{CTQ.33}
\]
