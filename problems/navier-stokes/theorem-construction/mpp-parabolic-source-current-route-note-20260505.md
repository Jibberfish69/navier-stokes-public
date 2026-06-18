# MPP Parabolic Source-Current Route Note

## Status

Theorem-facing route insertion for the reopened source wall.

This note does not discharge the wall.  It records a sharper attack on the
direct Carleson branch:

```math
\boxed{
ScaleCriticalTreeCarleson.A
}
```

by preserving the signed Navier--Stokes source exchange until the final
positive-part extraction.

The current scalar obstruction is:

```math
\int_I \sum_{j>N}D_j(t)\,dt
\quad\text{is controlled, but the route needs}\quad
\int_I\sum_{j>N}2^{-j}D_j(t)^2\,dt.
```

Equivalently, first-moment heat dissipation does not control thin heat-scale
high spikes.  The new route asks whether signed nonlinear exchange can form a
closed terminal source circulation without paying heat action.

## Source-Current Graph

Fix a same-fluid bounded-overlap terminal packet family `\mathcal F_N`.  A node
is a packet

```math
P=(Q_P,j_P).
```

Edges are legal source transfers between same-fluid dyadic/physical packets:

```math
e:P\to P'.
```

An oriented source current is a skew edge field

```math
J(P\to P')=-J(P'\to P).
```

The local source identity should be read as the Kirchhoff law

```math
\partial_t E_P+D_P
=
\operatorname{div}_{\mathcal G}J(P)+L_P,
\tag{PSC.1}
```

where

```math
\operatorname{div}_{\mathcal G}J(P)
:=
\sum_{P'}J(P'\to P),
```

and `L_P` contains legal pressure-normalization, cutoff, transport,
off-packet, and boundary leakage terms.

The positive source target is then

```math
\sum_{P\in\mathcal F_N}
\int
\left[\operatorname{div}_{\mathcal G}J(P)\right]_+dt
\le
o_N(1)+Loss_{legal}.
\tag{PSC.2}
```

This is the signed-current version of `LocalPositiveSourceCarleson.A`.

## Theorem `LocalizedSkewCurrent.A`

For every same-fluid bounded-overlap terminal packet family `\mathcal F_N`,
there is an antisymmetric legal edge current `J` on the packet graph and a legal
loss ledger `L_P` such that

```math
J(P\to P')=-J(P'\to P),
```

and

```math
\partial_t E_P+D_P
=
\sum_{P'}J(P'\to P)+L_P
\tag{LSC}
```

for each packet `P`, with

```math
\sum_{P\in\mathcal F_N}\int |L_P|\,dt
\le
o_N(1)+Loss_{legal}.
\tag{LSC.loss}
```

### Proof Status

`LocalizedSkewCurrent.A` is the algebraic ledger step, not the hard estimate.
It follows from three standard ingredients already used by the source route:

1. The inviscid advective nonlinearity is energy-skew after incompressible
   projection.
2. Dyadic triadic interactions can be assigned to donor/receiver packet edges
   so every internal interaction appears with opposite sign on the paired
   endpoint.
3. The non-skew remnants are exactly the already legal pressure/cutoff,
   transport, off-family, and boundary terms.

Thus the right target is not a new scalar estimate at this stage.  The right
target is to keep the signed packet exchange identity through the localization
   ledger instead of prematurely replacing it by

```math
\left[\mathcal N^{loc}_{preCauchy}\right]_+.
```

## Three-Shell Test Model

On one transported physical cylinder and three interacting dyadic shells

```math
j_1<j_2<j_3,
```

write the localized triadic source vector as

```math
S=(S_1,S_2,S_3),
\qquad
S_1+S_2+S_3=L_{123}.
```

After moving `L_{123}` into the legal ledger, the internal part satisfies

```math
S_1+S_2+S_3=0.
```

Any zero-sum shell source vector on this triangle is the divergence of an
antisymmetric edge current.  For example, choose edge currents

```math
J(j_1\to j_2)=a,\quad
J(j_2\to j_3)=b,\quad
J(j_3\to j_1)=c
```

so that

