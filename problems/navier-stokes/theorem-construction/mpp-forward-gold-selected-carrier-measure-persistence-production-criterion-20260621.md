---
theorem_id: forward-gold-selected-carrier-measure-persistence-production-criterion-20260621
status: measure-production-criterion-proved-ns-retained-carrier-not-installed
logical_landing_node: selected_carrier_measure_persistence_production_criterion
edge_effect: "Proves the exact measure-level production criterion behind selected positive activity persistence in the upgraded four-body loop. If the retained four-body packet contains the nonnegative selected carrier measure, that measure is tight on the normalized carrier, and its weak limit is identified with the canonical selected carrier of the limiting Navier-Stokes profile up to Body-III relay defect, then selected activity satisfies the defect upper-semicontinuity estimate needed for compactness-rigidity coercivity. The note also proves that dropping the nonnegative carrier measure and keeping only signed current data fails by cancellation."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-activity-persistence-replacement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-no-loss-relay-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-packet-selector-polar-retention-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-defect-as-bodyiii-relay-defect-20260621.md
---

# Selected Carrier Measure Persistence Production Criterion

Date: 2026-06-21

## 0. Aim

The four-body compactness step now needs the following persistence estimate:

```math
\limsup_{n\to\infty} A_{\rm sel}(X_n)
\le
A_{\rm ret}(X)
+
\limsup_{n\to\infty}
\Big(
K_{{\rm sel},n}
+
K_{C,n}^{+}
+
R_{{\rm legal},n}
\Big).
\tag{SCM.1}
```

This note proves a concrete measure-level criterion that gives `(SCM.1)`.
The later tightness-defect note removes the need to treat failed tightness as
an invisible hypothesis: escaped selected carrier mass is added to the
Body-III positive no-loss defect \(K_C^+\).

The core point is simple:

```math
\boxed{
\text{the compact packet must carry the nonnegative selected carrier measure,
not only the signed participation current.}
}
\tag{SCM.2}
```

Signed-current compactness can cancel the positive carrier.  Nonnegative
carrier-measure compactness cannot.

## 1. Retained selected carrier packet

Let \(C\) be the normalized same-carrier parameter space for one terminal
heat-scale four-body packet.  It may include log-time, normalized space,
finite packet labels, derivative-rung labels, and selector labels.  Let
\(C_R\subset C\) be compact exhaustions with \(C_R\uparrow C\).

For each \(n\), let

```math
\mu_n^A\in\mathcal M_+(C)
\tag{SCM.3}
```

be the retained nonnegative selected carrier measure.  Its mass is the retained
part of the selected activity.

Assume the selected activity has the decomposition

```math
\boxed{
A_{\rm sel}(X_n)
\le
\mu_n^A(C)
+
K_{{\rm sel},n}
+
R_{{\rm legal},n}.
}
\tag{SCM.4}
```

Here \(K_{{\rm sel},n}\) is the selector polar-retention defect, and
\(R_{{\rm legal},n}\) includes declared cutoff, collar, projection, off-family,
and legal spill terms.

The point of `(SCM.4)` is not to hide the selection problem.  It states exactly
that whatever selected positive activity is not represented by the retained
nonnegative carrier measure has already been recorded as selector/legal loss.

## 2. Tightness gives carrier mass compactness

Assume the retained carrier measures are tight:

```math
\lim_{R\to\infty}
\limsup_{n\to\infty}
\mu_n^A(C\setminus C_R)
=0.
\tag{SCM.5}
```

Assume also that along a subsequence

```math
\mu_n^A
\stackrel{*}{\rightharpoonup}
\mu_*^A
\quad
\text{as Radon measures on }C.
\tag{SCM.6}
```

Then

```math
\boxed{
\limsup_{n\to\infty}\mu_n^A(C)
\le
\mu_*^A(C).
}
\tag{SCM.7}
```

### Proof

For fixed \(R\), weak-star convergence of nonnegative Radon measures gives the
Portmanteau upper bound on the compact set \(C_R\):

```math
\limsup_{n\to\infty}\mu_n^A(C_R)
\le
\mu_*^A(C_R)
\tag{SCM.8}
```

For every \(R\),

```math
\mu_n^A(C)
\le
\mu_n^A(C_R)
+
\mu_n^A(C\setminus C_R).
\tag{SCM.9}
```

Taking \(\limsup_n\) and using `(SCM.5)` gives

```math
\limsup_{n\to\infty}\mu_n^A(C)
\le
\mu_*^A(C_R)
+
\limsup_{n\to\infty}\mu_n^A(C\setminus C_R).
\tag{SCM.10}
```

Letting \(R\to\infty\) yields `(SCM.7)` by monotone convergence.

When \(C\) is compact, `(SCM.5)` is automatic and `(SCM.7)` is equality, because
the constant test function \(1\) is admissible.

If tightness fails, the tightness-defect theorem gives the replacement estimate

```math
\limsup_{n\to\infty}\mu_n^A(C)
\le
\mu_*^A(C)+K_{\rm tight}^A,
\tag{SCM.7a}
```

and folds \(K_{\rm tight}^A\) into the Body-III positive relay defect.  Thus
tightness is a lossless-branch consequence when \(K_C^+=0\), rather than an
unrecorded assumption.

## 3. Body-III identification gives retained activity of the limit

