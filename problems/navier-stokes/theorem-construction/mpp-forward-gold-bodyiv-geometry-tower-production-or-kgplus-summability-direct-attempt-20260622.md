---
theorem_id: forward-gold-bodyiv-geometry-tower-production-or-kgplus-summability-direct-attempt-20260622
status: direct-attempt-reduces-to-unweighted-material-record-survival-or-geometry-defect-tail
logical_landing_node: bodyiv_geometry_tower_production_or_kgplus_summability
edge_effect: >-
  Attacks the Body-IV producer isolated by the same-packet interface-defect
  envelope. The component check shows that Body IV has exact material geometry
  equations and an exact G->S recertification criterion, but it does not close
  from current inputs. Ellipticity is equivalent to a finite same-carrier
  strain-metric clock; coefficient control requires the material A,G tower;
  commutator absorption requires that coefficient tower plus parabolic drain;
  transport requires fixed retained atlas/labels/collars; and K_G^+ is the
  positive geometry/no-loss defect when these fail. Existing energy/local-energy
  inputs supply only radius-discounted physical strain/stress work on heat-scale
  packets. Thus BodyIVGeometryTowerProductionOrKGPlusSummability.A reduces to
  UniformHeatScaleMaterialRecordSurvival.A, UnweightedMaterialStrainActionReserve.A,
  or GeometryDefectTerminalTailSummability.A on the same transported packet.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-packet-interface-defect-summability-or-strict-loss-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-bodyi-geometry-tower-recertification-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lagrangian-deformation-coercion-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-deformation-path-action-equivalence-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-material-annular-return-record-noexit-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unweighted-material-stress-work-carleson-direct-attempt-20260622.md
---

# Body-IV Geometry/Tower Production Or \(K_G^+\) Summability Direct Attempt

Date: 2026-06-22

## 0. Target

The same-packet interface envelope leaves the Body-IV production clause:

```math
\boxed{
\texttt{BodyIVGeometryTowerProductionOrKGPlusSummability.A}.
}
\tag{BGP.1}
```

The question is whether the geometry/tower defects

```math
K_{\rm ell}^+,\quad
K_{\rm coef}^+,\quad
K_{\rm comm}^+,\quad
K_{\rm transport}^+,\quad
K_G^+
\tag{BGP.2}
```

are strict same-packet loss, summable residual, or zero on the retained branch
from original smooth data.

## 1. Exact material geometry already installed

For the material flow map,

```math
\partial_tX(a,t)=u(X(a,t),t),
\qquad
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^\top.
\tag{BGP.3}
```

Incompressibility gives

```math
\det F=1.
\tag{BGP.4}
```

The pulled-back metric obeys

```math
\partial_tG=-2A\,S(X,t)\,A^\top,
\qquad
S={1\over2}(\nabla u+\nabla u^\top).
\tag{BGP.5}
```

Equivalently, for the Cauchy-Green metric \(C=F^\top F\),

```math
\partial_tC=2F^\top S(X,t)F.
\tag{BGP.6}
```

This is the exact material expression of annular strain/deformation.  It is
inside the same pressure-viscosity-incompressibility-velocity packet; it is not
a fifth component.

## 2. Ellipticity defect

Uniform ellipticity of \(G\) is controlled by the same-carrier strain-metric
clock:

```math
\Gamma_A(I)
:=
\int_I
\|S(X(\cdot,t),t)\|_{L^\infty(A)}
\,dt.
\tag{BGP.7}
```

The exact bound is

```math
e^{-2\Gamma_A(I)}|\zeta|^2
\le
\zeta^\top G(a,t)\zeta
\le
e^{2\Gamma_A(I)}|\zeta|^2.
\tag{BGP.8}
```

Therefore ellipticity loss is exactly strain-metric clock blowup:

```math
K_{\rm ell}^+
\text{ is zero on finite }\Gamma_A,
\quad
K_{\rm ell}^+\text{ is charged when }\Gamma_A\text{ blows up.}
\tag{BGP.9}
```

The current inputs do not prove finite \(\Gamma_A\) on terminal heat-scale
families.

## 3. Coefficient and commutator defects

The pulled-back velocity-pressure equation is

