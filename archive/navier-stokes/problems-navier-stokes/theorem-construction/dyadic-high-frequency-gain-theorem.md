# Theorem HFG: Dyadic High-Frequency Gain Frontier

## Status

Frontier theorem statement for the endpoint dyadic gain needed to upgrade the
classical vorticity control to a critical Besov continuation bound.

This note does not discharge the theorem. It records the exact same-surface
estimate whose proof would close the `Theorem D` schema in
`regularity-upgrade-schemas.md`.

## Classical Surface

Let `u` be a smooth solution of the three-dimensional incompressible
Navier-Stokes equation on `[0,T] \times \mathbb R^3` with vorticity

```math
\omega := \nabla \times u.
```

Let `\Delta_j` be a homogeneous Littlewood-Paley decomposition.

## Theorem HFG

For every smooth classical solution on `[0,T]`,

```math
\sum_{j\ge 0} 2^{\frac32 j}\,\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)} < \infty.
```

Equivalently,

```math
\sum_{j\ge 0} 2^{\frac12 j}\,\|\nabla \Delta_j\omega\|_{L^1_tL^2_x(0,T)} < \infty.
```

If this bound holds, then by Bernstein

```math
\int_0^T \|\omega(t)\|_{B^0_{\infty,1}}\,dt < \infty,
```

and therefore the standard continuation criterion closes on the same classical
surface.

## Dyadic Evolution Form

Applying `\Delta_j` to the vorticity equation

```math
\partial_t \omega + (u\cdot\nabla)\omega = (\omega\cdot\nabla)u + \nu\Delta\omega,
```

and testing against `\Delta_j\omega`, one obtains the dyadic energy identity

```math
\frac12\frac{d}{dt}\|\Delta_j\omega\|_{L^2_x}^2
+ \nu 2^{2j}\|\Delta_j\omega\|_{L^2_x}^2
\le
\langle \Delta_j((\omega\cdot\nabla)u), \Delta_j\omega\rangle
+ \mathrm{Comm}_j.
```

The exact theorem-critical burden is to prove a uniform cascade estimate of the
form

```math
\mathrm{cascade}_j(t)
\le
\varepsilon \nu 2^{2j}\|\Delta_j\omega(t)\|_{L^2_x}^2
+
C_\varepsilon 2^{-2j}\|\nabla\omega(t)\|_{L^2_x}^2,
```

after the strict low-mode and finite-band spill pieces have been separated
off.

## Candidate Proof Programs

### Program 1. Linear smoothing plus summable forcing

Write the dyadic Duhamel formula

```math
\Delta_j\omega(t)
=
e^{\nu t\Delta}\Delta_j\omega_0
+
\int_0^t e^{\nu(t-s)\Delta}\Delta_jF(s)\,ds,
```

where

```math
F = (\omega\cdot\nabla)u - (u\cdot\nabla)\omega.
```

Then the theorem reduces to the summability of

```math
\sum_j 2^{-\frac12 j}\|\Delta_jF\|_{L^1_tL^2_x}.
```

### Program 2. Same-surface commutator gain

Use Bony decomposition on `F` and prove that the strict low-mode pieces are
already absorbed by the admissible coefficient `\mathcal L_N(t)E_N(t)`, while
the remaining high-high packet obeys the cascade estimate above.

### Program 3. Time-decay compensation

Prove a dyadic decay estimate strong enough to make the high-frequency
`L^1_tL^2_x` norm summable, for example by extracting an extra factor of
`2^{-2j}` from the dissipative kernel after the cascade estimate is closed.

## Honest Boundary

The theorem is currently open. The static `H^1` control available from the
classical energy/enstrophy layer does not by itself imply the stated dyadic
summability. The missing step is the same-surface control of the high-frequency
cascade term after the low-mode and spill pieces have been removed.

## Interfaces

- [dyadic-shell-gain-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-shell-gain-lemma.md)
- [regularity-upgrade-schemas.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/regularity-upgrade-schemas.md)
- [gradient-commutator-remainder-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-commutator-remainder-lemma.md)
- [gradient-genuine-high-high-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-genuine-high-high-packet.md)
- [gradient-cubic-tail-absorption-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/gradient-cubic-tail-absorption-lemma.md)
