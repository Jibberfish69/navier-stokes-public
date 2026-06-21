---
ns_viewer:
  theorem_id: forward-gold-moving-gauge-symmetric-difference-payment-criterion-20260621
  status: exact-payment-criterion-installed-current-inputs-do-not-pay
  proof_role: forward_gold_moving_gauge_defect_payment_criterion
  logical_landing_node: moving_gauge_symmetric_difference_payment
  edge_effect: >-
    Gives the exact payment criterion for the moving-gauge defect exposed by the
    moving-gauge cross-cylinder compatibility split. The defect is the same-carrier
    mass of Delta_j^gauge=(B_lambda_j(b_j) triangle B_lambda_j(0)) x [-lambda_j^2,0].
    If the selected carrier has a same-carrier L^p spacetime density, p>1, then
    Holder pays the defect by |Delta_j^gauge|^(1-1/p), and the geometric bound
    |Delta_j^gauge| <= C lambda_j^4 min(|b_j|,lambda_j) gives an exact summability
    condition on any controlled carrier domain containing the symmetric-difference
    set. Exterior parent-window spill is a separate collar/legal term. Current
    inputs give finite L1 carrier visibility and time-trace endpoint tests, not
    this same-carrier spacetime uniform integrability. Thus
    moving-gauge drift is paid only by a new spatial/spacetime UI source-square/CKN/
    critical-strain/no-waste theorem or remains a visible selected-carrier drift
    defect.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-cross-cylinder-compatibility-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-ui-production-clause-recheck-20260620.md
  downstream_consequence: >-
    Do not treat finite carrier mass, endpoint time UI, or source-square as a
    moving-gauge payment unless they control the actual selected carrier on
    the controlled gauge symmetric-difference set. The exact supplier is
    same-carrier spacetime uniform integrability, a full selected source-square/
    CKN/critical-strain density domination on Delta_j^gauge after localization,
    strict no-waste, or profile/no-drift production.
---

# MPP Forward-Gold Moving Gauge Symmetric-Difference Payment Criterion

Date: 2026-06-21

## Status

This note continues the moving-gauge split. The previous note showed that the
child unit cylinder in a moving gauge is not the centered parent core. Before
parent-window localization, the exact defect is

\[
\Delta_j^{gauge}
=
\left(
B_{\lambda_j}(b_j)\triangle B_{\lambda_j}(0)
\right)
\times[-\lambda_j^2,0].
\tag{MGD.1}
\]

For a selected same-carrier measure \(\mu_j\), the fixed-chain replacement is
paid exactly when the controlled part of

\[
\mu_j(\Delta_j^{gauge})
\tag{MGD.2}
\]

is legal, summable, or tail-small. If part of \(\Delta_j^{gauge}\) lies outside
the parent window used by the carrier, that exterior part is not silently paid;
it must be routed as collar, boundary, or legal-spill mass.

The result here is:

\[
\boxed{
\text{finite }L^1\text{ carrier mass does not pay }(MGD.2);
\quad
\text{same-carrier spacetime uniform integrability does.}
}
\tag{MGD.3}
\]

## 1. Exact geometric size of the drift defect

Let \(0<\lambda\le1\), \(b\in\mathbb R^3\), and set

\[
\Delta(\lambda,b)
:=
\left(
B_\lambda(b)\triangle B_\lambda(0)
\right)
\times[-\lambda^2,0].
\tag{MGD.4}
\]

There is a dimensional constant \(C\) such that

\[
\left|
B_\lambda(b)\triangle B_\lambda(0)
\right|
\le
C\lambda^2\min\{|b|,\lambda\}.
\tag{MGD.5}
\]

Indeed, for \(|b|\le2\lambda\), the symmetric difference is contained in a
collar of thickness \(|b|\) around \(\partial B_\lambda\), whose volume is
bounded by \(C\lambda^2|b|\). For \(|b|>2\lambda\), the two balls are disjoint
or nearly disjoint and the symmetric difference is bounded by \(2|B_\lambda|\),
which is \(C\lambda^3=C\lambda^2\lambda\).

Multiplying by the time length \(\lambda^2\) gives

\[
\boxed{
|\Delta(\lambda,b)|
\le
C\lambda^4\min\{|b|,\lambda\}.
}
\tag{MGD.6}
\]

For the moving-gauge defect,

\[
|\Delta_j^{gauge}|
\le
C\lambda_j^4\min\{|b_j|,\lambda_j\}.
\tag{MGD.7}
\]

## 2. Same-carrier \(L^p\) payment

Let \(\Omega_j\) be the controlled spacetime region on which the selected carrier
is measured, and write
\[
E_j^{gauge}:=\Delta_j^{gauge}\cap\Omega_j .
\]
Any part of \(\Delta_j^{gauge}\setminus\Omega_j\) is a separate boundary,
collar, or legal-spill issue. The payment in this section concerns
\(E_j^{gauge}\).

Suppose the selected carrier is absolutely continuous on \(\Omega_j\):

\[
d\mu_j=f_j(s,y)\,dy\,ds,
\tag{MGD.8}
\]

with

\[
\|f_j\|_{L^p(\Omega_j)}\le C_p,
\qquad
p>1.
\tag{MGD.9}
\]

Then Hölder gives

\[
\mu_j(E_j^{gauge})
=
\int_{E_j^{gauge}} f_j
\le
\|f_j\|_{L^p(\Omega_j)}
|E_j^{gauge}|^{1-1/p}.
\tag{MGD.10}
\]

