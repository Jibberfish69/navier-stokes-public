---
ns_viewer:
  theorem_id: forward-gold-selected-source-square-carrier-domination-failure-split-20260621
  status: exact-failure-split-installed-forward-gold-not-proved
  proof_role: forward_gold_selected_source_square_carrier_domination_reduction
  logical_landing_node: selected_source_square_carrier_domination_wall
  edge_effect: >-
    Splits the selected positive native trilinear carrier into the bounded
    same-packet coefficient part and the selected coefficient-overrun part. The
    bounded part is exactly dominated by the source-square parent tail. Hence
    failure of SelectedSourceSquareCarrierDomination.A is not spread across the
    whole carrier: it is concentrated in the selected overrun term where the
    positive low-strain coefficient exceeds the heat-scale viscous rate on the
    same carrier, or in a same-carrier identity mismatch before this split can
    even be applied. This note does not pay the overrun. It reduces the
    remaining producer to SelectedCoefficientOverrunPayment.A, equivalently a
    selected critical-strain/normalized CKN/no-waste/profile/square-saturation
    theorem on the actual selected carrier.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-domination-to-same-carrier-spacetime-ui-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-coefficient-square-budget-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-carleson-direct-attempt-20260619.md
  downstream_consequence: >-
    Source-square consumer arguments may be applied to the bounded-coefficient
    selected carrier immediately after same-carrier identification. The only
    source-square carrier-domination failure left by this split is the overrun
    source, or a prior failure to identify the native selected carrier with this
    local trilinear form. The overrun must be paid by a critical-strain/CKN,
    no-waste, square-synchronous saturation, no-free Zeno, or profile-production
    theorem, or else consumed by the CM Part/Field route after same-witness
    admission.
---

# MPP Forward-Gold Selected Source-Square Carrier Domination Failure Split

Date: 2026-06-21

## Status

This note sharpens the wall left by
`mpp-forward-gold-selected-source-square-carrier-domination-test-20260619.md`.
It does not prove `SelectedSourceSquareCarrierDomination.A`.

It proves an exact reduction:

\[
\boxed{
\text{selected source-square domination}
\quad\Longleftarrow\quad
\text{same-carrier identity}
+\text{ selected coefficient-overrun payment}.
}
\tag{SFD.1}
\]

The bounded-coefficient part is already paid by the parent source-square tail.
The only remaining product obstruction, after the same carrier has been
identified, is the selected overrun part where the positive low-strain
coefficient is larger than the heat-scale viscous rate.

## 1. Same-carrier selected source

Fix a selected active shell \(j\) with physical radius

\[
r=2^{-j}.
\tag{SFD.2}
\]

Let \(w_j\) be the selected high-frequency velocity packet and write

\[
e_j={w_j\over |w_j|}
\tag{SFD.3}
\]

on the set where \(w_j\ne0\). Let

\[
\alpha_j^+(t,x)
:=
\left[
e_j(t,x)\cdot S^{loc}_{<j}(t,x)e_j(t,x)
\right]_+.
\tag{SFD.4}
\]

After the same localization, projection, weighting, positive-part extraction,
and selector choice as the native carrier, the selected positive trilinear
density has the form

\[
\Pi_j^+(t)
=
\int_{\Omega_j(t)}
|w_j(t,x)|^2\alpha_j^+(t,x)\,dx,
\tag{SFD.5}
\]

modulo the already separated legal residues. The normalized selected source
density used by the endpoint UI/source-square bridge is

\[
a_j(s)
=
C_{LP}r^{1/2}\Pi_j^+(T+r^2s)
+\ell_j(s),
\qquad
-1\le s\le0,
\tag{SFD.6}
\]

where \(\ell_j\ge0\) denotes already legal residue.

This note starts only after `(SFD.5)` is the actual selected native positive
carrier. If the native carrier cannot be identified with `(SFD.5)` on the same
packet, the live obstruction is still the same-carrier identity wall, not the
coefficient split below.

## 2. Bounded coefficient / overrun decomposition

Fix \(K<\infty\). Split the carrier into

\[
\Omega_{j,K}^{bd}(t)
:=
\Omega_j(t)\cap
\left\{
\alpha_j^+(t,x)\le K\nu r^{-2}
\right\},
\tag{SFD.7}
\]

and

\[
\Omega_{j,K}^{over}(t)
:=
\Omega_j(t)\cap
\left\{
\alpha_j^+(t,x)> K\nu r^{-2}
\right\}.
\tag{SFD.8}
\]

Define

\[
\Pi_{j,K}^{bd}(t)
:=
\int_{\Omega_{j,K}^{bd}(t)}
|w_j|^2\alpha_j^+\,dx,
\tag{SFD.9}
\]

and

\[
\Pi_{j,K}^{over}(t)
:=
\int_{\Omega_{j,K}^{over}(t)}
|w_j|^2\alpha_j^+\,dx.
\tag{SFD.10}
\]

Then exactly

\[
\Pi_j^+(t)
=
\Pi_{j,K}^{bd}(t)+\Pi_{j,K}^{over}(t).
\tag{SFD.11}
\]

The bounded part satisfies

\[
\Pi_{j,K}^{bd}(t)
\le
K\nu r^{-2}
\int_{\Omega_j(t)}|w_j(t,x)|^2\,dx.
\tag{SFD.12}
\]

Let

