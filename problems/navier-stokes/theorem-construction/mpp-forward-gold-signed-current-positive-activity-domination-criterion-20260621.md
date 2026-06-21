---
theorem_id: forward-gold-signed-current-positive-activity-domination-criterion-20260621
status: measure-criterion-proved-ns-domination-not-installed
logical_landing_node: signed_current_positive_activity_domination
edge_effect: "Proves the exact measure-level criterion behind the strict same-carrier four-body payment step. From the Navier-Stokes Body-II normal form dM+dD=dJ, a positive selected activity term c dA cannot be created algebraically. It is equivalent to an additional domination c dA <= dR if the same signed current is kept. If the selected activity is tied only to the positive part dJ+, then dA is paid only after the negative part dJ-, positive storage derivative, or loss is retained or legally charged. This isolates the precise same-carrier domination theorem still needed from the PDE."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-signed-atom-balance-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621.md
---

# Signed-Current Positive-Activity Domination Criterion

Date: 2026-06-21

## 0. Aim

The Body-II participation normal form is exact:

```math
dM+dD=dJ,
\qquad
D\ge0.
\tag{SCD.1}
```

The four-body payment lemma needs a strict positive selected-activity term:

```math
dL+dD+c\,dA+dJ_{\mathrm{out}}
\le
dJ_{\mathrm{in}}+dR.
\tag{SCD.2}
```

This note answers the measure-theoretic question:

```math
\boxed{
\text{can the positive activity term }c\,dA\text{ be extracted from }
dM+dD=dJ\text{ alone?}
}
\tag{SCD.3}
```

The answer is no.  The exact criterion is:

```math
\boxed{
\text{positive activity is paid only by an additional same-carrier domination
of }dA\text{ by loss, retained signed current, storage drop, or legal residual.}
}
\tag{SCD.4}
```

## 1. Signed-current normal form

Let \(K\) be a compact interval.  Let \(M\) be a bounded-variation storage,
\(D\) a nonnegative finite measure, and \(J\) a finite signed Radon measure.
Assume

```math
dM+dD=dJ.
\tag{SCD.5}
```

This is the measure form of the Body-II identity.

Suppose one tries to insert a positive selected activity measure \(A\ge0\) into
the same signed-current identity while keeping the same current \(J\):

```math
dM+dD+c\,dA
\le
dJ+dR,
\qquad
c>0,
\qquad
R\ge0.
\tag{SCD.6}
```

Using `(SCD.5)`, `(SCD.6)` is exactly equivalent to

```math
\boxed{
c\,dA\le dR.
}
\tag{SCD.7}
```

So the positive activity term is not produced by the signed participation
identity.  It must be supplied by a new legal residual, a new loss, or a new
domination theorem.

## 2. Countermodel to algebraic extraction

The obstruction is not a technicality.

Let \(K=[0,1]\), set

```math
M\equiv0,
\qquad
D=0,
\qquad
J=0.
\tag{SCD.8}
```

Then `(SCD.5)` holds.

Let \(A\) be any nonzero nonnegative finite measure and let \(R=0\).  Then

```math
c\,dA\le dR
\tag{SCD.9}
```

is false for every \(c>0\).

Thus no theorem can derive a positive selected-activity payment from
`(SCD.5)` without an additional hypothesis tying \(A\) to the same current,
loss, storage, or legal residual.

## 3. Positive-part criterion

The actual terminal trace activity often enters as the positive part of the
signed current.  Let

```math
dJ=dJ^+-dJ^-
\tag{SCD.10}
```

be the Jordan decomposition.  Then `(SCD.5)` gives

```math
dM+dD+dJ^-=dJ^+.
\tag{SCD.11}
```

Taking the positive part of \(dM\), one obtains the measure inequality

```math
\boxed{
dJ^+
\le
dJ^-+dD+(dM)^+.
}
\tag{SCD.12}
```

Therefore, if the selected positive activity satisfies the same-carrier
domination

