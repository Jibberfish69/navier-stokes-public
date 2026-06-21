---
ns_viewer:
  theorem_id: forward-gold-same-carrier-ui-sparse-gauge-defect-summability-20260621
  status: exact-same-carrier-ui-sparse-gauge-defect-payment-installed-forward-gold-not-proved
  proof_role: forward_gold_same_carrier_ui_sparse_gauge_defect_payment
  logical_landing_node: same_carrier_ui_sparse_gauge_defect_summability
  edge_effect: >-
    Proves the sparse summability step for the controlled moving-gauge
    symmetric-difference defect under a same-carrier spacetime uniform absolute
    continuity modulus. Given a fixed selected carrier family on a retained tail,
    if the carrier measures are uniformly absolutely continuous with respect to
    parabolic Lebesgue measure on the controlled parent domains, then the sparse
    scale gaps can be chosen so that every controlled gauge-defect mass is at
    most 2^{-k}. Hence the controlled same-carrier gauge defect is summable.
    This does not prove the UI modulus from Navier-Stokes; it identifies the
    exact payment supplied by such a modulus. Exterior parent-domain spill
    remains a separate legal/collar term.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-symmetric-difference-payment-criterion-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-gauge-scale-skipping-composite-geometry-summability-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-sparse-same-witness-carrier-custody-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-parent-domain-or-exterior-spill-reduction-20260621.md
  downstream_consequence: >-
    Do not leave the sparse gauge-defect payment vague once same-carrier UI is
    assumed. It is exactly paid by adaptive sparse scale selection. The remaining
    production burden is to prove same-carrier spacetime UI/source-square/CKN/
    strict no-waste/profile control for the actual selected native carrier, or
    to consume failure as moving-selector, exterior-spill, or CM Pack/Part/Field
    output after same-witness admission.
---

# MPP Forward-Gold Same-Carrier UI Sparse Gauge-Defect Summability

Date: 2026-06-21

## Status

This note proves the sparse summability part of the same-carrier density/UI
clause. It does not prove the uniform integrability itself.

The exact point is:

\[
\boxed{
\text{same selected carrier + spacetime UI}
\Longrightarrow
\text{sparse moving-gauge defect is summable}.
}
\tag{SUI.1}
\]

## 1. Same-carrier UI hypothesis

Let \(\mathcal I\) be a retained tail on which the same selected carrier family
is fixed. Let \(\mu_j\) be the corresponding nonnegative selected carrier
measure on a controlled parent domain \(\Omega_j\).

Assume uniform absolute continuity with respect to parabolic Lebesgue measure on
the controlled domains:

\[
\forall \varepsilon>0\ \exists \delta(\varepsilon)>0
\quad
|E|\le\delta(\varepsilon),\ E\subset\Omega_j
\Longrightarrow
\mu_j(E)\le\varepsilon
\quad
(j\in\mathcal I).
\tag{SUI.2}
\]

This is the same-carrier spacetime UI input. It may come from an \(L^p\) bound
with \(p>1\), an Orlicz/de la Vallee-Poussin bound, source-square domination,
CKN/critical-strain domination, strict no-waste, or another genuine supplier.
This note only uses `(SUI.2)`.

## 2. Controlled sparse gauge defect

For a sparse chain \(j_k\in\mathcal I\), write

\[
\Lambda_k:={r_{j_{k+1}}\over r_{j_k}},
\qquad
B_k:=O_{j_k}^{T}{x_{j_{k+1}}-x_{j_k}\over r_{j_k}}.
\tag{SUI.3}
\]

The controlled gauge symmetric-difference set is

\[
E_k^{gauge}
:=
\left[
\left(
B_{\Lambda_k}(B_k)\triangle B_{\Lambda_k}(0)
\right)
\times[-\Lambda_k^2,0]
\right]\cap\Omega_{j_k}.
\tag{SUI.4}
\]

The geometric estimate from the moving-gauge criterion gives a dimensional
constant \(C_0\) such that

\[
|E_k^{gauge}|
\le
C_0\Lambda_k^4\min\{|B_k|,\Lambda_k\}
\le
C_0\Lambda_k^5.
\tag{SUI.5}
\]

## 3. Adaptive sparse choice

For each \(k\), set

\[
\varepsilon_k:=2^{-k}.
\tag{SUI.6}
\]

Choose \(\delta_k:=\delta(\varepsilon_k)\) from `(SUI.2)`. Having chosen
\(j_k\), choose \(j_{k+1}\in\mathcal I\), \(j_{k+1}>j_k\), far enough down the
retained tail that

\[
C_0\Lambda_k^5\le\delta_k.
\tag{SUI.7}
\]

This is possible because \(r_j\downarrow0\) on every infinite retained tail, so
\(\Lambda_k=r_{j_{k+1}}/r_{j_k}\) can be made arbitrarily small.

Then `(SUI.5)` and `(SUI.7)` imply

\[
|E_k^{gauge}|\le\delta_k.
\tag{SUI.8}
\]

By uniform absolute continuity,

\[
\mu_{j_k}(E_k^{gauge})\le\varepsilon_k=2^{-k}.
\tag{SUI.9}
\]

Therefore

\[
\boxed{
\sum_{k=1}^{\infty}\mu_{j_k}(E_k^{gauge})
\le
\sum_{k=1}^{\infty}2^{-k}
<\infty.
}
\tag{SUI.10}
\]

This is the exact sparse gauge-defect payment under same-carrier UI.

## 4. Exterior spill is separate

The estimate above applies only to the controlled part
\(E_k^{gauge}\subset\Omega_{j_k}\). If the off-center child cylinder or centered
core has mass outside \(\Omega_{j_k}\), that mass is not paid by `(SUI.10)`.
It remains the exterior-spill/collar/legal term isolated in the parent-domain
reduction.

So the paid object is

\[
\mu_{j_k}\!\left(
\Omega_{j_k}\cap
\left[
\left(
B_{\Lambda_k}(B_k)\triangle B_{\Lambda_k}(0)
\right)
\times[-\Lambda_k^2,0]
\right]
\right),
\tag{SUI.11}
\]

not the uncontrolled exterior part.

## 5. Consequence for sparse custody

Combining this with the finite-menu selected-carrier heredity reduction gives:

\[
\boxed{
\begin{aligned}
&\text{same witness}\\
&+\text{fixed finite selected carrier menu}\\
&+\text{retained nonzero carrier/action/source quantity}\\
&+\text{same-carrier spacetime UI on controlled parent domains}\\
&+\text{controlled parent domain or paid exterior spill}
\end{aligned}
\Longrightarrow
\text{sparse fixed-carrier gauge defects are summably paid}.
}
\tag{SUI.12}
\]

The remaining mathematical burden is not the sparse geometry. It is the
production of same-carrier UI for the actual selected native carrier, or the
classification of failure as moving selector, exterior spill, profile/no-drift,
or CM Pack/Part/Field output after same-witness admission.

## Verdict

\[
\boxed{
\text{Same-carrier UI pays the sparse gauge-defect sum exactly.}
}
\tag{SUI.13}
\]

\[
\boxed{
\text{Current Navier-Stokes inputs still do not prove that UI supplier.}
}
\tag{SUI.14}
\]
