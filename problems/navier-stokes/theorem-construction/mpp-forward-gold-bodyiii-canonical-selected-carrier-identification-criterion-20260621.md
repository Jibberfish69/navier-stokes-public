---
theorem_id: forward-gold-bodyiii-canonical-selected-carrier-identification-criterion-20260621
status: canonical-selected-carrier-identification-criterion-proved-ns-strong-density-convergence-not-installed
logical_landing_node: bodyiii_canonical_selected_carrier_identification_criterion
edge_effect: "Proves the exact Body-III interior identification criterion for the nonnegative selected carrier. On a fixed retained selected tower carrier, L1 convergence of the full coupled participation density h_n to the canonical limiting density h[U,P] implies total-variation convergence of the positive carrier measures [h_n]_+ to [h[U,P]]_+. Therefore the interior weak-limit mismatch is precisely a Body-III positive relay defect. The note identifies the required Navier-Stokes production clauses: same carrier/cutoff/selector/rung custody, finite tower density representation, strong convergence of the velocity-pressure-viscosity-incompressibility tower products, and pressure trace convergence."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-tower-carrier-representation-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-defect-as-bodyiii-relay-defect-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-no-loss-relay-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Body-III Canonical Selected Carrier Identification Criterion

Date: 2026-06-21

## 0. Aim

The upgraded four-body loop now has the following Body-III state.

Representation is paid:

```math
d\mu_n^A=[h_{n,P}]_+\,dy\,ds\,\delta_P.
\tag{CSI.1}
```

Failure of tightness is charged:

```math
K_{\rm tight}^A\le K_C^+.
\tag{CSI.2}
```

The remaining interior no-loss question is:

```math
\boxed{
\text{when selected carrier mass stays in the compact packet, does its weak
limit equal the canonical selected carrier of the limiting NS tower?}
}
\tag{CSI.3}
```

This note proves the exact criterion.

The positive-part operation is not the hard point once the signed density is
identified.  The map

```math
h\mapsto [h]_+
\tag{CSI.4}
```

is \(1\)-Lipschitz in \(L^1\).  Therefore strong \(L^1\) convergence of the
full coupled participation density gives total-variation convergence of the
selected positive carrier.

## 1. Fixed compact selected carrier

Work on one compact retained carrier window

```math
C_0
=
\bigsqcup_{P\in\mathcal S}
(K\times P\times\{P\}),
\tag{CSI.5}
```

where \(K\) is a compact normalized time interval and \(\mathcal S\) is a
finite selected packet/rung/projection/cutoff family.

For each \(P\in\mathcal S\), let

```math
h_{n,P}\in L^1(K\times P)
\tag{CSI.6}
```

be the exact signed participation density produced by the \(n\)-th rescaled
velocity-pressure-viscosity-incompressibility tower on packet \(P\).

Let \(X=(U,\Pi)\) be the limiting velocity-pressure tower profile, and let

```math
h_P[X]\in L^1(K\times P)
\tag{CSI.7}
```

be the canonical signed participation density obtained from the same packet
formula, the same cutoff, the same projection, the same derivative rung, and
the same selector applied to \((U,\Pi)\).

Define the retained selected carrier and canonical selected carrier by

```math
d\mu_n^A
=
\sum_{P\in\mathcal S}
[h_{n,P}]_+\,dy\,ds\,\delta_P,
\tag{CSI.8}
```

and

```math
d\mu^A[X]
=
\sum_{P\in\mathcal S}
[h_P[X]]_+\,dy\,ds\,\delta_P.
\tag{CSI.9}
```

## 2. Density identification implies carrier identification

Assume

```math
\boxed{
\sum_{P\in\mathcal S}
\|h_{n,P}-h_P[X]\|_{L^1(K\times P)}
\longrightarrow0.
}
\tag{CSI.10}
```

Then

```math
\boxed{
\|\mu_n^A-\mu^A[X]\|_{\rm TV}(C_0)
\longrightarrow0.
}
\tag{CSI.11}
```

### Proof

For real numbers \(a,b\),

```math
\big|[a]_+-[b]_+\big|\le |a-b|.
\tag{CSI.12}
```

Hence

