---
theorem_id: forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621
status: direct-bridge-fails-exact-supplement-criteria-installed-no-residue-skew-added
logical_landing_node: native_precauchy_to_gauge_quotient_tower_bridge_test
edge_effect: "Tests the newly exposed bridge from the native positive pre-Cauchy/source selector to the gauge-quotient finite tower carrier. The direct bridge fails: the main native carrier is trilinear, of the form chi |W|^2 [e.Sigma.e]_+, while the quotient tower/parabolic drain is quadratic. A scaling countertest gives source/drain ratio proportional to amplitude, so no amplitude-free domination by D_Q^w can hold. The bridge closes only with an additional same-carrier supplement. The finite-order amplitude/Field supplement is proved. The source-square/no-waste, participation-preserving no-residue full-cycle, critical-density/CKN, signed-polar saturation, rigid source-residue, and full pre-Cauchy remainder reduction supplements are assembled as exact criteria. Production remains open at same-carrier identity, coefficient overrun/tail depletion, missing unweighted square/no-waste budget, missing no-residue full Hodge-Stokes packet payment, missing unweighted critical-density/CKN budget, production of dN_miss=0 or a legal/charged polar defect, MinimalZenoProfileProduction.A, or NoFreeTerminalZenoDonorChain.A."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-quotient-tower-carrier-drain-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-precauchy-main-carrier-consumer-boundary-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-remainder-depletion-selected-window-direct-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-current-positive-activity-domination-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-positive-selection-signed-current-gap-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-field-amplitude-to-quotient-tower-supplement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-polar-saturation-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rigid-source-residue-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-precauchy-remainder-fourbody-reduction-criterion-20260621.md
---

# Native Pre-Cauchy to Gauge-Quotient Tower Bridge Test

Date: 2026-06-21

## 0. Aim

The gauge-quotient tower criterion proves:

```math
\text{finite gauge-quotient tower activity}
\Longrightarrow
\text{same-carrier weighted parabolic drain payment.}
\tag{NQB.1}
```

The remaining native bridge is:

```math
\boxed{
\text{native positive pre-Cauchy/source selector}
\Longrightarrow
\text{gauge-quotient finite tower carrier,}
}
\tag{NQB.2}
```

up to named defects.

This note tests `(NQB.2)` directly.

The result is exact: the direct bridge fails for the main native carrier,
because the native carrier is trilinear while the quotient tower/parabolic
drain is quadratic.  The bridge closes only after an additional same-carrier
supplement is installed.

## 1. Native main carrier

The pre-Cauchy carrier split is

```math
\mathcal N_{preCauchy}^{loc}(u;P)
=
\partial_t\mathcal E_P
+
\mathcal D_P
+
\operatorname{div}_\Phi\mathcal J_P
+
\mathcal R_P.
\tag{NQB.3}
```

After legal pressure, cutoff, commutator, and boundary terms are separated, the
main interior selected remainder is

```math
\mathcal R_P^{main}
=
\chi_P
\left\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\right\rangle.
\tag{NQB.4}
```

Writing \(w_{j_P}=|w_{j_P}|e_{j_P}\),

```math
\left[\mathcal R_P^{main}\right]_+
=
\chi_P |w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+.
\tag{NQB.5}
```

Thus the main positive pre-Cauchy carrier is not a quadratic tower norm.  It is
a selected positive trilinear strain/source product.

## 2. Pure quadratic drain domination is false

Let \(W_0\) be a nonzero localized high packet and let \(\Sigma_0\) be a
localized trace-free low strain with

```math
\int \chi |W_0|^2
\left[e_0\cdot\Sigma_0e_0\right]_+
>0,
\qquad
e_0={W_0\over |W_0|}
\tag{NQB.6}
```

on the packet core.  Set

```math
W_A=A\,W_0,
\qquad
\Sigma_A=A\,\Sigma_0.
\tag{NQB.7}
```

Then the selected main carrier scales as

```math
\int
\chi |W_A|^2
\left[e_A\cdot\Sigma_Ae_A\right]_+
=
A^3
\int
\chi |W_0|^2
\left[e_0\cdot\Sigma_0e_0\right]_+.
\tag{NQB.8}
```

