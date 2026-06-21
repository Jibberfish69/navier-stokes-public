---
theorem_id: forward-gold-bodyiv-bodyi-geometry-tower-recertification-interface-criterion-20260621
status: bodyiv-bodyi-geometry-tower-recertification-criterion-proved-ns-unweighted-geometry-production-not-installed
logical_landing_node: bodyiv_bodyi_geometry_tower_recertification_interface_criterion
edge_effect: "Proves the exact G-to-S interface criterion in the upgraded four-body loop. Body IV returns to Body I only through a pulled-back variable-coefficient tower for (v,q,A,G), not through a vague geometry regularity slogan. If the pulled-back metric is uniformly elliptic, the finite coefficient derivatives and commutator packet are retained or legally absorbed, and the material tower is transported back to the same selected Body-I carrier with the same finite rung/radius data, then the geometry-to-tower exchange current is exact. If ellipticity, coefficient geometry, commutator absorption, or material-to-Eulerian tower transport fails, the failure is charged to K_G^+, K_{G->S}^+, or legal residual. This proves the interface accounting criterion but not the Navier-Stokes production theorem that supplies the unweighted same-carrier geometry/action control."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-bodyiv-canonical-geometry-packet-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lagrangian-deformation-coercion-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/tower-to-shuffle-to-deformation-endgame-program.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621.md
---

# Body-IV / Body-I Geometry Tower Recertification Interface Criterion

Date: 2026-06-21

## 0. Aim

The \(G\to S\) interface is the return arrow from deformation geometry back to
the factorial tower.

Body IV does not recertify Body I by saying "geometry is controlled."  It
recertifies Body I only when the pulled-back variable-coefficient tower is a
valid next Body-I tower packet on the same selected carrier.

The exact criterion is:

```math
\boxed{
\text{uniform material metric}
+
\text{finite coefficient-commutator packet}
+
\text{same selected tower transport}
\Longrightarrow
\text{Body-I tower recertification.}
}
\tag{GSI.1}
```

This note proves that interface criterion.  It does not prove the unweighted
geometry/action production theorem that would make the hypotheses automatic.

## 1. Pulled-back equation

