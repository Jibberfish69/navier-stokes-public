# Localized Projector Coarse Overlap Is an F.1 Consumer

## Status

Active theorem-facing routing note for the localized-projector exact-potential
branch.

Role: record the sharpened source-faithful routing for the coarse normalized-
kernel overlap route: it does not consume the whole retained-family packet
`V3`, only the retained-cover / bounded-overlap side governed by `(F.1)`.

The newer note
[localized-projector-coarse-overlap-is-retained-cover-counting-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-retained-cover-counting-consumer.md)
pushes this one step further: the primitive consumer is the scalar retained-
cover counting term `\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)`, and the present
note is the theorem that `(F.1)` is one sufficient supplier for that primitive
quantity.

## Purpose

The note
[normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md)
showed that, after normalizing the local kernels, the overlap price is
controlled by retained cover geometry:

```math
\frac{16N_\Lambda^2M_{\mathrm{sub}}}{\overline\gamma_\ast^2}
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{LCV.0}
```

This note identifies that quantity with the `F.1` side of the retained-family
packet, rather than with the observation/error series `(F.6)`-`(F.7)`.

## Exact Match With the `F.1` Side of `V3`

The exact-potential retained-family packet in
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md)
and
[hwy-instability-attack-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/hwy-instability-attack-packet.md)
already isolates

```math
V3:
\quad
\texttt{bounded-overlap law }(F.1)
\quad+\quad
\texttt{observation/error series }(F.6)-(F.7).
\tag{LCV.1}
```

But the proof split on disk is asymmetric:

```math
\texttt{entrance contribution}
\Longrightarrow
\texttt{series }(F.6)\text{ and }(F.7),
\tag{LCV.2}
```

while the forcing-side globalization uses only Fubini plus `(F.1)`:

```math
\sum_k\int_{\mathcal J_k}\mathcal B_{J,\beta}^{force}(a,b;I_k)\,d\mu_J^{pair}
\le
N_{\mathrm{ov}}
\int_{\mathcal J}\int_I
\frac{\beta_J(a,b,t)^2}{g_J(a,b,t)}
\,dt\,d\mu_J^{pair}(a,b).
\tag{LCV.3}
```

So the pure cover-geometry term

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{LCV.4}
```

belongs on the `(F.1)` side of the split, not on the observation/error side.

## Corollary `LCV.A` (coarse overlap is priced by retained-cover counting)

Assume:

1. normalized local kernels as in
   [normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md);
2. bounded multiplicity and subordination of the local synchronization family
   to the retained exact-potential windows.

Then the overlap contribution on the localized-projector branch obeys

```math
\mathrm{Overlap}_{J,\mathrm{coarse}}
\le
\frac{16N_\Lambda^2M_{\mathrm{sub}}}{\overline\gamma_\ast^2}
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{LCV.5}
```

### Proof

This is exactly `(NLP.11)`. ∎

## Corollary `LCV.B` (the overlap price is an `F.1` consumer)

Assume:

1. the hypotheses of `LCV.A`;
2. a fixed active pair family `\mathcal J` with `\mathcal J_k\subset\mathcal J`
   for every retained window;
3. the bounded-overlap law `(F.1)` on the retained window family.

Then

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
N_{\mathrm{ov}}\,|I|\,\mu_J^{pair}(\mathcal J),
\tag{LCV.6}
```

hence the coarse localized-projector overlap price is bounded by the `F.1`
side of the retained-family packet with the displayed multiplicity factor
`N_{\mathrm{ov}}`.

### Proof

By `\mathcal J_k\subset\mathcal J`,

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
=
\int_{\mathcal J}\int_I
\sum_k \mathbf 1_{I_k}(t)\mathbf 1_{\mathcal J_k}(a,b)
\,dt\,d\mu_J^{pair}(a,b).
\tag{LCV.7}
```

Since `\mathbf 1_{\mathcal J_k}\le 1` and `(F.1)` gives
`\sum_k\mathbf 1_{I_k}(t)\le N_{\mathrm{ov}}` for a.e. `t`,

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
\int_{\mathcal J}\int_I N_{\mathrm{ov}}
\,dt\,d\mu_J^{pair}(a,b)
=
N_{\mathrm{ov}}\,|I|\,\mu_J^{pair}(\mathcal J).
\tag{LCV.8}
```

Insert `(LCV.8)` into `(LCV.5)`. No use of `(F.6)` or `(F.7)` enters. ∎

## Interpretation

The localized-projector branch now has two honest overlap modes:

1. **Fine mode:** keep the actual kernel geometry and pay one
   localizer-modulus / center-spacing theorem.
2. **Coarse mode:** normalize the kernels and hand the overlap price directly to
   the retained-cover / bounded-overlap side governed by `(F.1)`.

So on the exact-potential branch, overlap is no longer an isolated live debt in
both modes:

- in fine mode it is one explicit localizer geometry theorem;
- in coarse mode it is already an `F.1`-side consumer.

This note does **not** claim that `(F.1)` is closed, nor that the full retained-
family packet `V3` is unnecessary downstream. It only records the sharper
source-faithful fact that coarse localized-projector overlap adds no theorem
debt beyond the `F.1` side of that packet.
