# MPP BackwardAdjointTerminalCapacity.A direct attempt

Date: 2026-05-17

Status: failed unconditional discharge. Backward adjoint tests detect the terminal atom through their terminal trace, or hide it by vanishing at the terminal face.

## Target

`BackwardAdjointTerminalCapacity.A` asks whether the terminal time face has zero capacity for the native source measure when tested by backward adjoint heat functions. A successful theorem would force

```math
\mu_*^{src}(B_R\times\{0\})=0.
```

for the obstruction class

```math
B_{ASAC}^{closed,min}.
```

## Model pairing

Let

```math
d\mu_*^{src}(y,s)=\rho(y)dy\otimes\delta_{s=0}.
```

For a backward adjoint test `\phi`, the pairing is

```math
\langle \mu_*^{src},\phi\rangle
=
\int \rho(y)\phi(y,0)dy.
```

Thus the terminal atom is controlled exactly by the terminal trace `\phi(\cdot,0)`.

## Attempt 1: adjoint smoothing removes the terminal atom

Backward heat propagation smooths spatial variables away from the terminal time. The atom sits on the terminal boundary. The adjoint equation has no time interval beyond `s=0` to smooth that boundary datum.

Therefore smoothing away from the boundary cannot remove a measure sitting on the boundary itself.

## Attempt 2: choose tests vanishing at the terminal face

If `\phi(\cdot,0)=0`, then

```math
\langle \mu_*^{src},\phi\rangle=0.
```

This hides the terminal atom. It proves no vanishing statement for the measure. It only restricts the test class to functions that do not see the atom.

## Attempt 3: use nonzero terminal trace

If `\phi(\cdot,0)` is nonzero, the atom is detected. The integration-by-parts formula then produces terminal trace terms. Controlling these terms requires local energy trace/no-incoming-flux or temporal anti-concentration, which are exactly the missing inputs.

## Attempt 4: backward uniqueness

Backward uniqueness concerns solutions with sufficient regularity and vanishing on suitable sets. The obstruction is a measure source at the terminal boundary. Current compactness supplies a local suitable source-residue object, not the regular class needed to apply backward uniqueness to eliminate the measure.

## Verdict

`BackwardAdjointTerminalCapacity.A` fails from current inputs.

The terminal time face has positive boundary-trace capacity for the adjoint test class. Tests either see the atom through `\phi(\cdot,0)` or erase it by boundary vanishing.

The next alternative is the direct parabolic-capacity formulation:

```math
ParabolicTimeFaceCapacityZero.A.
```