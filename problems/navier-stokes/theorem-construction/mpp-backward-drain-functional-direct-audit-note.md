# MPP BackwardDrainFunctional.A Direct Audit Note

## Status

Direct audit of the replacement theorem isolated by
`mpp-ancestrydrain-a-direct-attempt-note.md`:

```math
\boxed{
BackwardDrainFunctional.A.
}
```

This is the drain-side closure needed after
`ParentConcentrationOrDiffuseCharge.A` supplies a legal same-fluid ancestry
chain.

## Target

Construct a bounded ancestry rank or finite reserve `\mathcal R` such that
every legal source-parent edge satisfies either:

```math
Reserve(P^-\to P)\ge c_0>0,
```

or

```math
\mathcal R(P^-)\le \mathcal R(P)-\delta.
```

Then an infinite unpaid ancestry chain is impossible.

## Attempt 1: Energy / Dissipation Reserve

The installed energy reserve controls first-moment dissipation:

```math
\int_0^{T_\ast}\|\nabla u(t)\|_2^2\,dt<\infty.
```

A source-balanced parent step is exactly the case where the child pulse is
refilled by nonlinear source rather than paid by a visible energy drop.  The
heat-scale normalization allows comparable source/mix mass on shrinking
windows without assigning a fixed positive raw dissipation spend to every
ancestry edge.

Thus finite energy does not give a quantized edge cost.

## Attempt 2: Scale Rank

A natural rank is dyadic scale:

```math
\mathcal R(P)=j_P.
```

But legal parents may lie in a comparable band

```math
j_{P^-}\in[j_P-M,j_P+M]
```

or in licensed lower-feed bands.  Along a terminal chain, scale can oscillate,
move to comparable shells, or drift through the shrinking schedule without a
strict monotone decrease in a bounded rank.

Thus scale is not an installed drain functional.

## Attempt 3: Same-Fluid / Endpoint-Fibre Rank

Same-fluid fidelity preserves labels and endpoint fibre after an edge is
selected.  Preservation is not drainage.  It does not reduce the number of
available legal parents, lower the active coefficient, or spend a finite
reserve on each step.

Thus the carrier law gives coherence, not a monotone rank.

## Attempt 4: Source-Generation Rank

One could try to rank pulses by generation depth, active-source complexity, or
branching entropy.  The current route has no installed bounded generation
functional.  A terminal chain can keep selecting source-balanced parents with
comparable normalized residue; the parent relation itself does not assign a
strictly decreasing integer or real-valued quantity.

Thus no source-generation rank is currently available.

## Verdict

`BackwardDrainFunctional.A` is not installed by energy, local energy,
same-fluid transport, endpoint-fibre coherence, dyadic scale, or scheduler
data.

The exact obstruction is:

```math
\boxed{
\text{no bounded monotone ancestry rank and no quantized finite reserve spend
is attached to every legal source-parent edge.}
}
```

Therefore the drain closure package remains open:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A
+
BackwardDrainFunctional.A.
}
```