```math
\begin{aligned}
\|\mu_n^A-\mu^A[X]\|_{\rm TV}(C_0)
&=
\sum_{P\in\mathcal S}
\int_{K\times P}
\big|
[h_{n,P}]_+-[h_P[X]]_+
\big|\,dy\,ds\\
&\le
\sum_{P\in\mathcal S}
\|h_{n,P}-h_P[X]\|_{L^1(K\times P)}.
\end{aligned}
\tag{CSI.13}
```

The right side tends to zero by `(CSI.10)`.

This proves `(CSI.11)`.

## 3. Body-III defect when density identification fails

Without `(CSI.10)`, after compactness one may still have a weak limit

```math
\mu_n^A\stackrel{*}{\rightharpoonup}\mu_*^A
\quad\text{on }C_0.
\tag{CSI.14}
```

The interior selected-carrier relay defect is exactly

```math
\boxed{
K_{C,A}^{\rm int,+}
:=
\big(\mu_*^A-\mu^A[X]\big)^+(C_0).
}
\tag{CSI.15}
```

Thus

```math
\boxed{
\mu_*^A(C_0)
\le
\mu^A[X](C_0)+K_{C,A}^{\rm int,+}.
}
\tag{CSI.16}
```

This is not a new fifth body.  It is the selected-carrier component of the
Body-III no-loss relay defect \(K_C^+\).

Combining this with the tightness-defect note gives the complete Body-III
selected-carrier estimate:

```math
\boxed{
\limsup_{n\to\infty}A_{\rm sel}(X_n)
\le
A_{\rm ret}(X)
+
K_{\rm tight}^A
+
K_{C,A}^{\rm int,+}
+
\limsup_{n\to\infty}
\big(
K_{{\rm sel},n}+R_{{\rm legal},n}
\big).
}
\tag{CSI.17}
```

With

```math
K_{C,A}^+
:=
K_{\rm tight}^A+K_{C,A}^{\rm int,+},
\tag{CSI.18}
```

this becomes

```math
\boxed{
\limsup_{n\to\infty}A_{\rm sel}(X_n)
\le
A_{\rm ret}(X)
+
K_{C,A}^+
+
\limsup_{n\to\infty}
\big(
K_{{\rm sel},n}+R_{{\rm legal},n}
\big).
}
\tag{CSI.19}
```

Since \(K_{C,A}^+\le K_C^+\), this is the Body-III selected-carrier
persistence estimate.

## 4. What produces density convergence

The density \(h_{n,P}\) is not pressure alone, viscosity alone, or transport
alone.  It is the selected packet density of the full coupled participation
tower.

For a base local-energy packet, it has the form

```math
h_{n,P}
=
F_n\cdot\nabla(\eta_P^2),
\tag{CSI.20}
```

where

```math
F_n
=
\left(\frac12|V_n|^2+Q_n\right)V_n
-
\nu\nabla\frac12|V_n|^2.
\tag{CSI.21}
```

For a tower rung, the density has the schematic but exact packet form

```math
h_{n,P}
=
F_{n,m,\alpha}\cdot\nabla(\eta_P^2)
-
\eta_P^2\,W_{n,m,\alpha}\cdot B_{n,m,\alpha},
\tag{CSI.22}
```

where \(F_{n,m,\alpha}\), \(W_{n,m,\alpha}\), and \(B_{n,m,\alpha}\) are the
objects produced by the Body-II derivative-tower participation identity on
that same packet.

Thus `(CSI.10)` is produced by the following finite-carrier clauses.

First, the carrier is fixed:

```math
\boxed{
\text{same packet window, same cutoff, same projection, same finite rung set,
and same selector on }C_0.
}
\tag{CSI.23}
```

Second, the velocity-pressure tower products converge strongly enough to make
the packet flux converge in \(L^1\).  For the base flux, a sufficient exact set
of conditions is:

```math
V_n\to U\quad\text{in }L^3(K\times P),
\tag{CSI.24}
```

```math
Q_n\to \Pi\quad\text{in }L^{3/2}(K\times P),
\tag{CSI.25}
```

and

```math
V_n\to U,\quad \nabla V_n\to\nabla U
\quad\text{in }L^2(K\times P).
\tag{CSI.26}
```

Indeed,

```math
\||V_n|^2V_n-|U|^2U\|_{L^1}\to0,
\tag{CSI.27}
```

```math
\|Q_nV_n-\Pi U\|_{L^1}\to0,
\tag{CSI.28}
```

and

```math
\|\nabla |V_n|^2-\nabla |U|^2\|_{L^1}\to0.
\tag{CSI.29}
```

