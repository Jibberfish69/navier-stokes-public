# WeightedLiftedSkewDefectLegal.A Attempt

## Target

Discharge the remaining Door 1 obstruction inside
`ProjectedLocalPreCauchyResidueIdentity.A`.

The desired stack is:

```text
ProjectedStressTestCompatibility.A
+ StressAnnulusPacketPartition.A
+ WeightedLiftedSkewDefectLegal.A
=> ProjectedLocalPreCauchyResidueIdentity.A.
```

The first two pieces are explicit geometric constructions: choose the projected
stress test and partition the terminal annular stress flux into
bounded-overlap same-fluid active packets.

The live issue is the third piece:

```text
WeightedLiftedSkewDefectLegal.A.
```

## Why it is needed

The stress-flux residue is a signed projected divergence. The native source carrier is a weighted/lifted/positive selected pre-Cauchy object. Between these two objects, the route applies:

```text
localization,
cutoff,
pressure/projection handling,
weighting,
lifting,
positive-part extraction,
terminal active selection,
packetization.
```

Those operations can create a skew defect: the positive selected edge remains in the terminal carrier while its signed partner leaves the usable terminal record or is sent to a different ledger.

To prove Door 1, this skew defect must be legal:

```text
WeightedLiftedSkewDefect
<= Legal_N + o_N(1),
```

or it must be exactly paired inside the retained packet identity.

## Attempt

If the weighted/lifted skew defect is legal, then the projected local pre-Cauchy residue identity follows:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}\mathcal N_{preCauchy}^{loc}(u;P)
=\ell\cdot\Phi_0-\mathrm{Legal}_N-o_N(1).
```

Then the finite selector and positive-part inequality finish Door 1.

However, the installed surfaces read in this pass define the native source carrier and record that existing energy, dissipation, scheduler, pressure/cutoff, signed-reserve, local, and legal ledgers do not dominate the singular native positive source component. The searches for an installed weighted/lifted skew-defect legality theorem did not locate one.

Therefore there is no installed theorem proving that the skew defect created by weighted/lifted positive selection is legal.

## Verdict

`WeightedLiftedSkewDefectLegal.A` is not proved from installed inputs.

It is the exact remaining Door 1 obstruction after:

```text
FiniteVectorSelector.A is solved,
ProjectedStressTestCompatibility.A is formal,
StressAnnulusPacketPartition.A is geometric/formal.
```

## Reduced target

The reduced theorem is:

```text
WeightedLiftedSkewDefectLegal.A:
For the stress-flux active packet family, all mismatch created by weights, lifts, terminal selection, and positive-part extraction is either paired in the signed projected pre-Cauchy identity or absorbed by the installed legal ledgers.
```

Until this is proved, Door 1 remains open.

Claimed status: failed; exact signed-current / weighted-lifted skew-defect obstruction isolated.
