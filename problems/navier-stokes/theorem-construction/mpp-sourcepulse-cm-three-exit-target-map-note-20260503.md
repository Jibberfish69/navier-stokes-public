# MPP SourcePulse CM Three-Exit Target Map

## Status

Theorem-facing leading-edge target map for the CM-contrapositive proof program.

Role: turn the source-pulse branch theorem

```math
SourcePulseCMExit.A
```

into the exact branch-local exit-face targets, and seat the current
source-no-pulse stack under the correct face.

## Governing Primitive

The live source-pulse branch target is:

```math
\boxed{
SourcePulseCMExit.A:
\quad
\text{terminal source-pulse used as a genuine non-smooth occurrence}
\Longrightarrow
\neg Pack
\vee
\neg Part
\vee
\neg Field.
}
\tag{SPX.0}
```

So the next theorem work is not one undifferentiated "no pulse" theorem. It is
the three-face exit search below.

## Three Exit Faces

### Face 1: `Pack` exit

```math
\boxed{
SourcePulsePackExit.A:
\quad
\text{terminal source-pulse} + Part + Field
\Longrightarrow
\neg Pack.
}
\tag{SPX.1}
```

Meaning: the pulse cannot be carried by one bounded same-fluid incompressible
packing geometry. This is the pack-detachment / pack-native blown face.

### Face 2: `Part` exit

```math
\boxed{
SourcePulsePartExit.A:
\quad
\text{terminal source-pulse} + Pack + Field
\Longrightarrow
\neg Part.
}
\tag{SPX.2}
```

Meaning: the pulse is no longer participating in the shared pressure-viscosity
force law on the same lawful carrier. This is the same-fluid participation
failure face.

### Face 3: `Field` exit

```math
\boxed{
SourcePulseFieldExit.A:
\quad
\text{terminal source-pulse} + Pack + Part
\Longrightarrow
\neg Field.
}
\tag{SPX.3}
```

Meaning: the pulse cannot remain one smooth neighboring velocity-pressure field
at any uniform positive coherence scale. This is the one-field fracture face.

## Direct Reduction

Any one of the three faces closes the source-pulse branch theorem:

```math
\boxed{
SourcePulsePackExit.A
\ \vee\
SourcePulsePartExit.A
\ \vee\
SourcePulseFieldExit.A
\Longrightarrow
SourcePulseCMExit.A.
}
\tag{SPX.4}
```

This is just the exact reading of `(SPX.0)`.

## Closure Update

The route-governing manifestation form is now closed by
`mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md`:

```math
\text{terminal source-pulse genuine non-smooth witness}
\Longrightarrow
\neg Pack\vee\neg Part\vee\neg Field.
```

The closure uses the installed non-smoothness bridge plus retained-field tower
anchoring to remove the mixed `tower-blown` residue on the branch where
`Pack+Part+Field` are all retained.

The stronger direct source-control theorem remains open:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

So the source-pulse branch distinction is now:

```math
\boxed{
SourcePulseCMExit.A\text{ closed in the source-pulse manifestation seat;}
\qquad
SourcePulseExclusion.A\text{ still open as a stronger supplier.}
}
```

Against that same source-pulse branch theorem, all later `PCTP.hard / TTU.A`,
`TGC.A+AACT.Global.noJump+AVG.END.A+READ.END`, and `AWG.A / SOURCE.NO-PULSE.A`
usage is downstream consumer logic, not upstream source-pulse route authority.

The governing CM primitive is now separate:

```math
Exit(Q;O_{NS}^{work}) := \neg Member(Q;O_{NS}^{work}),
```

with the installed witness-face bridge recorded in
`mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md`.

## Where The Current Repo Actually Sits

The existing source-pulse / no-pulse stack does **not** attack all three faces
symmetrically.

The current direct source target

```math
OriginalSmoothData
\Longrightarrow
SourcePulseExclusion.A
```

and its route-equivalent spellings

```math
SignedLocalSource.A,
\quad
SOURCE.NO\text{-}PULSE.A,
\quad
\mu_\ast^{sing}=0,
\quad
MSC.BadAC,
\quad
AWG.A
```

are naturally seated under the `Field` face:

