# MPP SourcePulseCMExit.A Three-Face Execution Note

## Status

Bounded execution pass on the route-governing source-pulse primitive:

```math
\boxed{
SourcePulseCMExit.A:
\quad
\text{a terminal source-pulse used as a genuine non-smooth occurrence}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
}
```

This note does not by itself prove `SourcePulseCMExit.A`.  It executes the three
class-membership faces against the current installed bridge and identifies the
single same-family residue.  The conditional companion
`mpp-sourcepulse-cmexit-tower-residue-closure-note-20260503.md` discharges that
residue only when the same source-pulse family already carries the endpoint
tower readout.

## Installed Bridge Input

`mpp-pde-nonsmoothness-to-surviving-class-violation-bridge-note.md` proves the
compactness/reconstitution bridge:

```math
\boxed{
\text{genuine PDE non-smoothness}
\Longrightarrow
\text{packing-detached manifestation}
\vee
\text{tower-blown manifestation}
\vee
\text{jump manifestation}.
}
\tag{SPCM.1}
```

So a terminal source-pulse used as a genuine non-smooth occurrence must enter
one of those three endpoint faces.

## Face 1: Pack Exit

If `(SPCM.1)` yields packing-detached manifestation, then the source-pulse
branch has a direct pack-side class exit:

```math
\boxed{
\text{packing-detached}
\Longrightarrow
\neg Pack_Q.
}
\tag{SPCM.2}
```

This is the native pack-side blown face recorded by the law / endpoint matrix.

However, the native positive source measure
`\mu_{\ast}^{sing}` does not itself force packing detachment.  The
source-pulse packet is built as a same-fluid terminal active packet; retaining
the transported carrier is compatible with nonzero positive source mass.

Thus the Pack face is conditionally closed when the manifestation is
packing-detached, but it is not a direct discharge of the source-pulse measure.

## Face 2: Part Exit

The direct Part face does not discharge the source-pulse branch.

`Part_{N,Q}` is the shared pressure-viscosity participation law:

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

A terminal positive nonlinear source pulse is an interior source carrier of
that same differentiated Navier-Stokes law.  Its presence does not by itself
mean that the pressure-viscosity participation law has dropped.  The installed
matrix entry `(Part,Dead)` removes the dead participation face on still-live
neighborhoods, but it does not convert a native active source pulse into
`\neg Part`.

Thus:

```math
\boxed{
\mu_{\ast}^{sing}\ne0
\not\Longrightarrow
\neg Part_{N,Q}
\quad\text{by any installed theorem.}
}
\tag{SPCM.3}
```

## Face 3: Field Exit

The Field face is the faithful source-pulse face.

If `(SPCM.1)` yields jump manifestation and `Pack` and `Part` are retained,
then `mpp-field-coherence-remainder-note.md` gives:

```math
\boxed{
Pack+Part+\text{jump manifestation}
\Longrightarrow
\text{shrinking-scale neighboring coherence fracture}
\Longrightarrow
\neg Field_{N,r,Q}.
}
\tag{SPCM.4}
```

So under retained packing and participation, a source-pulse genuine
non-smoothness witness closes as a one-field exit whenever its endpoint face is
jump.

What is not installed is the direct theorem:

```math
\boxed{
\mu_{\ast}^{sing}\ne0
\Longrightarrow
\text{jump manifestation}.
}
\tag{SPCM.5}
```

The positive-source audits show that nonzero native positive source mass can
remain a lawful same-fluid source packet unless a source-control theorem,
coherence/decorrelation theorem, or explicit class-exit bridge is supplied.

## Mixed Tower Face

The only residue left by `(SPCM.1)` is tower-blown.

The law / endpoint matrix records:

```math
\boxed{
\text{tower-blown is a mixed tower-amplitude endpoint face.}
}
\tag{SPCM.6}
```

It is not a pure Pack entry, because it is not deformation-gauge detachment.
It is not a pure Part entry, because `Part` controls the pressure-viscosity
carrier law and `K_k` participation, not absolute rung amplitudes `U_k`.  It is
not a pure Field entry, because `Field` controls neighboring differences, not
absolute basepoint amplitude.

The endpoint matrix closure contract supplies the conditional removal route:

```math
END.TowerAmp
\Longrightarrow
\neg tower\text{-}blown,
```

