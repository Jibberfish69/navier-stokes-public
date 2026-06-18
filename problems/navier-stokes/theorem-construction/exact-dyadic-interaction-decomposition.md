# Exact Dyadic Interaction Decomposition

## Status

Unconditional decomposition note for the classical three-dimensional
Navier-Stokes vorticity equation. This file isolates the exact shell-level
identity and the obstruction terms that remain after transport cancellation and
paraproduct splitting.

It does not prove any uniform coercive deficit. It records the decomposition
that is always available on the classical surface.

## Classical Surface

Let `u` be a smooth classical solution on `[0,T]\times \mathbb R^3`, with
vorticity `\omega = \nabla\times u`. Fix a homogeneous Littlewood-Paley
decomposition `\omega = \sum_{j\ge -1}\Delta_j\omega`.

## Exact Dyadic Identity

For each dyadic shell `j`, define

```math
S_j
:=
\big\langle \Delta_j(\omega\cdot\nabla u),\,\Delta_j\omega\big\rangle,
\qquad
T_j
:=
\big\langle [\Delta_j,u\cdot\nabla]\omega,\,\Delta_j\omega\big\rangle.
```

The shell energy identity is

```math
\frac12\frac{d}{dt}\|\Delta_j\omega\|_2^2
+\nu\|\nabla\Delta_j\omega\|_2^2
=
S_j-T_j.
```

The exact transport decomposition is

```math
\big\langle \Delta_j(u\cdot\nabla\omega),\Delta_j\omega\big\rangle
=
T_j+\big\langle u\cdot\nabla\Delta_j\omega,\Delta_j\omega\big\rangle,
```

and the last term is zero because `\nabla\cdot u=0`.  Thus transport
cancellation leaves the commutator `T_j`; it does not identify the stretching
term `S_j` with that commutator.
```

## Paraproduct Expansion

Write

```math
u\cdot\nabla\omega
=
T_u(\nabla\omega)+T_{\nabla\omega}(u)+R(u,\nabla\omega).
```

Then the localized transport commutator has the fixed-collar Littlewood-Paley
decomposition

```math
[\Delta_j,u\cdot\nabla]\omega
=
\sum_{|k-j|\le C}[\Delta_j,S_{k-1}u\cdot\nabla]\Delta_k\omega
+\text{lower-frequency commutators}.
```

The principal local transport-commutator term is controlled by the low-frequency
strain:

```math
\big|\big\langle [\Delta_j,S_{j-1}u\cdot\nabla]\Delta_j\omega,\,
\Delta_j\omega\big\rangle\big|
\le C_{\mathrm{com}}
|\nabla S_{j-1}u|_{L^\infty_x}\,|\Delta_j\omega|_{L^2_x}^2.
```

The remainder terms carry the second-order kernel gain

```math
|\mathrm{Rem}_j|
\le C_{\mathrm{rem}}
2^{-2j}\,|\omega|_{\dot H^{1/2}_x}^2.
```

## Obstruction

The transport-commutator remainder has the desired `2^{-2j}` gain, but the
principal low-high transport term is governed by
`|\nabla S_{j-1}u|_{L^\infty_x}`, and the stretching term `S_j` remains a
separate shell channel. A uniform coercive deficit of the form

```math
S_j-T_j
\le
(1-\delta)\nu 2^{2j}|\Delta_j\omega|_{L^2_x}^2
```

does not follow from this decomposition alone.

Any such deficit requires additional structure beyond the unconditional shell
calculus, for example:

- a shellwise anti-cascade or coherence defect;
- a sharp alignment suppression of the strain channel;
- or a genuine high-frequency gain that lowers the low-high strain coefficient
  relative to `\nu 2^{2j}`.

## Boundary

This note is the unconditional decomposition surface used by
`regularity-upgrade-schemas.md`. It isolates the exact term that the conditional
critical-space closure theorem would have to control.
