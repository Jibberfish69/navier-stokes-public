# MPP SourcePulseFieldExit.A Tower-Placement Reduction Note

## Status

Theorem-facing reduction note for the primary current face of the
CM-contrapositive source-pulse program.

Role: reduce the faithful current face

```math
SourcePulseFieldExit.A
```

to one same-family placement theorem for the mixed `tower` residue left by the
installed non-smoothness bridge.

This note does **not** prove `SourcePulseFieldExit.A`.  It isolates the exact
same-family tower-placement burden that remains after the three-face execution
pass.

## Input Face

The governing current face is:

```math
\boxed{
SourcePulseFieldExit.A:
\quad
\text{terminal source-pulse} + Pack + Part
\Longrightarrow
\neg Field.
}
\tag{SFTP.0}
```

The three-face execution note
[mpp-sourcepulse-cmexit-three-face-execution-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-cmexit-three-face-execution-note.md)
already proves that after the installed bridge from genuine PDE
non-smoothness, the only unresolved same-family residue on this face is the
mixed `tower-blown` alternative.

## Same-Family Tower Placement Theorem

Let

```math
\mathcal P_n=(Q_n^\Phi,j_n,I_n)
```

be a terminal same-fluid source-pulse family used as a genuine non-smooth
occurrence.  Assume this family is on the retained `Field`-face branch, i.e.
the same shrinking windows still carry the lawful `Pack` and `Part` witnesses:

```math
Pack_{Q_n}(u,\Phi_n),
\qquad
Part_{N,Q_n}(u,p,\Phi_n).
\tag{SFTP.1}
```

Assume in addition that the same family activates the transported-center/tower
package in the exact sense that for each `n` there is a finite same-family cover
of `Q_n` by transported-center packets whose route spends supply

```math
END.TowerAmp
\quad\text{on } I_n.
\tag{SFTP.2}
```

### Proposition `SFTP.A` (same-family tower placement closes the current `Field` face)

Under `(SFTP.1)`-`(SFTP.2)`,

```math
SourcePulseFieldExit.A
```

holds on the family `\mathcal P_n`.

Equivalently,

```math
\boxed{
\text{genuine source-pulse witness}
+\ Pack
+\ Part
+\ END.TowerAmp\text{ on the same family}
\Longrightarrow
\neg Field.
}
\tag{SFTP.3}
```

#### Proof

By the installed bridge

```math
\text{genuine PDE non-smoothness}
\Longrightarrow
\text{packing-detached}
\vee
\text{tower-blown}
\vee
\text{Jump}.
```

Since this theorem is already working on the retained `Field`-face branch,
`Pack` and `Part` are being kept on the same family, so the packet is not being
closed through the `Pack` or `Part` exits.

The same-family tower placement hypothesis `(SFTP.2)` installs `END.TowerAmp`
on `I_n`, hence the definition-level endpoint theorem

```math
END.TowerAmp
\Longrightarrow
\neg tower\text{-}blown.
```

Therefore the only remaining endpoint manifestation on this retained branch is
`Jump`.  The installed field-face bridge then gives

```math
Part plus Field-window evidence+\text{Jump}
\Longrightarrow
\neg Field.
```

So `SourcePulseFieldExit.A` holds. ∎

## Exact Remaining Placement Target

The proposition above shows that the faithful current face reduces to one
same-family placement theorem:

### Definition `SFTP.B` (source-pulse tower placement)

```math
\boxed{
SourcePulseTowerPlacement.A:
\quad
\text{every terminal source-pulse genuine non-smooth witness which retains }
Part plus Field-window evidence
\text{ activates } END.TowerAmp \text{ on that same family.}
}
\tag{SFTP.4}
```

### Corollary `SFTP.C`

```math
\boxed{
SourcePulseTowerPlacement.A
\Longrightarrow
SourcePulseFieldExit.A.
}
\tag{SFTP.5}
```

#### Proof

Apply Proposition `SFTP.A` to each retained `Part plus Field-window evidence` source-pulse family. ∎

## Transported-Center Placement Reduction

The tower-placement theorem above can itself be reduced one step further using
the installed endpoint analytic bridge

```math
DTC\text{-to-TowerBound}
\Longrightarrow
END.TowerAmp.
```

### Definition `SFTP.D` (source-pulse DTC placement)

```math
\boxed{
SourcePulseDTCPlacement.A:
\quad
\text{every terminal source-pulse genuine non-smooth witness which retains }
Part plus Field-window evidence
\text{ admits a finite same-family transported-center cover carrying }
DTC.A
\text{ through depth }N+2.
}
\tag{SFTP.6}
```

Here `DTC.A` is the theorem-facing transported-center packet from
[mpp-lci-a-direct-transported-center-package-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-direct-transported-center-package-note.md),
and the finite same-family cover is exactly the input required by
[mpp-dtc-to-towerbound-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-dtc-to-towerbound-theorem-program.md).

