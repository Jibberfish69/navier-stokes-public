# MPP SquareSourceEstimate.A Completion Attempt

## Status

Worker SQ attempted the square-source branch as an independent source-reserve
supplier.

The unconditional theorem is not proved from the installed inputs.  The branch
closes only under active-shell source normalization, which is the same
active-window source-control primitive already recorded in the live route.

## Authority Read

This attempt used the lane-local live surfaces:

- `live-theorem-edge.yaml`
- `source-frontier.yaml`
- `theorem-packet.yaml`
- `target-operating-contract.yaml`
- `current-route-dependency-graph.yaml`

and the active-square / square-reserve notes including:

- `mcp-scalecriticaltreecarleson-a-activesquarereserve-a-scalecriticaltreecarleson-a-d3e81f46a9.md`
- `mpp-scalecritical-tree-carleson-bellman-reserve-attempt-20260505.md`
- `mcp-heat-scale-square-source-direct-attempt-20260505.md`
- `square-source-to-active-square-control-result.md`
- `active-square-control-blocked-by-square-source.md`
- `square-source-shell-flux-estimate-result.md`
- `mpp-square-source-originaldata-final-collapse-note.md`
- `mpp-terminal-source-reverse-holder-to-active-shell-source-normalization-20260516.md`

The governing route boundary is that `SquareSourceEstimate.A` may be used as a
supplier into active-square / local positive source control, but it may not use
`ScaleCriticalTreeCarleson.A`, `LocalPositiveSourceCarleson.A`, endpoint
readout, `Field`, `OFP.A`, `End_NS`, `READ.COVER`, `DTC.Read`, or `Field.Read`
upstream.

## Target

On a terminal active heat-scale window `I` for shell `j`, the desired theorem is

```math
SquareSourceEstimate.A:
\qquad
\int_I |F_j(t)|^2\,dt
\le
c\varepsilon\nu^3 2^{3j}|I|
+C\nu^2 2^j2^{-2\delta j}.
```

Here `F_j` is the nonlinear shell source in the active-shell balance

```math
E_j'(t)+c\nu D_j(t)\le F_j(t).
```

This estimate is useful because the scalar Duhamel response gives

```math
\int_I2^{-j}D_j(t)^2dt
\le
C\nu^{-1}2^jE_j(t_0)^2
+C\nu^{-2}2^{-j}\int_I|F_j(t)|^2dt.
```

The installed entrance-tail reserve pays the `E_j(t_0)` term.  Given that
reserve, `SquareSourceEstimate.A` is sufficient for the single-shell
active-square estimate.  The single-shell estimate gives active-square
upper-tail control and then the direct `ScaleCriticalTreeCarleson.A`
/ `LocalPositiveSourceCarleson.A` supplier route.

## Conditional Closure

The following conditional proof is valid:

```math
ActiveShellSourceNormalize.A
\Longrightarrow
SquareSourceEstimate.A.
```

Assume the source-normalized active interval bound

```math
|F_j(t)|^2
\le
c\varepsilon\nu^3 2^{3j}
+C\nu^2 2^j2^{-2\delta j}|I|^{-1}
```

on the selected active heat-scale interval.  Integrating over `I` gives exactly
`SquareSourceEstimate.A`.  Combining this with the entrance-tail reserve gives
the active-square estimate through the Duhamel inequality above.

This is a real implication, but it is not an unconditional proof because the
normalization is the missing source-control theorem.

## Noncircular Tests

### 1. First-moment tail does not give square source

The installed energy layer controls first-moment dissipation:

```math
\int_I\sum_{\ell>N}D_\ell(t)\,dt.
```

That is an `L^1_t` control.  `SquareSourceEstimate.A` is an `L^2_t` source
bound on selected active windows.  A scalar terminal pulse can have source mass
`A_m` on a window of length `h_m`, while its square source is `A_m^2/h_m`.
Choosing `h_m` much smaller than `A_m^2` keeps the first moment negligible and
leaves the square source large.  This is the same temporal concentration defect
seen in the active-square reserve notes.

The shell balance does not remove this defect.  A source-balanced active pulse
can satisfy

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)
```

with `F_j` paying the pulse.  First-moment tail control therefore cannot prove
the heat-scale `L^2_t` estimate for `F_j`.

### 2. Bellman endpoints do not give square source

A Bellman proof requires a controlled functional whose derivative pays
`|F_j|^2` or the active-square density produced from `|F_j|^2`.

If the endpoint size is built only from installed energy, smooth-tail, legal
loss, or cumulative first-moment ledgers, its derivative pays first-moment
quantities.  If the derivative pays the square source or active-square density,
then the endpoint functional already contains the square-source / active-square
reserve that is being proved.  This is the same circularity recorded for
`ScaleCriticalTreeCarleson.A / ActiveSquareReserve.A`.

### 3. Heat-scale source estimates are equivalent to the missing normalization

The heat-scale route is not lower than the target.  The note
`mcp-heat-scale-square-source-direct-attempt-20260505.md` identifies the direct
input as active-shell source normalization.  Cauchy/Young estimates of the
trilinear source put the right side into active-square envelopes, and those
envelopes are exactly the `ScaleCriticalTreeCarleson.A` /
`LocalPositiveSourceCarleson.A` strength this branch is meant to supply.

Thus heat-scale source control closes `SquareSourceEstimate.A` only after
assuming the same source-normalized active-window theorem.

### 4. Donor reserve does not give square source

`ParentSquareEmbed.A` is static.  It controls the diffuse parent cloud by an
`ell^2` packet embedding after the localized source has already been split.
It does not give a time evolution law for the donor square reserve, an inverse
from child mass back to parent source, or a bound on the nonlinear shell flux
`F_j`.

The square-reserve route needs a charge law for first-time creation of

```math
\mathcal R_N(I)
=
\int_I\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
```

The installed donor-balance and entrance-leaf notes pay finite refill and
non-Zeno entrance pieces.  The terminal active-window creation term remains
unpaid.  Using donor reserve to bound `F_j^2` would therefore import
`ScaleCriticalTreeCarleson.A`, `SquareReserveEvolution.A`, or an equivalent
active-square reserve upstream, which is circular for this worker target.

### 5. Raw trilinear estimates return to active-square control

The nonlinear source `F_j` is trilinear in Littlewood-Paley pieces.  Unweighted
dyadic exchange has antisymmetry before terminal weights, cutoffs, lifted
packets, and positive-part selection are imposed.  After those operations, the
surviving object is a weighted lifted remainder.

Estimating the remainder by absolute value produces the active-square
residual-tail burden.  A noncircular proof would need a genuine sign theorem
for the weighted lifted remainder or a monotone source-dominance theorem
forbidding source-balanced active pulses.  Neither is installed in the current
route inputs.

## Completion Verdict

`SquareSourceEstimate.A` is not installed unconditionally.

The strongest theorem-grade statement available here is the conditional
implication

```math
ActiveShellSourceNormalize.A
\Longrightarrow
SquareSourceEstimate.A
\Longrightarrow
\text{single-shell active-square control}.
```

The exact surviving primitive is

```math
\boxed{ActiveShellSourceNormalize.A}
```

equivalently a signed weighted lifted-remainder / residual-tail theorem strong
enough to forbid source-balanced active pulses on the selected terminal
windows.  In the current source-wall vocabulary this is the same supplier atom
as `ActiveShellAmplitudeGain.A` / `PositiveRemainderDepletion.A`, not a lower
consequence of first-moment tail, Bellman endpoints, heat-scale source
bookkeeping, or donor reserve.
