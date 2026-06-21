# MPP Upstream/Downstream Audit Against `SourcePulseCMExit.A`

## Status

Quarantined source-pulse branch audit after the CM primitive seat repair.

This note does not define the governing CM contrapositive primitive. That
primitive is now

```math
Exit(Q;O_{NS}^{work}) := \neg Member(Q;O_{NS}^{work}),
```

witnessed analytically by

```math
\neg CM_{N,r,Q}=\neg(Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}).
```

The present note fixes the meaning of `upstream` and `downstream` only for the
source-pulse branch theorem

```math
SourcePulseCMExit.A,
```

and for its later downstream `PCTP.hard` consumer use.

## Rule

There are now two different orderings in the lane, and they must not be
blended.

### Order 1: the source-pulse branch theorem

This is the source-pulse manifestation grammar centered on

```math
SourcePulseCMExit.A.
```

Here:

- `upstream` means a direct source-pulse face or same-family reduction that
  proves `SourcePulseCMExit.A` as branch support under the CM grammar;
- `downstream` means a consumer theorem that uses a surviving branch, a
  no-jump theorem, or a readout/export packet after the source-pulse branch
  theorem has already been classified or discharged.

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

They do **not** mean upstream of the governing CM primitive
`Exit(Q):=not Member(Q)`.

## Audited Classification Table

| Object family | Relation to `SourcePulseCMExit.A` | Exact audit verdict |
| --- | --- | --- |
| `SourcePulsePackExit.A`, `SourcePulsePartExit.A`, `SourcePulseFieldExit.A` | Strict upstream source-pulse faces | Any one of these discharges `SourcePulseCMExit.A` as source-pulse branch support. |
| `SourcePulseTowerPlacement.A`, `SourcePulseDTCPlacement.A`, `SourcePulseDTCCover.A`, `SourcePulseTowerReadout.A` | Strict upstream same-family source-pulse subreductions | These are allowed only insofar as they reduce the retained `Part+Field` source-pulse branch to a `not Field` or mixed-tower contradiction. |
| `mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md` and `mpp-sourcepulse-dtc-placement-closure-note-20260503.md` | Source-pulse branch discharge surfaces | These close the source-pulse branch theorem; they do not define the route-wide CM primitive. |
| `OriginalSmoothData=>SourcePulseExclusion.A`, `AWG.A`, `SOURCE.NO-PULSE.A`, `MSC.Spill.NoPulse`, `QDrain.A`, `mu_*^{sing}=0` | Stronger source-side supplier presentations | Historically these sat under the source-pulse `Field` face. They are not the governing CM primitive and are not direct Part/Field face bridge or class-membership-direction bridges. |
| `PCTP.5.C` in the averaged route | Downstream consumer of source-side control | The live use of `AWG.A / SOURCE.NO-PULSE.A` is as a downstream branch-native input eliminating `Jump_avg` on the averaged terminal-tail route. |
| `TGC.A`, `AACT.Global.noJump`, `AVG.END.A`, `READ.COVER`, `Field.Read`, `DTC.Read`, `READ.END`, `PCTP.hard / TTU.A` | Strict downstream of the source-pulse branch theorem | These do not classify `Pack`, `Part`, or `Field`. They consume averaged terminal-tail production after source-pulse typing. |
| `CMCert.A` plus first-exit witness envelope | Governing CM witness-to-member direction, not part of this branch audit | The theorem-grade direction is `CM=>Member`; first class-exit has a Part/Field failure witness. The blunt converse `not CM=>not Member` is not installed. |

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

They may be upstream only inside the separate `PCTP.hard` consumer route, and
never upstream of `Exit(Q):=not Member(Q)`.

### 2. What remains true

The exact source-side historical seat is still:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A
```

as a strong sufficient supplier presentation for the source-pulse `Field` face.
Its current live role is only:

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
\text{Governing CM witness record: }CMCert.A\text{ installed; no blunt }not\text{-}CM\Rightarrow not\text{-}Member\text{ converse.}
}
```

```math
\boxed{
\text{Source-pulse branch theorem: }SourcePulseCMExit.A\text{ remains branch support only.}
}
```

```math
\boxed{
\text{Live repo-level downstream blocker: }
SourceWall.Reconcile.A
}
```

whose accepted supplier consequence would be

```math
LemmaB.SourceDrain
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
TGC.A+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard / TTU.A.
```

## Required Reading Rule For Future Notes

Whenever a theorem-facing note uses the words `upstream` or `downstream`, it
must specify which order it means:

1. upstream/downstream relative to the governing primitive
   `Exit(Q):=not Member(Q)`, or
2. upstream/downstream internal to the downstream `PCTP.hard` consumer route.

For the present note, all such language is branch-local to `SourcePulseCMExit.A`
and is quarantined by the seat-repair rule. If a note does not say which order
it means, the default interpretation should be that it is ambiguous and needs
repair.
