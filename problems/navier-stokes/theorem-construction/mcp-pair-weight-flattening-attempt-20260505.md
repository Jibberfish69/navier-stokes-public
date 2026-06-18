# PairWeightFlattening.A attempt

## Status

Failed as an unconditional theorem on the current terminal source-current surface.

## Target

Prove the pairwise weight-defect bound

```math
\sum_{e=(P,P')}
\int |W_P-W_{P'}|\,|J_e|\,dt
\le o_N(1)+Loss_{legal},
```

for every legal signed source-current edge in the saturated terminal packet graph.

## Pair defect identity

For a bare skew edge current

```math
J^0(P\to P')=-J^0(P'\to P),
```

inserting terminal weights gives the paired contribution

```math
W_PJ^0(P'\to P)+W_{P'}J^0(P\to P')
=(W_P-W_{P'})J^0(P'\to P).
```

Thus the desired flattening requires the edge weight difference to be small after summing against the signed-current magnitude.

## Live shell mismatch

On the current lifted source wall, the one-sided tail weights have shell-size mismatch.  The audit records a representative difference:

```math
2^j2^{-\sigma(\ell-j)}-2^\ell
=-2^\ell\left(1-2^{-(1+\sigma)(\ell-j)}\right).
```

For legal separated shell edges with `\ell-j\ge d_0>0` in the active collar, the exact identity above gives the lower bound

```math
\left|2^j2^{-\sigma(\ell-j)}-2^\ell\right|
=2^\ell\left(1-2^{-(1+\sigma)(\ell-j)}\right)
\ge
\left(1-2^{-(1+\sigma)d_0}\right)2^\ell.
```

Thus the defect retains a fixed positive fraction of the larger shell weight unless an additional flattening mechanism is supplied.

## Failed proof route

Terminal heat-scale rescaling can flatten smooth geometric coefficients on one packet.  It does not flatten dyadic one-sided tail weights across source-current edges whose endpoints live at different effective shell weights.  The mismatch is built into the source-wall weighting.

Bounding the mismatch by absolute values gives

```math
\sum_e\int |J_e|dt,
```

weighted at the source-wall scale.  This is exactly the positive source / active-square reserve behind

```math
ScaleCriticalTreeCarleson.A.
```

Therefore `PairWeightFlattening.A` cannot be used as an independent supplier for `WeightedLiftedSkewDefectLegal.A` under current inputs.

## Conditional replacement

The viable conditional form is

```math
TerminalWeightCoherence.A
+ActiveStrainAlignmentCost.A
\Longrightarrow PairWeightFlattening.A.
```

Here `TerminalWeightCoherence.A` must align the source-current endpoints at the same effective terminal weight, and `ActiveStrainAlignmentCost.A` must pay the residual aligned positive strain term.

## Verdict

```math
\boxed{PairWeightFlattening.A\text{ remains open.}}
```

The current route needs either a new terminal weight-coherence theorem or a direct active-strain alignment cost theorem.  Otherwise the pair defect returns to `ScaleCriticalTreeCarleson.A`.

## 2026-05-06 update: replace absolute flattening by one-sided charge

The absolute target above is stronger than the positive terminal source
consumer needs.  After the parent-drain assembly of `ASAC.A`, the useful
replacement is recorded in
`mpp-one-sided-pair-weight-defect-after-asac-20260506.md`:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

The replacement controls only the positive receiver-side pair-weight mismatch:

```math
\sum_e\int (W_P-W_{P'})_+[J_e]_+\,dt
\le
\mathrm{Legal}_{N,Q}^{ASAC}+o_N(1).
```

This is enough for the positive source-wall consumer once terminal signed
saturation keeps or prices the counter-edge.  Thus the post-ASAC route should
not keep trying to prove absolute `PairWeightFlattening.A`; the remaining live
primitive is:

```text
TerminalSignedSaturation.A / TerminalWeightedNoFreeSink.A.
```
