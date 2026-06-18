# Part terminal closedness from Field and tower controls

## Status

Conditional terminal closedness row for shared participation.  Strict
neighboring-response clauses require either a closed non-strict terminal
definition or a uniform retained positive margin.

## Target

Prove

```math
Field_{N,r,Q}
+\mathfrak A_{N+1,Q}\in L^\infty
+Part_{N,Q}\text{ on compact preterminal subintervals}
+\text{closed Part predicates or retained response margins}
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

For each strict neighboring-response predicate in the finite witness, assume
either that the terminal `Part_{N,Q}` predicate is encoded by a closed
non-strict inequality, or that the retained tail carries a fixed margin

```math
\mathcal R_\ell(t)\ge \gamma_\ell>0
```

for the finitely many response functionals `\mathcal R_\ell`.

## Compactness of witness data

The positive field scale keeps all finite-difference comparisons on cylinders whose radii are bounded below by `r_*`.  The tower bound through depth `N+1` controls every velocity and pressure derivative entering the witness and every spatial increment needed for the jet-to-difference bridge.

Therefore the witness data form an equibounded and equicontinuous finite family on the retained terminal cover.  By Arzela compactness, each witness quantity has a terminal-tail limit after passing to a late retained subtail.

## Closedness of participation predicates

The closed clauses defining `Part_{N,Q}` are finite closed predicates in these witness variables:

1. same-fluid label incidence persists under the retained same-fluid flow;
2. finite-difference compatibility persists under uniform convergence of the tower data;
3. neighboring-response positivity persists only under the fixed positive response margin above, unless the terminal predicate has been weakened to the closed non-strict version.

Hence the limiting terminal witness still satisfies `Part_{N,Q}` under the closed-predicate/margin hypothesis.  Without that hypothesis, compactness gives only the closed relaxed witness, and vanished response margin is a lawful `\neg Part_{N,Q}` face.

## Theorem

```math
\boxed{
Field_{N,r,Q}
+\mathfrak A_{N+1,Q}\in L^\infty
+Part_{N,Q}\text{ preterminal}
+\text{closed Part predicates or retained response margins}
\Longrightarrow
Part_{N,Q}\text{ terminal}.
}
```

## Consequence

When the no-`Jump_avg` finite-cover route supplies `Field_{N,r,Q}`, `DTC.Read` supplies the tower bound, and the strict response clauses have retained margins or closed terminal encoding, the Part row follows on the retained terminal tail.

## Claimed status

Discharged only as a conditional finite-depth closedness row with the displayed Field, tower, and response-margin/closed-predicate inputs.
