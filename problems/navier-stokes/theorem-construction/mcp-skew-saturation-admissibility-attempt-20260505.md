# SkewSaturationAdmissibility.A attempt

## Status

Failed as an unconditional theorem from the currently installed terminal packet hypotheses.  A finite-saturation replacement is isolated.

## Target

Given a bounded-overlap same-fluid terminal packet family `\mathcal F_N`, form
the candidate saturated family `\mathcal F_N^\sharp` by adjoining the
bare/unlocalized algebraic counter-edge partners of every selected terminal
source edge.  Prove:

```math
\mathcal F_N^\sharp
\quad\text{is still a bounded-overlap same-fluid terminal ledger,}
```

with added packets either inside the saturated ledger or charged to legal loss:

```math
\sum_{P\in\mathcal F_N^\sharp\setminus\mathcal F_N}\int |L_P^{sat}|dt
\le o_N(1)+Loss_{legal}.
```

## Attempt

For one selected source edge `e`, the bare dyadic graph gives only the
unlocalized involutive partner `\iota(e)` on the full unweighted interaction
graph.  This is an algebraic partner, not yet a terminal packet in the selected
same-fluid ledger.  Finite dyadic banding controls only the shell indices
involved in `\iota(e)`.  Same-fluid transport supplies carrier fidelity only
after a partner packet has already been selected and kept inside an admissible
terminal collar.

These facts do not imply bounded-overlap saturation.  The obstruction is that a
single selected terminal packet can have many legal counter-edge realizations
across physical packet pieces and terminal time collars.  Closing the ledger
under all such partners can produce multiplicity growth:

```math
\#\{P' : P'\text{ is a counter-edge partner of some selected edge into }P\}\gg1.
```

Bounded overlap of `\mathcal F_N` controls selected child packets.  It does not control the full partner hull produced by the bare exchange graph.

## Failure model

The same diffuse parent pattern used in the source-parent obstruction applies here.  Let one child packet receive legal source from many predecessor packets.  The signed partners of those positive incoming edges live on many donor packets.  Saturating the selected child family by all signed partners produces an incoming donor hull with unbounded multiplicity.  No installed cover lemma bounds that hull by a fixed overlap constant.

Assigning the added partners to legal loss would require exactly the missing boundary-pricing theorem:

```math
OffSaturationBoundaryPricing.A.
```

Thus the saturation theorem cannot be proved before boundary pricing or a finite-complexity parent theorem.

## Conditional replacement

The correct conditional statement is:

```math
FinitePartnerMultiplicity.A
+SameFluidPartnerCollar.A
+OffSaturationBoundaryPricing.A
\Longrightarrow SkewSaturationAdmissibility.A.
```

where `FinitePartnerMultiplicity.A` asserts that the signed partner hull has uniformly bounded physical packet overlap, and `SameFluidPartnerCollar.A` asserts that partner enlargement remains inside the same-fluid terminal collar up to legal loss.

## Verdict

```math
\boxed{SkewSaturationAdmissibility.A\text{ remains open.}}
```

It reduces to finite partner multiplicity or to off-saturation boundary pricing.  Without such a theorem, saturation may destroy the bounded-overlap terminal ledger needed for a localized skew current.
