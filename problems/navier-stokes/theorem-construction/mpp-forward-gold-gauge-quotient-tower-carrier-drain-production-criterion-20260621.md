---
theorem_id: forward-gold-gauge-quotient-tower-carrier-drain-production-criterion-20260621
status: criterion-proved-native-selected-carrier-identification-not-installed
logical_landing_node: gauge_quotient_tower_carrier_drain_production_criterion
edge_effect: "Proves the exact local coercive interface behind the upgraded four-body loop. If the selected terminal participation activity is realized on the same carrier as a Galilean/affine-pressure-gauge quotient of a finite mixed velocity tower, then it is dominated by the same-carrier weighted parabolic tower drain, up to declared cutoff, pressure-gauge, selector, compactness, and geometry transport defects. Spatial derivative rungs are controlled by lower-rung parabolic drain; pure time rungs are controlled only after quotienting spatially constant modes, which are affine-pressure gauge. This does not prove that the native positive pre-Cauchy/source selector is already this quotient tower carrier."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-bodyii-interface-reorientation-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lossless-four-body-cycle-rigidity-viscous-core-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-compactness-rigidity-coercivity-principle-20260621.md
---

# Gauge-Quotient Tower Carrier Drain-Production Criterion

Date: 2026-06-21

## 0. Aim

The lossless-cycle rigidity note proved:

```math
D_{\rm same-carrier}^{\rm vis}=0
\Longrightarrow
\text{only Galilean/affine-pressure gauge remains}
\Longrightarrow
A_{\rm sel}=0
```

provided \(A_{\rm sel}\) is genuinely singular participation activity and not
raw velocity mass.

This note proves the corresponding positive criterion.

If the selected activity is represented by the finite mixed tower after
quotienting the harmless Galilean/affine-pressure modes, then the same-carrier
weighted parabolic tower drain dominates it.  The proof is only Poincare,
lower-rung derivative domination, and the exact factorial tower weights.

The note does not prove that the native positive pre-Cauchy/source selector has
already been identified with this quotient tower carrier.  That is the
remaining production bridge.

## 1. Fixed normalized carrier

Work on

```math
Q_1=I\times B_1,
\qquad
I=(-1,0].
\tag{GQT.1}
```

Let

```math
W_{m,\alpha}
=
\partial_s^m\partial_y^\alpha V,
\qquad
2m+|\alpha|\le N,
\tag{GQT.2}
```

be the mixed velocity tower of a normalized Navier-Stokes packet on the same
selected carrier.  Let

```math
w_{m,\alpha}
=
{\tau^m\rho^{|\alpha|}\over m!\,\alpha!}
\tag{GQT.3}
```

be the Body-I factorial weight at the same log scale.

Assume the finite radius bound

```math
0<\rho\le \rho_{\max}<\infty
\tag{GQT.4}
```

on the packet under consideration.  No lower bound for \(\rho\) is used in the
spatial-rung estimate below.

The same-carrier weighted parabolic tower drain is

```math
D_Q^w
=
\nu
\sum_{2m+|\alpha|\le N}
w_{m,\alpha}
\int_I\int_{B_1}
|\nabla_y W_{m,\alpha}|^2\,dy\,ds.
\tag{GQT.5}
```

This is exactly the weighted Body-II loss appearing in the corrected
\(S\to Q\) interface.

## 2. Gauge quotient for pure time rungs

For the pure time rungs \((m,0)\), define the spatial mean

```math
\langle W_{m,0}\rangle(s)
=
{1\over |B_1|}
\int_{B_1}W_{m,0}(s,y)\,dy.
\tag{GQT.6}
```

The gauge-quotient pure-time activity is

```math
A_{\rm time}
=
\sum_{m:2m\le N}
w_{m,0}
\int_I\int_{B_1}
|W_{m,0}-\langle W_{m,0}\rangle(s)|^2\,dy\,ds.
\tag{GQT.7}
```