The quadratic tower/parabolic drain scales as

```math
D_Q^w(W_A,\Sigma_A)
=
A^2D_Q^w(W_0,\Sigma_0).
\tag{NQB.9}
```

Therefore

```math
{\displaystyle
\int
\chi |W_A|^2
\left[e_A\cdot\Sigma_Ae_A\right]_+
\over
\displaystyle D_Q^w(W_A,\Sigma_A)}
=
A\,
{\displaystyle
\int
\chi |W_0|^2
\left[e_0\cdot\Sigma_0e_0\right]_+
\over
\displaystyle D_Q^w(W_0,\Sigma_0)}.
\tag{NQB.10}
```

Letting \(A\to\infty\) rules out any amplitude-free estimate of the form

```math
\boxed{
\left[\mathcal R_P^{main}\right]_+
\le
C\,D_Q^w
+\text{legal}
}
\tag{NQB.11}
```

at the level of local algebra.

This is not a technical gap.  It is the same amplitude obstruction already
seen in the selected-window source pulse: the positive source is cubic, while
the drain is quadratic.

## 3. Exact supplements that close the bridge

The bridge can close only after one of the following same-carrier supplements
is installed.

### 3.1. Finite-order amplitude / Field control

If the selected carrier has a same-window amplitude bound

```math
\left[e\cdot \Sigma e\right]_+
\le B
\tag{NQB.12}
```

on the carrier, then

```math
\left[\mathcal R_P^{main}\right]_+
\le
B\,\chi |W|^2.
\tag{NQB.13}
```

If \(\chi |W|^2\) is a gauge-quotient tower carrier, the gauge-quotient tower
criterion gives

```math
\boxed{
\int\left[\mathcal R_P^{main}\right]_+
\le
C(B)\,D_Q^w
+
\text{cutoff/gauge/selector/compactness/geometry/legal defects.}
}
\tag{NQB.14}
```

This finite-order Field/amplitude supplement is now installed in
`mpp-forward-gold-field-amplitude-to-quotient-tower-supplement-20260621.md`.
The price remains the amplitude bound on the same selected carrier.  If the
retained atom has only an unbounded finite-rung readout on shrinking windows,
the branch is Field-facing after same-witness admission.

### 3.2. Critical-density control

The exact pointwise Holder split is

```math
\left[\langle \Sigma W,W\rangle\right]_+
\le
|\Sigma|\,|W|^2
\le
{2\over5}|\Sigma|^{5/2}
+
{3\over5}|W|^{10/3}.
\tag{NQB.15}
```

Thus a retained native main carrier atom forces a positive quantum of

```math
\int |\Sigma|^{5/2}
+
\int |W|^{10/3}.
\tag{NQB.16}
```

This closes the bridge only if the four-body loop supplies an unweighted
critical-density budget on the same terminal family.  Without that budget,
`(NQB.15)` is a consumer, not a supplier.

This supplement is now assembled in
`mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md`.
The unproved production inputs are exactly same-carrier critical-density
identity, unweighted selected \(L^{5/2}\) strain or normalized CKN budget,
same-layer overrun tail depletion, and full pre-Cauchy remainder reduction.

### 3.3. Source-square or strict no-waste control

