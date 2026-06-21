---
theorem_id: forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621
status: direct-bridge-fails-exact-supplement-criteria-installed-production-open
logical_landing_node: native_precauchy_to_gauge_quotient_tower_bridge_test
edge_effect: "Tests the newly exposed bridge from the native positive pre-Cauchy/source selector to the gauge-quotient finite tower carrier. The direct bridge fails: the main native carrier is trilinear, of the form chi |W|^2 [e.Sigma.e]_+, while the quotient tower/parabolic drain is quadratic. A scaling countertest gives source/drain ratio proportional to amplitude, so no amplitude-free domination by D_Q^w can hold. The bridge closes only with an additional same-carrier supplement. The finite-order amplitude/Field supplement is proved. The source-square/no-waste supplement is assembled as an exact criterion. The critical-density/CKN supplement is also assembled as an exact criterion: Holder domination pays the trilinear carrier once an unweighted same-carrier critical-density budget or terminal-tail depletion is produced. Production remains open at same-carrier identity, coefficient overrun/tail depletion, missing unweighted square/no-waste budget, missing unweighted critical-density/CKN budget, signed polar saturation, rigid source-residue production, or legal/charged full pre-Cauchy remainder reduction."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-quotient-tower-carrier-drain-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-precauchy-main-carrier-consumer-boundary-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-remainder-depletion-selected-window-direct-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-current-positive-activity-domination-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-positive-selection-signed-current-gap-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-field-amplitude-to-quotient-tower-supplement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
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

### 3.4. Signed polar saturation

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

### 3.5. Rigid source-residue production

If an infinite terminal source-residue chain produces a rigid Zeno profile
whose Liouville theorem kills the native positive residue, the bridge closes
through profile production rather than through local drain domination.

This is the rigidity fork of the same four-body loop.

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

The pre-Cauchy boundary note records that `(NQB.19)` is not installed.  The
unpaid piece is the weighted/lifted/skew positive-part remainder created by
localization, projection, terminal selection, and positive-part extraction.

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
\text{full pre-Cauchy carrier must be reduced to main plus legal/charged
remainder.}
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
\ \text{or signed saturation}
\ \text{or rigid profile production}.
\end{aligned}
}
\tag{NQB.23}
```

After the amplitude, source-square/no-waste, and critical-density/CKN
supplement notes, the unresolved gold-production suppliers inside `(NQB.23)`
are same-carrier square/no-waste budget, same-carrier critical-density/CKN
budget, signed saturation, rigid profile production, or full pre-Cauchy
remainder reduction.  The source-square/no-waste route is still open exactly at
same-carrier identity, coefficient-overrun, or missing unweighted-budget
production.  The critical-density/CKN route is still open exactly at
same-carrier critical-density identity, missing unweighted selected
\(L^{5/2}\)-strain or normalized CKN budget, and same-layer overrun tail
depletion.  The four-body program still stays intact: tower drain pays
quadratic gauge-quotient activity; participation supplies the signed source;
compactness must retain the same positive/negative carrier; geometry must
return the same packet; and the native cubic source selector needs one of the
remaining same-carrier supplements before it becomes fully paid activity.
