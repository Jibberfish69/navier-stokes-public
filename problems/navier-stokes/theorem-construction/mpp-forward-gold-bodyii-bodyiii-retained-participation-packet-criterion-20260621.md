---
theorem_id: forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621
status: bodyii-bodyiii-retained-packet-criterion-proved-ns-retention-production-not-installed
logical_landing_node: bodyii_bodyiii_retained_participation_packet_criterion
edge_effect: "Proves the exact Q-to-C interface criterion in the upgraded four-body loop. The Body-II selected participation output must enter Body III as a retained three-measure packet: positive carrier, negative local partner, and signed current on the same selected tower carrier, with dmu^J=dmu^A-dmu^N. If this packet is retained, the polar identity survives weak compactness. If it is not retained or not canonically identified, the failure is exactly K_sel, K_C^+ or legal residual. This proves the interface accounting criterion but not the Navier-Stokes production theorem that makes those defects vanish."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-packet-selector-polar-retention-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-tower-carrier-representation-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-defect-as-bodyiii-relay-defect-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-canonical-selected-carrier-identification-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621.md
---

# Body-II / Body-III Retained Participation Packet Criterion

Date: 2026-06-21

## 0. Aim

The \(Q\to C\) interface is the passage from participation to
compactness/no-loss.

The object leaving Body II is not only a scalar positive source.  It is the
localized participation packet:

```math
\boxed{
(\mu^A,\mu^N,\mu^J)
\quad\text{with}\quad
d\mu^J=d\mu^A-d\mu^N.
}
\tag{QCI.1}
```

Here \(\mu^A\) is the selected positive carrier, \(\mu^N\) is the negative
local partner, and \(\mu^J\) is the signed participation current.

This note proves the exact interface criterion:

```math
\boxed{
\text{if Body III retains this three-measure packet on the same carrier, then
the polar participation identity survives compactness.}
}
\tag{QCI.2}
```

If the packet is not retained, the failure is not hidden.  It is exactly a
selector defect \(K_{\rm sel}\), a Body-III relay defect \(K_C^+\), or legal
residual.

## 1. Body-II selected packet

Let \(C_n\) be the extended selected carrier for the \(n\)-th rescaled tower:

```math
C_n
=
\bigsqcup_{P\in\mathcal S_n}
(K\times P\times\{P\}).
\tag{QCI.3}
```

For each selected packet \(P\), let

```math
h_{n,P}\in L^1(K\times P)
\tag{QCI.4}
```

be the signed participation density produced by the full
velocity-pressure-viscosity-incompressibility tower on that packet.

Define the three retained measures:

```math
d\mu_n^A
=
\sum_{P\in\mathcal S_n}
[h_{n,P}]_+\,dy\,ds\,\delta_P,
\tag{QCI.5}
```

```math
d\mu_n^N
=
\sum_{P\in\mathcal S_n}
[h_{n,P}]_-\,dy\,ds\,\delta_P,
\tag{QCI.6}
```

and

```math
d\mu_n^J
=
\sum_{P\in\mathcal S_n}
h_{n,P}\,dy\,ds\,\delta_P.
\tag{QCI.7}
```

Then the polar identity is exact on \(C_n\):

```math
\boxed{
d\mu_n^J=d\mu_n^A-d\mu_n^N.
}
\tag{QCI.8}
```

This is the Body-II packet that must enter compactness.

## 2. Selector loss before compactness

The selector-polar criterion decomposes the negative partner:

```math
d\mu_n^N
=
d\mu_{n,\rm ret}^N
+
d\mu_{n,\rm legal}^N
+
d\mu_{n,\rm miss}^N.
\tag{QCI.9}
```

with

```math
d\mu_{n,\rm legal}^N\le dR_{{\rm legal},n},
\qquad
d\mu_{n,\rm miss}^N\le dK_{{\rm sel},n}.
\tag{QCI.10}
```