```math
\boxed{
SourcePulseExclusion.A
\text{ is a strong sufficient supplier presentation for }
SourcePulseFieldExit.A.
}
\tag{SPX.5}
```

Reason: these targets all try to rule out or deplete a terminal same-fluid
active source packet while it still sits on the same carrier. They do not, by
default, prove pack-detachment or participation-law illegality. They attack the
possibility that a nontrivial pulse can remain a lawful one-field packet.

So the currently sharpened direct branch is:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
SourcePulseExclusion.A
}
\Longrightarrow_{\text{strong supplier seat}}
\boxed{
SourcePulseFieldExit.A
}
\Longrightarrow
\boxed{
SourcePulseCMExit.A
}.
\tag{SPX.6}
```

This note does **not** claim the implication `(SPX.6)` is already proved. It
fixes the theorem seat: the current no-pulse machinery belongs under the
`Field`-exit face, not as an autonomous route root.

## Exact Next Targets

With respect to the contrapositive proof program, the next exact theorem targets
are:

1. **Primary current face:** `SourcePulseFieldExit.A`.
   This is where the installed no-pulse / singular-source / `Jump_avg`
   elimination / source-residue stacks already live.

   The faithful current face now has a sharper same-family reduction:

```math
\boxed{
SourcePulseTowerPlacement.A
\Longrightarrow
SourcePulseFieldExit.A,
}
```

   recorded in
   [mpp-sourcepulse-field-face-tower-placement-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-field-face-tower-placement-reduction-note.md).
   This is narrower than the older absolute no-pulse supplier theorem: it asks
   only that a genuine source-pulse witness retaining `Pack+Part` already lies
   on the same-family transported-center/tower route, which removes the mixed
   `tower-blown` alternative and forces the `Jump` / `not Field` exit.

   That reduction is now sharpened once more to:

```math
\boxed{
SourcePulseDTCPlacement.A
\Longrightarrow
SourcePulseTowerPlacement.A
\Longrightarrow
SourcePulseFieldExit.A.
}
```

   That placement target now splits further into:

```math
\boxed{
SourcePulseDTCCover.A
+\
\bigl[DTC.A_{\mathfrak p}\text{ on the required same-family cover}\bigr]
\Longrightarrow
SourcePulseDTCPlacement.A.
}
```

   So the exact same-family source-level target on the active face is now the
   source-side transported-center cover extraction plus the already-isolated
   analytic `DTC.A` wall, not absolute source-pulse exclusion.

   The source-side cover extraction is now installed in
   [mpp-sourcepulse-dtc-cover-extraction-theorem-20260503.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-dtc-cover-extraction-theorem-20260503.md).
   Moreover, for the route-governing manifestation form, the retained-field
   tower-readout closure
   [mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md)
   removes the mixed `tower-blown` branch on retained `Pack+Part+Field`.
   Therefore the manifestation-level `SourcePulseCMExit.A` route is closed;
   the analytic `DTC.A` route remains only a stronger endpoint/tower supplier
   route.

2. **Secondary explicit face:** `SourcePulsePartExit.A`.
   To make this face real, a theorem must show that a terminal source-pulse
   cannot remain lawful for the shared pressure-viscosity source carrier
   `K_k` on the same shrinking same-fluid windows.

3. **Tertiary explicit face:** `SourcePulsePackExit.A`.
   To make this face real, a theorem must show that the terminal pulse cannot be
   carried by one bounded same-fluid incompressible packing geometry.

So the honest next-target stack is:

```math
\boxed{
\text{manifestation-level }SourcePulseCMExit.A\text{ closed by retained-field tower readout;}
\quad
\text{stronger supplier targets remain }SourcePulseExclusion.A
\text{ / }SourcePulseFieldExit.A\text{ source-control forms.}
}
\tag{SPX.7}
```

## Boundary

This note does **not** prove any of the three exit faces. It only fixes the
leading-edge theorem map:

- the source-pulse branch theorem is `SourcePulseCMExit.A`, while the
  governing CM primitive is `Exit(Q):=not Member(Q)`;
- the current direct attack belongs to the `Field` face;
- `Part` and `Pack` exits remain explicit alternate faces rather than hidden
  background hopes.
