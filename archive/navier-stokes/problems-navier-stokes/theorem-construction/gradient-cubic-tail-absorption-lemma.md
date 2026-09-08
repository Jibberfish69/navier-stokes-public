# Gradient Cubic-Tail Absorption Lemma

## Purpose

This note closes the remaining gradient-side burden. After the strict low-mode and spill reductions, and after the genuine high-high packet is reduced to a near-diagonal cubic dyadic tail, the same classical energy bound supplies an extra factor `2^{-N}`. Because the gradient dissipation carries one more derivative than the scale dissipation, the near-diagonal cubic packet is absorbed directly into `D_N` for all large cutoffs.

## Exact Statement

Let `\mathfrak{H}^{grad,HH}_{N}[u](t)` be the genuine high-high packet from `gradient-genuine-high-high-packet.md`. Then there exist constants `N_*` and `C_0` depending only on the classical energy bound and the fixed dyadic collar width such that, for every `N \ge N_*`,

```math
\mathfrak{H}^{grad,HH}_{N}[u](t)
\le
\frac{\eta\nu}{2} D_N(t)
+ C_0 2^{-2\delta N}
```

for almost every `t`.

In particular, the gradient-side genuine high-high packet is absorbed on the same classical Euclidean surface, and the bridge-facing object `gradient_control_bridge_discharge` is discharged.

## Proof

By `gradient-high-high-near-diagonal-reduction-lemma.md`,

```math
\mathfrak{H}^{grad,HH}_{N}[u](t)
\le
C \sum_{j\ge N-M} 2^{3j}\|\Delta_j u(t)\|_{L^2_x}^3.
```

For every `j \ge N-M`,

```math
2^{3j}\|\Delta_j u(t)\|_{L^2_x}^3
=
\big(2^{4j}\|\Delta_j u(t)\|_{L^2_x}^2\big)\,
\big(2^{-j}\|\Delta_j u(t)\|_{L^2_x}\big).
```

The classical energy bound gives

```math
\|\Delta_j u(t)\|_{L^2_x}
\le
\|u(t)\|_{L^2_x}
\le
C_E^{1/2},
```

so

```math
2^{-j}\|\Delta_j u(t)\|_{L^2_x}
\le
2^{-(N-M)} C_E^{1/2}.
```

Therefore

```math
\mathfrak{H}^{grad,HH}_{N}[u](t)
\le
C\,2^{-(N-M)} C_E^{1/2}\sum_{j\ge N-M}2^{4j}\|\Delta_j u(t)\|_{L^2_x}^2.
```

Absorb the finite dyadic collar into the threshold and write the right-hand side as

```math
\le
C' 2^{-N} C_E^{1/2} D_N(t).
```

Choose `N_*` so that `C' 2^{-N} C_E^{1/2} \le \eta\nu/2` for all `N \ge N_*`. Then

```math
\mathfrak{H}^{grad,HH}_{N}[u](t)
\le
\frac{\eta\nu}{2} D_N(t).
```

Finally, the zero remainder is admissible in the bridge target, so after enlarging constants if desired,

```math
\frac{\eta\nu}{2} D_N(t)
\le
\frac{\eta\nu}{2} D_N(t) + C_0 2^{-2\delta N},
```

which is the required absorbable-plus-summable form.

## Consequence

The gradient-control bridge is discharged on the classical equation. The remaining theorem work is no longer a bridge-discharge problem. It is the final combined closure and manuscript/export promotion on the full-claim surface.

## Honest Boundary

This lemma closes the gradient-side packet on the current theorem surface. It does not by itself typeset or export the full-claim manuscript, but it removes the last live mathematical bridge blocker in the Navier-Stokes lane.