For each \(m\), Poincare on \(B_1\) gives

```math
\int_{B_1}
|W_{m,0}-\langle W_{m,0}\rangle(s)|^2\,dy
\le
C_P
\int_{B_1}|\nabla_yW_{m,0}|^2\,dy.
\tag{GQT.8}
```

After multiplying by \(w_{m,0}\), integrating in \(s\), and summing,

```math
\boxed{
A_{\rm time}
\le
{C_P\over\nu}\,D_Q^w.
}
\tag{GQT.9}
```

The removed mode \(\langle W_{m,0}\rangle(s)\) is spatially constant.  For the
base equation it is exactly the local Galilean mode; for time rungs it is
paired with affine pressure gauge.  A selected carrier that charges this mode
is not gauge-quotient singular participation.  Its charge belongs to the
pressure/gauge defect.

## 3. Spatial derivative rungs are lower-rung drain

Now let \(|\alpha|>0\).  Choose an index \(i\) with \(\alpha_i>0\), and write
\(\alpha^-=\alpha-e_i\).  Then

```math
W_{m,\alpha}
=
\partial_{y_i}W_{m,\alpha^-}.
\tag{GQT.10}
```

The factorial weights satisfy the exact ratio

```math
{w_{m,\alpha}\over w_{m,\alpha^-}}
=
{\rho\over \alpha_i}
\le
\rho_{\max}.
\tag{GQT.11}
```

Therefore

```math
w_{m,\alpha}
\int_I\int_{B_1}|W_{m,\alpha}|^2\,dy\,ds
\le
\rho_{\max}
w_{m,\alpha^-}
\int_I\int_{B_1}|\nabla_yW_{m,\alpha^-}|^2\,dy\,ds.
\tag{GQT.12}
```

Since the right-hand side is one component of \(D_Q^w/\nu\),

```math
\boxed{
w_{m,\alpha}
\|W_{m,\alpha}\|_{L^2(Q_1)}^2
\le
{\rho_{\max}\over\nu}\,D_Q^w.
}
\tag{GQT.13}
```

Summing over all \((m,\alpha)\) with \(0<|\alpha|\) and \(2m+|\alpha|\le N\)
gives

```math
\boxed{
A_{\rm sp}
:=
\sum_{\substack{2m+|\alpha|\le N\\|\alpha|>0}}
w_{m,\alpha}
\|W_{m,\alpha}\|_{L^2(Q_1)}^2
\le
{C(N)\rho_{\max}\over\nu}\,D_Q^w.
}
\tag{GQT.14}
```

This is the exact local tower coercivity that the four-body loop needs.  It is
not a physical-energy estimate.  It is a scale-normalized same-carrier estimate.

## 4. Cutoff-local version

If the selected packet uses a cutoff \(\eta\), replace \(W_{m,\alpha}\) by
\(\eta W_{m,\alpha}\).  Then

```math
\nabla(\eta W_{m,\alpha})
=
\eta\nabla W_{m,\alpha}
+
(\nabla\eta)W_{m,\alpha}.
\tag{GQT.15}
```

Thus the exact localized estimate is

```math
\boxed{
A_{\rm tw,\eta}
\le
C(N,\rho_{\max},\nu,C_P)
\left[
D_{Q,\eta}^w
+
K_{\rm cut,\eta}
\right],
}
\tag{GQT.16}
```

where

```math
K_{\rm cut,\eta}
=
\sum_{2m+|\alpha|\le N}
w_{m,\alpha}
\int_I\int_{B_1}
|\nabla\eta|^2|W_{m,\alpha}|^2\,dy\,ds.
\tag{GQT.17}
```

This term is not hidden.  It is a collar/cutoff defect.  The criterion closes
only when \(K_{\rm cut,\eta}\) is already legal, retained in the selected
packet, or charged to the four-body residual.

## 5. Pressure gauge clause

The velocity tower estimate above does not charge raw pressure.

