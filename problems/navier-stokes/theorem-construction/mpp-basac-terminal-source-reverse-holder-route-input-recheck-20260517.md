# MPP TerminalSourceReverseHolder_{B_ASAC}.A Route-Input Recheck

Date: 2026-05-17

## Status

Failed unconditional discharge from installed route inputs.

## Target

Prove a terminal reverse-Holder estimate for the native positive source time marginal in the produced `B_ASAC` class, strong enough to imply

```math
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A
\quad\text{for some }p>1.
```

Then the already-written chain gives

```math
TerminalSourceReverseHolder_{B_{ASAC}}.A
\Longrightarrow
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A
\Longrightarrow
BASACTimeFaceAntiAtom.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A.
```

## Available inputs

The route supplies:

```text
finite local L1_s source mass,
zero ASAC defect measure,
no earlier selected source slice,
no legal/projected/cutoff/boundary exit,
no finite or non-Zeno donor-refill exit,
terminal Zeno source support.
```

## Direct test

A reverse-Holder estimate must forbid terminal layers of the form

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

This layer has bounded `L^1_s` mass and unbounded `L^p_s` mass for every `p>1`. It has no fixed negative-time residence and represents the terminal Zeno source support allowed by the current class.

## Attempt 1: zero ASAC defect

Zero ASAC defect removes active-alignment / one-sided pair-weight leakage. It supplies no inequality of the form

```math
\left(\int_I g_m(s)^pds\right)^{1/p}
\le C |I|^{1/p-1}\int_{	heta I}g_m(s)ds
```

or any substitute that controls concentration of the native source time marginal.

## Attempt 2: first-pulse and no earlier selected source slice

No earlier selected source slice gives zero mass on every fixed interval away from the terminal time. A terminal reverse-Holder estimate requires positive thickness inside shrinking intervals, for example a uniform `L^p_s`, `p>1`, bound on the native positive source marginal. The first-pulse clause provides ancestry order, while terminal Zeno stacking has no fixed preterminal slice.

## Attempt 3: fixed viscosity

Fixed viscosity gives parabolic smoothing across positive time separation. The terminal Zeno layer has time separation tending to zero. At the normalized terminal scale, the heat flow has no room to convert `L^1_s` residence into `L^p_s` residence.

## Attempt 4: no finite or non-Zeno donor refill

This clause removes paid refill entrances and leaves the Zeno branch. It identifies the terminal stack rather than pricing its time thickness.

## Result

`TerminalSourceReverseHolder_{B_ASAC}.A` remains open from installed inputs.

The same scalar witness blocks every route-input derivation tested here. A new theorem must add temporal anti-concentration, branch-complexity pricing, or a rigid subclass property.

## Consequence

The remaining non-temporal entrance is now:

```math
ScaleNormalizedBranchEntropyReserve.A / TwoTowerDonorDepletion.A.
```

The other entrance is a produced rigid `B_ASAC` subclass with intrinsic time-face anti-atom.
