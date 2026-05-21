# OffSaturationBoundaryPricing.A attempt

## Status

Failed as an unconditional theorem from installed inputs.  A conditional boundary-pricing replacement is isolated.

## Target

Prove that every signed partner missing from the saturated terminal ledger is a true boundary, stopped, off-family, collar, pressure, cutoff, or residual-loss event:

```math
Partner(e)\notin\mathcal F_N^\sharp
\Longrightarrow
 e\text{ contributes only to }Flux^+_{\partial}\text{ or }Loss_{legal}.
```

## Attempt

The selected terminal family `\mathcal F_N` contains the packets needed to witness terminal positive source.  A bare dyadic edge has a signed counter-edge.  If that counter-edge is outside `\mathcal F_N^\sharp`, the desired theorem classifies it as unusable for an installed reason:

```math
\text{off terminal window}\vee
\text{off same-fluid collar}\vee
\text{stopped coefficient tile}\vee
\text{pressure/cutoff/off-family loss}\vee
\text{boundary flux}.
```

This classification is stronger than the current same-fluid legality.  Same-fluid edge fidelity says legal parents are meaningful once selected; it does not say every unselected signed partner is illegal or boundary-priced.

## Obstruction

A legal donor can sit outside the selected saturated family while still lying inside the same-fluid predecessor region.  This is the same internal sink phenomenon from the parabolic no-free-sink obstruction:

```math
A\to B,
\qquad
\operatorname{div}J(B)>0,
\qquad
\operatorname{div}J(A)<0.
```

If `B` is selected terminal-positive and `A` is a legal interior donor omitted from the ledger, then `A` is not boundary flux and not automatically a legal loss.  It is an internal negative source sink.  Pricing it requires a donor-depletion or signed-saturation theorem, not a bookkeeping classification.

## Failure mode

Diffuse legal parentage gives many such omitted donor partners.  Each omitted partner can be fully legal, same-fluid, and physically interior.  The fact that it was not selected into `\mathcal F_N^\sharp` does not make it small.  Charging all omitted partners by absolute value again reopens

```math
ScaleCriticalTreeCarleson.A.
```

## Conditional replacement

The correct conditional theorem is

```math
TerminalSignedSaturation.A
\Longrightarrow OffSaturationBoundaryPricing.A.
```

where `TerminalSignedSaturation.A` asserts that the counter-edge of every selected positive terminal source edge either:

1. belongs to the saturated same-fluid ledger;
2. is a true boundary/stopped/collar/projection/cutoff/off-family event; or
3. is charged by a new donor-depletion reserve.

Equivalently:

```math
ParabolicNoFreeSink.A
\Longrightarrow OffSaturationBoundaryPricing.A.
```

## Verdict

```math
\boxed{OffSaturationBoundaryPricing.A\text{ remains open.}}
```

It is equivalent at this level to the internal sink/donor-depletion problem.  Without `TerminalSignedSaturation.A` or `ParabolicNoFreeSink.A`, missing signed partners cannot be priced as legal boundary losses.