This bundle has a source-side half and an analytic half.

### Definition `SFTP.F` (source-pulse DTC cover extraction)

```math
\boxed{
SourcePulseDTCCover.A:
\quad
\text{every terminal source-pulse genuine non-smooth witness which retains }
Part plus Field-window evidence
\text{ admits a finite same-family transported-center cover at the radii
required by }DTC.A.
}
\tag{SFTP.8}
```

The remaining analytic half is exactly the already-isolated transported-center
theorem:

```math
\boxed{
DTC.A_{\mathfrak p}
\quad\text{on each element of the required same-family cover.}
}
\tag{SFTP.9}
```

### Corollary `SFTP.E`

```math
\boxed{
SourcePulseDTCPlacement.A
\Longrightarrow
SourcePulseTowerPlacement.A
\Longrightarrow
SourcePulseFieldExit.A.
}
\tag{SFTP.7}
```

#### Proof

`SourcePulseDTCPlacement.A` supplies the same-family finite transported-center
cover together with the `DTC.A` packet on each cover element. By
`DTC-to-TowerBound`, this yields `END.TowerAmp` on the same family, i.e.
`SourcePulseTowerPlacement.A`. Then Corollary `SFTP.C` gives
`SourcePulseFieldExit.A`. ∎

### Corollary `SFTP.G`

```math
\boxed{
SourcePulseDTCCover.A
+\
\bigl[DTC.A_{\mathfrak p}\text{ on each required cover element}\bigr]
\Longrightarrow
SourcePulseDTCPlacement.A.
}
\tag{SFTP.10}
```

#### Proof

This is exactly the content of `SourcePulseDTCPlacement.A`: the source-side
same-family cover extraction plus the analytic transported-center packet on that
cover. ∎

## Interpretation

This is strictly narrower than the older strong supplier target

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

The no-pulse theorem removes the whole source-pulse packet absolutely once
proved. The placement theorem has a narrower conditional consequence: if a
terminal source-pulse packet is the alleged genuine non-smooth witness and still
keeps `Part plus Field-window evidence`, then the mixed `tower-blown` escape must already be owned by
the same-family transported-center / tower route, so the witness is forced into
`Jump`, hence `not Field`.

So, with respect to the CM-contrapositive proof program, the sharpened next
target order on the active face is:

1. `SourcePulseFieldExit.A` as the faithful current face;
2. `SourcePulseTowerPlacement.A` as the exact remaining same-family mixed-face
   reduction beneath it;
3. `SourcePulseDTCPlacement.A` as the sharper transported-center placement
   theorem feeding `DTC-to-TowerBound => END.TowerAmp`;
4. `SourcePulseDTCCover.A` plus `DTC.A` on that required cover as the exact
   split beneath transported-center placement;
5. the stronger absolute supplier `OriginalSmoothData=>SourcePulseExclusion.A`
   only as a sufficient source-control theorem, not as the route root.

## Installed Cover Extraction And Route Closure Update

The source-side cover target in item 4 is now installed separately in
[mpp-sourcepulse-dtc-cover-extraction-theorem-20260503.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-dtc-cover-extraction-theorem-20260503.md):

```math
\boxed{
Pack\text{ on the terminal source-pulse family}
\Longrightarrow
SourcePulseDTCCover.A.
}
\tag{SFTP.11}
```

Thus the `DTC` placement route has only the analytic transported-center cell
left:

```math
\boxed{
SourcePulseDTCAnalytic.A:
\quad
\bigwedge_{\mathfrak p\in\mathscr P_n}
DTC.A_{\mathfrak p}
\text{ on the extracted same-family source-pulse cover.}
}
\tag{SFTP.12}
```

However, for the route-governing CM-contrapositive manifestation claim, the
later retained-field tower-readout notes
[mpp-sourcepulse-dtc-placement-closure-note-20260503.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-dtc-placement-closure-note-20260503.md)
and
[mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md)
give a shorter closure:

```math
\boxed{
Part+Field
\Longrightarrow
\neg tower\text{-}blown
}
\tag{SFTP.13}
```

on the same terminal source-pulse family, where `Field` is read in the uniform
approaching-family sense used by the jump-manifestation negation. Therefore the
route-governing manifestation form closes as:

```math
\boxed{
\text{terminal source-pulse used as genuine non-smooth occurrence}
\Longrightarrow
\neg Pack\vee\neg Part\vee\neg Field.
}
\tag{SFTP.14}
```

The analytic `SourcePulseDTCAnalytic.A` route remains a stronger endpoint/tower
supplier route, useful if one wants to remove `tower-blown` without spending
the retained `Field` branch. It is no longer the live requirement for the
CM-exit manifestation theorem.
