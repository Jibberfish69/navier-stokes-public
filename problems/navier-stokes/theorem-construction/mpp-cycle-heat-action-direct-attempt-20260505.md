# MPP CycleHeatAction.A Direct Attempt

## Status

Direct theorem-grade audit from the current `ParabolicSourceCurrent.A` route.

Verdict:

```math
\boxed{
CycleHeatAction.A\text{ is not proved from the installed inputs in this note.}
}
```

The signed-current route is still sharper than the scalar
`SquareReserveEvolution.A` route because it delays positive-part extraction.
However, the proposed proof plan has one uninstalled theorem-grade step:
closed parabolic source-current cycles must be coercively priced by actual
viscous heat action.  The current ledgers give the packet balance and the
legal-loss bookkeeping; they do not give the needed cycle-capacity / heat-loss
lower bound.

## Inputs Audited

The route note gives the signed packet balance

```math
\partial_tE_P+D_P
=
\operatorname{div}_{\mathcal G}J(P)+L_P,
\qquad
J(P\to P')=-J(P'\to P),
```

with

```math
\sum_P\int |L_P|\,dt
\le o_N(1)+Loss_{legal}.
```

The intended hard target is

```math
\sum_{P\in\mathcal T}
\int[\operatorname{div}_{\mathcal G}J(P)]_+\,dt
\le
Flux^+_{\partial\mathcal T}
+
\theta\sum_{P\in\mathcal T}\int D_P\,dt
+
o_N(1)+Loss_{legal}.
\tag{CHA}
```

The proof plan proposes:

1. lift the signed current to a spacetime flow by adding temporal storage
   edges;
2. decompose the lifted nonnegative flow into boundary paths, earlier-storage
   paths, and closed spacetime cycles;
3. prove every closed cycle loses a fixed fraction of its transported mass
   through viscous heat edges.

Gates 1 and 2 are exact finite-network bookkeeping after a finite packet/time
truncation and a choice of positive edge capacities are fixed.  Gate 3 remains
the hard theorem: a cycle-capacity / heat-loss lower bound.  It is not a
consequence of packet balance alone.

## Direct Attempt

From the balance,

```math
\operatorname{div}_{\mathcal G}J(P)
=
\partial_tE_P+D_P-L_P.
```

Thus, on a finite truncation,

```math
\int[\operatorname{div}_{\mathcal G}J(P)]_+\,dt
\le
\int[\partial_tE_P]_+\,dt
+
\int D_P\,dt
+
\int |L_P|\,dt.
\tag{1}
```

This estimate is legal but too weak.  It controls positive current divergence
by positive variation of the localized packet energy plus heat and legal
losses.  The plan needs the stronger assertion that the positive variation
created by internal source-current cycles is itself charged by heat unless it
comes from boundary influx or an earlier stored-energy path pruned by
first-current selection.

Trying to prove this directly from the heat-scale energy inequality gives only

```math
E_P(t_{i+1})+c\int_{t_i}^{t_{i+1}}D_P\,dt
\le
E_P(t_i)+\int_{t_i}^{t_{i+1}}
(\operatorname{div}_{\mathcal G}J(P))_+\,dt
+Loss_P.
\tag{2}
```

Inequality `(2)` is an upper bound on what source input can refill after heat
loss.  It does not imply that a unit of internal cycle flow pays a fixed amount
of heat.  The source input on the right is exactly the object being estimated.
Subtracting a flow decomposition does not remove this circularity unless one
has an independent capacity statement for temporal/heat edges.

Equivalently, a closed circulation can be added to the lifted edge flow without
changing node divergence.  The desired estimate is about positive divergence of
the spatial signed current, but the proof plan prices it by properties of a
chosen spacetime decomposition.  A theorem-grade argument must prove that the
chosen decomposition is saturated/minimal in a way that prevents unpaid
circulation through temporal storage edges.  No current installed source-wall
surface supplies that saturation.

## Why The Current Inputs Do Not Close Gate 3

The installed source-wall inputs rule out several weaker escapes but do not
give cycle heat coercivity.

First-moment dissipation gives

```math
\int\sum_{j>N}D_j(t)\,dt=o_N(1),
```

but the scalar heat-window model in the source-wall notes shows that a thin
terminal pulse can have small first moment and order-one scale-critical square
reserve.  The same obstruction appears here as an unpriced heat-scale current
arrival unless a cycle-capacity theorem excludes it.