If the full source carrier is dominated by a scale-critical square/no-waste
reserve,

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\le
\mathcal R_{\rm square/no\text{-}waste}(\mathcal F_N)
+
o_N(1)
+
Loss_{\rm legal},
\tag{NQB.17}
```

and that reserve has an unweighted log-scale budget, the bridge closes through
that reserve rather than through pure quadratic drain.

This supplement is now assembled in
`mpp-forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621.md`.
The unproved production inputs are exactly same-carrier identity, selected
coefficient-overrun payment, and the unweighted square/no-waste budget.

### 3.4. Participation-preserving no-residue full-cycle control

The source-square residual is created when the localized commutator is
estimated by size.  A sharper same-carrier supplement is to keep the whole
Hodge-Stokes packet through terminal selection.  The one-channel selector

```math
A_\sigma=S_\sigma P
\tag{NQB.17a}
```

is only a compatibility component.  The retained packet is

```math
\mathcal K_{\sigma,P}
=
\Big(
S_\sigma^{tr}((u\cdot\nabla)u),\;
S_\sigma^p\nabla p,\;
\nu S_\sigma^\nu\Delta u,\;
S_\sigma^t\partial_su,\;
S_\sigma^{div}\nabla\cdot u,\;
S_\sigma^P[\chi_P,\mathbb P_{\rm Leray}](u\cdot\nabla u),\;
\mathcal B_{\sigma,P}^{cut},\;
\mathcal S_{\sigma,P}^{sgn}
\Big).
\tag{NQB.17b}
```

The transport component still has the exact skew decomposition.  With
\(A_\sigma^{tr}=S_\sigma^{tr}\) and \(W_\sigma=A_\sigma^{tr}u\),

```math
\mathcal M_\sigma^{tr}
=
\langle u\cdot\nabla W_\sigma,W_\sigma\rangle
+
\langle[A_\sigma^{tr},u\cdot\nabla]u,W_\sigma\rangle.
\tag{NQB.17c}
```

The first term vanishes by incompressibility in the closed selected pairing.
Thus

```math
\mathcal M_\sigma^{tr}
=
\mathcal C_\sigma^{tr},
\qquad
\mathcal C_\sigma^{tr}
=
\langle[A_\sigma^{tr},u\cdot\nabla]u,W_\sigma\rangle.
\tag{NQB.17d}
```

The corrected no-residue supplement asserts

```math
\boxed{
\left[
\mathcal C_\sigma^{tr}
+\mathcal C_\sigma^p
+\mathcal C_\sigma^\nu
+\mathcal C_\sigma^{time}
+\mathcal C_\sigma^{div}
+\mathcal C_\sigma^{cut}
+\mathcal C_\sigma^{scale}
+\mathcal C_\sigma^{sgn}
+\mathcal C_\sigma^{tail}
\right]_{\mathcal S,+}
\le
\varepsilon\nu D_\sigma
-\partial_\sigma\Phi_\sigma
+
T_\sigma
+
R_{\rm legal}(\sigma),
}
\tag{NQB.17e}
```

with \(T_\sigma,R_{\rm legal}\in L^1_\sigma\), \(\Phi_\sigma\) bounded below,
and no \(C_\varepsilon\Theta_\sigma^2E_\sigma\) term.

If the native positive carrier is identified with the selected positive
full-packet carrier in `(NQB.17e)`, it gives the unweighted reserve after
absorbing \(\varepsilon\nu D_\sigma\) and adding \(\Phi_\sigma\) to the
four-body storage.

This supplement is now assembled in
`mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md`.
The Hodge-Stokes packet replacement is recorded in
`mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md`.
The unproved production inputs are exact same-carrier full-packet custody,
selected full-packet identification, and no-residue full-cycle payment.

### 3.5. Signed polar saturation

If the selected positive carrier keeps its signed negative partner, then the
positive part is paid by the signed Body-II current, true loss, positive
storage jump, or legal residual:

```math
dA_{\mathcal S}
\le
dJ_{\mathcal S}^-
+
dD_{\mathcal S}
+
(dM_{\mathcal S})^+
+
dN_{\rm ret}
+
dR_{\rm legal}.
\tag{NQB.18}
```

This bypasses the cubic-to-quadratic obstruction by refusing to discard the
negative local partner.

This supplement is now assembled in
`mpp-forward-gold-signed-polar-saturation-fourbody-supplement-criterion-20260621.md`.
The unproved production input is exactly

```math
dN_{\rm miss}=0
\quad\text{or}\quad
dN_{\rm miss}\le dR_{\rm legal}+dK_{\rm charged},
\tag{NQB.18a}
```

for the actual localized rescaled Navier-Stokes tower after packet selection.

### 3.6. Rigid source-residue production

If an infinite terminal source-residue chain produces a rigid Zeno profile
whose Liouville theorem kills the native positive residue, the bridge closes
through profile production rather than through local drain domination.

This is the rigidity fork of the same four-body loop.

This supplement is now assembled in
`mpp-forward-gold-rigid-source-residue-fourbody-supplement-criterion-20260621.md`.
The downstream zero-force Landau/Sverak consumer is conditional.  The unproved
production input is exactly `MinimalZenoProfileProduction.A`, including
endpoint residue evacuation or controlled force, nontriviality retention,
no-drift/unique tangent, renormalized stationarity, homogeneity extraction,
defect evacuation, and sphere smoothness.

## 4. Remainder clause

Even if the main carrier is handled, the full localized pre-Cauchy carrier
requires

```math
\left[
\mathcal N_{preCauchy}^{loc}
\right]_+
\le
C\left[
\mathcal R_P^{main}
\right]_+
+
\text{legal}
+
\text{charged defects}.
\tag{NQB.19}
```

The full pre-Cauchy remainder reduction is now assembled in
`mpp-forward-gold-full-precauchy-remainder-fourbody-reduction-criterion-20260621.md`.
It proves that the finite projection/cutoff/legal, positive pair-weight,
finite donor, and entrance-leaf pieces reduce to named ledgers.  The remaining
unpaid piece is the infinite terminal Zeno donor-chain remainder, i.e.
`NoFreeTerminalZenoDonorChain.A` or one of its same-carrier reserve/polar/rigid
suppliers.

So the native bridge has two independent gates:

```math
\boxed{
\text{main trilinear carrier must be paid by an added same-carrier supplement;}
}
\tag{NQB.20}
```

and

```math
\boxed{
\text{the terminal Zeno donor-chain remainder must be paid, rigidified,
or routed to CM Part/Field after same-witness admission.}
}
\tag{NQB.21}
```

## 5. Current state

The direct native-to-quotient bridge is false in its strongest form:

```math
\boxed{
\text{native positive pre-Cauchy carrier}
\not\le
C\,\text{quadratic quotient tower drain}
\quad
\text{without an additional same-carrier supplement.}
}
\tag{NQB.22}
```

The exact surviving bridge is:

```math
\boxed{
\begin{aligned}
\text{native positive pre-Cauchy carrier}
&\le
\text{main trilinear carrier}
+
\text{legal/charged remainder},\\
\text{main trilinear carrier}
&\le
\text{bounded same-carrier amplitude/Field supplement}
\ \text{or critical density}
\ \text{or source-square/no-waste}
\ \text{or participation-preserving no-residue full-cycle}
\ \text{or signed saturation}
\ \text{or rigid profile production}.
\end{aligned}
}
\tag{NQB.23}
```

After the amplitude, source-square/no-waste, critical-density/CKN,
pressure-adapted no-residue skew, signed-polar saturation, rigid source-residue,
and full pre-Cauchy remainder reduction supplement notes, the
unresolved gold-production suppliers inside `(NQB.23)` are same-carrier
square/no-waste budget,
same-carrier pressure-adapted no-residue commutator payment,
same-carrier critical-density/CKN budget, production of `(NQB.18a)`, rigid
profile production through `MinimalZenoProfileProduction.A`, or full
pre-Cauchy terminal Zeno payment through `NoFreeTerminalZenoDonorChain.A`.  The
source-square/no-waste route is still open exactly at
same-carrier identity, coefficient-overrun, or missing unweighted-budget
production; the no-residue skew route is still open exactly at pressure-adapted
selector custody, selected commutator identification, and no-residue
commutator payment.  The critical-density/CKN route is still open exactly at
same-carrier critical-density identity, missing unweighted selected
\(L^{5/2}\)-strain or normalized CKN budget, and same-layer overrun tail
depletion.  The signed-polar route is still open exactly at same-carrier
negative-part retention or legal/charged production for \(dN_{\rm miss}\).  The
rigid source-residue route is still open exactly at endpoint residue
evacuation or controlled force, nontriviality retention, no-drift/unique
tangent, renormalized stationarity, homogeneity, defect evacuation, and sphere
smoothness.  The full pre-Cauchy remainder route is still open exactly at the
infinite terminal Zeno donor chain after the finite remainder ledgers are paid.
The four-body program still stays intact: tower drain pays
quadratic gauge-quotient activity; participation supplies the signed source;
compactness must retain the same positive/negative carrier; geometry must
return the same packet; and the native cubic source selector needs one of the
remaining same-carrier supplements before it becomes fully paid activity.