```math
\operatorname{div}J(j_1)=c-a=S_1,\quad
\operatorname{div}J(j_2)=a-b=S_2,\quad
\operatorname{div}J(j_3)=b-c=S_3.
```

The compatibility condition is exactly `S_1+S_2+S_3=0`.

This proves the small test for `LocalizedSkewCurrent.A`: the localized triadic
packet can be represented as an antisymmetric current plus legal localization
error.

## Important Correction: Cycles Must Be Parabolic

A purely spatial graph cycle has zero divergence.  A current that only runs
around

```math
j_1\to j_2\to j_3\to j_1
```

does not itself create positive source:

```math
\operatorname{div}_{\mathcal G}J=0.
```

Therefore the phrase "closed internal circulation" cannot mean a static cycle
inside one time slice.  The relevant object is a spacetime cycle: source enters
one packet, is stored on temporal energy edges, transfers across scale edges,
and later returns.  A terminal source pulse without boundary influx must close
through temporal storage and viscous heat edges.

So the hard theorem must be parabolic, not merely graph-theoretic.

## Theorem Target `CycleHeatAction.A`

Let `\mathcal T` be a terminal same-fluid packet tree with no positive boundary
influx except the legal boundary current `Flux^+_{\partial\mathcal T}`.  Decompose
the spacetime source current into boundary-fed flow plus internal parabolic
cycles.  Then

```math
\boxed{
\sum_{P\in\mathcal T}
\int
\left[\operatorname{div}_{\mathcal G}J(P)\right]_+dt
\le
Flux^+_{\partial\mathcal T}
+C\,Circ_{heat}(\mathcal T)
+L_{\mathcal T}.
}
\tag{CHA.1}
```

The desired heat-action estimate is

```math
\boxed{
Circ_{heat}(\mathcal T)
\le
\theta\sum_{P\in\mathcal T}\int D_P\,dt
+o_N(1)+Loss_{legal}.
}
\tag{CHA.2}
```

Together, `(CHA.1)` and `(CHA.2)` imply `LocalPositiveSourceCarleson.A`, hence
the direct source-wall branch:

```math
LocalizedSkewCurrent.A
+CycleHeatAction.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

## Relation To `ScaleCriticalTreeCarleson.A`

The scalar reserve

```math
\mathcal R_N(I)
=
\int_I\sum_{j>N}2^{-j}D_j(t)^2\,dt
```

is the signless price of terminal source spikes.  The current route replaces
the scalar question

```math
\text{can energy control }[\text{positive source}]?
```

with the parabolic signed-exchange question

```math
\text{can an internal signed source current create terminal positive divergence}
\text{ without heat action?}
```

If `CycleHeatAction.A` is proved, then it installs the missing dynamic law that
`SquareReserveEvolution.A` was trying to provide:

```math
CycleHeatAction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

The implication is not by first-moment dissipation alone.  It is by ruling out
source-positive spacetime cycles whose signed internal transfers repeatedly
make positive divergence on heat-scale terminal packets.

## Current Verdict

This note opens a genuinely new theorem path:

```math
\boxed{
ParabolicSourceCurrent.A
:=
LocalizedSkewCurrent.A+CycleHeatAction.A.
}
```

`LocalizedSkewCurrent.A` is the algebraic signed-current ledger and passes the
three-shell test modulo legal localization errors.

The live hard theorem is:

```math
\boxed{
CycleHeatAction.A:
\text{terminal closed source-current cycles pay heat action.}
}
```

The three-shell parabolic test in
`mpp-cycle-heat-action-three-shell-test-note-20260505.md` sharpens this further:
skewness alone does not imply heat action.  The next exact theorem is

```math
\boxed{
ParabolicEdgeResistance.A:
\text{legal same-fluid source-current edges have heat-scale resistance.}
}
```

If `ParabolicEdgeResistance.A` is installed, then

```math
LocalizedSkewCurrent.A
+ParabolicEdgeResistance.A
\Longrightarrow
CycleHeatAction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

This target is not an alias of the failed scalar energy, Bellman, parent
selection, or Zeno rigidity attempts.  It attacks the same root obstruction
through the signed exchange structure before positive-part extraction.
