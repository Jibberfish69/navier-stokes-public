---
theorem_id: forward-gold-selected-tower-carrier-representation-20260621
status: finite-tower-carrier-representation-proved-tightness-and-limit-identification-open
logical_landing_node: selected_tower_carrier_representation
edge_effect: "Proves the representability clause in the selected-carrier measure persistence criterion for finite selected tower packet families. Given the actual rescaled Navier-Stokes participation density h_P on each selected packet, the positive selected activity is exactly the total mass of the nonnegative measure with density [h_P]_+ on the extended same-carrier space. Thus the representation part of SCM.26 is paid before compactness. The remaining open clauses are tightness of these measures and Body-III identification of their weak limit with the canonical selected carrier of the limiting profile."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-packet-selector-polar-retention-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-canonical-selected-carrier-identification-criterion-20260621.md
---

# Selected Tower Carrier Representation

Date: 2026-06-21

## 0. Aim

The selected-carrier persistence criterion needs retained nonnegative measures
\(\mu_n^A\) satisfying

```math
A_{\rm sel}(X_n)
\le
\mu_n^A(C)
+
K_{{\rm sel},n}
+
R_{{\rm legal},n}.
\tag{STR.1}
```

This note proves the representation part of that statement for the actual
finite selected Navier-Stokes tower packet.

The point is:

```math
\boxed{
\text{once the selected tower density }h_P\text{ exists, its positive part is
already a nonnegative carrier measure.}
}
\tag{STR.2}
```

This pays representation.  It does not pay tightness or limit identification.

## 1. Finite selected tower family

Let \(K\subset(-1,0)\) be a compact normalized log-time or heat-time interval.
Let \(\mathcal F_n\) be the finite active packet family for the \(n\)-th
rescaled terminal tower.  A packet label \(P\in\mathcal F_n\) includes the
normalized cylinder, cutoff, derivative rung, projection, and selector data
used by the participation law.

For each \(P\in\mathcal F_n\), let

```math
h_{n,P}\in L^1(K\times P)
\tag{STR.3}
```

be the signed local participation density produced by the full coupled
velocity-pressure-viscosity-incompressibility tower on that packet.

Examples are the Body-II base trace density

```math
h_{n,P}(s,y)
=
F_n(s,y)\cdot\nabla(\eta_P^2)(y),
\tag{STR.4}
```

or the mixed-rung density

```math
h_{n,P}(s,y)
=
F_{n,m,\alpha}(s,y)\cdot\nabla(\eta_P^2)(y)
-
\eta_P^2(y)\,
W_{n,m,\alpha}(s,y)\cdot B_{n,m,\alpha}(s,y).
\tag{STR.5}
```

The exact form of \(h_{n,P}\) is the one supplied by the Body-II tower identity;
no separate pressure-only, viscosity-only, or transport-only object is being
introduced.

Let \(\mathcal S_n\subset\mathcal F_n\) be the selected subfamily.  Define the
extended selected carrier space

```math
C_n
:=
\bigsqcup_{P\in\mathcal S_n}
(K\times P\times\{P\}).
\tag{STR.6}
```

The label \(P\) is part of the carrier.  This is what prevents two different
selected packets with opposite signs from being silently identified before the
positive part is recorded.

## 2. The nonnegative selected carrier measure

Define a nonnegative Radon measure \(\mu_n^A\) on \(C_n\) by

```math
\boxed{
d\mu_n^A(s,y,P)
:=
[h_{n,P}(s,y)]_+\,dy\,ds\,\delta_P.
}
\tag{STR.7}
```

For every Borel set \(E\subset C_n\),

```math
\mu_n^A(E)
=
\sum_{P\in\mathcal S_n}
\int_{(K\times P)\cap E_P}
[h_{n,P}(s,y)]_+\,dy\,ds,
\tag{STR.8}
```

where \(E_P\) is the \(P\)-slice of \(E\).

The selected positive activity on \(K\) is

```math
A_{\rm sel}(X_n;K)
:=
\sum_{P\in\mathcal S_n}
\int_K\int_P
[h_{n,P}(s,y)]_+\,dy\,ds.
\tag{STR.9}
```

Therefore

```math
\boxed{
A_{\rm sel}(X_n;K)=\mu_n^A(C_n).
}
\tag{STR.10}
```

Thus `(STR.1)` holds with equality and with no representation loss:

```math
\boxed{
A_{\rm sel}(X_n;K)
=
\mu_n^A(C_n)
\le
\mu_n^A(C_n)
+
K_{{\rm sel},n}
+
R_{{\rm legal},n}.
}
\tag{STR.11}
```