Let \(X\) be the limiting normalized Navier-Stokes profile packet.  Let

```math
\mu^A[X]\in\mathcal M_+(C)
\tag{SCM.11}
```

be its canonical selected positive carrier measure, computed from the same
velocity-pressure-viscosity-incompressibility tower and the same selector
rule.

Define the positive carrier relay defect by

```math
\boxed{
K_{C,A}^+
:=
\big(\mu_*^A-\mu^A[X]\big)^+(C).
}
\tag{SCM.12}
```

Then by the Jordan decomposition,

```math
\mu_*^A(C)
\le
\mu^A[X](C)
+
K_{C,A}^+.
\tag{SCM.13}
```

The retained limit activity is

```math
A_{\rm ret}(X):=\mu^A[X](C).
\tag{SCM.14}
```

Since \(K_{C,A}^+\) is one component of the Body-III positive no-loss relay
defect,

```math
K_{C,A}^+\le K_C^+.
\tag{SCM.15}
```

Combining `(SCM.7)`, `(SCM.13)`, and `(SCM.15)` gives

```math
\boxed{
\limsup_{n\to\infty}\mu_n^A(C)
\le
A_{\rm ret}(X)+K_C^+.
}
\tag{SCM.16}
```

## 4. Production of selected activity persistence

Now combine the retained-carrier decomposition `(SCM.4)` with `(SCM.16)`:

```math
\begin{aligned}
\limsup_{n\to\infty}A_{\rm sel}(X_n)
&\le
\limsup_{n\to\infty}
\left(
\mu_n^A(C)+K_{{\rm sel},n}+R_{{\rm legal},n}
\right)\\
&\le
A_{\rm ret}(X)
+
K_C^+
+
\limsup_{n\to\infty}
\left(
K_{{\rm sel},n}+R_{{\rm legal},n}
\right).
\end{aligned}
\tag{SCM.17}
```

Thus

```math
\boxed{
\limsup_{n\to\infty} A_{\rm sel}(X_n)
\le
A_{\rm ret}(X)
+
\limsup_{n\to\infty}
\Big(
K_{{\rm sel},n}
+
K_{C,n}^{+}
+
R_{{\rm legal},n}
\Big).
}
\tag{SCM.18}
```

This is exactly the defect upper-semicontinuity estimate needed by the
selected activity persistence replacement criterion.

Consequently, if

```math
A_{\rm sel}(X_n)\ge\eta
\tag{SCM.19}
```

and

```math
K_{{\rm sel},n}+K_{C,n}^{+}+R_{{\rm legal},n}\to0,
\tag{SCM.20}
```

then

```math
\boxed{
A_{\rm ret}(X)\ge\eta.
}
\tag{SCM.21}
```

## 5. Why signed current is not enough

The criterion uses \(\mu_n^A\), not the signed participation current.  This is
essential.

On \(C=[-1,1]\), define

```math
J_n=\delta_{1/n}-\delta_{-1/n}.
\tag{SCM.22}
```

Then

```math
J_n\stackrel{*}{\rightharpoonup}0
\tag{SCM.23}
```

as signed measures, while

```math
J_n^+(C)=1
\qquad
\text{for every }n.
\tag{SCM.24}
```

A compactness theorem that retains only \(J_n\) records no positive activity in
the limit.  A compactness theorem that retains \(J_n^+\) records

```math
J_n^+\stackrel{*}{\rightharpoonup}\delta_0,
\qquad
\delta_0(C)=1.
\tag{SCM.25}
```

Therefore signed-current compactness does not produce `(SCM.18)`.  The
nonnegative selected carrier measure must be included in the four-body packet,
or the missing positive part must be recorded as \(K_{\rm sel}\), \(K_C^+\), or
\(R_{\rm legal}\).

## 6. Navier-Stokes production content

This note proves the measure-level production criterion.  The finite selected
tower representation clause is paid by the selected tower carrier
representation theorem: for a finite selected packet family, the actual
selected positive activity is the total mass of the nonnegative measure with
density \([h_P]_+\) on the extended carrier.

It does not prove the remaining compactness hypotheses.

The remaining Navier-Stokes statement is the conjunction:

```math
\boxed{
\text{tightness of the retained nonnegative measures }\mu_n^A
\text{ on the normalized same-carrier packet space, or escaped mass charged
inside }K_C^+;
}
\tag{SCM.26}
```

The tightness clause is now decomposed exactly: it is paid by controlled
domain or paid exterior/gauge spill, finite or compact label custody or paid
moving-selector escape, finite or summable tower-rung tail, and same-carrier UI
for small moving/collar defects.  If tightness fails, one of those escape
channels carries positive selected mass, and that escaped mass is a Body-III
selected-carrier relay defect.

The second remaining clause is:

```math
\boxed{
\text{identification of their weak limit with the canonical selected carrier
of the limiting Navier-Stokes profile up to }K_C^+.
}
\tag{SCM.27}
```

When these two compactness clauses hold, selected positive activity persistence is
installed, and the compactness-rigidity coercivity principle can use the
four-body lossless-cycle rigidity theorem without the old vague continuity
assumption.

So the upgraded four-body loop has not changed target.  It has sharpened Body
III to the exact same-carrier measure question:

```math
\boxed{
\text{does the compact packet retain the nonnegative selected carrier measure
of the full participation tower?}
}
\tag{SCM.29}
```
