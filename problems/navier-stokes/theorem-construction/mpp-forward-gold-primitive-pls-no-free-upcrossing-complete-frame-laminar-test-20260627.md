---
theorem_id: forward-gold-primitive-pls-no-free-upcrossing-complete-frame-laminar-test-20260627
status: direct-test-installed-complete-frame-laminarity-does-not-prove-strict-gain
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material primitive PLS / selected first-ratio tail
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - PrimitivePLSNoFreeUpcrossing.A
  - PrimitivePLSBoundedBelowLyapunov.A
  - HighRatioLaminarAncestryMultiplicityTax.A
  - GlobalWeightedLaminarAncestryVariationReserve.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-incompressible-singular-value-participation-identity-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-laminar-ancestry-reserve-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-lowhigh-interface-lower-edge-direct-test-20260627.md
---

# Primitive PLS no-free-upcrossing complete-frame / laminar test

This note tests whether the complete-frame payment plus laminar same-history
ancestry already proves the strict no-free-upcrossing estimate:

```math
d\Omega_N^{grow}
\le
\theta\,d\Omega_N^{PLS,primitive}
+dR_N,
\qquad
0\le\theta<1,
\qquad
\int dR_N<\infty .
\tag{1}
```

Equivalently, in high-ratio tail variables, it tests whether the installed
support proves:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{2}
```

## 1. What complete-frame payment actually proves

For a retained divergence-free principal packet with velocity polarization
\(p\), wave covector \(\widehat\xi\), and packet-normal/collar direction
\(n=p\times\widehat\xi\), incompressibility gives:

```math
p\cdot Sp+\widehat\xi\cdot S\widehat\xi+n\cdot Sn=0.
\tag{3}
```

Therefore:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+[-n\cdot Sn]_+.
\tag{4}
```

This is a correct same-packet orientation law.  Positive primitive strain pump
has a transverse compression partner: either wave-covector/frequency
compression or packet-normal/collar compression.

Thus the principal primitive positive cone has no retained zero-cost null:

```math
d\Omega_N^{covector/compression}=0,
\qquad
d\Omega_N^{collar/normal\ compression}=0
\quad\Longrightarrow\quad
d\Omega_N^{PLS,primitive}=0.
\tag{5}
```

This closes the local orientation gap.

## 2. Why orientation is weaker than strict tail gain

The strict high-ratio tail requires more than assigning each positive pump to a
same-packet compression partner.  It requires the total weighted compression
record to be finite from original data.

In ratio variables,

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over2^{2j}},
\tag{6}
```

with ratio bands

```math
E_{j,\ell}=\{2^\ell\delta<\rho_j\le2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}).
\tag{7}
```

Raw energy/viscosity supplies only:

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
\tag{8}
```

The primitive PLS residence requires:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{9}
```

Complete-frame payment changes the location of each selected unit; it does not
insert the missing factor \(2^\ell\) into a finite original-data reserve.

## 3. Laminar ancestry also stops short of the strict gain

After paid nonlaminar exits, the critical tail is organized into a laminar
same-material ancestry forest.  On each ancestry line, the installed tax has
the form:

```math
\sum_{\gamma\subset\mathcal A(a)} a_\gamma
\le
C\,V_C(\mathcal A(a))
+C\,V_F(\mathcal A(a))
+C\,V_{\rm collar}(\mathcal A(a))
+R_{\rm legal}(\mathcal A(a)).
\tag{10}
```

This is a real same-history structural law.  It says repeated selected visits
on one ancestry line spend Cauchy-Green deformation, complete-frame projective
variation, or collar-normal variation.

But summing `(10)` over the forest closes Gold only if the global weighted
ancestry reserve is finite:

```math
\int_{\mathcal F_{\rm lam}}
\bigl(V_C+V_F+V_{\rm collar}+V_{\rm turnstile}\bigr)
\,d\mathcal R_{\rm ancestry}
\le
C_N(u_0)+R_{\rm legal}.
\tag{11}
```

With ordinary material volume or raw dissipative measure, `(11)` is too weak.
Localized affine heat-scale matching can make raw cost summable while keeping
one unit of normalized action per visit.

## 4. Half-tail countertest to strict absorption

The abstract half-tail model is:

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
a_\ell:=2^\ell\nu_\ell={1\over \ell+1}.
\tag{12}
```

Then:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}a_\ell=\infty.
\tag{13}
```

This model satisfies the complete-frame orientation payment by assigning
compression records \(b_\ell,c_\ell\) with:

```math
a_\ell\le b_\ell+c_\ell.
\tag{14}
```

It also satisfies the single-line laminar tax if the line variation is:

```math
V_\ell:=a_\ell.
\tag{15}
```

Every selected visit is paid on its ancestry line, and every positive pump has
a compression partner.  The total weighted variation still diverges:

```math
\sum_{\ell\ge0}V_\ell=\infty.
\tag{16}
```

So complete-frame payment plus laminarity cannot imply `(1)` or `(9)` without
an additional global weighted reserve.

## 5. What a strict no-free-upcrossing theorem must add

A genuine strict theorem must beat the good-lambda half-barrier:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_{L\ge0}2^LB_L<\infty,
\tag{17}
```

where:

```math
N_L=\sum_{\ell\ge L}\nu_\ell.
\tag{18}
```

Or it must construct a bounded-below same-material Lyapunov law:

```math
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N,
\qquad
\mathscr A_N\ge -C_N(u_0),
\qquad
\int dR_N<\infty.
\tag{19}
```

Or it must prove the global weighted laminar reserve `(11)` with the retained
Gold high-ratio action measure included.

## 6. Result

The complete-frame and laminar ancestry mechanisms are necessary support, but
they do not prove `PrimitivePLSNoFreeUpcrossing.A`.

They prove:

```text
selected primitive positive pump has a same-packet compression partner,
and surviving high-ratio visits sit on a laminar same-history ancestry forest.
```

They do not prove:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

The remaining nonduplicate theorem is still the global weighted same-material
reserve / strict good-lambda gain:

```text
GlobalWeightedLaminarAncestryVariationReserve.A
```

or equivalently:

```text
PrimitivePLSBoundedBelowLyapunov.A / WeightBeatingTailLaw.A.
```
