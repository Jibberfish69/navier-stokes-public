# MPP Euler Control Case To Navier-Stokes Attack Map

## Status

Theorem-facing attack map.

Role: use Euler as the control case for what viscosity must supply in the
Navier-Stokes class-membership route.

## Core Principle

Euler shows exactly what pressure and incompressibility do not buy:

```math
Member_E + EPart^{press}
\not\Rightarrow
EReg.
\tag{ECA.1}
```

The vortex-sheet witness proves this directly: normal flux and pressure
compatibility can hold while tangential slip breaks one-field coherence.

Therefore the Navier-Stokes target is not pressure/Pack coherence alone.  The
fixed-positive-viscosity target is the missing structure:

```math
\nu>0
\quad\Longrightarrow\quad
\text{pressure-viscosity participation + one-field coherence mechanisms.}
\tag{ECA.2}
```

## What Euler Controls

| Euler control failure | What it proves | NS attack point |
| --- | --- | --- |
| tangential slip / vortex sheet | Pack and pressure can survive while one-field coherence fails | Field / Jump, especially `OFP.A` |
| dead-relative-to-carrier response | pressure participation is not viscous participation | Part / Law 2 no-drop |
| smooth shear layers converging to slip sheet | smooth Euler data can approach nonsmooth weak membership in weak topology | topology and readout cannot be weak-only; NS needs positive-scale control |
| no viscous sink in receiver chain | Euler cannot run the NS absorption/readout mechanism | `ACT.KX`, `LCI.A`, top-viscous readout |
| Lagrangian carrier only under extra regularity | Euler membership does not include material-packet smoothness | Pack carrier/deformation must be proved, not assumed |

## First NS Target: Slip As Field / Jump Test

The sharp first attack is not generic Euler nonsmoothness. It is the slip-sheet
test:

```math
[u\cdot n]=0,
\qquad
[u_{\tan}]\ne0.
\tag{ECA.3}
```

Euler permits this as weak membership. Navier-Stokes must exclude it inside the
CM package through the Field side:

```math
Field_{N,r,Q}
+ OFP.A
\Longrightarrow
\neg Jump_{\mathrm{base}}.
\tag{ECA.4}
```

If a slip configuration is also used as evidence of participation failure, the
cover taxonomy sends it through a cross-entry:

```math
slip
\leadsto
Jump_{\mathrm{base}}
\quad\text{and possibly}\quad
Dead_{\times},
\tag{ECA.5}
```

but the native visible readout remains Field / Jump.

So the first theorem-facing move is:

```math
\boxed{
\text{prove that a smooth fixed-}\nu\text{ NS terminal tail cannot approach a
tangential slip sheet while retaining }Pack+Part+Field.
}
\tag{ECA.6}
```

Equivalently:

```math
Pack+Part+\text{viscous receiver/readout controls}
\Longrightarrow
\text{positive one-field coherence scale across the would-be slip interface.}
\tag{ECA.7}
```

That is the direct place where Euler fails and Navier-Stokes must spend
viscosity.

## Second Target: Dead Through Law 2

Euler allows pressure/incompressibility participation without viscous
entrainment. Navier-Stokes must prove the stronger participation no-drop law:

```math
Part_{N,Q}
\Longrightarrow
\neg Dead
\tag{ECA.8}
```

in the exact installed sense of the `(Part,Dead)` endpoint row. This is the
Law 2 / no-drop route, not a pointwise nonzero-velocity claim.

A slip scenario can touch this row only as a cross-entry when it is used to
claim local pressure-viscosity carrier failure. The route must then reduce it
through `END.Cross` and the Law 2 no-drop theorem.

## Third Target: Blown Through Pack And Tower

Euler also shows that Lagrangian carrier smoothness is extra structure, not
base membership. Navier-Stokes must keep the two blown readings separate:

```math
Blown
\leadsto
packing\text{-}detached
\vee
tower\text{-}blown.
\tag{ECA.9}
```

The Pack side is finite same-fluid cover / deformation control. The tower side
is finite-depth amplitude and pressure-viscous readout. Neither is discharged by
pressure incompressibility alone.

## Current Attack Order

The honest order from the Euler control case is:

1. **Field / Jump first.** Use the slip-sheet witness as the minimal Euler
   failure and attack the NS one-field preservation burden around `OFP.A`,
   `Field`, `END.Field`, and the receiver chain feeding them.
2. **Part / Dead second.** Keep Law 2 no-drop as the participation proof and
   route slip-induced participation claims through `END.Cross`.
3. **Pack / Blown third.** Keep material-coordinate carrier and tower-amplitude
   failures typed as `packing-detached` or `tower-blown`.
4. **Do not use Euler weak membership as a transfer theorem.** Euler is the
   control case identifying the missing mechanism; fixed-`nu` Euler-to-NS
   transfer remains a separate theorem target.

## Current Theorem Burden

The next theorem-facing burden should be named something like:

```math
ViscousSlipExclusion.A
\tag{ECA.10}
```

with statement:

```math
\boxed{
\begin{gathered}
\text{On a smooth fixed-}\nu>0\text{ Navier-Stokes terminal tail, assume the
retained }Pack+Part\text{ envelope and the receiver controls feeding }Field.\\
\text{Then no terminal subtail can converge, on the same positive-scale
same-fluid cover, to an Euler-type tangential slip sheet.}
\end{gathered}
}
\tag{ECA.11}
```

Landing:

```math
ViscousSlipExclusion.A
\Longrightarrow
\neg Jump_{\mathrm{base}}
\quad\text{or}\quad
\text{the claimed slip branch is already routed through }tower\text{-}blown
\text{ / }Dead_{\times}.
\tag{ECA.12}
```

This makes Euler do real work: it supplies the exact bad model, and the NS proof
must show where fixed positive viscosity forbids that model inside CM.

## Source Surfaces

1. [mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md)
2. [mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md)
3. [mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md)
4. [mpp-ns-cm-smoothness-euler-dual-regularity-map-20260516.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-ns-cm-smoothness-euler-dual-regularity-map-20260516.md)
5. [mpp-shared-participation-and-tower-coherence-law.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md)
6. [mpp-class-membership-endpoint-matrix-closure-contract-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-matrix-closure-contract-note.md)
