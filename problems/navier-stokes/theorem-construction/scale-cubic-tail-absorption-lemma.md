# Scale Cubic-Tail Coefficient-Margin Lemma

## Purpose

This note closes the remaining scale-side burden conditionally on an explicit
large-cutoff fraction. Once the genuine high-high packet has been reduced to a
near-diagonal cubic dyadic tail, the uniform energy bound supplies an extra
factor `2^{-N}`.

## Exact Statement

Let `\mathfrak{H}^{scale,HH}_{N}[u^{(n)}](t)` be the genuine high-high packet from `scale-genuine-high-high-packet.md`. Then there exist constants `N_*` and `C_0` depending only on the classical energy bound and the fixed dyadic collar width such that, for every `N \ge N_*`,

```math
\sup_n \int_0^T \mathfrak{H}^{scale,HH}_{N}[u^{(n)}](t)\,dt
\le
\frac{\eta\nu}{2}\int_0^T D_N^{(n)}(t)\,dt.
```

In particular, the scale-side genuine high-high packet is spendable only through
the displayed estimate with `N >= N_*`, leaving the remaining viscous
dissipation on the left.

## Proof

By `scale-high-high-near-diagonal-reduction-lemma.md`,

```math
\mathfrak{H}^{scale,HH}_{N}[u^{(n)}](t)
\le
C\sum_{j\ge N-M} 2^j \|\Delta_j u^{(n)}(t)\|_{L^2_x}^3.
```

For every `j \ge N-M`,

```math
2^j \|\Delta_j u^{(n)}\|_{L^2_x}^3
=
\big(2^{2j}\|\Delta_j u^{(n)}\|_{L^2_x}^2\big)\,
\big(2^{-j}\|\Delta_j u^{(n)}\|_{L^2_x}\big).
```

The global energy bound gives

```math
\|\Delta_j u^{(n)}(t)\|_{L^2_x}
\le
\|u^{(n)}(t)\|_{L^2_x}
\le
C_E^{1/2},
```

so

```math
2^{-j}\|\Delta_j u^{(n)}(t)\|_{L^2_x}
\le
2^{-(N-M)} C_E^{1/2}.
```

Therefore

```math
\mathfrak{H}^{scale,HH}_{N}[u^{(n)}](t)
\le
C\,2^{-(N-M)} C_E^{1/2}\sum_{j\ge N-M}2^{2j}\|\Delta_j u^{(n)}(t)\|_{L^2_x}^2.
```

Move the finite dyadic collar into the threshold and write the right-hand side as

```math
\le
C' 2^{-N} C_E^{1/2} D_N^{(n)}(t).
```

Choose `N_*` so that `C' 2^{-N} C_E^{1/2} \le \eta\nu/2` for all `N \ge N_*`. Integrating in time yields the claim.

## Consequence

This lemma supplies the intended cubic-tail coefficient-margin mechanism on the
classical equation. Under the stricter audit standard, however, the scale-side
bridge does not yet count as fully discharged until the packet reductions are
expanded line by line and audited inside the live theorem surface.

## Honest Boundary

This lemma closes the scale-side packet on the current theorem surface. It does not solve the whole Navier-Stokes problem by itself, because the gradient bridge and theorem warrant remain open.