\[
D_j(t):=
\nu r^{-2}\int_{\Omega_j(t)}|w_j(t,x)|^2\,dx
\tag{SFD.13}
\]

be the same localized shell dissipation density, up to the already legal
cutoff/collar residue. If \(k=j-C_0\) is the fixed source-square parent index
and

\[
T_k(t)=\sum_{\ell>k+4}D_\ell(t),
\tag{SFD.14}
\]

then the selected shell is included in the parent tail:

\[
D_j(t)\le T_k(t)+\operatorname{Legal}_j(t).
\tag{SFD.15}
\]

Combining `(SFD.12)` and `(SFD.15)` gives

\[
\Pi_{j,K}^{bd}(t)
\le
K\,T_k(t)+K\,\operatorname{Legal}_j(t).
\tag{SFD.16}
\]

Multiplying by the normalization \(C_{LP}r^{1/2}\), and absorbing the fixed
shift \(k=j-C_0\) into constants, the bounded selected source satisfies

\[
a_{j,K}^{bd}(s)
\le
C_K\,G_k(s)+\ell_{j,K}^{bd}(s),
\tag{SFD.17}
\]

where

\[
G_k(s)
=
2^{-k/2}T_k(T+2^{-2k}s)
\tag{SFD.18}
\]

is the source-square parent-tail density from the existing bridge.

Thus the bounded-coefficient piece satisfies the exact same-carrier domination
hypothesis required by the source-square UI consumer.

## 3. The exact remaining overrun term

The only remaining selected source is

\[
a_{j,K}^{over}(s)
:=
C_{LP}r^{1/2}
\Pi_{j,K}^{over}(T+r^2s).
\tag{SFD.19}
\]

Consequently

\[
\boxed{
a_j(s)
\le
C_KG_k(s)
+a_{j,K}^{over}(s)
+\ell_{j,K}(s).
}
\tag{SFD.20}
\]

This is the precise failure split. Once the same-carrier identity is in force,
`SelectedSourceSquareCarrierDomination.A` is reduced to showing that
\(a_{j,K}^{over}\) is zero, legal, uniformly integrable in the needed endpoint
sense, or square-controlled by another same-carrier density.

Equivalently, define

\[
\boxed{
\text{SelectedCoefficientOverrunPayment.A}
}
\tag{SFD.21}
\]

to be any theorem strong enough to make

\[
a_{j,K}^{over}(s)
\le
C_{\rm over}G_j^{over}(s)+\ell_j^{over}(s),
\qquad
\sup_j\int (G_j^{over})^2\,dy\,ds<\infty,
\tag{SFD.22}
\]

or to give the corresponding endpoint/spacetime UI directly on
\(a_{j,K}^{over}\). Then

\[
\boxed{
\text{SameCarrierIdentity.A}
+
\text{SelectedCoefficientOverrunPayment.A}
\Longrightarrow
\text{SelectedSourceSquareCarrierDomination.A}.
}
\tag{SFD.23}
\]

## 4. What can pay the overrun

The overrun condition is

\[
\alpha_j^+>K\nu r^{-2}.
\tag{SFD.24}
\]

This is exactly the heat-scale high-coefficient branch on the same selected
carrier. It is not paid by the energy inequality alone.

One possible payment is selected critical strain. Holder gives, on the overrun
region,

\[
\int_{\Omega_{j,K}^{over}}
|w_j|^2\alpha_j^+\,dxdt
\le
\left(
\int_{\Omega_{j,K}^{over}}(\alpha_j^+)^{5/2}\,dxdt
\right)^{2/5}
\left(
\int_{\Omega_{j,K}^{over}}|w_j|^{10/3}\,dxdt
\right)^{3/5}.
\tag{SFD.25}
\]

The velocity-side \(L^{10/3}\) currency is supplied by the energy class. The
coefficient-side \(L^{5/2}\) currency is exactly the selected critical-strain
or normalized CKN type supplier isolated in the existing direct attempts.

Other possible payments are:

\[
\boxed{
\begin{array}{c}
\text{SelectedCriticalStrainCarleson.A / NormalizedCKNCarleson.A},\\[1mm]
\text{StrictRescaledNoWasteLyapunov.A},\\[1mm]
\text{square-synchronous signed saturation},\\[1mm]
\text{NoFreeTerminalZenoDonorChain.A},\\[1mm]
\text{Zeno profile production / rigidity}.
\end{array}
}
\tag{SFD.26}
\]

Each item must act on the actual selected overrun carrier. A global or
different-packet estimate does not pay `(SFD.19)`.

## 5. Consequence

The source-square wall is now localized more sharply.

The bounded same-carrier coefficient branch is paid:

\[
\boxed{
\alpha_j^+\le K\nu r^{-2}
\quad\Longrightarrow\quad
\text{source-square domination on that branch}.
}
\tag{SFD.27}
\]

The only remaining same-carrier product branch is:

\[
\boxed{
\alpha_j^+>K\nu r^{-2}
\quad\text{on the selected carrier}.
}
\tag{SFD.28}
\]

So failure of source-square domination has only two exact locations:

\[
\boxed{
\text{same-carrier identity failure}
\quad\text{or}\quad
\text{selected coefficient-overrun payment failure}.
}
\tag{SFD.29}
\]

This does not solve the forward-gold theorem. It removes one layer of ambiguity:
the source-square consumer is already strong enough on the bounded part, and
the real producer is now the overrun branch or the prior same-carrier
identification bridge.
