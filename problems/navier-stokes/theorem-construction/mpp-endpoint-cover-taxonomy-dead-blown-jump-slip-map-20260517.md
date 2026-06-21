# MPP Endpoint Cover Taxonomy: Dead, Blown, Jump, And Slip

## Status

Theorem-facing taxonomy note for the class-membership endpoint vocabulary.

Role: collect the endpoint cover map that was previously split across the
endpoint matrix, primitive-law note, dead-tower reduction, and Euler mirror
demotion notes.

## Meaning Of Cover

The endpoint words are not primitive laws and they are not disjoint physical
doors. They are cover labels for first failure of a chosen class-membership or
regularity package.

For the Navier-Stokes CM route, the cover is:

```math
\neg CM_{N,r,Q}
\Longrightarrow
Dead
\vee
packing\text{-}detached
\vee
tower\text{-}blown
\vee
Jump.
\tag{ECOV.1}
```

This is the same endpoint exhaustiveness grammar as `END.Exh`.

For the Euler mirror, the same words are comparison / stronger-regularity
labels only:

```math
Member_E=EVol\wedge EMom
\quad\text{may hold while }Dead/Blown/Jump\text{ hold for an added class.}
\tag{ECOV.2}
```

## Cover Map

| endpoint reading | native row | what it covers | what it does not mean |
| --- | --- | --- | --- |
| `Dead` | `Part` | failure of pressure-viscosity participation / same-object dynamic carrier; dead-relative-to-carrier behavior; after reduction, either literal deadness or explicit Law 2 failure | raw stagnation `u=0` at a point |
| `packing-detached` | `Pack` | loss of usable finite same-fluid cover, bounded material-coordinate gauge, or finite deformation control | failure of incompressible flux-volume by itself |
| `tower-blown` | tower/readout slot | unbounded finite-depth tower amplitude or pressure/forcing readout needed by the endpoint matrix | a separate fourth primitive CM Part/Field |
| `Jump` | `Field` | loss of one positive same-fluid coherence scale; split local fields; velocity jump; derivative/tower jump; tangential slip sheet | failure of pressure incompressibility or Pack normal-flux law |

The historical word `Blown` is therefore split in theorem use:

```math
Blown
\leadsto
packing\text{-}detached
\vee
tower\text{-}blown.
\tag{ECOV.3}
```

## Slip Has Native Jump Reading

Tangential slip has a native Jump-type reading.

The local model is two neighboring regions that satisfy normal compatibility
but do not belong to one smooth velocity field across their interface:

```math
[u\cdot n]=0,
\qquad
[u_{\tan}]\ne0.
\tag{ECOV.4}
```

The first condition keeps the Pack / flux-volume side alive. The second
condition breaks one-field coherence. Therefore:

```math
\boxed{
\text{slip sheet}
\Longrightarrow
Jump_{\mathrm{base}}
}
\tag{ECOV.5}
```

`Jump_base` is the base velocity-rung instance of Jump. The higher-rung
instances are:

```math
derivative\text{-}jump,
\qquad
tower\text{-}jump.
\tag{ECOV.6}
```

This matches the primitive-law note's rule that velocity-jump,
derivative-jump, and tower-jump are all local forms of the one-field-side
endpoint.

This does not make the endpoint rows mutually exclusive. If the slip is being
used as evidence that the local pressure-viscosity participation law has failed,
then it may also carry a `Part` / `Dead` cross-entry. The native visible readout
is still `Jump_base`, because neighboring regions no longer belong to one
smooth field. The participation reading is a mechanism/cross-entry question:

```math
slip
\leadsto
Jump_{\mathrm{base}}
\quad\text{and possibly}\quad
Dead_{\times}
\tag{ECOV.6a}
```

unless the participation defect is common-mode across the whole retained
comparison component. This is the boundary recorded in the shared
participation/tower-coherence law: localized participation defects are
Field-visible once neighboring blocks are included.

## Euler Reading

Euler pressure can enforce normal compatibility while tangential slip persists.
So on Euler:

```math
Member_E
+ slip
\quad\text{is possible as weak membership,}
\tag{ECOV.7}
```

and the slip is read as

```math
slip
\in
Jump_E^{reg}
\tag{ECOV.8}
```

only after the branch has chosen an added one-field regularity class
`EReg` / `EField`.

That is the exact point of the vortex-sheet witness:

```math
Member_E + EPart^{press}
\not\Rightarrow
EReg.
\tag{ECOV.9}
```

## Overlap Rule

The cover labels can overlap.

A finite endpoint may be native to one row while also producing another visible
readout:

```math
packing\text{-}detached
\wedge
tower\text{-}blown,
\qquad
Jump
\wedge
tower\text{-}blown,
\qquad
Dead
\wedge
Jump.
\tag{ECOV.10}
```

The endpoint matrix keeps those overlaps typed through cross bundles. It is not
read as a mutually exclusive phase diagram.

## Where This Sends The Work

1. For the Euler mirror, use slip/vortex-sheet examples to show why
   pressure/Pack does not imply one-field participation.
2. For the Navier-Stokes CM route, treat slip first as a Field/Jump threat: it
   is removed only by an actual Field / one-field preservation theorem, not by
   Pack or pressure alone.
3. Treat Dead through the `Part` / Law 2 no-drop burden.
4. If slip is used as participation failure evidence, route it through
   `END.Cross` / Law 2 and then back to the native row required by the endpoint
   matrix.
5. Treat Blown through Pack deformation control and tower-amplitude readout.
6. Audit older notes so every use of `slip`, `jump`, `dead`, or `blown` lands
   in this cover map before it is promoted.

## Source Surfaces

1. [mpp-class-membership-endpoint-matrix-closure-contract-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-matrix-closure-contract-note.md)
2. [mpp-primitive-class-laws-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md)
3. [mpp-dead-tower-rigidity-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-dead-tower-rigidity-reduction-note.md)
4. [mpp-law13-surviving-endpoint-exclusion-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-law13-surviving-endpoint-exclusion-program.md)
5. [mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md)
