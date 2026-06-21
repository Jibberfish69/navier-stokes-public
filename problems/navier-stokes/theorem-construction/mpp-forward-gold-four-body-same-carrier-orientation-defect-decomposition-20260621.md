---
theorem_id: forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621
status: same-carrier-orientation-defect-decomposition-proved-ns-pairwise-identifications-not-installed
logical_landing_node: four_body_same_carrier_orientation_defect_decomposition
edge_effect: "Proves the exact decomposition of the same-carrier orientation requirement in the upgraded four-body loop. The abstract unweighted reserve applies only after every outgoing body current is the same signed measure as the next incoming current on the selected tower carrier. If the pairwise identifications fail, the failure is a positive orientation defect added to the four-body residual. For the Navier-Stokes bodies this reduces the live production problem to four pairwise same-carrier identifications: Body I to Body II tower/participation, Body II to Body III retained packet, Body III to Body IV canonical compact profile, and Body IV to Body I geometry/tower recertification."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-canonical-selected-carrier-identification-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-bodyii-interface-reorientation-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-bodyiv-canonical-geometry-packet-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-bodyi-geometry-tower-recertification-interface-criterion-20260621.md
---

# Four-Body Same-Carrier Orientation Defect Decomposition

Date: 2026-06-21

## 0. Aim

The four body normal forms are individually exact.  That is not yet the
four-body proof.

The loop gives an unweighted reserve only when the exchange current leaving one
body is literally the exchange current entering the next body on the same
selected carrier.

This note proves the exact decomposition:

```math
\boxed{
\text{same-carrier current orientation}
\quad\text{or}\quad
\text{positive four-body orientation defect.}
}
\tag{SOD.1}
```

It is the non-flattened version of the old four-body balance idea.  The tower,
participation, compactness, and geometry bodies do not merely coexist.  Their
exchange currents must be the same signed measures after being transported to
one selected tower carrier.

## 1. Common selected carrier

Let \(C\) be the common selected tower carrier for a terminal heat-scale packet.
It includes normalized time, normalized space, packet label, cutoff label,
projection label, derivative rung, selector label, and the same-cylinder or
cross-cylinder transport data.

The four bodies are

```math
i\in\{S,Q,C,G\},
\tag{SOD.2}
```

standing for scale/tower, participation, compactness/no-loss, and
gradient/geometry.

Each body has a local signed exchange current.  Write

```math
J_i^{\rm out}
\tag{SOD.3}
```

for the current leaving body \(i\), and

```math
J_i^{\rm in}
\tag{SOD.4}
```

for the current entering body \(i\) from the previous body.

After all carrier maps, gauges, rescalings, pullbacks, and packet inclusions
are applied, regard both as finite signed Radon measures on \(C\).

## 2. Body inequalities before orientation

Assume each body has the inequality

```math
dL_i+dD_i+c_i\,dA_i+dJ_i^{\rm out}
\le
dJ_i^{\rm in}+dR_i,
\qquad
c_i\ge0,
\tag{SOD.5}
```

where \(D_i,A_i,R_i\) are nonnegative measures and \(L_i\) is a
bounded-variation storage.

The abstract same-carrier lemma corresponds to the special case

```math
dJ_i^{\rm in}=dJ_{i-1}^{\rm out}
\quad
\text{as signed measures on }C.
\tag{SOD.6}
```

The point of this note is to keep the failure of `(SOD.6)` visible.

## 3. Orientation defect

Sum `(SOD.5)` over the four bodies:

```math
dL_{4B}+dD_{4B}+dA_{4B}
+
\sum_i dJ_i^{\rm out}
\le
\sum_i dJ_i^{\rm in}
+
dR_{4B},
\tag{SOD.7}
```

where

```math
L_{4B}=\sum_iL_i,
\qquad
D_{4B}=\sum_iD_i,
\qquad
A_{4B}=\sum_i c_iA_i,
\qquad
R_{4B}=\sum_iR_i.
\tag{SOD.8}
```

