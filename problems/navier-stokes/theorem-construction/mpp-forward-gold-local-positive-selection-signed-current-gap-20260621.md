---
theorem_id: forward-gold-local-positive-selection-signed-current-gap-20260621
status: measure-gap-proved-ns-polar-saturation-not-installed
logical_landing_node: local_positive_selection_signed_current_gap
edge_effect: "Proves the exact gap between a signed participation current and a selected positive local carrier. The four-body exchange identity cancels signed currents, while the native selected source/trace carrier may keep the positive part before summation. The selected positive mass is paid only by the signed current plus the retained negative local partner, legal residual, or another loss. This identifies the precise polar/signed-saturation theorem needed to convert Body-II signed visibility into same-carrier positive payment."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-current-positive-activity-domination-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-four-body-terminal-atom-accounting-20260621.md
---

# Local Positive Selection / Signed Current Gap

Date: 2026-06-21

## 0. Aim

The Body-II identity gives a signed current:

```math
dM+dD=dJ.
\tag{LPS.1}
```

The selected native carrier may instead keep a positive local part before the
signed current is summed:

```math
dA_{\mathrm{sel}}
=
\int [h]_+.
\tag{LPS.2}
```

This note records the exact difference between those two objects.

The point is:

```math
\boxed{
\text{signed current cancellation does not automatically pay selected
positive local mass.}
}
\tag{LPS.3}
```

It pays it only when the negative local partner is retained or legally charged.

## 1. Local signed density and selected positive carrier

Let \((X,\mathcal B,\lambda)\) be the local packet space.  Let \(h\in L^1(X)\)
be a signed local participation density.

Define the signed current and selected positive carrier by

```math
J=\int_X h\,d\lambda,
\qquad
A=\int_X [h]_+\,d\lambda.
\tag{LPS.4}
```

Also define the negative local partner

```math
N=\int_X [h]_-\,d\lambda.
\tag{LPS.5}
```

Then

```math
J=A-N.
\tag{LPS.6}
```

Therefore

```math
\boxed{
A=J+N.
}
\tag{LPS.7}
```

In particular,

```math
\boxed{
A\le [J]_+ + N.
}
\tag{LPS.8}
```

This is the exact local positive-selection accounting identity.

## 2. Consequence for four-body cancellation

The four-body exchange lemma cancels the signed current \(J\).  It does not
cancel \(A\) unless \(N\) is also kept on the same carrier or charged elsewhere.

If a selected positive carrier satisfies

```math
A>0,
\tag{LPS.9}
```

while

```math
J=0,
\tag{LPS.10}
```

then `(LPS.7)` gives

```math
A=N.
\tag{LPS.11}
```

So the positive selected carrier is exactly matched by a negative local partner.
Discarding that partner creates an unpaid one-sided object.  Retaining it gives
signed saturation.

## 3. Countermodel to signed-current domination

Let \(X=X_+\cup X_-\) with equal finite measure, and set

```math
h=\mathbf 1_{X_+}-\mathbf 1_{X_-}.
\tag{LPS.12}
```

Then

```math
J=0,
\qquad
A=\lambda(X_+)>0,
\qquad
N=\lambda(X_-)>0.
\tag{LPS.13}
```

Thus no estimate of the form

```math
A\le C[J]_+
\tag{LPS.14}
```

can hold without additional structure.

The missing structure is not a better bound on the signed current.  It is a
same-carrier rule for the negative partner \(N\).

## 4. Measure version over time or scale

Let \(h(s,x)\) be a signed local density on a time or log-scale interval.  Define

```math
dJ(s)=\left(\int_X h(s,x)\,d\lambda(x)\right)ds,
\tag{LPS.15}
```

```math
dA(s)=\left(\int_X [h(s,x)]_+\,d\lambda(x)\right)ds,
\qquad
dN(s)=\left(\int_X [h(s,x)]_-\,d\lambda(x)\right)ds.
\tag{LPS.16}
```

Then as signed measures,

```math
\boxed{
dJ=dA-dN.
}
\tag{LPS.17}
```

Therefore

```math
\boxed{
dA=dJ+dN
\le
(dJ)^+ + dN.
}
\tag{LPS.18}
```

At a terminal atom \(\{\tau\}\),

```math
\boxed{
A(\{\tau\})
\le
J^+(\{\tau\})
+N(\{\tau\}).
}
\tag{LPS.19}
```

Thus a terminal selected positive atom is paid by signed positive current only
after the negative local partner has been retained or charged.

## 5. Navier-Stokes reading

For Navier-Stokes, \(h\) may be a localized pressure/transport/viscous/tower
trace density before final packet summation.  The signed current \(J\) is what
enters the Body-II identity:

```math
dM+dD=dJ.
\tag{LPS.20}
```

The selected native positive carrier is more like \(A\).  It is not the same
object as \(J\), and it is not even the same object as \(J^+\) unless the
selection occurs after the same signed summation.

Therefore, to turn Body-II visibility into four-body payment, the proof must
install one of:

```math
\boxed{
dN\text{ retained on the same carrier;}
}
\tag{LPS.21}
```

```math
\boxed{
dN\le dR\text{ as legal residual;}
}
\tag{LPS.22}
```

or

```math
\boxed{
dA\le C\,dD+C\,dR
\text{ by an independent same-carrier loss domination.}
}
\tag{LPS.23}
```

Without `(LPS.21)`--`(LPS.23)`, signed current cancellation can coexist with a
positive selected local carrier.

## 6. Current exact state

The strict same-carrier domination theorem has two nested requirements:

```math
\boxed{
\text{first, tie selected positive activity to the positive part of a signed
local density;}
}
\tag{LPS.24}
```

```math
\boxed{
\text{second, retain or charge the negative local partner produced by that
same density.}
}
\tag{LPS.25}
```

This is the precise local form of signed saturation.

It is also the precise obstruction to replacing the native selected carrier by
the signed Body-II current without proof.

## Verdict

The four-body loop can cancel signed currents.  The selected positive carrier is
paid only when the proof keeps the local sign-pairing intact:

```math
dA=dJ+dN.
\tag{LPS.26}
```

The remaining Navier-Stokes theorem is a same-carrier polar/signed-saturation
statement:

```math
\boxed{
\text{the negative local partner }dN\text{ cannot disappear from the selected
terminal record without legal charge or true loss.}
}
\tag{LPS.27}
```

That is the exact local version of the strict domination gap.
