# MPP SourcePulseCMExit.A Tower-Residue Closure

## Status

Theorem-facing closure note for the route-governing source-pulse primitive.

This note conditionally closes:

```math
SourcePulseCMExit.A:
\quad
\text{a terminal source-pulse used as a genuine non-smooth occurrence}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

It does **not** prove the stronger supplier theorem

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

That stronger no-pulse theorem remains a sufficient source-control
presentation, but it is no longer the route-governing primitive once the
source-pulse is explicitly assumed to be the genuine non-smooth occurrence.

## License Correction

The closure below is conditional on the same source-pulse family carrying the
endpoint tower readout.  The license audit
`mpp-sourcepulse-dtc-placement-license-audit-note-20260503.md` records the exact
remaining input as

```math
SourcePulseDTCPlacement.A.
```

Thus this note proves

```math
SourcePulseDTCPlacement.A
\Longrightarrow
SourcePulseCMExit.A,
```

not an unconditional discharge of `SourcePulseCMExit.A`.

## Installed Inputs

Use only the already-installed class-membership and endpoint surfaces:

1. `mpp-sourcepulse-cmexit-three-face-execution-note.md`;
2. `mpp-pde-nonsmoothness-to-surviving-class-violation-bridge-note.md`;
3. `mpp-exact-class-membership-witness-theorem.md`;
4. `mpp-class-membership-endpoint-matrix-closure-contract-note.md`;
5. `DTC-to-TowerBound => END.TowerAmp => END.TowerBound`;
6. the endpoint certificate maps in `END.Exh` and `END.Cross`.

The previous three-face execution reduced the only unowned residue to the mixed
tower face:

```math
SPCM.TowerOrField.A:
\quad
\text{tower-blown must either be excluded by same-family }END.TowerAmp
\text{ or bridged to a concrete CM witness failure.}
```

The endpoint matrix supplies the same-family tower exclusion only after
`SourcePulseDTCPlacement.A` places the retained source-pulse family into the
`DTC-to-TowerBound` readout.

## Theorem `SPCM.TowerResidue.A`

Assume a terminal source-pulse packet `P_*` is not merely an internal legal
source packet, but is being used as a genuine PDE non-smooth occurrence in the
sense of `MBR.A0`. Assume the same approaching same-fluid family carries the
installed endpoint tower readout:

```math
DTC\text{-}to\text{-}TowerBound
\Longrightarrow
END.TowerAmp
\Longrightarrow
\neg tower\text{-}blown.
```

Then `P_*` forces failure of the class-membership witness:

```math
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

### Proof

Because `P_*` is being used as a genuine PDE non-smooth occurrence, apply the
compactness-route bridge theorem `MBR.E` on the approaching same-fluid family:

```math
\text{genuine PDE non-smoothness}
\Longrightarrow
\text{packing-detached manifestation}
\vee
\text{tower-blown manifestation}
\vee
\text{jump manifestation}.
```

The same-family tower readout gives `END.TowerAmp`, hence `END.TowerBound`,
so the tower-blown alternative is excluded:

```math
\neg tower\text{-}blown.
```

Thus the source-pulse genuine non-smooth witness must enter either the
packing-detached alternative or the jump alternative.

If packing-detached manifests, then the pack-native endpoint row gives

```math
\neg Pack_Q.
```

If jump manifests and either `Pack_Q` or `Part_{N,Q}` has already failed, then
the desired disjunction is already realized. If jump manifests while `Pack_Q` and
`Part_{N,Q}` are retained, the field endpoint row and coherence-fracture
reduction give

```math
Pack_Q+Part_{N,Q}+Jump
\Longrightarrow
\neg Field_{N,r,Q}.
```

Therefore every remaining manifestation alternative yields

```math
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

This proves `SPCM.TowerResidue.A`.

## Conditional Corollary `SourcePulseCMExit.A`

Under the installed same-family endpoint package, i.e. after
`SourcePulseDTCPlacement.A` supplies the source-pulse family to
`DTC-to-TowerBound`,

```math
MBR.E
+END.TowerBound
+END.Exh
+END.Cross
+CMW.A/CMW.B
\Longrightarrow
SourcePulseCMExit.A.
```

Equivalently:

```math
\boxed{
\text{a terminal source-pulse used as a genuine non-smooth occurrence}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
}
```

## Boundary

This reduces the route-governing CM-exit primitive to
`SourcePulseDTCPlacement.A`. It does not assert that terminal source-pulses are
impossible as internal lawful source packets.

The stronger source-control theorem

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A
```

is retained only as a nonblocking sufficient supplier. It is not required for
the class-membership terminal closure after this note.