```math
dA\le C\,dJ^+,
\tag{SCD.13}
```

then

```math
\boxed{
dA
\le
C\,dJ^-
+C\,dD
+C\,(dM)^+.
}
\tag{SCD.14}
```

This is the exact signed-saturation criterion.

It says that a selected positive trace activity is paid only after one of three
things is true on the same carrier:

```math
\boxed{
dJ^-\text{ is retained or legally charged;}
}
\tag{SCD.15}
```

```math
\boxed{
dD\text{ gives true nonnegative loss;}
}
\tag{SCD.16}
```

```math
\boxed{
(dM)^+\text{ is consumed as a positive storage jump/readout failure.}
}
\tag{SCD.17}
```

## 4. Terminal atom version

Evaluating `(SCD.14)` on a terminal atom \(\{\tau\}\), if

```math
A(\{\tau\})>0
\tag{SCD.18}
```

and \(dA\le C\,dJ^+\), then

```math
\boxed{
A(\{\tau\})
\le
CJ^-(\{\tau\})
+CD(\{\tau\})
+C(dM)^+(\{\tau\}).
}
\tag{SCD.19}
```

This is the atom-level version of the previous terminal signed balance.

If

```math
J^-(\{\tau\})=0,
\qquad
D(\{\tau\})=0,
\qquad
(dM)^+(\{\tau\})=0,
\tag{SCD.20}
```

then

```math
\boxed{
A(\{\tau\})=0.
}
\tag{SCD.21}
```

So a positive terminal selected activity atom is impossible only after the
negative countertrace, true loss, and positive storage jump branches have all
been retained and charged on the same carrier.

## 5. Four-body interpretation

Inside the upgraded four-body loop,

```math
\text{tower/scale}
\to
\text{participation}
\to
\text{compactness/no-loss}
\to
\text{gradient/geometry}
\to
\text{tower/scale},
\tag{SCD.22}
```

Body II supplies the exact signed current:

```math
dM+dD=dJ.
\tag{SCD.23}
```

It does not supply the strict activity term.  The strict term is supplied only
by one of the following same-carrier inputs:

```math
\boxed{
dA\le C\,dD
\quad\text{true loss domination;}
}
\tag{SCD.24}
```

```math
\boxed{
dA\le C\,dJ^+
\quad\text{plus retained/legal }dJ^-\text{ and storage-jump consumption;}
}
\tag{SCD.25}
```

or

```math
\boxed{
dA\le C\,dR
\quad\text{legal residual domination.}
}
\tag{SCD.26}
```

Without one of `(SCD.24)`--`(SCD.26)`, the four-body loop has signed visibility
but not coercive positive payment.

## 6. Current exact state

The strict-domination burden is now fully typed.

It is not:

```math
\text{find participation.}
\tag{SCD.27}
```

Participation is already present as `(SCD.23)`.

It is:

```math
\boxed{
\text{prove a same-carrier domination of the selected positive activity by
true loss, retained signed current plus storage-jump consumption, or legal
residual.}
}
\tag{SCD.28}
```

This is the exact next Navier-Stokes production theorem required by the
four-body payment program.

## Verdict

The signed participation identity alone cannot pay selected positive activity.

The algebra proves the obstruction:

```math
dM+dD=dJ
\quad\Longrightarrow\quad
dM+dD+c\,dA\le dJ+dR
\;\text{only when}\;
c\,dA\le dR.
\tag{SCD.29}
```

If the activity is the positive part of the same signed current, then it is paid
exactly by negative countertrace, nonnegative loss, or positive storage jump:

```math
dA\le C\,dJ^+
\quad\Longrightarrow\quad
dA\le C\,dJ^-+C\,dD+C(dM)^+.
\tag{SCD.30}
```

So the gold route has not lost participation.  It has isolated the exact strict
same-carrier domination theorem that remains to be proved from the coupled
Navier-Stokes tower.
