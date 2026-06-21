# MPP FirstExitPackSurvivalMechanismSearch.A / Material-Collar Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality.

## Target

The current public-finality route is:

```text
NoGenuineExitFromSmoothData.A
<- OriginalSmoothDataPackSurvival.A
<- FirstExitPackSurvivalMechanismSearch.A.
```

This pass tests the non-source-time route named in the current loop:

```text
terminal Pack survival from a material-collar / fixed-coordinate readout theorem
that does not assume continuation.
```

The object under test is the canonical same-solution terminal packet from
original smooth data. The proof skeleton is a minimal first Pack exit, not a
new positive smoothness program.

## Installed input

The pack-side forward-preservation note gives the exact local mechanism:

```text
Pack_Q on the seed window
+ same-fluid evolved family
+ collar stretching rate Lambda_sharp in L^1(I)
=> Pack_Q on the evolved family over I.
```

Equivalently, if the common material collar gauge stays bounded, the Pack
witness stays installed. A pure fixed-coordinate or label-collar description is
not enough; the proof must control the deformation gauge or the collar
stretching integral at the terminal edge.

The retained reserve-birth branch already removes inherited past reserve,
ledger-visible residuals, finite donor trees, non-Zeno refill, and legal
losses. The surviving branch is the produced `B_ASAC` terminal source-residue
class: finite local source mass, no fixed earlier selected source slice, zero
ASAC defect, no paid legal exit, no finite/non-Zeno donor exit, and terminal
Zeno source support.

## Direct material-collar attempt

Assume original smooth data and choose the first terminal same-fluid Pack
failure window `W_*`. Let `A_sharp` be the material label collar carrying the
selected family up to `W_*`.

If

```text
int_{I_*} Lambda_sharp(t) dt < infinity,
```

then the installed pack-side forward-preservation theorem gives bounded
collar deformation gauge on the terminal interval and reinstalls `Pack_Q`.
That contradicts the choice of `W_*` as a first Pack failure.

Thus a genuine positive-scale first Pack failure must produce one of two
objects:

```text
1. zero-radius / no-positive-carrier collapse;
2. terminal divergence of the common-collar stretching ledger.
```

The first object is already a Field-window evidence exit classification in the CM
contrapositive witness tree. It is not a public-finality closure by itself.

The second object is the live positive-scale branch. The material-collar route
therefore reduces the Pack-survival theorem to a direct terminal collar-strain
anti-atom:

```text
TerminalCollarStrainAntiAtom_{B_ASAC}.A:
the produced B_ASAC terminal source-residue class cannot carry
infinite terminal common-collar stretching on the first Pack-failure collar.
```

## Why this does not close from current inputs

The current `B_ASAC` clauses still admit the scalar endpoint time-marginal witness:

```text
g_m(s)=m 1_{(-1/m,0]}(s),
```

with bounded local `L^1_s` mass and a nonzero terminal time-face atom. That
model is compatible with no fixed earlier selected source slice. It is also
compatible with a terminal common-collar stretching defect unless an additional
sign, angular, pressure, or transported-flux theorem prevents the selected
positive terminal source from aligning with the collar strain.

The material-collar route therefore does not give a free bypass around
`BASACTimeFaceAntiAtom.A`. It changes the exact form of the next theorem: the
next proof has to kill the terminal strain atom on the first Pack collar, not
merely rename the terminal source-time atom.

## Result

`MaterialCollarFirstExitPackSurvival.A` is not proved from the installed
inputs.

The sharper child target is:

```text
TerminalCollarStrainAntiAtom_{B_ASAC}.A
```

with equivalent entrances:

```text
PositiveStrainDecorrelationOnTerminalPackets.A,
StrainSignCancellationForWeightedLiftedRemainder.A,
PressureLerayCollarStrainTether.A,
or TransportedFluxCollarStrainNoAtom.A.
```

A theorem in any of these forms would feed the installed pack-side
forward-preservation theorem and then `OriginalSmoothDataPackSurvival.A`.
Without it, the PDFs remain nonfinal and the loop must continue from the
terminal collar-strain atom.

## New live criticism

`NS-LIVE-20260609-078`: the loop must not treat "material collar" or
"fixed-coordinate readout" as Pack survival. A material collar proves Pack
survival only after the terminal common-collar deformation gauge, or
equivalently the collar stretching ledger, is controlled. The next work unit is
`TerminalCollarStrainAntiAtom_{B_ASAC}.A` or one of its equivalent strain,
pressure, or transported-flux forms.