Since \(|E_j^{gauge}|\le|\Delta_j^{gauge}|\), `(MGD.7)` gives

\[
\boxed{
\mu_j(E_j^{gauge})
\le
C_p C^{1-1/p}
\left(
\lambda_j^4\min\{|b_j|,\lambda_j\}
\right)^{1-1/p}.
}
\tag{MGD.11}
\]

Therefore the controlled moving-gauge defect is summably paid if

\[
\sum_j
\left(
\lambda_j^4\min\{|b_j|,\lambda_j\}
\right)^{1-1/p}
<\infty.
\tag{MGD.12}
\]

The same argument works with Orlicz/de la Vallee-Poussin uniform integrability:
for every \(\varepsilon>0\), choose \(\delta>0\) such that

\[
|E|<\delta
\quad\Longrightarrow\quad
\sup_j\mu_j(E)<\varepsilon.
\tag{MGD.13}
\]

Then \(|\Delta_j^{gauge}|\to0\) implies

\[
\mu_j(E_j^{gauge})\to0.
\tag{MGD.14}
\]

This is the exact same-carrier spatial/spacetime UI payment.

## 3. Finite \(L^1\) carrier mass does not pay

Assume only

\[
\sup_j\mu_j(Q_1)\le M.
\tag{MGD.15}
\]

This gives no smallness on \(E_j^{gauge}\). For any \(a_0\le M\), define

\[
d\mu_j
=
{a_0\over|E_j^{gauge}|}
\mathbf 1_{E_j^{gauge}}\,dy\,ds
\tag{MGD.16}
\]

whenever \(E_j^{gauge}\subset Q_1\) and \(|E_j^{gauge}|>0\). Then

\[
\mu_j(Q_1)=a_0,
\qquad
\mu_j(E_j^{gauge})=a_0.
\tag{MGD.17}
\]

Thus finite carrier mass is compatible with an order-one moving-gauge defect at
every scale.

This is not a Navier-Stokes solution construction. It is the exact measure-level
counterexample to the implication

\[
\text{finite selected carrier mass}
\Longrightarrow
\text{moving-gauge defect payment}.
\tag{MGD.18}
\]

## 4. Relation to endpoint UI and source-square

Endpoint UI is a time-strip statement:

\[
\lim_{\theta\downarrow0}\limsup_j
\mu_j(Q_1\cap\{-\theta<s<0\})=0.
\tag{MGD.19}
\]

The moving-gauge defect is a spacetime symmetric-difference statement, localized
to the controlled carrier region:

\[
\mu_j\left(\Omega_j\cap
\left(B_{\lambda_j}(b_j)\triangle B_{\lambda_j}(0)\right)
\times[-\lambda_j^2,0]
\right).
\tag{MGD.20}
\]

Endpoint UI pays `(MGD.20)` only when the time length \(\lambda_j^2\) tends to
zero on the retained tail. It does not pay a dyadic adjacent-scale defect with
\(\lambda_j\equiv1/2\), where the normalized time length is \(1/4\).

Likewise, source-square pays the defect only if it controls the same carrier on
the actual symmetric-difference set. A time-density estimate of the form

\[
a_j(s)
\le
C G_j(s)+\ell_j(s)
\tag{MGD.21}
\]

pays terminal strips, but it does not by itself identify where inside the spatial
slice the moving-gauge symmetric difference sits. To pay `(MGD.20)`, one needs a
spacetime carrier domination such as

\[
d\mu_j
\le
C F_j(s,y)\,dy\,ds+d\ell_j,
\qquad
\sup_j\|F_j\|_{L^p(\Omega_j)}<\infty,
\quad p>1,
\tag{MGD.22}
\]

with \(\ell_j(E_j^{gauge})\) legal or tail-small.

The installed source-square-to-moving-trace bridge is therefore a consumer for
time endpoint atoms. It is not automatically a moving-gauge symmetric-difference
payment.

## 5. Consequence for the moving-gauge branch

The moving-gauge fork sharpens to:

\[
\boxed{
\text{same-carrier spacetime UI on }E_j^{gauge}
\Longrightarrow
\text{fixed-chain annular/nested-core analysis applies modulo legal error.}
}
\tag{MGD.23}
\]

Without that payment,

\[
\boxed{
\mu_j(E_j^{gauge})\not\to0
\Longrightarrow
\text{visible selected-carrier drift/gauge defect.}
}
\tag{MGD.24}
\]

If the defect is paid and the recurrent branch still survives, the remaining
burden is exactly the one already isolated:

\[
\boxed{
\text{paid moving-gauge recurrence}
\Longrightarrow
\text{ZenoNoDriftUniqueTangent.A or MinimalZenoProfileProduction.A.}
}
\tag{MGD.25}
\]

## Verdict

The moving-gauge symmetric-difference defect has a precise payment theorem:

\[
\boxed{
L^p\text{ same-carrier spacetime density, }p>1,
\text{ pays the controlled defect by Hölder; finite }L^1\text{ mass does not.}
}
\tag{MGD.26}
\]

Current checked inputs do not supply `(MGD.9)` or `(MGD.22)` for the actual
selected positive native carrier. So this branch does not close forward-gold.
It reduces the moving-gauge obstruction to the same non-aliased supplier cloud:
same-carrier source-square with spatial carrier domination, normalized CKN or
critical-strain spacetime UI, strict no-waste, signed saturation/no-free Zeno,
or profile/no-drift production.
