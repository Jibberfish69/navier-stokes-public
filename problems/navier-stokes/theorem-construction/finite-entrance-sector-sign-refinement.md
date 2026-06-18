# Finite Entrance-Sector Sign Refinement

## Status

Active theorem-facing upstream debt note.

Role: isolate the selector-side exact primitive on the constructive
balanced-frame route, namely the finite entrance-sector sign refinement that
packages the entrance-compatible TPS cap-balancing / reserve-sign burden.

## Purpose

Discharge the selector-side primitive:

```math
\boxed{
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision}
\Longrightarrow
\text{entrance-compatible selector sign refinement.}
}
\tag{FESR.0}
```

This is the exact theorem-facing selector burden named as `QSP.11k`, and one
step less primitive than `QSP.11j`.

## Exact Target

### Theorem FESR.A (finite entrance-sector sign refinement supplies the selector-side primitive)

Assume the TPS cap-balancing / reserve-sign refinement is realized on a finite
entrance-sector subdivision subordinate to each parent shell/cap carrier, and
that every terminal sector cell satisfies the same diagonal-density and
weighted row-sum bounds as in `TPS-sign-ent`. Assume also that each active pair
is assigned to the terminal sector cell whose parent sector contains its
entrance direction `e_{ab}(t_0)`.

Then the selector-side exact primitive is supplied:

```math
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision}
\Longrightarrow
\texttt{SelectorSignRefine}.
\tag{FESR.1}
```

Equivalently, the selector-side constructive shape burden may be packaged as
the single theorem

```math
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision.}
\tag{FESR.2}
```

So the selector-side exact-potential primitive is reduced to one theorem on
the same refinement layer, rather than a separate cap-balancing packet plus a
separate entrance-assignment theorem.

## Proof

By `TPS-sign-ent`, the reserve-sign packet survives on the entrance-sector
refined carrier. The assignment rule is exactly the entrance-compatibility
hypothesis used on the selector side, so the entrance-compatible refinement is
the same assignment rule on the refined carrier. ∎

## Interpretation

This note is the theorem-facing selector primitive behind the constructive
shape branch. It is the exact surface referred to in the shape summaries as
`QSP.11k`.

One step less primitive, the same selector-side burden can also be written as

```math
\text{entrance-compatible TPS cap-balancing / reserve-sign refinement,}
\tag{FESR.3}
```

which is the `QSP.11j` form. And one step more primitive, the entrance-sector
sign packet splits into the two sector-level suppliers

```math
\text{sector-stable diagonal-density lower bound}
\quad+\quad
\text{sector-stable weighted row-sum bound.}
\tag{FESR.4}
```

Those finer decompositions are already exported by `TPS-sign-ent'`; this note
keeps the exact primitive packaged at the theorem-facing level used by the
balanced-frame route.

More sharply, after the inherited bounded-multiplicity entrance-sector graph
from `TPS-sign-ent'''` is accepted, the remaining source-level selector burden
reduces further to the single theorem isolated in
[sectorwise-relative-oscillation-of-diagonal-density.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md):

```math
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average.}
\tag{FESR.4a}
```

So `QSP.11k` is now the packaged theorem-facing selector primitive, while
diagonal restriction stability is only the intermediate kernel-local form of
the sharper source-level selector wall currently visible on disk.

## Downstream Use

This note feeds the constructive shape route in the form

```math
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision}
\;+\;
\text{finite shell comparability}
\;+\;
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced-frame shape descendants.}
\tag{FESR.5}
```

That is the selector-side half of the constructive stop line recorded in
[ptc-shape-normalization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md)
and
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).
