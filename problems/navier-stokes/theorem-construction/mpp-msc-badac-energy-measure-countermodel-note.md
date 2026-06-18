# MPP MSC.BadAC Energy-Measure Countermodel Note

## Status

Sharp insufficiency check for the installed energy scheduler.

This note does not construct a Navier-Stokes solution. It constructs the
minimal abstract time-measure model compatible with the scheduler information
currently used in the route, and shows that this information alone cannot imply
`MSC.BadAC`.

## Target Under Test

The mixed-shell bad-set theorem is

```math
MSC.BadAC:
\quad
\int_{Bad_N(\eta)}
\mathfrak B_N^\sigma(t)\,dt
\le
o_N(1)+\eta\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt,
```

where

```math
Bad_N(\eta)
:=
\{t:\sup_{j>N}\gamma_j(t)>\eta\},
\qquad
\gamma_j(t)=2^{-j}\sum_{m=j-M}^{j+M}E_m(t).
```

The scheduler supplies only

```math
\int_0^{T_\ast}\sum_{j>N}\gamma_j(t)\,dt=o_N(1).
\tag{1}
```

## Abstract Countermodel

Fix `0<eta<1`. Let `I_N` be a time interval with length `delta_N -> 0`.
Define a single active spill coefficient by

```math
\gamma_{N+1}(t):=\mathbf 1_{I_N}(t),
\qquad
\gamma_j(t):=0 \quad (j\ne N+1).
```

Then

```math
\int_0^{T_\ast}\sum_{j>N}\gamma_j(t)\,dt
=
|I_N|
=
\delta_N
\to0,
```

so `(1)` holds. The bad set is exactly

```math
Bad_N(\eta)=I_N.
```

Now choose a nonnegative mixed-dissipation density concentrated on the same
interval:

```math
\mathfrak B_N^\sigma(t):=\delta_N^{-1}\mathbf 1_{I_N}(t).
```

Then

```math
\int_0^{T_\ast}\mathfrak B_N^\sigma(t)\,dt=1,
\qquad
\int_{Bad_N(\eta)}\mathfrak B_N^\sigma(t)\,dt=1.
```

For every fixed `eta<1`, the desired `MSC.BadAC` estimate would require

```math
1
\le
o_N(1)+\eta,
```

which fails for all sufficiently large `N`.

Thus small Lebesgue-time mass of the bad set is logically insufficient to give
small `\mathfrak B_N^\sigma(t)dt`-mass of the bad set.

## Heat-Scale Version

The same model can be written in the scale language of the route. Let

```math
j_N:=N+1,
\qquad
\delta_N:=2^{-2j_N}.
```

On `I_N`, take an active shell packet with the critical size

```math
E_{j_N}(t):=2^{j_N}.
```

Then

```math
\gamma_{j_N}(t)=2^{-j_N}E_{j_N}(t)=1,
\qquad
\int_{I_N}E_{j_N}(t)\,dt=2^{-j_N}\to0.
```

The energy scheduler still sees a vanishing tail contribution. But a
heat-scale derivative witness can be chosen with the exact density

```math
\mathfrak B_N^\sigma(t):=2^{2j_N}\mathbf 1_{I_N}(t).
```

Since `|I_N|=2^{-2j_N}`,

```math
\int_{I_N}\mathfrak B_N^\sigma(t)\,dt=1.
```

Thus it carries `\mathfrak B_N^\sigma(t)dt` mass bounded below by the fixed
constant `c_0=1` on the same pulse.

That is exactly the profile `MSC.BadAC` must rule out.

## Consequence

Any proof of `MSC.BadAC` must use structure beyond the installed scheduler
input `(1)`. In particular, it must supply one of the following missing
couplings:

- a signed lifted commutator cancellation before absolute values;
- a pressure-strain depletion theorem for active vortex stretching;
- an ancient critical-pulse exclusion theorem;
- a direct mixed-measure domination theorem tying
  `\mathfrak B_N^\sigma(t)dt` to the spill-coefficient bad-set geometry.

The current route therefore cannot close by another Chebyshev, bad-time-cover,
or finite-energy scheduler argument. The exact remaining primitive is still

```math
OriginalSmoothData\Longrightarrow MSC.BadAC.
```
