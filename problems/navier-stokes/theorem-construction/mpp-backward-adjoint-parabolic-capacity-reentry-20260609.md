# MPP Backward-Adjoint / Parabolic Capacity Reentry

## Status

Active-completion reentry. This note does not close the public Clay bridge.

It tests the last non-repeated capacity alternatives named by the local-energy
trace route:

```math
BackwardAdjointTerminalCapacity.A
```

and:

```math
ParabolicTimeFaceCapacityZero.A.
```

## Backward adjoint test

For a terminal source atom:

```math
d\mu_*^{src}(y,s)=\rho(y)\,dy\otimes\delta_{s=0},
```

a backward adjoint test `\phi` pairs as:

```math
\langle\mu_*^{src},\phi\rangle
=
\int \rho(y)\phi(y,0)\,dy.
```

If `\phi(\cdot,0)=0`, the test hides the atom. If `\phi(\cdot,0)` is nonzero,
the atom is detected through the terminal trace. Controlling that terminal
trace returns to local energy trace, no-incoming flux, or temporal
anti-concentration inputs.

Backward smoothing has no time interval beyond `s=0` in which to dissolve a
measure sitting on the terminal boundary.

## Parabolic capacity test

The terminal time face is a full spatial boundary slice. Heat-type problems
admit measures on initial or terminal time slices as boundary data. Thus the
terminal face has positive boundary-trace capacity for the native source measure
class used here.

Local Radon compactness allows concentration on closed time faces. It gives no
capacity exclusion without additional integrability or trace regularity.

## Verdict

Both capacity routes fail from current inputs:

```math
BackwardAdjointTerminalCapacity.A
```

does not remove an atom that its terminal trace sees, and:

```math
ParabolicTimeFaceCapacityZero.A
```

is false for this measure class because the terminal boundary face has positive
trace capacity.

The loop returns to the hard terminal time-thickness requirement:

```math
TerminalTimeFaceAntiAtom.A
```

or an equivalent theorem supplying super-`L^1` source residence, source
Carleson reserve, transported no-flux with interior production exclusion, or a
strong trace regularity theorem that truly forbids terminal jumps.