Define the signed orientation mismatch

```math
dK_{\rm orient}
:=
\sum_i dJ_i^{\rm in}
-
\sum_i dJ_i^{\rm out}.
\tag{SOD.9}
```

Then

```math
dL_{4B}+dD_{4B}+dA_{4B}
\le
dR_{4B}+dK_{\rm orient}.
\tag{SOD.10}
```

Since the left side contains nonnegative measures \(D_{4B}\) and \(A_{4B}\),
the spendable obstruction is the positive part:

```math
\boxed{
dL_{4B}+dD_{4B}+dA_{4B}
\le
dR_{4B}+dK_{\rm orient}^+,
\qquad
dK_{\rm orient}^+:=(dK_{\rm orient})^+.
}
\tag{SOD.11}
```

Thus the unweighted four-body reserve becomes

```math
\boxed{
A_{4B}((a,b])
\le
L_{4B}(a)-L_{4B}(b)
+
R_{4B}((a,b])
+
K_{\rm orient}^+((a,b]).
}
\tag{SOD.12}
```

If \(L_{4B}\) is bounded below on the terminal tail and
\(R_{4B}+K_{\rm orient}^+\) has finite tail mass, then

```math
\boxed{
A_{4B}((a,\tau])
\le
L_{4B}(a)-\inf L_{4B}
+
R_{4B}((a,\tau])
+
K_{\rm orient}^+((a,\tau]).
}
\tag{SOD.13}
```

Therefore same-carrier orientation is exactly the condition

```math
\boxed{
K_{\rm orient}^+=0
}
\tag{SOD.14}
```

or, more generally, \(K_{\rm orient}^+\) must be paid as a legal/four-body
defect.

## 4. Pairwise decomposition

Let the cyclic order be

```math
S\to Q\to C\to G\to S.
\tag{SOD.15}
```

Define the pairwise signed mismatches

```math
dK_{S\to Q}
:=
dJ_Q^{\rm in}-dJ_S^{\rm out},
\tag{SOD.16}
```

```math
dK_{Q\to C}
:=
dJ_C^{\rm in}-dJ_Q^{\rm out},
\tag{SOD.17}
```

```math
dK_{C\to G}
:=
dJ_G^{\rm in}-dJ_C^{\rm out},
\tag{SOD.18}
```

and

```math
dK_{G\to S}
:=
dJ_S^{\rm in}-dJ_G^{\rm out}.
\tag{SOD.19}
```

Then

```math
dK_{\rm orient}
=
dK_{S\to Q}
+dK_{Q\to C}
+dK_{C\to G}
+dK_{G\to S}.
\tag{SOD.20}
```

Therefore

```math
\boxed{
dK_{\rm orient}^+
\le
dK_{S\to Q}^+
+dK_{Q\to C}^+
+dK_{C\to G}^+
+dK_{G\to S}^+.
}
\tag{SOD.21}
```

So a positive orientation defect must occur in at least one adjacent interface
unless all pairwise mismatches cancel exactly as signed measures.

## 5. Navier-Stokes meaning of the four interfaces

For the actual upgraded Navier-Stokes bodies, `(SOD.16)` through `(SOD.19)`
become four concrete same-carrier identification problems.

### 5.1. Scale/tower to participation

The \(S\to Q\) interface has a corrected exact form.  Body I must use the same
rung storage as Body II:

```math
E_{m,\alpha}=M_{m,\alpha,\eta}.
\tag{SOD.22}
```

Then Body II gives

```math
dM_{m,\alpha,\eta}+dD_{m,\alpha,\eta}=dJ_{m,\alpha,\eta}.
\tag{SOD.23}
```

Therefore the weighted tower storage derivative differs from the weighted
participation flux by exactly the weighted viscous/tower loss.  The oriented
interface identity is:

```math
\boxed{
dL_S+dD_S^{\rm rad}+dD_Q^w=dJ_{SQ}^{\rm flux},
}
\tag{SOD.24}
```

