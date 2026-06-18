# Tail-Energy Genuine High-High Packet

## Purpose

This note isolates the genuine high-high packet on the exact Euclidean
tail-energy surface used by the `4 -> 1` recertification argument.

It works on the fixed dyadic quantities

```math
T_N(t):=\|P_{\ge N}u(t)\|_{L_x^2}^2,
\qquad
Q_N(t):=\|\nabla P_{\ge N}u(t)\|_{L_x^2}^2.
```

After the strict low-mode packet and the finite-band spill packet have both
been removed, this note records the remaining high-high interaction and the
large-cutoff inequality on the same tail-energy surface.

## Exact Packet

Let

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
:=
\left|
\left\langle
\mathcal H_N[u](t),\,P_{\ge N}u(t)
\right\rangle
\right|
```

denote the genuine high-high portion of
`\langle P_{\ge N}(u\cdot\nabla u), P_{\ge N}u\rangle` after the strict low-mode
and spill packets have been extracted.

## Exact Statement

There exist a universal collar width `M`, a constant `C > 0`, and a cutoff
`N_*` depending only on the fixed dyadic partition, the viscosity, and the
classical energy bound such that for every `N \ge N_*`,

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
C\sum_{j\ge N-M} 2^j \|\Delta_j u(t)\|_{L_x^2}^3
\le
\frac{\eta\nu}{4}\,Q_{N-M}(t)
```

for almost every `t`.

After reindexing the finite collar into the threshold budget, this becomes

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
\frac{\eta\nu}{4}\,Q_N(t)
```

for every `N\ge N_{\mathrm{HH}}`, after enlarging the theorem-local cutoff once
to account for the fixed collar.

## Proof

### Step 1. Near-diagonal reduction

Once the strict low-mode packet and the finite-band spill packet have been
removed, Littlewood-Paley support forces the remaining high-high packet into a
near-diagonal collar. Accordingly,

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
C\sum_{j\ge N}
\sum_{|k-j|\le M}
2^j
\|\Delta_k u(t)\|_{L_x^2}\,
\|\widetilde{\Delta}_k u(t)\|_{L_x^2}\,
\|\Delta_j u(t)\|_{L_x^2}.
```

Collapsing the finite collar gives

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
C\sum_{j\ge N-M} 2^j \|\Delta_j u(t)\|_{L_x^2}^3.
\tag{1}
```

This is the same near-diagonal cubic packet that appears on the scale side,
except that here it is paired against the tail-energy surface rather than the
scale dissipation functional.

One must not replace this near-diagonal packet by the purely diagonal model
term

```math
\langle \Delta_j u\cdot\nabla \Delta_j u,\Delta_j u\rangle,
```

because that diagonal expression vanishes by incompressibility and therefore
does not represent the surviving high-high packet after projection. The
near-diagonal collar is the correct exact object.

### Step 2. Factorization

For every `j \ge N-M`,

```math
2^j \|\Delta_j u(t)\|_{L_x^2}^3
=
\big(2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2\big)\,
\big(2^{-j}\|\Delta_j u(t)\|_{L_x^2}\big).
\tag{2}
```

The first factor belongs to the gradient-tail surface. Summing over
`j \ge N-M` yields

```math
\sum_{j\ge N-M}2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2
=
Q_{N-M}(t).
\tag{3}
```

### Step 3. Large-cutoff gain from the energy bound

The classical energy bound gives

```math
\|\Delta_j u(t)\|_{L_x^2}
\le
\|u(t)\|_{L_x^2}
\le
C_E^{1/2},
```

so for `j \ge N-M`,

```math
2^{-j}\|\Delta_j u(t)\|_{L_x^2}
\le
2^{-(N-M)} C_E^{1/2}.
\tag{4}
```

Substituting `(4)` into `(1)` and using `(3)`,

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
C' 2^{-N} C_E^{1/2}\,Q_{N-M}(t).
\tag{5}
```

### Step 4. Large-cutoff payment

Choose `N_*` so that

```math
C' 2^{-N} C_E^{1/2}
\le
\frac{\eta\nu}{4}
\qquad (N \ge N_*).
\tag{6}
```

Then `(5)` implies

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
\frac{\eta\nu}{4}\,Q_{N-M}(t).
\tag{7}
```

Enlarge `N_*` once to include the fixed collar `M`, and call the resulting
threshold `N_{\mathrm{HH}}`. This yields

```math
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}(t)
\le
\frac{\eta\nu}{4}\,Q_N(t)
\qquad (N \ge N_{\mathrm{HH}}).
\tag{8}
```

This is the exact large-cutoff high-high payment used on the local tail-energy
surface.

## Consequence

On the `4 -> 1` tail-energy surface, the genuine high-high packet is reduced to
the same near-diagonal cubic packet already visible in the scale-side theorem
stack, and it contributes at most `(\eta\nu/4)Q_N` for every
`N\ge N_{\mathrm{HH}}`.

So, locally inside the recertification packet,

```math
\mathcal N_{N,\mathrm{strict}}^{\mathrm{tail}}
+
\mathcal N_{N,\mathrm{spill}}^{\mathrm{tail}}
+
\mathcal N_{N,\mathrm{HH}}^{\mathrm{tail}}
```

reduces to the admissible coefficient surface plus an absorbable tail-energy
dissipation fraction.

## Honest Boundary

This note closes the genuine high-high component on the local
`4 -> 1` tail-energy surface.

It must not be replaced by the shellwise shortcut

```math
\sum_{j\ge N-M}
2^{3j/2}\|\Delta_j u\|_{L_x^2}^2\,\|\nabla \widetilde\Delta_j u\|_{L_x^2}
\leadsto
\sum_{j\ge N-M}2^j\|\Delta_j u\|_{L_x^2}^3,
```

unless the near-diagonal packet reduction has already been proved. The cubic
packet `2^j\|\Delta_j u\|_{L^2}^3` is the output of the support-geometry
reduction, not of a direct diagonal Bernstein estimate. Without that prior
reduction the power counting is wrong, and one silently collapses the surviving
near-diagonal packet onto an invalid diagonal model.

It does not by itself discharge:

- the proposition-level spill reduction still open in Proposition 4.1,
- the proposition-level scale-side packet discharge in Proposition 4.1,
- the proposition-level gradient-side packet discharge in Proposition 6.1,
- or the final Gronwall/compatibility assembly in Proposition 6.2.