```math
\partial_tv+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0.
\tag{BGP.10}
```

Differentiating the tower creates coefficient and commutator terms involving

```math
D_a^\beta A,\quad
D_a^\beta G,\quad
D_a^\alpha v,\quad
D_a^\alpha q.
\tag{BGP.11}
```

Thus:

```math
K_{\rm coef}^+
\quad\text{is finite coefficient-geometry/tower loss,}
\tag{BGP.12}
```

and

```math
K_{\rm comm}^+
\quad\text{is unabsorbed coefficient-commutator loss.}
\tag{BGP.13}
```

These vanish or are absorbed only under the same material coefficient/tower
record that Body IV is supposed to produce:

```math
\sup_m\mathfrak R_{N,m}(I_m^{ret})<\infty.
\tag{BGP.14}
```

No installed estimate derives `(BGP.14)` from finite energy/local energy.

## 4. Transport and atlas defects

The exact cross-scale label law is

```math
\partial_\sigma Y_\sigma
=
\nabla_yY_\sigma
\left(
-y+2sV_\sigma
+r_\sigma^{-1}\dot x_\sigma
-r_\sigma^{-2}\dot T_\sigma V_\sigma
\right).
\tag{BGP.15}
```

The fixed center/time part is same-packet.  The moving center/time, label,
sign, selector, and collar terms require the atlas variation measure to be
inside the same packet:

```math
d\Lambda_{atlas,N}
\le
C\,dA_{4B,N}^{atlas}.
\tag{BGP.16}
```

When this fails, the \(G\to S\) transport defect is not hidden:

```math
K_{\rm transport}^+
\quad\text{records failure of the material tower to match the next Body-I
carrier.}
\tag{BGP.17}
```

The fixed-terminal-gauge and selector-stabilization notes solve the retained
branch after the atlas is fixed or visible.  They do not prove terminal-tail
summability of all atlas variation from original smooth data.

## 5. Heat-scale discount barrier

The exact obstruction remains the heat-scale conversion.  On a radius \(r\)
heat-scale packet, an order-one normalized strain/deformation event has

```math
\int_{-1}^{0}
\|S(V_r)(s)\|_{L^\infty(B_1)}\,ds
\simeq 1.
\tag{BGP.18}
```

The physical dissipation on that same packet is radius-weighted:

```math
\int_{t_r-r^2}^{t_r}
\int_{B_r}
|\nabla_xu|^2\,dx\,dt
=
r
\int_{-1}^{0}\int_{B_1}
|\nabla_yV_r|^2\,dy\,ds.
\tag{BGP.19}
```

Likewise, the material stress-work identity controls the physical annular
stress work, while the normalized packet currency divides out the same radius:

```math
\int \rho_A(t)\,dt
=
r\int \widehat\rho_A(s)\,ds.
\tag{BGP.20}
```

So current material geometry and stress-work identities supply discounted
control.  They do not supply the unweighted terminal reserve.

## 6. Direct attempt result

`BodyIVGeometryTowerProductionOrKGPlusSummability.A` does not close from the
installed inputs.

It reduces to one of the following same-packet producers:

```math
\boxed{
\texttt{UniformHeatScaleMaterialRecordSurvival.A}
}
\tag{BGP.21}
```

meaning

```math
\sup_m\mathfrak R_{N,m}(I_m^{ret})<\infty;
\tag{BGP.22}
```

or

```math
\boxed{
\texttt{UnweightedMaterialStrainActionReserve.A}
}
\tag{BGP.23}
```

meaning the normalized material strain/action has finite unweighted terminal
mass on the same packet; or

```math
\boxed{
\texttt{GeometryDefectTerminalTailSummability.A}
}
\tag{BGP.24}
```

meaning

```math
\int_{\sigma_0}^{\infty}
\left(
dK_{\rm ell}^+
+dK_{\rm coef}^+
+dK_{\rm comm}^+
+dK_{\rm transport}^+
+dK_G^+
\right)
<\infty.
\tag{BGP.25}
```

The retained branch is already paid by the four-body packet.  The unresolved
pure gold problem is to prove that the non-retained geometry/tower branch has
finite terminal tail rather than becoming loss of the same material packet
record.

