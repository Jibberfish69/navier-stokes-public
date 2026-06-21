---
theorem_id: forward-gold-selected-carrier-tightness-decomposition-20260621
status: tightness-decomposition-proved-ns-escape-payments-not-installed
logical_landing_node: selected_carrier_tightness_decomposition
edge_effect: "Proves the exact tightness decomposition for the nonnegative selected tower carrier measures. Once representation by [h_P]_+ is paid, tightness on the normalized same-carrier space follows from four explicit clauses: controlled normalized spacetime domain or paid exterior spill, finite/compact selector-label custody or paid moving-selector escape, finite/summable tower-rung tail, and same-carrier UI for moving gauge/collar/small-set defects. The theorem is a measure compactness reduction; it does not prove the Navier-Stokes source-square/no-waste/critical-strain/signed-saturation production estimates needed to pay the escape channels."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-tower-carrier-representation-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-domination-to-same-carrier-spacetime-ui-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-parent-domain-or-exterior-spill-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-positive-carrier-selector-complexity-boundary-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-defect-as-bodyiii-relay-defect-20260621.md
---

# Selected Carrier Tightness Decomposition

Date: 2026-06-21

## 0. Aim

The finite selected tower representation theorem proves that the selected
positive activity is the mass of a nonnegative measure:

```math
A_{\rm sel}(X_n;K)=\mu_n^A(C_n),
\qquad
d\mu_n^A=[h_{n,P}]_+\,dy\,ds\,\delta_P.
\tag{SCT.1}
```

The next compactness requirement is tightness of \(\mu_n^A\) on the normalized
same-carrier space.

This note proves the exact decomposition of that tightness requirement.  It
does not prove the Navier-Stokes estimates that pay each escape channel.  The
tightness-defect note adds the Body-III consequence: any remaining escape mass
is an explicit positive no-loss relay defect, not an invisible compactness
loss.

## 1. Extended carrier and compact exhaustion

Write the selected tower carrier as

```math
C
=
\Omega\times\mathfrak L\times\mathfrak R,
\tag{SCT.2}
```

where:

```math
\Omega
\quad
\text{is normalized spacetime,}
\tag{SCT.3}
```

```math
\mathfrak L
\quad
\text{is the selector/cutoff/packet-label space,}
\tag{SCT.4}
```

and

```math
\mathfrak R
\quad
\text{is the tower-rung and projection-label space.}
\tag{SCT.5}
```

Let

```math
\Omega_R\uparrow\Omega,
\qquad
\mathfrak L_M\uparrow\mathfrak L,
\qquad
\mathfrak R_N\uparrow\mathfrak R
\tag{SCT.6}
```

be compact or finite exhaustions.  Set

```math
C_{R,M,N}
:=
\Omega_R\times\mathfrak L_M\times\mathfrak R_N.
\tag{SCT.7}
```

The family \(\{\mu_n^A\}\subset\mathcal M_+(C)\) is tight if and only if

```math
\boxed{
\lim_{R,M,N\to\infty}
\limsup_{n\to\infty}
\mu_n^A(C\setminus C_{R,M,N})
=0.
}
\tag{SCT.8}
```

This is just Prokhorov tightness written in the actual selected-carrier
coordinates.

## 2. Escape decomposition

The complement of \(C_{R,M,N}\) is contained in the union of the three escape
sets:

```math
C\setminus C_{R,M,N}
\subset
(\Omega\setminus\Omega_R)\times\mathfrak L\times\mathfrak R
\cup
\Omega\times(\mathfrak L\setminus\mathfrak L_M)\times\mathfrak R
\cup
\Omega\times\mathfrak L\times(\mathfrak R\setminus\mathfrak R_N).
\tag{SCT.9}
```

Therefore

```math
\boxed{
\begin{aligned}
\mu_n^A(C\setminus C_{R,M,N})
&\le
E_n^{\rm dom}(R)
+
E_n^{\rm lab}(M)
+
E_n^{\rm rung}(N),
\end{aligned}
}
\tag{SCT.10}
```

where

```math
E_n^{\rm dom}(R)
:=
\mu_n^A\big((\Omega\setminus\Omega_R)\times\mathfrak L\times\mathfrak R\big),
\tag{SCT.11}
```

```math
E_n^{\rm lab}(M)
:=
\mu_n^A\big(\Omega\times(\mathfrak L\setminus\mathfrak L_M)\times\mathfrak R\big),
\tag{SCT.12}
```

and

```math
E_n^{\rm rung}(N)
:=
\mu_n^A\big(\Omega\times\mathfrak L\times(\mathfrak R\setminus\mathfrak R_N)\big).
\tag{SCT.13}
```

Consequently, tightness follows if

```math
\boxed{
\lim_{R\to\infty}\limsup_n E_n^{\rm dom}(R)=0,
\qquad
\lim_{M\to\infty}\limsup_n E_n^{\rm lab}(M)=0,
\qquad
\lim_{N\to\infty}\limsup_n E_n^{\rm rung}(N)=0.
}
\tag{SCT.14}
```

Conversely, failure of tightness forces at least one of the three escape terms
in `(SCT.10)` to stay positive along a subsequence.

## 3. Domain escape

The domain term \(E_n^{\rm dom}(R)\) is spatial, collar, parent-domain, center,
or moving-gauge escape.

On the sparse moving-gauge branch, the parent-domain note gives the exact
identity

```math
\left|
\mu_k(\widetilde Q_k)-\mu_k(\widehat Q_k)
\right|
\le
\mu_k(E_k^{\rm gauge})
+
\mu_k(\widetilde Q_k^{out})
+
\mu_k(\widehat Q_k^{out}).
\tag{SCT.15}
```

