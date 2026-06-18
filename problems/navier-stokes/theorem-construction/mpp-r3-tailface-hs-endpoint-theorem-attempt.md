# R3 TailFace Hs Endpoint Theorem Attempt

## Status

Failed discharge. This note tests whether the high-frequency spatial-infinity face can be eliminated by the existing endpoint matrix without proving `Tail.Hs_R3`.

## Endpoint face

Define the whole-space high-order tail face by

```math
TailFace_{R^3}^{Hs}:
\qquad
\limsup_{R\to\infty}\sup_{0\le t<T_*}\|\eta_R u(t)\|_{H^s(R^3)}>0,
\qquad s>5/2.
```

Here `eta_R` is an exterior cutoff, equal to one for `|x|>=2R` and zero for `|x|<=R`.

## Existing endpoint rows

The periodic / compact-core endpoint matrix has four rows:

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

These rows classify failures of participation, pack geometry, local tower amplitude, and field coherence on retained finite packets.

## Test against TailFace_R3^Hs

`TailFace_R3^Hs` is different in type. It is not a failure on a fixed retained finite packet. It is loss of uniform high-order control in the exterior region as the spatial radius tends to infinity.

The compact-core tower row controls every fixed compact ball after the ball is chosen. It does not control the exterior `H^s` norm uniformly in `R`.

The pack and participation rows are same-fluid packet rows. They do not rule out high-frequency derivative energy appearing arbitrarily far away with small `L^2` mass.

The field row controls a positive local coherence scale after the relevant readout cover is present. On `R^3`, a readout cover of the whole active region requires tail control first. Thus the field row cannot be used to remove `TailFace_R3^Hs` upstream.

Therefore the existing four-row endpoint matrix does not eliminate `TailFace_R3^Hs`.

## Conditional elimination

If one assumes

```math
Tail.Hs_{R^3}:
qquad
\lim_{R\to\infty}\sup_{t<T_*}\|\eta_R u(t)\|_{H^s}=0,
```

then `TailFace_R3^Hs` is eliminated by definition.

More generally, if an exterior high-order cascade ledger gives

```math
\sup_{t<T_*}\|\eta_R u(t)\|_{H^s}\to0,
```

then the R3 endpoint matrix can include a fifth row:

```math
TailFace_{R^3}^{Hs}\quad\text{removed by exterior high-order tail control.}
```

## Noncircularity check

Using `Tail.Hs_R3` to eliminate `TailFace_R3^Hs` is valid only as a downstream conditional theorem. It cannot be used as the proof of `Tail.Hs_R3` itself.

Using global bounded `H^s(R^3)` is also circular, because that is the continuation norm that the whole-space theorem is meant to establish.

## Verdict

`TailFace_R3^Hs` is a genuine new whole-space endpoint face under the current branch inputs. It cannot be absorbed into the compact-core endpoint matrix. The R3 branch needs either:

```math
OriginalSmoothData_{R^3}\Longrightarrow Tail.Hs_{R^3},
```

or a new exterior endpoint row with a noncircular exterior high-order cascade theorem.
