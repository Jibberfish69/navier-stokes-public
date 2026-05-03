# MPP Upstream/Downstream Audit Against `SourcePulseCMExit.A`

## Status

Theorem-facing role audit after local closure of the source-pulse
class-membership primitive.

This note does not prove a new PDE theorem. It fixes the meaning of
`upstream` and `downstream` against the governing contrapositive primitive

```math
\boxed{
SourcePulseCMExit.A:
\quad
\text{terminal source-pulse used as a genuine non-smooth occurrence}
\Longrightarrow
\neg Pack\vee\neg Part\vee\neg Field.
}
```

and audits the active exact-potential periodic terminal-tail notes against that
primitive.

## Rule

There are now two different orderings in the lane, and they must not be
blended.

### Order 1: the governing contrapositive primitive

This is the local class-membership program centered on

```math
SourcePulseCMExit.A.
```

Here:

- `upstream` means a direct constitutive witness, exit face, or same-family
  reduction that proves `SourcePulseCMExit.A`;
- `downstream` means a consumer theorem that uses a surviving branch, a
  no-jump theorem, or a readout/export packet after the primitive has already
  been classified or discharged.

### Order 2: the averaged terminal-tail consumer route

This is the separate downstream route centered on

```math
PCTP.hard / TTU.A.
```

Inside that route one may still speak about `upstream` and `downstream`, but
those words are only internal to the terminal-tail consumer:

```math
TGC.A\to AACT.Global.noJump\to AVG.END.A\to READ.END\to PCTP.hard.
```

They do **not** mean upstream of the governing contrapositive primitive.

## Audited Classification Table

| Object family | Relation to `SourcePulseCMExit.A` | Exact audit verdict |
| --- | --- | --- |
| `Pack_Q`, `Part_{N,Q}`, `Field_{N,r,Q}` witness definitions and still-live admission | Strict upstream constitutive witness | These define the lawful `CM` object and the still-live branch on which the contrapositive primitive is tested. |
| `SourcePulsePackExit.A`, `SourcePulsePartExit.A`, `SourcePulseFieldExit.A` | Strict upstream exit faces | Any one of these discharges `SourcePulseCMExit.A`. |
| `SourcePulseTowerPlacement.A`, `SourcePulseDTCPlacement.A`, `SourcePulseDTCCover.A`, `SourcePulseTowerReadout.A` | Strict upstream only as same-family field-face/tower subreductions | These are allowed only insofar as they reduce the retained `Pack+Part+Field` branch to a `not Field` or mixed-tower contradiction. After retained-field tower anchoring, they are no longer required for the governing primitive. |
| `mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md` and `mpp-sourcepulse-dtc-placement-closure-note-20260503.md` | Primitive discharge surfaces | These are the notes that actually close the local source-pulse class-membership primitive. |
| `OriginalSmoothData=>SourcePulseExclusion.A`, `AWG.A`, `SOURCE.NO-PULSE.A`, `MSC.Spill.NoPulse`, `QDrain.A`, `mu_*^{sing}=0` | Not the governing primitive; stronger supplier presentations | Historically these sat under the `Field` face as strong sufficient source-control theorems. They are not upstream of `SourcePulseCMExit.A` in the governing route sense. |
| `PCTP.5.C` in the averaged route | Downstream consumer of source-side control | After local `SourcePulseCMExit.A` closure, the only remaining live use of `AWG.A / SOURCE.NO-PULSE.A` is as a downstream branch-native input eliminating `Jump_avg` on the averaged terminal-tail route. |
| `TGC.A`, `AACT.Global.noJump`, `AVG.END.A`, `READ.COVER`, `Field.Read`, `DTC.Read`, `READ.END`, `PCTP.hard / TTU.A` | Strict downstream of `SourcePulseCMExit.A` | These do not classify `Pack`, `Part`, or `Field`. They consume averaged terminal-tail production after the local class-membership route is already fenced. |
| TPS / `SG.4`, exact-potential / Hodge / normal-covector packets, Euclidean strict-shadow exports | Further downstream/context only | These are not allowed to re-enter as primitive suppliers unless a new explicit bridge to `Pack`, `Part`, or `Field` is installed. |

## Exact Consequences

### 1. What is no longer allowed

The following statements are now theorem-facing mis-seatings:

```math
\text{`AWG.A' is upstream of the governing contrapositive primitive;}
```

```math
\text{`SOURCE.NO-PULSE.A' is the live route-governing source-pulse primitive;}
```

```math
\text{`TGC.A' or `READ.END' are upstream of the source-pulse contrapositive program.}
```

They may be upstream only inside the separate `PCTP.hard` consumer route.

### 2. What remains true

The exact source-side historical seat is still:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A
```

as a strong sufficient supplier presentation for the `Field` face. But after
local discharge of `SourcePulseCMExit.A`, that theorem is no longer needed as
an upstream primitive. Its live role is only:

```math
OriginalSmoothData\Longrightarrow AWG.A / SOURCE.NO\text{-}PULSE.A
\Longrightarrow
(Jump_{avg}\Rightarrow\bot)
\Longrightarrow
PCTP.hard / TTU.A.
```

### 3. Exact current split

The lane now has the following audited split:

```math
\boxed{
\text{Local contrapositive primitive: }SourcePulseCMExit.A\text{ discharged.}
}
```

```math
\boxed{
\text{Stronger source-control theorem: }OriginalSmoothData\Longrightarrow
SourcePulseExclusion.A\text{ open but nonblocking locally.}
}
```

```math
\boxed{
\text{Live repo-level downstream blocker: }
OriginalSmoothData\Longrightarrow AWG.A / SOURCE.NO\text{-}PULSE.A
}
```

consumed by

```math
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard / TTU.A.
```

## Required Reading Rule For Future Notes

Whenever a theorem-facing note uses the words `upstream` or `downstream`, it
must specify which order it means:

1. upstream/downstream relative to the governing primitive
   `SourcePulseCMExit.A`, or
2. upstream/downstream internal to the downstream `PCTP.hard` consumer route.

If the note does not say which one, the default interpretation should be that
it is ambiguous and needs repair.