where

```math
dD_Q^w
:=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dD_{m,\alpha,\eta},
\qquad
dJ_{SQ}^{\rm flux}
:=
\sum_{(m,\alpha)}
w_{m,\alpha}\,dJ_{m,\alpha,\eta}.
\tag{SOD.25}
```

Thus the old mismatch

```math
\boxed{
dJ_{SQ}^{\rm flux}
-
\sum_{(m,\alpha)}
w_{m,\alpha}\,dM_{m,\alpha,\eta}
=
dD_Q^w
}
\tag{SOD.26}
```

is a true nonnegative loss, not a hidden carrier defect.  The remaining
same-carrier requirements are the same rung storage, same factorial weight,
same cutoff, same normalized cylinder, and same parabolic tower transport.
Any additional mismatch is \(K_{S\to Q}^+\) or \(K_{\rm sel}\).

### 5.2. Participation to compactness/no-loss

The \(Q\to C\) interface requires the signed participation current, its
negative partner, and the nonnegative selected positive carrier to be retained
inside the compact Body-III packet:

```math
d\mu_n^J=d\mu_n^A-d\mu_n^N.
\tag{SOD.27}
```

The retained-packet criterion now makes this interface exact.  If Body III
retains the three-measure packet

```math
\mathcal Q_n^{\rm ret}
=
(\mu_n^A,\mu_n^N,\mu_n^J),
\tag{SOD.28}
```

then weak compactness preserves the polar identity:

```math
d\mu_*^J=d\mu_*^A-d\mu_*^N.
\tag{SOD.29}
```

The selected carrier representation, tightness-defect, and canonical
identification notes identify the positive carrier:

```math
d\mu_n^A=[h_{n,P}]_+\,dy\,ds\,\delta_P,
\tag{SOD.30}
```

escaped mass is \(K_{\rm tight}^A\), and interior density mismatch is
\(K_{C,A}^{\rm int,+}\).

The full \(Q\to C\) defect is now

```math
\boxed{
K_{Q\to C}^+
\le
K_{\rm sel}
+K_{C,A}^+
+K_{C,N}^+
+K_{C,J}^+
+R_{\rm legal}.
}
\tag{SOD.31}
```

Thus the \(Q\to C\) interface closes when the missing negative partner is
retained or charged, the selected positive carrier is tight and canonically
identified up to \(K_C^+\), and the signed current and negative partner are
also canonically identified up to \(K_C^+\).

### 5.3. Compactness/no-loss to geometry

The \(C\to G\) interface requires the compact limiting packet
\(\mathcal P_*\) to be the canonical packet of the limiting profile \((U,\Pi)\)
in the geometry variables used by Body IV.

The interface now has an exact material-pullback criterion.  Let
\(\Xi(a,t)=(X(a,t),t)\) be the Body-IV material map generated by the limiting
velocity field, with

```math
\partial_tX(a,t)=U(X(a,t),t),
\qquad
\det D_aX(a,t)=1.
\tag{SOD.32}
```

If Body III has already identified the weak compact packet with the canonical
Eulerian packet \(\mathcal P_E[U,\Pi]\), and Body IV consumes exactly the
material pullback of that packet,

```math
\mathcal P_G[v,q,A,G]
=
\Xi^\sharp\mathcal P_E[U,\Pi],
\tag{SOD.33}
```

then \(C\to G\) is exact.

The positive interface defect is charged by

```math
\boxed{
K_{C\to G}^+
\le
K_C^+
+
K_{\rm geom,map}^+
+
K_{\rm geom,gauge}^+
+
K_{\rm geom,coef}^+
+
R_{\rm legal}.
}
\tag{SOD.34}
```

The four terms mean, respectively: Body-III no-loss failure, absence or
nonuniqueness of the material map on the selected carrier, gauge/label/cutoff
mismatch, and missing coefficient-geometry or commutator control for \(A\) and
\(G\).