Thus \(Q\to C\) has a same-carrier packet only after \(d\mu_{n,\rm miss}^N\)
is zero or charged.  The missing negative partner is not a compactness failure.
It is the selector polar defect \(K_{\rm sel}\).

When \(K_{{\rm sel},n}=0\) and the legal part is removed into
\(R_{{\rm legal},n}\), the retained Body-II packet is

```math
\mathcal Q_n^{\rm ret}
=
(\mu_n^A,\mu_n^N,\mu_n^J)
\tag{QCI.11}
```

on the same selected carrier.

## 3. Compactness of the retained packet

Assume the retained packet has uniform total variation bounds on a common
locally compact selected carrier \(C\):

```math
\sup_n
\left(
\mu_n^A(C)+\mu_n^N(C)+|\mu_n^J|(C)
\right)
<\infty.
\tag{QCI.12}
```

Assume also that the three measures are retained in Body III and converge
weak-star locally, after passing to a subsequence:

```math
\mu_n^A\stackrel{*}{\rightharpoonup}\mu_*^A,
\qquad
\mu_n^N\stackrel{*}{\rightharpoonup}\mu_*^N,
\qquad
\mu_n^J\stackrel{*}{\rightharpoonup}\mu_*^J.
\tag{QCI.13}
```

Then the polar identity survives:

```math
\boxed{
d\mu_*^J=d\mu_*^A-d\mu_*^N.
}
\tag{QCI.14}
```

### Proof

For every compactly supported continuous test function \(\varphi\) on the
common carrier \(C\), `(QCI.8)` gives

```math
\int\varphi\,d\mu_n^J
=
\int\varphi\,d\mu_n^A
-
\int\varphi\,d\mu_n^N.
\tag{QCI.15}
```

Pass to the weak-star limit in `(QCI.15)` to obtain

```math
\int\varphi\,d\mu_*^J
=
\int\varphi\,d\mu_*^A
-
\int\varphi\,d\mu_*^N.
\tag{QCI.16}
```

Since this holds for every \(\varphi\),

```math
d\mu_*^J=d\mu_*^A-d\mu_*^N.
\tag{QCI.17}
```

This proves `(QCI.14)`.

## 4. Canonical identification and Body-III defects

Let \(X=(U,\Pi)\) be the limiting velocity-pressure tower profile.

The canonical participation packet of \(X\) on the same selected carrier is

```math
\mathcal Q[X]
=
(\mu^A[X],\mu^N[X],\mu^J[X]),
\tag{QCI.18}
```

where

```math
d\mu^A[X]=[h[X]]_+\,dy\,ds\,\delta_P,
\qquad
d\mu^N[X]=[h[X]]_-\,dy\,ds\,\delta_P,
\qquad
d\mu^J[X]=h[X]\,dy\,ds\,\delta_P.
\tag{QCI.19}
```

The canonical packet also satisfies

```math
\boxed{
d\mu^J[X]=d\mu^A[X]-d\mu^N[X].
}
\tag{QCI.20}
```

Define the three Body-III interface defects:

```math
K_{C,A}^+
:=
\big(\mu_*^A-\mu^A[X]\big)^+(C),
\tag{QCI.21}
```

```math
K_{C,N}^+
:=
\big(\mu_*^N-\mu^N[X]\big)^+(C),
\tag{QCI.22}
```

and

```math
K_{C,J}
:=
\mu_*^J-\mu^J[X].
\tag{QCI.23}
```

The signed-current mismatch contributes through its total variation or through
the positive part required by the body inequality:

```math
K_{C,J}^+
:=
(K_{C,J})^+(C).
\tag{QCI.24}
```

All of these are Body-III relay defects.  In the notation of the Body-III
normal form, they are components of \(K_C^+\) or of the signed relay error
whose positive part defines \(K_C^+\).

Thus the \(Q\to C\) interface has the defect bound