This proves the retained nonnegative carrier representation whenever the
four-body packet includes the measure `(STR.7)`.

## 3. Signed current and polar partner

The signed selected current and the negative local partner are represented on
the same extended carrier by

```math
d\mu_n^J(s,y,P)
:=
h_{n,P}(s,y)\,dy\,ds\,\delta_P,
\tag{STR.12}
```

and

```math
d\mu_n^N(s,y,P)
:=
[h_{n,P}(s,y)]_-\,dy\,ds\,\delta_P.
\tag{STR.13}
```

Then, as signed measures on \(C_n\),

```math
\boxed{
d\mu_n^J=d\mu_n^A-d\mu_n^N.
}
\tag{STR.14}
```

Pushing `(STR.14)` forward to \(K\) recovers the packet-selector polar identity

```math
dJ_{\mathcal S_n}=dA_{\mathcal S_n}-dN_{\mathcal S_n}.
\tag{STR.15}
```

So retaining \(\mu_n^A\) does not erase the signed-current accounting.  It
records the positive carrier before signed cancellation and still keeps the
negative partner available for \(K_{\rm sel}\), legal routing, or same-carrier
saturation.

## 4. Cross-cylinder compatibility

Assume two selected cylinders are related by the exact parabolic tower
transport

```math
V_{j+1}(s,y)=\lambda V_j(\lambda^2s,\lambda y),
\qquad
Q_{j+1}(s,y)=\lambda^2 Q_j(\lambda^2s,\lambda y),
\tag{STR.16}
```

with the transported cutoff, rung, and packet label used in the Body-II normal
form.

For a mixed rung with

```math
h_{m,\alpha}=2m+|\alpha|+1,
\tag{STR.17}
```

the signed participation density scales as

```math
h_{j+1,P_{j+1}}(s,y)
=
\lambda^{2h_{m,\alpha}+2}
h_{j,P_j}(\lambda^2s,\lambda y).
\tag{STR.18}
```

Since the scale factor in `(STR.18)` is positive,

```math
[h_{j+1,P_{j+1}}(s,y)]_+
=
\lambda^{2h_{m,\alpha}+2}
[h_{j,P_j}(\lambda^2s,\lambda y)]_+.
\tag{STR.19}
```

After the spacetime change of variables \(ds\,dy=\lambda^{-5}ds'\,dy'\), the
selected carrier measure transforms with the same factor as the Body-II signed
current:

```math
\mu_{j+1}^{A}(I\times P_{j+1})
=
\lambda^{2h_{m,\alpha}-3}
\mu_j^{A}(\lambda^2 I\times P_j).
\tag{STR.20}
```

Thus the positive carrier representation is compatible with the same
cross-cylinder tower coupling used by the signed participation current.

If the selector changes the cutoff, rung, projection, packet label, or positive
part after this transport, the difference is not representation failure.  It is
exactly a carrier-mismatch or selector defect in the four-body loop.

## 5. What remains unproved

This note proves only representation:

```math
\boxed{
\text{finite selected tower packet}
\Longrightarrow
A_{\rm sel}=\mu_n^A(C_n)
\text{ for a nonnegative retained carrier measure.}
}
\tag{STR.21}
```

It does not prove the compactness and no-loss clauses still needed by the
selected carrier persistence production criterion:

```math
\boxed{
\text{tightness of }\mu_n^A
\text{ on the normalized same-carrier compactness space;}
}
\tag{STR.22}
```

and

```math
\boxed{
\text{identification of every weak limit of }\mu_n^A
\text{ with the canonical selected carrier of the limiting Navier-Stokes
profile, up to }K_C^+.
}
\tag{STR.23}
```

The identification clause is now sharpened by the Body-III canonical carrier
criterion.  On a fixed compact selected carrier, it follows from

```math
\sum_{P\in\mathcal S}
\|h_{n,P}-h_P[U,\Pi]\|_{L^1(K\times P)}
\to0.
\tag{STR.23a}
```

Thus the remaining production is not a vague continuity condition for the
positive part.  It is strong same-carrier convergence of the full coupled
participation density of the velocity-pressure tower.

So the exact current frontier after this note is:

```math
\boxed{
\text{representation is paid; tightness failure is charged; interior
Body-III identification reduces to }L^1\text{ density convergence or }K_C^+.
}
\tag{STR.24}
```

Those two remaining clauses are still part of the same four-body concept.  They
ask whether the nonnegative carrier produced by the full participation tower
survives compactness on the same selected carrier.
