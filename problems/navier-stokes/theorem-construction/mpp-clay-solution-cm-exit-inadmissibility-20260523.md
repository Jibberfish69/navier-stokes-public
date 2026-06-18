# MPP Clay Smooth Solution CM Exit Inadmissibility

## Authority Cap - Historical Route Audit

This older audit predates the May 25 pass/fail CM completion audits. Its open-middle, blunt-converse, or remaining-exclusion language is historical route hygiene. Current CM proof status uses finite Clay witness entry, Pack/Part/Field finite-failure exhaustion, and CM contrapositive embedding. Absence of the raw converse `not CM => not Member` is not an active blocker for the current CM proof.

Date: 2026-05-23

Status: installed external-admissibility bridge, with exact scope.

Theorem label:

```text
ClaySolutionCMExitInadmissibility.A
```

## Point

This note proves the independent statement that is actually available from the
Clay problem statement:

```text
a Pack/Part/Field CM class-exit witness is inadmissible as a Clay smooth
solution witness.
```

It does not prove the stronger statement:

```text
a Pack/Part/Field CM class-exit witness is inadmissible as a Clay breakdown
counterexample witness.
```

That stronger statement requires an additional bridge, because the Clay
breakdown alternative is precisely the nonexistence of a global smooth accepted
solution.

## External Clay Input

In Fefferman's official Clay statement, an accepted whole-space solution must
satisfy

```text
p,u in C^\infty(R^3 x [0,infty))
```

with bounded energy. In the periodic formulation, an accepted solution must be
periodic and satisfy

```text
p,u in C^\infty(R^3 x [0,infty)).
```

Thus Clay smooth-solution admissibility includes global classical smoothness of
the velocity and pressure on every finite spacetime window.

## Installed CM Inputs

This note uses:

1. `SLC.A`: every classical still-live smooth window installs the exact
   Pack/Part/Field CM witness:

```math
\text{classical still-live }Q
\Longrightarrow
\exists r_Q>0\ \forall N\ge0:\ CM_{N,r_Q,Q}.
```

2. `CMW.A`: the all-depth Pack/Part/Field witness certifies local membership:

```math
\forall N\ \exists r_N>0:\ CM_{N,r_N,Q}
\Longrightarrow
Member(Q;\mathfrak O_{NS}^{work}).
```

3. The governing primitive:

```math
Exit(Q;\mathfrak O_{NS}^{work})
:=
\neg Member(Q;\mathfrak O_{NS}^{work}).
```

## Theorem `ClaySolutionCMExitInadmissibility.A`

Let `(u,p)` be a Clay-admissible smooth solution in either the whole-space or
periodic formulation. Then no still-live finite window of `(u,p)` carries a CM
class-exit witness.

Equivalently:

```math
\boxed{
ClaySmoothSolution(u,p)
\Longrightarrow
\forall Q\Subset \Omega\times[0,\infty),\
\neg Exit(Q;\mathfrak O_{NS}^{work}).
}
```

Therefore any Pack/Part/Field class-exit witness is inadmissible as a witness of
a Clay smooth solution.

## Proof

Assume `(u,p)` is a Clay-admissible smooth solution. By the Clay admissibility
condition, `u` and `p` are classical smooth functions on every finite spacetime
window.

Fix any still-live window

```math
Q\Subset \Omega\times[0,\infty).
```

Since `(u,p)` is classical on a collar of `Q`, `SLC.A` gives a positive scale
`r_Q>0` such that for every finite depth `N`,

```math
CM_{N,r_Q,Q}(u,p,\Phi).
```

By `CMW.A`, this all-depth witness implies

```math
Member(Q;\mathfrak O_{NS}^{work}).
```

By the governing primitive,

```math
Exit(Q;\mathfrak O_{NS}^{work})
=
\neg Member(Q;\mathfrak O_{NS}^{work}),
```

so `Exit(Q;\mathfrak O_{NS}^{work})` is false.

Since `Q` was arbitrary, no still-live finite window of a Clay smooth solution
can carry a Pack/Part/Field CM class-exit witness.

## Boundary

This is the independent admissibility bridge for Clay smooth solutions.

It is not, by itself, the missing bridge for excluding Clay breakdown. A Clay
breakdown witness is not required to be a global Clay smooth solution; it is used
to show that no such solution exists. Therefore the remaining counterexample
exclusion still needs one of the following:

1. a proof that a finite breakdown witness forces a CM exit on a preterminal
   still-live window, contradicting `SLC.A`;
2. a proof of `TerminalCMNoExit.A / NoGenuineCMExit.A`;
3. an equivalent theorem showing that terminal CM class-exit cannot be realized
   by the maximal smooth solution from original smooth data.