with `END.TowerAmp` supplied by the same-family transported-center/tower
readout package when its hypotheses are present.  But without activating that
same-family endpoint tower-amplitude package, tower-blown is not yet converted
to `\neg Pack`, `\neg Part`, or `\neg Field`.

## Execution Verdict

The three CM Part/Fields now reduce to:

```math
\boxed{
\begin{array}{c|c}
\text{face} & \text{status} \\
\hline
Pack & \text{closed only on the packing-detached manifestation alternative} \\
Part & \text{not a direct source-pulse exit under current inputs} \\
Field & \text{closed on the jump manifestation alternative under retained Pack+Part}
\end{array}
}
```

At this reduction stage the exact remaining source-pulse CM-exit burden is:

```math
\boxed{
\textbf{SPCM.TowerOrField.A:}
\quad
\text{a terminal source-pulse genuine non-smooth witness either}
}
```

```math
\boxed{
\text{(i) enters jump manifestation under retained Pack+Part,}
\quad
\text{or}
\quad
\text{(ii) activates the same-family }END.TowerAmp\text{ package excluding tower-blown,}
}
\tag{SPCM.7}
```

unless packing-detached has already supplied `\neg Pack`.

Equivalently, after the installed `MBR.E` bridge, `SourcePulseCMExit.A` is
blocked only by the same-family placement of the mixed tower-blown alternative:

```math
\boxed{
\text{tower-blown must either be excluded by }END.TowerAmp
\text{ on the same source-pulse family, or bridged to a concrete CM witness
failure.}
}
\tag{SPCM.8}
```

This is sharper than the older direct no-pulse target.  It does not require
absolute `SourcePulseExclusion.A`; it requires only that the source-pulse
genuine non-smooth witness cannot survive as a lawful Pack+Part+Field packet
with an unowned mixed tower-amplitude escape.

The companion reduction note
[mpp-sourcepulse-field-face-tower-placement-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-field-face-tower-placement-reduction-note.md)
now isolates the exact current field-face burden:

```math
\boxed{
SourcePulseTowerPlacement.A
\Longrightarrow
SourcePulseFieldExit.A
\Longrightarrow
SourcePulseCMExit.A.
}
\tag{SPCM.9}
```

So the current mixed residue on the faithful source-pulse face can now be named
more sharply as the same-family tower-placement theorem

```math
\boxed{
\text{every terminal source-pulse genuine non-smooth witness which retains }
Pack+Part
\text{ activates }END.TowerAmp\text{ on that same family.}
}
\tag{SPCM.10}
```

This is narrower than the older absolute supplier target
`OriginalSmoothData=>SourcePulseExclusion.A`: it is the route-faithful same-
family placement theorem that kills the mixed `tower-blown` escape on the
active `Field` face.

Since `DTC-to-TowerBound => END.TowerAmp` is already installed, the companion
note also sharpens the same-family target one more step:

```math
\boxed{
SourcePulseDTCPlacement.A
\Longrightarrow
SourcePulseTowerPlacement.A
\Longrightarrow
SourcePulseFieldExit.A.
}
\tag{SPCM.11}
```

So the exact current residue below `SPCM.TowerOrField.A` is transported-center
placement of the retained `Pack+Part` source-pulse family into the installed
`DTC.A` / tower-amplitude spine.  The companion reduction note now splits that
one more step into the source-side cover theorem

```math
SourcePulseDTCCover.A
```

plus the already-isolated analytic transported-center packet

```math
DTC.A_{\mathfrak p}
\quad\text{on the required same-family cover.}
```

The cover half is now installed in
[mpp-sourcepulse-dtc-cover-extraction-theorem-20260503.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-dtc-cover-extraction-theorem-20260503.md).
The follow-up retained-field tower-readout closure
[mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md)
removes the mixed `tower-blown` branch directly on the retained
`Pack+Part+Field` branch:

```math
\boxed{
Pack+Part+Field
\Longrightarrow
\neg tower\text{-}blown.
}
\tag{SPCM.12}
```

Consequently the route-governing manifestation form of `SourcePulseCMExit.A`
is closed:

```math
\boxed{
\text{terminal source-pulse used as genuine non-smooth occurrence}
\Longrightarrow
\neg Pack\vee\neg Part\vee\neg Field.
}
\tag{SPCM.13}
```

The analytic `DTC.A` route remains available as a stronger endpoint/tower
supplier path, but it is no longer required for the CM-exit manifestation
classification.