Let \(X(a,t)\) be the material map from the limiting profile, and set

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\tag{GSI.2}
```

with

```math
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^\top.
\tag{GSI.3}
```

The pulled-back Navier-Stokes equation is

```math
\partial_t v
+
A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\tag{GSI.4}
```

with the pulled-back incompressibility constraint

```math
\nabla_a\cdot(Av)=0.
\tag{GSI.5}
```

This is the exact geometry-evolving heat form.  Transport has not disappeared
for free; it has been moved into the coefficients \(A\) and \(G\).

## 2. Finite material tower

For a finite parabolic rung set

```math
\mathcal I_N
=
\{(m,\alpha):2m+|\alpha|\le N\},
\tag{GSI.6}
```

define

```math
W_{m,\alpha}
=
\partial_t^m\partial_a^\alpha v,
\qquad
Q_{m,\alpha}
=
\partial_t^m\partial_a^\alpha q.
\tag{GSI.7}
```

Applying \(\partial_t^m\partial_a^\alpha\) to `(GSI.4)` gives the exact
commutator form

```math
\partial_t W_{m,\alpha}
+
A^\top\nabla_aQ_{m,\alpha}
=
\nu\,\operatorname{div}_a(G\nabla_a W_{m,\alpha})
+
\mathcal C_{m,\alpha}^{G},
\tag{GSI.8}
```

where

```math
\mathcal C_{m,\alpha}^{G}
:=
\nu\,[\partial_t^m\partial_a^\alpha,\operatorname{div}_a(G\nabla_a)]v
-
[\partial_t^m\partial_a^\alpha,A^\top\nabla_a]q.
\tag{GSI.9}
```

For purely spatial rungs, this expands to the already identified coefficient
commutator packet:

```math
\mathcal C_{\alpha}^{G}
=
-
\sum_{0<\beta\le \alpha}
{\alpha\choose\beta}
(D^\beta A^\top)\nabla_a Q_{\alpha-\beta}
+
\nu
\sum_{0<\beta\le \alpha}
{\alpha\choose\beta}
\operatorname{div}_a\!\big((D^\beta G)\nabla_a W_{0,\alpha-\beta}\big).
\tag{GSI.10}
```

Thus the material tower is exact, but it carries a coefficient-commutator
packet.  This packet is the Body-IV obstruction that must be retained,
absorbed, or charged.

## 3. Metric and coefficient hypotheses

The pulled-back metric is usable for Body I on a material packet \(A_0\) when
there is an ellipticity constant \(\Lambda<\infty\) such that

```math
\Lambda^{-1}|\zeta|^2
\le
\zeta^\top G(a,t)\zeta
\le
\Lambda|\zeta|^2
\tag{GSI.11}
```

on the selected material carrier.

The finite coefficient packet is usable when

```math
\mathfrak C_N[A,G,q;v]
:=
\sum_{(m,\alpha)\in\mathcal I_N}
\left\|\mathcal C_{m,\alpha}^{G}\right\|_{\mathcal X_{m,\alpha}}
<\infty
\tag{GSI.12}
```

in the exact dual spaces \(\mathcal X_{m,\alpha}\) used by the Body-I tower
energy identities.

This is deliberately a criterion, not a hidden estimate.  The note does not
assert that `(GSI.11)` or `(GSI.12)` follows from physical energy.

## 4. Recertification of Body-I tower storage

Let \(\mathcal T_N[v,G]\) be the material tower packet

```math
\mathcal T_N[v,G]
=
\left\{
W_{m,\alpha},\ Q_{m,\alpha},\ G,\ A,\ 
\mathcal C_{m,\alpha}^{G}
\right\}_{(m,\alpha)\in\mathcal I_N}.
\tag{GSI.13}
```

Let the Body-I tower storage be computed with the same finite rung set,
factorial weights, selected cutoffs, and transported radii:

```math
L_S^G(t)
=
\sum_{(m,\alpha)\in\mathcal I_N}
w_{m,\alpha}(\tau,\rho)\,
E_{m,\alpha}^G(t).
\tag{GSI.14}
```

If `(GSI.11)` and `(GSI.12)` hold, then the variable-coefficient tower identity
has the Body-I form with a geometry commutator residual:

```math
\boxed{
dL_S^G+dD_S^{G,{\rm rad}}+dD_S^{G,{\rm par}}
\le
dJ_{GS}^{\rm tower}
+
dK_{\rm comm}^{G}
+
dR_{\rm legal}.
}
\tag{GSI.15}
```

Here \(D_S^{G,{\rm rad}}\ge0\) is the same factorial-radius spend,
\(D_S^{G,{\rm par}}\ge0\) is the coercive variable-coefficient parabolic drain
coming from \(G\), and \(K_{\rm comm}^{G}\) is the positive part of the finite
coefficient-commutator packet.

Thus Body IV recertifies Body I exactly when

```math
\boxed{
dK_{\rm comm}^{G}=0
\quad
\text{or}
\quad
dK_{\rm comm}^{G}\text{ is absorbed by }dD_S^{G,{\rm par}}\text{ or charged
to }K_G^+.
}
\tag{GSI.16}
```

## 5. Same-carrier tower transport

The material tower still has to be the next selected Body-I tower packet in the
common four-body carrier.  This requires the material-to-Eulerian transport

```math
\Xi(a,t)=(X(a,t),t)
\tag{GSI.17}
```

to identify the material packet labels, cutoffs, finite rungs, and transported
radii with the next Body-I carrier.

Write this identification as

```math
\boxed{
\Theta_{G\to S}\mathcal T_N[v,G]
=
\mathcal T_N^{\rm next}[u,p].
}
\tag{GSI.18}
```

If `(GSI.18)` holds and the commutator residual is absorbed or charged, then
the exchange current leaving Body IV equals the exchange current entering
Body I:

```math
\boxed{
dJ_S^{\rm in}=dJ_G^{\rm out}.
}
\tag{GSI.19}
```

Therefore

```math
\boxed{
dK_{G\to S}=0.
}
\tag{GSI.20}
```

## 6. Defect decomposition

When \(G\to S\) does not close, the positive interface defect is charged by

```math
\boxed{
K_{G\to S}^+
\le
K_{\rm ell}^+
+
K_{\rm coef}^+
+
K_{\rm comm}^+
+
K_{\rm transport}^+
+
K_G^+
+
R_{\rm legal}.
}
\tag{GSI.21}
```

The components mean:

```math
K_{\rm ell}^+
\quad
\text{metric ellipticity loss;}
\tag{GSI.22}
```

```math
K_{\rm coef}^+
\quad
\text{missing finite coefficient geometry for }A,G;
\tag{GSI.23}
```

```math
K_{\rm comm}^+
\quad
\text{unabsorbed coefficient-commutator packet;}
\tag{GSI.24}
```

and

```math
K_{\rm transport}^+
\quad
\text{failure of material tower labels/radii/cutoffs to match the next
Body-I selected carrier.}
\tag{GSI.25}
```

The first three are Body-IV geometry defects unless they are already absorbed
by the variable-coefficient parabolic drain.  The last is the actual interface
transport defect.

## 7. Four-body consequence

In the lossless same-carrier branch,

```math
K_G^+=0,
\qquad
R_{\rm legal}=0,
\qquad
K_{\rm ell}^+=K_{\rm coef}^+=K_{\rm comm}^+=K_{\rm transport}^+=0.
\tag{GSI.26}
```

Then

```math
\boxed{
dK_{G\to S}=0,
\qquad
\mathcal T_N^{\rm next}[u,p]
\text{ is recertified as the next Body-I tower packet.}
}
\tag{GSI.27}
```

The four-body cycle can then really close back into Body I.

## 8. Current state

This note proves the exact \(G\to S\) accounting criterion:

```math
\boxed{
\text{uniform material metric plus retained coefficient-commutator tower plus
same-carrier transport implies geometry-to-tower recertification.}
}
\tag{GSI.28}
```

It does not prove the Navier-Stokes production theorem that supplies an
unweighted same-carrier strain/action clock, finite coefficient geometry, or
no-derivative-loss commutator absorption from the existing energy/local-energy
inputs.

The remaining four-body obstruction is therefore no longer an unnamed return
gap.  It is the production of `(GSI.11)`, `(GSI.12)`, and `(GSI.18)` on the
selected terminal carrier, or the charging of their failures to \(K_G^+\) or
legal residual.