Thus domain escape is paid when the gauge-defect and exterior-spill sums are
paid:

```math
\boxed{
\sum_k\mu_k(E_k^{\rm gauge})<\infty,
\qquad
\sum_k
\left(
\mu_k(\widetilde Q_k^{out})
+
\mu_k(\widehat Q_k^{out})
\right)<\infty
}
\tag{SCT.16}
```

modulo declared legal ledgers.

If `(SCT.16)` fails, the selected carrier is not hidden in the compact packet.
It exits through a visible exterior, collar, boundary, or center-drift branch.

## 4. Label escape

The label term \(E_n^{\rm lab}(M)\) is selector/cutoff/packet-family escape.

If the selected carrier belongs to a fixed finite menu

```math
\mathfrak C=\{C_1,\ldots,C_M\},
\tag{SCT.17}
```

then label tightness is automatic:

```math
E_n^{\rm lab}(M)=0.
\tag{SCT.18}
```

The finite-menu heredity theorem then extracts a fixed selected carrier on an
infinite retained tail whenever the retained selected mass is nonzero.

If the selector can move through infinitely many labels or a continuum family,
finite pigeonhole no longer applies.  Then label tightness requires one of the
already isolated payments:

```math
\boxed{
\text{finite-complexity rule, integrable label modulus, selector-action
charge, one-profile capture, profile production, or CM Part/Field consumption
after same-witness admission.}
}
\tag{SCT.19}
```

The selector-complexity boundary note shows why this is a real condition: the
positive-part selector can oscillate at the source frequency, so smooth fixed
readouts do not control the native positive carrier.

## 5. Rung escape

The rung term \(E_n^{\rm rung}(N)\) is tower-tail escape.  It says that the
selected positive carrier is moving into higher and higher derivative rungs,
projection labels, or factorial-weighted tower components.

For a finite selected tower packet, there is a fixed finite rung set and

```math
E_n^{\rm rung}(N)=0
\tag{SCT.20}
```

for all sufficiently large \(N\).

For an infinite tower packet, the needed condition is a same-carrier tower-tail
bound:

```math
\boxed{
\lim_{N\to\infty}
\limsup_n
\mu_n^A\big(\Omega\times\mathfrak L\times(\mathfrak R\setminus\mathfrak R_N)\big)
=0.
}
\tag{SCT.21}
```

Factorial/Stirling bookkeeping makes the tower convolution algebra coherent,
but it does not by itself prove `(SCT.21)`.  The tail still has to be paid by
the same selected carrier through tower-radius spend, source-square/no-waste,
critical-strain/CKN control, profile production, or a charged high-rung defect.

## 6. Small-set UI is a consumer for moving defects

When the escape set is a small controlled spacetime set rather than an entire
domain, label, or rung tail, same-carrier spacetime UI pays it.

The source-square UI bridge proves that if

```math
d\mu_j=a_j\,dy\,ds,
\qquad
a_j\le C_{\rm car}G_j+\ell_j,
\qquad
\sup_j\int G_j^2\le C_\square,
\tag{SCT.22}
```

with legal residues uniformly absolutely continuous, then

```math
\boxed{
\sup_j\sup_{|E|\le\delta}\mu_j(E)\to0
\qquad(\delta\downarrow0).
}
\tag{SCT.23}
```

This pays terminal strips, sparse moving-gauge symmetric differences, and other
small carrier defects only after the domination `(SCT.22)` is on the actual
selected carrier.

Without same-carrier domination, UI may hold for a different density while the
selected carrier escapes.

## 7. Tightness theorem

Combining the previous sections gives the exact production theorem:

```math
\boxed{
\begin{aligned}
&\text{controlled domain or paid exterior/gauge spill}\\
&+\text{finite/compact label custody or paid moving-selector escape}\\
&+\text{finite/summable tower-rung tail}\\
&+\text{same-carrier UI for small moving/collar defects}
\end{aligned}
\Longrightarrow
\{\mu_n^A\}\text{ is tight on }C.
}
\tag{SCT.24}
```

Equivalently, if tightness fails, then a subsequence has one of the exact
positive escape modes:

```math
\boxed{
E_n^{\rm dom}\not\to0
\quad\text{or}\quad
E_n^{\rm lab}\not\to0
\quad\text{or}\quad
E_n^{\rm rung}\not\to0.
}
\tag{SCT.25}
```

Those are not new routes.  They are the three ways the represented nonnegative
carrier can leave the compact same-carrier packet.

## 8. Current state

This note proves the tightness decomposition.

It does not prove the Navier-Stokes production estimates that eliminate or pay
the three escape channels.

The tightness-defect theorem now proves that failure of this clause is charged
inside Body III:

```math
K_{\rm tight}^A
\le
K_{\rm dom}+K_{\rm lab}+K_{\rm rung},
\qquad
K_{\rm tight}^A\le K_C^+.
\tag{SCT.25a}
```

Thus a lossless cycle with \(K_C^+=0\) forces tightness.  The remaining work is
not to assume tightness silently, but to prove that the corresponding
Body-III defect is zero or paid by the four-body cycle.

The current four-body frontier is now:

```math
\boxed{
\text{representation of }\mu_n^A\text{ is paid;}
}
\tag{SCT.26}
```

```math
\boxed{
\text{tightness reduces to domain escape, label escape, and rung escape, and
any failure is charged as Body-III lost selected carrier;}
}
\tag{SCT.27}
```

and

```math
\boxed{
\text{after tightness, Body-III still must identify the weak carrier limit with
the canonical selected carrier up to }K_C^+.
}
\tag{SCT.28}
```
