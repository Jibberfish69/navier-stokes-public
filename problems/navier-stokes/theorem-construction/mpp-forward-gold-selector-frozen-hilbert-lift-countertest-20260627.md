---
theorem_id: forward-gold-selector-frozen-hilbert-lift-countertest-20260627
status: hilbert-lift-refined-to-fixed-carrier-plus-moving-selector-carleson
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / selected first-ratio gain
audits_hinge:
  - VisibleSilentSelectedDensityOrthogonalLift.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - SelectedCarrierHeredity.A
refined_hinge:
  - FixedCarrierVisibleSilentHilbertLift.A
  - MovingSelectorVariationCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-selected-density-hilbert-lift-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-canonical-selected-carrier-identification-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-packet-selector-polar-retention-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-selection-tax-density-atom-boundary-20260626.md
---

# Selector-frozen Hilbert lift countertest

## 1. What survives from the Hilbert-lift idea

The useful part of the Hilbert-lift route is the fixed-carrier statement.  Once
the selected carrier is the same carrier, the visible/silent/exchange split can
be put into one Hilbert packet:

```math
\mathcal H_{\rm lift}
=
\mathcal H_{\rm vis}
\oplus
\mathcal H_{\rm sil}
\oplus
\mathcal H_{\rm ex}.
\tag{1}
```

On that fixed carrier, the desired derivative statement is:

```math
|\Delta_Q\log\rho_{\rm sel}^{C_\ast}|
\le
C\|\Delta_QZ^{C_\ast}\|_{\mathcal H_{\rm lift}}
+e_Q.
\tag{2}
```

If `(2)` holds and the projections defining \(Z^{C_\ast}\) are nested, then
Bessel/Pythagoras gives martingale BMO and hence the strict reverse-Holder /
good-lambda gain for that fixed carrier.

This is a real proof mechanism.  It converts the square-function theorem from
scalar tail counting into Hilbert geometry.

## 2. The countertest against the unfrozen statement

The unfrozen statement is false as written.

Take two carrier labels \(C_1,C_2\).  Let their material/PDE Hilbert packets be
stationary across two retained scales:

```math
\Delta Z^{C_1}=0,
\qquad
\Delta Z^{C_2}=0.
\tag{3}
```

Let their selected densities be different:

```math
\rho^{C_1}=1,
\qquad
\rho^{C_2}=\varepsilon,
\qquad
0<\varepsilon\ll1.
\tag{4}
```

If the selector chooses \(C_2\) at the parent and \(C_1\) at the child, then

```math
|\Delta\log\rho_{\rm sel}|
=
|\log(1/\varepsilon)|
\tag{5}
```

while the fixed-carrier Hilbert increments in `(3)` vanish.  Thus

```math
|\Delta\log\rho_{\rm sel}|
\le
C\|\Delta Z\|_{\mathcal H_{\rm lift}}+e
\tag{6}
```

cannot hold unless the selector switch itself appears in \(e\), in the Hilbert
carrier, or in a declared selector/carrier defect.

This is not an artificial objection.  The repo already names the exact failure
channel:

```math
\boxed{
\text{cutoff, packet, projection, selector, or rung labels change without a
declared selector/carrier defect.}
}
\tag{7}
```

and it names the tightness side as:

```math
\boxed{
\text{finite/compact label custody or paid moving-selector escape.}
}
\tag{8}
```

So the Hilbert lift must be selector-frozen, or it must be lifted to the full
extended carrier including selector labels.

## 3. Correct decomposition

Write the selected log-density increment as

```math
\Delta_Q\log\rho_{\rm sel}
=
\Delta_Q^{\rm fixed}\log\rho_{\rm sel}
+
\Delta_Q^{\rm lab}\log\rho_{\rm sel}.
\tag{9}
```

The first term is the change of density on a fixed selected carrier.  This is
the part that belongs to `(2)`.

The second term is the change caused by moving the selected carrier label,
cutoff, projection, rung, or packet.  It is not controlled by the physical
visible/silent/exchange Hilbert increment alone.

Thus the correct theorem is:

```text
FixedCarrierVisibleSilentHilbertLift.A
```

together with:

```text
MovingSelectorVariationCarleson.A
```

where the second theorem states

```math
\sum_{Q\subseteq Q_0}
|\Delta_Q^{\rm lab}\log\rho_{\rm sel}|^2\,\mathcal R(Q)
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
\tag{10}
```

or else routes the same quantity into the already named defects

```math
K_{\rm sel}+K_C^++K_{4B}+R_{\rm legal}.
\tag{11}
```

## 4. Why finite-menu heredity now matters

The finite-menu carrier note proves the exact good case:

```math
\text{finite carrier menu + nonzero retained selected quantity}
\Longrightarrow
\text{fixed carrier on an infinite retained subtail}.
\tag{12}
```

On that subtail, \(\Delta^{\rm lab}\log\rho_{\rm sel}=0\), and the Hilbert
lift is allowed to do its job.

The surviving bad case is therefore not generic invisible-child behavior.  It
is moving or continuum selector escape:

```math
\text{each fixed carrier misses later selected mass, while the moving selector
keeps finding unit selected density.}
\tag{13}
```

This is exactly the same mechanism that defeated a standalone retained
selection boundary tax and collapsed into terminal density atoms.

## 5. Extended-carrier version

A stronger formulation is to put the selector label into the Hilbert carrier.
Let

```math
C=\Omega\times\mathfrak L\times\mathfrak R
\tag{14}
```

be the selected tower carrier from the tightness decomposition.  Define

```math
\mathcal H_{\rm ext}
=
L^2(C;\mathcal H_{\rm vis}\oplus\mathcal H_{\rm sil}\oplus\mathcal H_{\rm ex}).
\tag{15}
```

Finite or compact label custody gives compactness in \(\mathfrak L\); finite
menu custody gives literal orthogonal summation over finitely many labels.
Moving-selector escape becomes positive mass escaping in the label coordinate.

The extended lift then has the form:

```math
|\Delta_Q\log\rho_{\rm sel}|^2\mathcal R(Q)
\le
C\|\Delta_QZ\|_{\mathcal H_{\rm ext}}^2
+C\,dK_{\rm lab}(Q)
+R_{\rm legal}(Q),
\tag{16}
```

with

```math
\sum_{Q\subseteq Q_0}dK_{\rm lab}(Q)
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0)
\tag{17}
```

as the exact remaining label-variation theorem.

## 6. Result

The Hilbert-lift route is still the best current Gold idea, but only in the
selector-correct form:

```text
fixed-carrier Hilbert BMO
+
moving-selector variation Carleson
=> selected-density square-function Carleson.
```

The previous unfrozen statement tried to make the physical Hilbert carrier pay
for a change of selected label.  The repo already says that is a selector or
carrier defect, not a free PDE increment.

The live hinge is now:

```text
prove MovingSelectorVariationCarleson.A, or prove finite/compact selected
carrier heredity strong enough to reduce the Gold tail to fixed-carrier Hilbert
BMO.
```
