---
ns_viewer:
  theorem_id: forward-gold-selected-coefficient-overrun-critical-factor-ui-bridge-20260621
  status: exact-overrun-consumer-bridge-installed-production-not-proved
  proof_role: forward_gold_selected_coefficient_overrun_payment_bridge
  logical_landing_node: selected_coefficient_overrun_payment_wall
  edge_effect: >-
    Installs the exact consumer bridge for the overrun term isolated by the
    selected source-square carrier-domination failure split. The overrun carrier
    is paid if, on the same selected overrun layer, either the coefficient-side
    critical strain factor has endpoint tail depletion and the velocity-side
    critical factor is uniformly bounded, or the velocity-side factor has
    endpoint tail depletion and the coefficient-side factor is uniformly
    bounded. The bridge uses the sharp L^(5/2)-L^(10/3) Holder pair. It also
    records the obstruction: uniform critical bounds alone do not imply endpoint
    UI of the product, because both factors can concentrate in the same
    terminal layer. This note does not produce the needed tail depletion from
    Navier-Stokes.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-failure-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-strain-carrier-ui-holder-saturation-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-carleson-direct-attempt-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-normalized-ckn-carleson-packing-direct-test-20260619.md
  downstream_consequence: >-
    The overrun branch is not solved by citing CKN visibility or critical-strain
    boundedness. It is solved only by same-overrun-layer tail depletion, strict
    exponent slack, source-square/product control, strict no-waste, square
    saturation, no-free Zeno, or profile production. If none of those is
    produced, a retained overrun atom remains CM-facing after same-witness
    admission.
---

# MPP Forward-Gold Selected Coefficient-Overrun Critical-Factor UI Bridge

Date: 2026-06-21

## Status

This note is a consumer bridge for the overrun term isolated in
`mpp-forward-gold-selected-source-square-carrier-domination-failure-split-20260621.md`.
It does not prove the overrun payment from Navier-Stokes.

The exact point is:

\[
\boxed{
\text{critical-factor tail depletion on the same overrun layer}
\Longrightarrow
\text{endpoint UI of the selected overrun source}.
}
\tag{OCF.1}
\]

Uniform critical bounds alone do not imply this. One of the two critical
factors must actually deplete on the terminal strip, or an equivalent
source-square/no-waste/product theorem must replace that depletion.

## 1. The overrun carrier

Use the notation of the failure split. The selected overrun source is

\[
a_{j,K}^{over}(s)
=
C_{LP}r_j^{1/2}
\int_{\Omega_{j,K}^{over}(T+r_j^2s)}
|w_j|^2\alpha_j^+\,dx,
\tag{OCF.2}
\]

where

\[
\Omega_{j,K}^{over}
=
\Omega_j\cap
\left\{
\alpha_j^+>K\nu r_j^{-2}
\right\}.
\tag{OCF.3}
\]

After rescaling the selected packet to a normalized cylinder, write the
corresponding normalized fields as

\[
W_j(s,y),
\qquad
\Sigma_j^+(s,y)
=
r_j^2\alpha_j^+(T+r_j^2s,x_j+r_jy)
\quad
\text{on the selected overrun layer}.
\tag{OCF.4}
\]

Thus the physical overrun condition \(\alpha_j^+>K\nu r_j^{-2}\) becomes

\[
\Sigma_j^+>K\nu
\tag{OCF.4a}
\]

in normalized variables. In the normalized carrier currency used by the
endpoint UI notes, fixed route constants aside, the overrun product is the
same-layer product \(\Sigma_j^+|W_j|^2\).

Suppressing fixed normalization constants, the endpoint question is whether

\[
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}
\int_{\Omega_{j,K}^{over}(s)}
\Sigma_j^+(s,y)|W_j(s,y)|^2\,dy\,ds
=0.
\tag{OCF.5}
\]

## 2. Same-layer Holder bridge

For any measurable terminal strip \(E_{j,\theta}^{over}\subset
\Omega_{j,K}^{over}\cap\{-\theta<s<0\}\), Holder gives

