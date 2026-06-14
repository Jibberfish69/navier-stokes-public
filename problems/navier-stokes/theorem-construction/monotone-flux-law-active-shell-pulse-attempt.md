# Monotone Flux Law Active-Shell Pulse Attempt

## Target

The desired law was a no-short-pulse theorem for active shell dissipation:

```math
D_j(t)\text{ cannot concentrate on intervals } |I|\ll D_j^{-1}.
```

This would imply active-square Carleson control for

```math
2^{-j}D_j(t)^2dt.
```

## Shell identity

At shell `j`, write

```math
E_j(t)=2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_j(t)=2^{2j}E_j(t).
```

The shell energy identity has the scalar form

```math
dE_j(t)+c\nu D_j(t)dt\le F_j(t)dt,
```

where `F_j` is the nonlinear flux/cascade contribution.

## Scalar pulse model

Let `h>0` be small and choose a smooth pulse `\psi_h` supported in an interval `I` of length `h`, with `0\le\psi_h\le 1`. Set

```math
D_j(t)=A\psi_h(t),
\qquad
E_j(t)=2^{-2j}D_j(t).
```

Then the shell identity is satisfied by the source

```math
F_j(t)=E_j'(t)+c\nu D_j(t).
```

The dissipation mass can stay fixed by choosing `Ah=M`, while

```math
\int_I D_j(t)^2dt = A^2h={M^2\over h},
```

which grows without bound as `h\downarrow0`.

Thus the shell identity plus `L^1_t` control of `D_j` allows short active-shell pulses whenever the source `F_j` is allowed to match the pulse.

## Consequence for Navier-Stokes shell flux

For Navier-Stokes, `F_j` is exactly the nonlinear cascade/leakage term. A monotone no-pulse theorem therefore requires an independent estimate of `F_j`, such as

```math
F_j\le a_j(t)E_j+b_j(t),
\qquad a_j\in L^1_t,
```

or a Carleson/active-square bound on the source itself.

Without such a flux theorem, parabolic damping gives decay after a pulse, while nonlinear flux can still create the pulse.

## Result

The monotone/flux law is not derivable from the current shell identity and energy layer. It is equivalent to a new source-control theorem for the nonlinear shell flux, or to the active-square Carleson theorem directly.

## Next exact input

The next viable theorem is one of:

```math
\int_I2^{-j}D_j(t)^2dt\le \varepsilon\nu2^{2j}|I|+C2^{-2\delta j},
```

or

```math
F_j\text{ obeys a Carleson/source bound that forbids scalar pulse forcing.}
```