The pressure equation is

```math
-\Delta_y Q_{m,\alpha}
=
\partial_s^m\partial_y^\alpha
\bigl(\partial_iV_j\,\partial_jV_i\bigr).
\tag{GQT.18}
```

Therefore the non-harmonic pressure source is determined by the velocity tower.
The harmonic and affine pressure pieces are gauge data on the local cylinder.

The criterion therefore requires the selected pressure component to be one of:

```math
\boxed{
\text{elliptic-source pressure controlled by the velocity tower;}
}
\tag{GQT.19}
```

or

```math
\boxed{
\text{harmonic/affine pressure gauge ignored by }A_{\rm sel};
}
\tag{GQT.20}
```

or else the mismatch is declared as

```math
\boxed{
K_{\rm gauge}^+.
}
\tag{GQT.21}
```

This prevents a false proof that would count a harmless affine pressure
balancing a spatially constant velocity as singular participation.

## 6. Drain-production criterion

Define the gauge-quotient finite tower activity

```math
A_{\rm gqtw}
=
A_{\rm time}
+
A_{\rm sp}
\tag{GQT.22}
```

or its cutoff version \(A_{\rm gqtw,\eta}\).

Combining `(GQT.9)`, `(GQT.14)`, and `(GQT.16)` gives:

```math
\boxed{
A_{\rm gqtw,\eta}
\le
C(N,\rho_{\max},\nu,C_P)
\left[
D_{Q,\eta}^w
+
K_{\rm cut,\eta}
+
K_{\rm gauge}^+
\right].
}
\tag{GQT.23}
```

Now suppose the native selected participation carrier satisfies the
same-carrier identification

```math
dA_{\rm sel}
\le
C_0\,dA_{\rm gqtw,\eta}
+
dK_{\rm sel}
+
dK_C^+
+
dK_G^+
+
dR_{\rm legal}.
\tag{GQT.24}
```

Then

```math
\boxed{
dA_{\rm sel}
\le
C_1\,dD_{Q,\eta}^w
+
C_1\,dK_{\rm cut,\eta}
+
C_1\,dK_{\rm gauge}^+
+
dK_{\rm sel}
+
dK_C^+
+
dK_G^+
+
dR_{\rm legal}.
}
\tag{GQT.25}
```

This is the exact same-carrier drain-production criterion.

## 7. Four-body consequence

If the cutoff and gauge terms are legal or already part of the named four-body
defects, `(GQT.25)` becomes

```math
\boxed{
dA_{\rm sel}
\le
C\,dD_Q^w
+
C\,dK_{\rm sel}
+
C\,dK_C^+
+
C\,dK_G^+
+
C\,dR_{\rm legal}.
}
\tag{GQT.26}
```

Inserted into the oriented \(S\to Q\) interface

```math
dL_S+dD_S^{\rm rad}+dD_Q^w=dJ_{SQ}^{\rm flux},
\tag{GQT.27}
```

this gives the strict selected activity payment needed by the full four-body
cycle.

In plain terms: if the selected terminal activity is really a finite
gauge-quotient tower carrier, the weighted parabolic drain pays it on the same
normalized carrier.

## 8. Current state

This note proves the local coercive interface:

```math
\boxed{
\text{gauge-quotient finite tower selected activity}
\Longrightarrow
\text{same-carrier weighted parabolic drain payment, up to named defects.}
}
\tag{GQT.28}
```

It does not prove the remaining native identification:

```math
\boxed{
\text{native positive pre-Cauchy/source selector}
\Longrightarrow
\text{gauge-quotient finite tower carrier, up to named defects.}
}
\tag{GQT.29}
```

That bridge is now the sharp production question.  The four-body program has
not been flattened into an energy estimate: the proof uses Body I's exact
factorial tower weights, Body II's parabolic tower drain, Body III/selector
defects for retention, and Body IV/gauge defects for transport and geometry.