\[
\int_{E_{j,\theta}^{over}}
\Sigma_j^+|W_j|^2\,dy\,ds
\le
\left(
\int_{E_{j,\theta}^{over}}(\Sigma_j^+)^{5/2}\,dy\,ds
\right)^{2/5}
\left(
\int_{E_{j,\theta}^{over}}|W_j|^{10/3}\,dy\,ds
\right)^{3/5}.
\tag{OCF.6}
\]

Therefore endpoint UI of the overrun source follows from either same-layer
tail depletion condition:

\[
\lim_{\theta\downarrow0}\limsup_j
\int_{E_{j,\theta}^{over}}(\Sigma_j^+)^{5/2}\,dy\,ds
=0
\tag{OCF.7}
\]

with

\[
\sup_j
\int_{\Omega_{j,K}^{over}}
|W_j|^{10/3}\,dy\,ds
<\infty,
\tag{OCF.8}
\]

or

\[
\lim_{\theta\downarrow0}\limsup_j
\int_{E_{j,\theta}^{over}}|W_j|^{10/3}\,dy\,ds
=0
\tag{OCF.9}
\]

with

\[
\sup_j
\int_{\Omega_{j,K}^{over}}
(\Sigma_j^+)^{5/2}\,dy\,ds
<\infty.
\tag{OCF.10}
\]

Under `(OCF.7)` and `(OCF.8)`, the right side of `(OCF.6)` tends to zero.
Under `(OCF.9)` and `(OCF.10)`, it also tends to zero. This proves `(OCF.1)`.

## 3. Uniform critical bounds alone are insufficient

The sharp obstruction is that the two factors may concentrate on the same
terminal strip. Let \(\tau_m\downarrow0\), and choose fixed nonnegative smooth
spatial profiles \(\sigma,\psi\) with

\[
\int\sigma^{5/2}=1,
\qquad
\int\psi^{10/3}=1,
\qquad
\int\sigma\psi^2=c_0>0.
\tag{OCF.11}
\]

Set

\[
\Sigma_m(s,y)
=
\tau_m^{-2/5}\sigma(y)\mathbf 1_{(-\tau_m,0]}(s),
\tag{OCF.12}
\]

and

\[
W_m(s,y)
=
\tau_m^{-3/10}\psi(y)\mathbf 1_{(-\tau_m,0]}(s).
\tag{OCF.13}
\]

Then

\[
\int|\Sigma_m|^{5/2}\,dy\,ds=1,
\qquad
\int|W_m|^{10/3}\,dy\,ds=1,
\tag{OCF.14}
\]

but

\[
\int \Sigma_m |W_m|^2\,dy
=
c_0\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s).
\tag{OCF.15}
\]

Hence

\[
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\int
\Sigma_m|W_m|^2\,dy\,ds
=c_0.
\tag{OCF.16}
\]

This is not a Navier-Stokes solution model. It is the exact functional reason
that critical-strain/CKN boundedness is only visibility, not endpoint UI.

## 4. Consequence for the overrun wall

The selected coefficient-overrun payment can now be stated without ambiguity:

\[
\boxed{
\text{SelectedCoefficientOverrunPayment.A}
}
\tag{OCF.17}
\]

requires one of:

\[
\boxed{
\begin{array}{c}
\text{same-overrun-layer critical-strain terminal tail depletion},\\[1mm]
\text{same-overrun-layer velocity-critical terminal tail depletion},\\[1mm]
\text{strict exponent slack on one factor},\\[1mm]
\text{same-carrier source-square/product control},\\[1mm]
\text{strict no-waste or profile rigidity that forbids the product atom}.
\end{array}
}
\tag{OCF.18}
\]

Plain critical visibility does not pay it:

\[
\boxed{
\sup_j\|\Sigma_j^+\|_{L^{5/2}}
+\sup_j\|W_j\|_{L^{10/3}}<\infty
\quad\not\Longrightarrow\quad
\text{endpoint UI of }a_{j,K}^{over}.
}
\tag{OCF.19}
\]

Thus the overrun branch is genuinely the same terminal time-face problem in
critical-factor form. The exact remaining producer is tail depletion,
source-square/product control, no-waste, square saturation, no-free Zeno, or
profile production on the actual selected overrun carrier.
