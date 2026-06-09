# MPP ActiveSquareResidualTail.A Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality.

## Target

The positive-carrier fallback asks for:

```text
ActiveSquareResidualTail.A
```

in the active upper-tail form:

```text
int_I sum_{j >= max(N,k+C)} 2^{-j} D_j(t)^2 dt
<= eps nu 2^{2k}|I| + C 2^{-2delta max(N,k)}.
```

This would pay the selected terminal native positive source carrier without
using signed eigendirection cancellation.

## Direct test

The installed energy layer gives first-moment dissipation:

```text
int_I D_j(t) dt < infinity.
```

The target asks for square density:

```text
int_I 2^{-j} D_j(t)^2 dt.
```

First moment does not control square density on shrinking active windows. A
pulse with height `A/h` on an interval of length `h` has first moment `A` and
square moment `A^2/h`.

## Tail-square reserve mismatch

The installed cumulative tail-square reserve controls a tail-energy quantity
such as:

```text
2^{-2N}E_N(t)^2 <= eps nu D_N(t).
```

That is not shellwise active-square control. It can pay threshold-collar and
cumulative-tail products, but it does not exclude a selected high shell
receiving a source-balanced heat-scale pulse.

## Square-source route

The square-source route would close the estimate after an active-shell
amplitude normalization:

```text
SquareSource^{norm}.A
=> ActiveSquareResidualTail.A.
```

The universal fixed-shell square-source theorem fails by cubic amplitude
scaling. The normalization needed is exactly the missing statement that the
source cannot keep a selected terminal shell active at the dangerous amplitude.

## Result

`ActiveSquareResidualTail.A` is not proved from current inputs.

The exact next target is:

```text
SourceBalancedActivePulseExclusion.A
```

equivalently:

```text
ActiveShellAmplitudeGain.A,
SquareSource^{norm}.A,
ActiveShellSourceNormalize.A,
or SignedLocalSource.A
```

for the selected terminal active-shell source carrier.

The loop must continue at source-balanced active-pulse exclusion. It may not
promote first-moment dissipation, tail-square reserve, or unnormalized
square-source estimates into active-square control.
