# AncestryDrain.A — direct loop note

## Target

Given a legal same-fluid source ancestry chain

```math
\cdots\to P^{-2}\to P^{-1}\to P^0,
```

prove that every legal parent edge spends a fixed positive amount of a finite reserve, or decreases a bounded rank:

```math
Reserve(P^{-m}\to P^{-m+1})\ge c_0>0,
```

or

```math
\mathcal R(P^{-m})\le \mathcal R(P^{-m+1})-\delta.
```

This excludes an infinite unpaid ancestry chain once the reserve or bounded rank is supplied.

## Attempt

Energy and dissipation give finite first-moment control:

```math
\int_0^{T_*}\|\nabla u(t)\|_2^2\,dt<\infty.
```

A source-balanced edge is the case where nonlinear source refills the child pulse. Heat-scale normalization allows comparable source/mix mass on shrinking windows with no fixed raw dissipation spend per edge. Thus energy gives no quantized edge cost.

Scale rank also fails. Legal parents may satisfy

```math
j_{P^-}\in[j_P-M,j_P+M]
```

or enter licensed lower-feed bands. A terminal chain may keep comparable scale, oscillate among nearby shells, or shrink along the schedule. This gives no bounded strictly decreasing rank.

Same-fluid and endpoint-fibre coherence preserve legal ancestry once an edge is selected. They supply fidelity, while the target needs a monotone drain or reserve spend.

A source-generation rank requires a bounded generation functional for source-balanced parentage. The current route has no such functional.

## Result

`AncestryDrain.A` remains open under installed inputs. The exact replacement target is

```math
BackwardDrainFunctional.A:
\quad
\text{construct a bounded ancestry rank or finite reserve that decreases/spends on every legal source-parent edge.}
```

The current direct inputs fail to provide this object.

## Consequence

The ancestry route can close through

```math
TwoTowerDonorDepletion.A\Longrightarrow BackwardDrainFunctional.A,
```

or through a separate bounded-rank / reserve-spend theorem. Since `TwoTowerDonorDepletion.A` also remains open under installed inputs, continue to the compactness/Liouville alternative.