### 5.4. Geometry to scale/tower

The \(G\to S\) interface requires the Body-IV deformation geometry to recertify
the next Body-I tower carrier.

The interface now has an exact variable-coefficient tower criterion.  In
material variables,

```math
\partial_t v+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\nabla_a\cdot(Av)=0.
\tag{SOD.35}
```

The finite material tower has coefficient commutators

```math
\mathcal C_{m,\alpha}^G
:=
\nu[\partial_t^m\partial_a^\alpha,\operatorname{div}_a(G\nabla_a)]v
-
[\partial_t^m\partial_a^\alpha,A^\top\nabla_a]q.
\tag{SOD.36}
```

If the material metric is uniformly elliptic, the finite coefficient-commutator
packet is retained or absorbed, and the material tower transports back to the
next selected Body-I carrier,

```math
\boxed{
\Theta_{G\to S}\mathcal T_N[v,G]
=
\mathcal T_N^{\rm next}[u,p]
\Longrightarrow
dK_{G\to S}=0.
}
\tag{SOD.37}
```

Failure is charged by

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
\tag{SOD.38}
```

Thus the return interface closes only when ellipticity, coefficient geometry,
commutator absorption, and same-carrier tower transport are all retained or
charged.

## 6. Lossless-cycle consequence

In a lossless same-carrier cycle,

```math
K_{\rm orient}^+=0,
\qquad
K_{\rm sel}=0,
\qquad
K_C^+=0,
\qquad
K_G^+=0.
\tag{SOD.39}
```

Then the four body exchange currents cancel exactly, and the atom/accounting
lemma gives the unweighted reserve:

```math
\boxed{
\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma
\le
L_{4B}(\sigma_0)-\inf L_{4B}
+
R_{4B}((\sigma_0,\infty)).
}
\tag{SOD.40}
```

If the residual vanishes on the terminal tail, nonzero selected activity must
come from a downward storage drop or from a nonzero body loss.  It cannot be a
free circulation.

## 7. Current state

This note proves the same-carrier orientation decomposition:

```math
\boxed{
\text{unweighted four-body reserve}
\quad\text{with extra residual }K_{\rm orient}^+.
}
\tag{SOD.41}
```

The \(S\to Q\) interface has now been reoriented exactly by `(SOD.24)`, provided
Body I uses the same rung storage, weights, cutoff, cylinder, and parabolic
tower transport as Body II.

The \(Q\to C\) interface has now been reduced to the retained-packet condition
`(SOD.31)`: Body III must keep the signed current, positive carrier, and
negative partner together, or the failure is charged in \(K_{\rm sel}\),
\(K_C^+\), or \(R_{\rm legal}\).

The \(C\to G\) interface has now been reduced to the canonical material-geometry
packet criterion `(SOD.34)`: Body III must give Body IV the same packet through
the volume-preserving material map, or the failure is charged in \(K_C^+\),
\(K_G^+\), or \(R_{\rm legal}\).

The \(G\to S\) interface has now been reduced to the variable-coefficient tower
recertification criterion `(SOD.38)`: Body IV must return a uniformly elliptic,
coefficient-controlled, commutator-absorbed material tower to the next Body-I
selected carrier, or the failure is charged in \(K_G^+\), \(K_{G\to S}^+\), or
\(R_{\rm legal}\).

It does not prove the remaining Navier-Stokes production theorem that makes
these geometry and commutator defects vanish, nor does it prove that selector
changes inside \(S\to Q\), \(Q\to C\), \(C\to G\), or \(G\to S\) have zero
defect.

The remaining proof work is now sharper:

```math
\boxed{
\text{prove the production hypotheses inside the four pairwise interface
criteria, or charge their positive mismatches in the existing four-body defect
terms.}
}
\tag{SOD.42}
```

That is the exact current form of "the four bodies must balance."  Balance
means same signed measures on the same selected tower carrier, not four
separate estimates with similar names.
