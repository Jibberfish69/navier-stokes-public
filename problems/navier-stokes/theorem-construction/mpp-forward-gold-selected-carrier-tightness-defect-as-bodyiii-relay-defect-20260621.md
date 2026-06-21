---
theorem_id: forward-gold-selected-carrier-tightness-defect-as-bodyiii-relay-defect-20260621
status: compactified-tightness-defect-criterion-proved-ns-escape-payments-not-installed
logical_landing_node: selected_carrier_tightness_defect_as_bodyiii_relay_defect
edge_effect: "Proves that failure of tightness for the nonnegative selected tower carrier measure is not an invisible compactness caveat. The escaped selected carrier mass defines a nonnegative tightness defect, and the selected-activity upper-semicontinuity estimate holds with that defect added to Body III's positive no-loss relay defect. In a lossless four-body cycle, K_C^+=0 therefore forces selected-carrier tightness. This does not prove the Navier-Stokes estimates that pay or eliminate the escape mass."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-measure-persistence-production-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-no-loss-relay-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Selected Carrier Tightness Defect As Body-III Relay Defect

Date: 2026-06-21

## 0. Aim

The selected-carrier persistence criterion previously used tightness of the
nonnegative selected carrier measures:

```math
\lim_{j\to\infty}\limsup_{n\to\infty}
\mu_n^A(C\setminus C_j)=0.
\tag{STD.1}
```

This note proves the exact replacement.

If tightness fails, the escaped selected carrier mass is not a hidden failure
of the proof language.  It is a Body-III compactness/no-loss relay defect.

In plain terms:

```math
\boxed{
\text{selected carrier that leaves every compact same-carrier window is lost
positive carrier, hence it belongs in }K_C^+.
}
\tag{STD.2}
```

Thus the upgraded four-body loop may demand either tightness, or payment of the
positive escape as part of Body III.  In the lossless branch, where
\(K_C^+=0\), tightness is forced.

## 1. Carrier exhaustion and tightness defect

Let \(C\) be the normalized selected tower carrier space.  It includes the
normalized spacetime domain, selector/packet labels, and tower-rung labels.

Let

```math
C_1\subset C_2\subset\cdots\subset C,
\qquad
\bigcup_{j\ge1}C_j=C,
\tag{STD.3}
```

be a cofinal compact exhaustion of \(C\).

Let

```math
\mu_n^A\in\mathcal M_+(C)
\tag{STD.4}
```

be the retained nonnegative selected carrier measures, and assume the selected
carrier masses are uniformly bounded:

```math
\sup_n \mu_n^A(C)<\infty.
\tag{STD.5}
```

Define the selected-carrier tightness defect by

```math
\boxed{
K_{\rm tight}^A
:=
\lim_{j\to\infty}
\limsup_{n\to\infty}
\mu_n^A(C\setminus C_j).
}
\tag{STD.6}
```

The limit exists because the tails \(C\setminus C_j\) decrease with \(j\).

Then:

```math
\boxed{
K_{\rm tight}^A=0
\quad\Longleftrightarrow\quad
\{\mu_n^A\}\text{ is tight on the selected-carrier space }C.
}
\tag{STD.7}
```

For this chosen exhaustion, `(STD.7)` is just the definition of tightness
written in the carrier coordinates.

## 2. Local weak limit plus escaped mass

By `(STD.5)` and local compactness, after passing to a subsequence the measures
have a local weak-star limit on compact carrier windows:

```math
\mu_n^A \stackrel{*}{\rightharpoonup} \mu_*^A
\quad
\text{locally on }C.
\tag{STD.8}
```

For every fixed compact window \(C_j\), Portmanteau gives

```math
\limsup_{n\to\infty}\mu_n^A(C_j)
\le
\mu_*^A(C_j).
\tag{STD.9}
```

For every \(j\),

```math
\mu_n^A(C)
\le
\mu_n^A(C_j)+\mu_n^A(C\setminus C_j).
\tag{STD.10}
```

Taking \(\limsup_n\), using `(STD.9)`, and then sending \(j\to\infty\) gives:

```math
\boxed{
\limsup_{n\to\infty}\mu_n^A(C)
\le
\mu_*^A(C)+K_{\rm tight}^A.
}
\tag{STD.11}
```

This is the exact upper-semicontinuity statement without assuming tightness.
Tightness is precisely the special case \(K_{\rm tight}^A=0\).

## 3. Compactified interpretation

Equivalently, compactify the carrier by adjoining an escape boundary:

```math
\overline C=C\sqcup\partial_{\rm esc}C.
\tag{STD.12}
```

Push the measures \(\mu_n^A\) to \(\overline C\).  Since \(\overline C\) is
compact and `(STD.5)` holds, a subsequence has a weak-star limit
\(\overline\mu_*^A\).

The interior restriction is the local limit:

```math
\overline\mu_*^A\!\restriction_C=\mu_*^A.
\tag{STD.13}
```

The boundary mass

```math
K_{\rm esc}^A
:=
\overline\mu_*^A(\partial_{\rm esc}C)
\tag{STD.14}
```

is the compactified record of selected carrier that did not remain in any
compact same-carrier window.

The proof does not require a special compactification identity.  The intrinsic
ledger quantity is `(STD.6)`.  The compactified picture says what that quantity
is ontologically: positive selected carrier mass has moved to the escape
boundary of Body III.

## 4. Selected activity with escape defect

The retained selected carrier decomposition is:

```math
A_{\rm sel}(X_n)
\le
\mu_n^A(C)
+
K_{{\rm sel},n}
+
R_{{\rm legal},n}.
\tag{STD.15}
```

