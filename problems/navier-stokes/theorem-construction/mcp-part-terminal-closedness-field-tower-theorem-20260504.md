# Part terminal closedness from Field and tower controls

## Status

Theorem-grade terminal closedness row for shared participation.

## Target

Prove

```math
Field_{N,r,Q}
+\mathfrak A_{N+1,Q}\in L^\infty
+Part_{N,Q}\text{ on compact preterminal subintervals}
\Longrightarrow
Part_{N,Q}\text{ on the retained terminal tail.}
```

## Setup

Fix finite depth `N`.  The participation witness is a finite predicate involving:

```math
U_k=\nabla^k u,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k,
\qquad
0\le k\le N,
```

same-fluid label incidence, finite-difference compatibility, and neighboring-response predicates.

Assume the Field row supplies a positive lower scale

```math
r(t)\ge r_*>0
```

on the retained terminal tail.  Assume the tower amplitude bound

```math
\mathfrak A_{N+1,Q}(t)
\le M_A.
```

## Compactness of witness data

The positive field scale keeps all finite-difference comparisons on cylinders whose radii are bounded below by `r_*`.  The tower bound through depth `N+1` controls every velocity and pressure derivative entering the witness and every spatial increment needed for the jet-to-difference bridge.

Therefore the witness data form an equibounded and equicontinuous finite family on the retained terminal cover.  By Arzela compactness, each witness quantity has a terminal-tail limit after passing to a late retained subtail.

## Closedness of participation predicates

The predicates defining `Part_{N,Q}` are finite closed predicates in these witness variables:

1. same-fluid label incidence persists under the retained same-fluid flow;
2. finite-difference compatibility persists under uniform convergence of the tower data;
3. neighboring-response positivity persists after restricting to a late subtail and retaining the fixed positive response margin from the preterminal witness.

Hence the limiting terminal witness still satisfies `Part_{N,Q}`.

## Theorem

```math
\boxed{
Field_{N,r,Q}
+\mathfrak A_{N+1,Q}\in L^\infty
+Part_{N,Q}\text{ preterminal}
\Longrightarrow
Part_{N,Q}\text{ terminal}.
}
```

## Consequence

When the no-`Jump_avg` finite-cover route supplies `Field_{N,r,Q}` and `DTC.Read` supplies the tower bound, the Part row follows on the retained terminal tail.

## Claimed status

Discharged at theorem-construction level for finite depth `N`.