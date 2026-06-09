# MPP OriginalSmoothDataPackSurvival.A / ScaleCriticalTreeCarleson.A Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality.

## Target

The first-exit Pack wall from `NoGenuineExitFromSmoothData.A` is:

```text
OriginalSmoothDataPackSurvival.A:
OriginalSmoothData => ScaleCriticalTreeCarleson.A.
```

Equivalently, original smooth data must prevent the first terminal Pack exit in
the canonical same-solution terminal packet.

## Installed reduction

`ParentSquareEmbed.A` is installed. It reduces the direct local positive source
Carleson route to the scale-critical donor-refill reserve:

```text
R_N(W)
= int_W sum_{k>N} 2^k (sum_{ell>k+4} D_ell(t))^2 dt.
```

The Pack-side first-birth method gives:

```text
Pack_Q
+ installed parent / past / residual / legal ledgers
+ TerminalReserveFirstAppearanceCharge.A
=> ScaleCriticalTreeCarleson.A.
```

Thus an attempt to prove `OriginalSmoothDataPackSurvival.A` must prove the
first-appearance charge theorem, or replace it with an equivalent terminal
Pack-survival mechanism.

## Direct attempt

Assume original smooth data and suppose `ScaleCriticalTreeCarleson.A` fails on
a first terminal Pack window. Choose a minimal terminal window `W` with reserve
surplus:

```text
R_N(W) > (1-delta)R_N(Past(W)) + Loss_legal(W) + eta.
```

Split the reserve into:

```text
inherited past reserve
+ first-created native reserve
+ child residual reserve
+ legal loss reserve.
```

The inherited term is removed by minimality and past-window separation. The
ledger-visible child residual is paid by the weighted-adjoint residual ledger.
Boundary, cutoff, nonselected, finite donor, and legal terms are already in
`Loss_legal(W)`.

The remaining object is:

```text
RetainedPositiveScaleNativeReserveBirthCharge.A.
```

It is the retained positive-scale first-created native donor-square/source
reserve surplus.

## Why the current inputs do not close it

The generated `TerminalReserveFirstAppearanceCharge.A` / `ChargeLedgerInjection.A`
chain has a valid descent shape, but the non-promotion audit shows the live
step:

```text
every retained positive first-created square reserve contribution is
ledger-visible or charged.
```

That step is not proved by:

```text
WeightedAdjRes.A,
ParentSquareEmbed.A,
LocalDonorBalance.A,
EntranceLeafDecay.A,
finite L1 source mass,
local energy,
or same-fluid transport.
```

Those inputs pay inherited, represented, finite, or legal pieces. They do not
force a selected positive aligned source contribution to inject into `Charge_N`.

The scalar terminal pulse obstruction still survives:

```text
first moment -> 0
while scale-critical square reserve stays order one.
```

The zero-radius terminal residue branch is already a Pack/Part face witness in
the CM contrapositive route. It is not a proof of positive Pack survival.

## Result

`OriginalSmoothDataPackSurvival.A` is not proved from the installed inputs.

The correct next subprimitive is:

```text
RetainedPositiveScaleNativeReserveBirthCharge.A
```

in any equivalent form:

```text
PositiveRemainderDepletion.A,
SourceWeightedTerminalAngularDepletion.A,
SignedPositiveBalance.A / TerminalSignedSaturation.A,
ActiveSquareResidualTail.A,
BASACTerminalSourceAntiConcentration.A,
or a produced rigid Zeno class with residue Liouville.
```

Work on terminal anti-atom, reverse Holder, active-square Carleson, signed
saturation, pressure/eigenframe, or rigid Zeno routes counts only when it pays
this retained positive-scale first-created reserve birth and integrates back
into `OriginalSmoothDataPackSurvival.A`.

## Nonfinality

The public Clay bridge remains open. The loop must continue; the next target is
the retained positive-scale reserve-birth charge, not PDF finality.