Combining `(STD.11)` and `(STD.15)` gives:

```math
\boxed{
\limsup_{n\to\infty}A_{\rm sel}(X_n)
\le
\mu_*^A(C)
+
K_{\rm tight}^A
+
\limsup_{n\to\infty}
\big(
K_{{\rm sel},n}+R_{{\rm legal},n}
\big).
}
\tag{STD.16}
```

Now compare the local weak selected carrier \(\mu_*^A\) to the canonical
selected carrier of the limiting Navier-Stokes profile \(X=(U,P)\):

```math
\mu^A[X]\in\mathcal M_+(C).
\tag{STD.17}
```

Define the interior selected-carrier relay defect:

```math
K_{C,A}^{\rm int,+}
:=
\big(\mu_*^A-\mu^A[X]\big)^+(C).
\tag{STD.18}
```

Then

```math
\mu_*^A(C)
\le
\mu^A[X](C)+K_{C,A}^{\rm int,+}.
\tag{STD.19}
```

Set

```math
A_{\rm ret}(X):=\mu^A[X](C).
\tag{STD.20}
```

Substituting `(STD.19)` into `(STD.16)` gives:

```math
\boxed{
\limsup_{n\to\infty}A_{\rm sel}(X_n)
\le
A_{\rm ret}(X)
+
K_{C,A}^{\rm int,+}
+
K_{\rm tight}^A
+
\limsup_{n\to\infty}
\big(
K_{{\rm sel},n}+R_{{\rm legal},n}
\big).
}
\tag{STD.21}
```

Therefore Body III may fold the escape defect into its positive relay defect:

```math
\boxed{
K_{C,A}^{+}
:=
K_{C,A}^{\rm int,+}+K_{\rm tight}^A.
}
\tag{STD.22}
```

With this convention,

```math
\boxed{
\limsup_{n\to\infty}A_{\rm sel}(X_n)
\le
A_{\rm ret}(X)
+
K_{C,A}^{+}
+
\limsup_{n\to\infty}
\big(
K_{{\rm sel},n}+R_{{\rm legal},n}
\big).
}
\tag{STD.23}
```

Since \(K_{C,A}^{+}\) is a component of the Body-III no-loss defect, `(STD.23)`
is the selected-carrier persistence estimate with non-tightness charged rather
than hidden.

## 5. Decomposition of the escape defect

Use the carrier factorization

```math
C=\Omega\times\mathfrak L\times\mathfrak R
\tag{STD.24}
```

from the tightness decomposition note.  For compact exhaustions
\(\Omega_R,\mathfrak L_M,\mathfrak R_N\), set

```math
C_{R,M,N}
=
\Omega_R\times\mathfrak L_M\times\mathfrak R_N.
\tag{STD.25}
```

The previous decomposition gives

```math
\mu_n^A(C\setminus C_{R,M,N})
\le
E_n^{\rm dom}(R)+E_n^{\rm lab}(M)+E_n^{\rm rung}(N).
\tag{STD.26}
```

Define the three channel defects by

```math
K_{\rm dom}
:=
\lim_{R\to\infty}\limsup_n E_n^{\rm dom}(R),
\tag{STD.27}
```

```math
K_{\rm lab}
:=
\lim_{M\to\infty}\limsup_n E_n^{\rm lab}(M),
\tag{STD.28}
```

and

```math
K_{\rm rung}
:=
\lim_{N\to\infty}\limsup_n E_n^{\rm rung}(N).
\tag{STD.29}
```

Then

```math
\boxed{
K_{\rm tight}^A
\le
K_{\rm dom}+K_{\rm lab}+K_{\rm rung}.
}
\tag{STD.30}
```

Consequently, if \(K_{\rm tight}^A>0\), at least one of the three concrete
escape channels is positive:

```math
\boxed{
K_{\rm dom}>0
\quad\text{or}\quad
K_{\rm lab}>0
\quad\text{or}\quad
K_{\rm rung}>0.
}
\tag{STD.31}
```

Thus non-tightness is not a fourth compactness mystery.  It is domain/gauge
escape, selector/label escape, or tower-rung escape, recorded as Body-III lost
selected carrier.

## 6. Four-body consequence

In the lossless same-carrier four-body branch, Body III requires

```math
K_C^+=0.
\tag{STD.32}
```

Since \(K_{C,A}^{+}\le K_C^+\), `(STD.22)` gives

```math
K_C^+=0
\quad\Longrightarrow\quad
K_{\rm tight}^A=0.
\tag{STD.33}
```

Therefore:

```math
\boxed{
\text{lossless Body III forces selected-carrier tightness.}
}
\tag{STD.34}
```

This is the four-body upgrade.  Tightness is no longer a silent side
assumption.  It is either present, or its failure is charged as the existing
Body-III no-loss defect \(K_C^+\).

## 7. Current state

This note proves the abstract measure step:

```math
\boxed{
\text{failed selected-carrier tightness}
\Rightarrow
\text{positive Body-III relay defect.}
}
\tag{STD.35}
```

It does not prove that Navier-Stokes pays or eliminates the escaped mass.  The
remaining production problem is still the four-body one:

```math
\boxed{
K_C^+=0
\text{ in the lossless cycle}
\quad\text{or}\quad
K_C^+
\text{ is charged by strict same-carrier four-body payment.}
}
\tag{STD.36}
```

Together with the previous tightness decomposition, the remaining escape
channels are exactly:

```math
\boxed{
\text{domain/gauge escape, selector/label escape, and tower-rung escape.}
}
\tag{STD.37}
```

The mathematical effect is narrow but important: failed tightness is now
inside the balanced four-body loop, not outside it.