For a finite tower rung, the corresponding sufficient condition is:

```math
\boxed{
F_{n,m,\alpha}\to F_{m,\alpha}[U,\Pi],
\quad
W_{n,m,\alpha}\to W_{m,\alpha}[U,\Pi],
\quad
B_{n,m,\alpha}\to B_{m,\alpha}[U,\Pi]
\text{ in product exponents that imply }L^1.
}
\tag{CSI.30}
```

For example, \(W_{n,m,\alpha}\to W_{m,\alpha}\) in \(L^2\) and
\(B_{n,m,\alpha}\to B_{m,\alpha}\) in \(L^2\), with uniform \(L^2\) bounds,
imply

```math
W_{n,m,\alpha}\cdot B_{n,m,\alpha}
\to
W_{m,\alpha}\cdot B_{m,\alpha}
\quad\text{in }L^1.
\tag{CSI.31}
```

Third, pressure must converge as the pressure belonging to the same limiting
incompressible tower:

```math
-\Delta Q_n
=
\partial_i(V_n)_j\,\partial_j(V_n)_i,
\qquad
-\Delta\Pi
=
\partial_iU_j\,\partial_jU_i,
\tag{CSI.32}
```

with the local pressure normalization used by the packet.  The needed output
for Body III is the trace convergence `(CSI.25)`, not a separate pressure-only
estimate detached from the tower.

Under `(CSI.23)` through `(CSI.31)`, the density convergence `(CSI.10)` holds,
and hence \(K_{C,A}^{\rm int,+}=0\).

## 5. Failure channels

The criterion isolates the exact ways interior Body-III identification can
fail after tightness has already been charged.

The carrier can fail to be the same carrier:

```math
\boxed{
\text{cutoff, packet, projection, selector, or rung labels change without a
declared selector/carrier defect.}
}
\tag{CSI.33}
```

The signed density can fail to converge:

```math
\boxed{
\limsup_n
\sum_{P\in\mathcal S}
\|h_{n,P}-h_P[X]\|_{L^1(K\times P)}
>0.
}
\tag{CSI.34}
```

The product structure can fail:

```math
\boxed{
V_n\otimes V_n,\quad Q_nV_n,\quad V_n\nabla V_n,\quad
W_{n,m,\alpha}B_{n,m,\alpha}
\text{ do not converge to the products of }(U,\Pi).
}
\tag{CSI.35}
```

Or the pressure trace can fail:

```math
\boxed{
Q_n\not\to\Pi
\text{ in the local pressure trace topology used by the packet.}
}
\tag{CSI.36}
```

Each failure is a Body-III no-loss defect.  In the selected positive carrier
component, the spendable defect is \(K_{C,A}^{\rm int,+}\).  In the full
four-body packet it is included in \(K_C^+\).

## 6. Four-body consequence

In the lossless same-carrier four-body branch,

```math
K_C^+=0.
\tag{CSI.37}
```

Since

```math
K_{\rm tight}^A+K_{C,A}^{\rm int,+}\le K_C^+,
\tag{CSI.38}
```

lossless Body III forces both:

```math
\boxed{
K_{\rm tight}^A=0
\quad\text{and}\quad
K_{C,A}^{\rm int,+}=0.
}
\tag{CSI.39}
```

So a lossless four-body cycle cannot lose selected activity through compactness:
the retained positive carrier is tight and its interior weak limit is the
canonical selected carrier of the limiting velocity-pressure tower.

## 7. Current state

This note proves:

```math
\boxed{
L^1\text{ identification of the full participation density}
\Rightarrow
\text{canonical selected-carrier identification.}
}
\tag{CSI.40}
```

It also proves that failure of the interior identification is a Body-III
positive relay defect, not an untracked compactness loophole.

It does not prove the Navier-Stokes production theorem that supplies the strong
density convergence `(CSI.10)`.  The remaining production problem is:

```math
\boxed{
\text{the compact rescaled velocity-pressure-incompressibility tower must
produce the }L^1\text{ convergence of the selected participation density,}
}
\tag{CSI.41}
```

or the resulting mismatch must be paid by strict same-carrier four-body
payment.

Thus Body III is now reduced to a precise same-carrier no-loss demand:

```math
\boxed{
\text{no escaped selected mass and no interior density/product/pressure
mismatch, unless }K_C^+\text{ pays.}
}
\tag{CSI.42}
```