```math
\boxed{
K_{Q\to C}^+
\le
K_{\rm sel}
+
K_{C,A}^+
+
K_{C,N}^+
+
K_{C,J}^+
+
R_{\rm legal}.
}
\tag{QCI.25}
```

The precise distribution of these components inside the full Body-III vector
defect depends on which body inequality is being tested, but no term is
untracked: missing negative partner is \(K_{\rm sel}\), escaped or
misidentified positive carrier is \(K_{C,A}^+\), misidentified negative partner
is \(K_{C,N}^+\), and misidentified signed current is \(K_{C,J}^+\).

## 5. Strong density convergence closes the retained packet

The Body-III canonical carrier criterion already proves the positive-carrier
part.  On a fixed selected carrier, if

```math
\sum_{P\in\mathcal S}
\|h_{n,P}-h_P[U,\Pi]\|_{L^1(K\times P)}
\to0,
\tag{QCI.26}
```

then

```math
\|\mu_n^A-\mu^A[U,\Pi]\|_{\rm TV}\to0.
\tag{QCI.27}
```

The same \(L^1\) convergence also gives the negative partner and signed
current convergence:

```math
\|\mu_n^N-\mu^N[U,\Pi]\|_{\rm TV}\to0,
\tag{QCI.28}
```

and

```math
\|\mu_n^J-\mu^J[U,\Pi]\|_{\rm TV}\to0.
\tag{QCI.29}
```

Indeed,

```math
\big|[a]_--[b]_-\big|\le |a-b|,
\qquad
|a-b|=|a-b|.
\tag{QCI.30}
```

Therefore `(QCI.26)` implies

```math
\boxed{
K_{C,A}^+=K_{C,N}^+=K_{C,J}^+=0.
}
\tag{QCI.31}
```

on that fixed selected carrier.

## 6. Four-body consequence

The \(Q\to C\) interface is closed when the following three things hold:

```math
\boxed{
K_{\rm sel}=0
\quad
\text{or the missing negative partner is legally charged;}
}
\tag{QCI.32}
```

```math
\boxed{
K_{\rm tight}^A=0
\quad
\text{or escaped selected carrier is charged inside }K_C^+;
}
\tag{QCI.33}
```

and

```math
\boxed{
K_{C,A}^{\rm int,+}=K_{C,N}^+=K_{C,J}^+=0
\quad
\text{or the interior mismatch is charged inside }K_C^+.
}
\tag{QCI.34}
```

In the lossless same-carrier branch,

```math
K_{\rm sel}=0,
\qquad
K_C^+=0,
\qquad
R_{\rm legal}=0,
\tag{QCI.35}
```

so the retained Body-II packet passes through Body III without losing polar
data:

```math
\boxed{
\mathcal Q_*=\mathcal Q[U,\Pi],
\qquad
d\mu_*^J=d\mu_*^A-d\mu_*^N.
}
\tag{QCI.36}
```

Thus \(Q\to C\) does not create a new orientation defect in a lossless cycle.

## 7. Current state

This note proves the exact \(Q\to C\) retained-packet criterion:

```math
\boxed{
\text{retain }(\mu^A,\mu^N,\mu^J)\text{ on the same carrier}
\Longrightarrow
\text{Body-II polar participation survives compactness.}
}
\tag{QCI.37}
```

It does not prove the Navier-Stokes production theorem that makes
\(K_{\rm sel}\), \(K_C^+\), and \(R_{\rm legal}\) vanish or summable.

The remaining proof burden after this interface is the actual selected-positive
payment:

```math
\boxed{
dA_{\rm sel}
\text{ must be paid by retained signed partner, true loss, storage drop,
compactness loss, geometry loss, tower loss, or legal residual on the same
carrier.}
}
\tag{QCI.38}
```

The point of the \(Q\to C\) theorem is narrower: compactness cannot be allowed
to keep the positive selected carrier while losing the signed current or the
negative partner without producing one of the named four-body defects.
