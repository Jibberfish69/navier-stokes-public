# MPP Nonlinear Shell-Flux Source-Control Reentry

## Status

Active-completion reentry. This note does not close the public Clay bridge.

It attacks the current source-weighted active reserve primitive:

```math
NonlinearShellFluxSourceControl.A
```

also appearing as:

```math
ActiveShellSourceNormalize.A.
```

## Target role

The theorem would forbid source-balanced active pulses on selected terminal
heat-scale shells. That would feed active-shell amplitude gain, then
active-square Carleson control, then the terminal anti-atom route for the
native positive source measure.

## Shell law obstruction

The terminal shell balance has the scalar form:

```math
E_j'(t)+c\nu D_j(t)\le F_j(t),
\qquad
D_j(t)=2^{2j}E_j(t).
```

At the scalar level, a source `F_j` can keep the shell active by balancing
viscous damping on a heat-scale interval. So the proof must use the
Navier-Stokes structure inside `F_j`; finite energy, finite dissipation, and
fixed-shell preterminal smoothness are not enough.

## Unweighted cancellation

The unweighted dyadic exchange has exact antisymmetry:

```math
\langle \Delta_j(a_k\cdot\nabla\Delta_\ell u),\Delta_j u\rangle
+
\langle \Delta_\ell(a_k\cdot\nabla\Delta_j u),\Delta_\ell u\rangle
=0.
```

This is real structure, but it is not the terminal weighted theorem. The live
route inserts one-sided shell weights, lifted packet reductions, and cutoffs.
Those operations leave a weighted lifted remainder.

## Bare commutator test

The proposed separated bare commutator estimate is vacuous in the declared
geometry. For `j+M<k<\ell-4`, Fourier support gives:

```math
\Delta_j(a_k\cdot\nabla\Delta_\ell u)=0,
\qquad
\Delta_j\Delta_\ell u=0.
```

So the bare commutator vanishes. It does not control the nonlinear shell-flux
source.

## True live object

The true source object is the weighted signed lifted remainder:

```math
G_N^{lift,\sigma}
=
\sum W_{j,\ell}^{\sigma}R_{j,k,\ell}^{lift}.
```

Its displayed principal atom is a commutatorized strain interaction:

```math
R_{j,k,\ell}^{lift,prin}
:=
2^{2j}\langle C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle.
```

This term has variable sign. Coherent active packets aligned with expanding
strain eigendirections can contribute with the same sign. One-sided shell
weights orient the scale sum; they do not impose eigendirection cancellation.

## Positive fallback

Taking absolute values before summing collapses the route to a positive carrier.
Young's inequality leaves an active-square residual tail:

```math
\int_I\sum_{j\ge N}2^{-j}D_j(t)^2\,dt.
```

The installed full tail-square reserve controls cumulative tail energy squared
by first-moment dissipation. It does not control shellwise active-square density
on terminal active intervals.

## Verdict

`NonlinearShellFluxSourceControl.A` is not proved from the current repo inputs.

It has been reduced to this split:

```text
StrainSignCancellation.A for G_N^{lift,sigma},
or ActiveSquareResidualTail.A / direct active-square Carleson.
```

The positive-carrier side returns to the same active-square source frontier. The
only non-circular signed route now visible is a theorem forcing eigendirection
decorrelation, signed measure cancellation, or an exact divergence/nonpositive
structure for the true weighted lifted remainder.

The next object-level target is therefore:

```math
StrainSignCancellationForWeightedLiftedRemainder.A
```

or an equivalent active-packet eigendirection decorrelation theorem.
