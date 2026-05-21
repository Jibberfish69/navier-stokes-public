# MPP ParabolicTimeFaceCapacityZero.A direct attempt

Date: 2026-05-17

Status: failed unconditional discharge. The terminal time face has positive parabolic trace capacity for the native source measure class used here.

## Target

`ParabolicTimeFaceCapacityZero.A` asks for a capacity theorem excluding terminal source charge:

```math
\mu_*^{src}(B_R\times\{0\})=0.
```

for every `B_ASAC^closed,min` source-residue object.

## Model obstruction

The surviving model is

```math
d\mu_*^{src}(y,s)=\rho(y)dy\otimes\delta_{s=0}.
```

This is a finite Radon measure on fixed spatial balls supported on the terminal time face.

## Attempt 1: parabolic codimension gives zero capacity

The terminal face is a full spatial slice. In the parabolic cylinder it is a boundary hypersurface, not a thin polar set for boundary trace purposes.

Heat-type problems admit measures on initial or terminal time slices as boundary data. The same structural fact allows a terminal Radon source residue to pair with terminal traces.

## Attempt 2: heat-kernel removability

A source placed at the terminal boundary has no forward time interval inside the cylinder in which heat smoothing can dissolve it. Backward adjoint tests pair with the terminal trace.

Thus heat-kernel smoothing gives no removability of the terminal boundary measure.

## Attempt 3: local Radon compactness excludes capacity charge

Local suitable compactness supplies locally finite Radon measures. Radon compactness allows concentration on closed time faces. It gives no capacity exclusion without an additional integrability or trace estimate.

## Verdict

`ParabolicTimeFaceCapacityZero.A` fails for the current measure class.

The terminal time face has positive parabolic trace capacity. A terminal native source atom is admissible at this level of compactness.

The remaining item in this discharge branch is a conditional bridge:

```math
LocalEnergyTraceNoPositiveJump.A + TransportedCylinderNoFlux.A
\Longrightarrow
TerminalSourceAntiConcentration.A.
```