`ParentSquareEmbed.A` is static.  It embeds diffuse parent clouds into the
donor square reserve, but it gives no derivative, dissipative sign, or
contractive parent-or-charge law for the reserve.

`WeightedAdjRes.A` controls child residual charge.  It does not identify the
donor square/current circulation that must pay heat action.

Bare Navier--Stokes shell exchange is antisymmetric, but the signed
same-fluid audit records that one-sided weights, lifted/cutoff reductions,
terminal localization, and positive-part selection can separate a positive
terminal edge from its negative partner.  Thus symbolic signed pairing does
not by itself prove terminal cycle saturation.

## Exact Missing Lemma

The missing theorem is:

```math
\boxed{
ParabolicCycleCoercivity.A
}
```

For every finite same-fluid terminal packet/time truncation equipped with the
localized skew current `J`, temporal storage edges, viscous heat edges, and
legal boundary/loss ledger, there exists a decomposition of the positive lifted
source flow such that every non-boundary, non-earlier-storage unit reaching a
terminal active packet crosses heat edges carrying a fixed dissipative charge:

```math
Flow_{closed}(\mathcal T)
\le
C\sum_{P\in\mathcal T}\int D_P\,dt
+
o_N(1)+Loss_{legal}.
\tag{PCC}
```

Equivalently, in terminal signed language:

```math
\boxed{
TerminalParabolicSignedSaturation.A:
\text{a selected positive terminal same-fluid source-current edge cannot lose
its compensating negative/heat partner outside the usable parabolic ledger
without paying legal boundary, earlier-storage, residual, or viscous loss.}
}
```

This is the parabolic-current analogue of `TerminalSignedSaturation.A`, with
temporal storage and heat edges included.  It is not installed by
`LocalizedSkewCurrent.A`, first-moment heat dissipation, static parent
embedding, child residual charge, or bare shell antisymmetry.

## Strongest Valid Conditional Reduction

The following conditional theorem is valid.

```math
\boxed{
LocalizedSkewCurrent.A
+
ParabolicCycleCoercivity.A
+
FirstCurrentPruning.A
\Longrightarrow
CycleHeatAction.A.
}
```

Here `FirstCurrentPruning.A` is the post-signed-current version of the
first-pulse selection: any earlier stored-energy path feeding the selected
terminal positive current is either outside the first terminal current window
or is charged to the admitted earlier-storage ledger.

Proof.  Work on a finite packet/time truncation and use
`LocalizedSkewCurrent.A` to write the packet Kirchhoff balance with total
legal loss `o_N(1)+Loss_{legal}`.  Split the positive lifted source flow into
boundary-fed paths, earlier-storage paths, and residual closed parabolic
cycles.

Boundary-fed paths contribute at most `Flux^+_{\partial\mathcal T}`.  By
`FirstCurrentPruning.A`, earlier-storage paths are absent for the selected
terminal first-current family or are charged to the allowed earlier-storage
ledger.  By `ParabolicCycleCoercivity.A`, the remaining closed-cycle flow is
bounded by

```math
C\sum_{P\in\mathcal T}\int D_P\,dt
+o_N(1)+Loss_{legal}.
```

Adding the three components and absorbing the localized-current legal losses
gives `(CHA)` with the stated heat-action term.  Removing the finite truncation
uses bounded overlap of the terminal family, monotone convergence for positive
flows, and lower semicontinuity of dissipation.

Consequently,

```math
LocalizedSkewCurrent.A
+
ParabolicCycleCoercivity.A
+
FirstCurrentPruning.A
\Longrightarrow
ParabolicSourceCurrent.A
\Longrightarrow
LocalPositiveSourceCarleson.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A.
```

## Proof Verdict

`CycleHeatAction.A` is not discharged.  The precise obstruction is not the
algebraic signed-current ledger; it is the missing parabolic saturation /
cycle-coercivity theorem that forces terminal closed source-current cycles to
pay actual viscous heat action rather than merely circulate through the chosen
spacetime flow decomposition.

Until `ParabolicCycleCoercivity.A` or an equivalent
`TerminalParabolicSignedSaturation.A` is proved, the parabolic-current route
remains a conditional reformulation of the live direct source wall:

```math
\boxed{
CycleHeatAction.A
\text{ remains open and would imply }
ScaleCriticalTreeCarleson.A
\text{ only after the missing cycle-coercivity input is supplied.}
}
```
