# Localized Projector Coarse Overlap Is a Retained-Cover Counting Consumer

## Status

Active theorem-facing sharpening note for the localized-projector exact-potential
branch.

Role: isolate the exact primitive geometric quantity consumed by the coarse
normalized-kernel overlap route. The true consumer is not all of `(F.1)` but the
scalar retained-cover counting law

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{LCC.0}
```

The bounded-overlap law `(F.1)` is one sufficient supplier for `(LCC.0)`, not
the primitive overlap consumer itself.

## Purpose

The note
[normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md)
already proved that on the coarse localized-projector route,

```math
\mathrm{Overlap}_{J,\mathrm{coarse}}
\le
\frac{16N_\Lambda^2M_{\mathrm{sub}}}{\overline\gamma_\ast^2}
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{LCC.1}
```

This note records that `(LCC.1)` is the exact consumer statement. Any theorem
that prices `(LCC.0)` suffices for the coarse overlap route.

## Proposition `LCC.A` (coarse overlap is a pure retained-cover counting consumer)

Assume:

1. normalized local kernels as in
   [normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/normalized-localized-projector-kernels-absorb-overlap-into-retained-cover-geometry.md);
2. bounded multiplicity of the local synchronization family;
3. subordination of each local synchronization window `\Lambda_\ell` to one
   retained exact-potential box `\mathcal J_{k(\ell)}\times I_{k(\ell)}`;
4. at most `M_{\mathrm{sub}}` local synchronization windows above each retained
   box.

Then the entire coarse localized-projector overlap contribution is priced by the
single scalar retained-cover counting quantity `(LCC.0)` through `(LCC.1)`.

### Proof

This is exactly `(NLP.11)`, equivalently the older source formula `(EP.10aj2)`.
∎

## Corollary `LCC.B` (`F.1` is one sufficient supplier, not the primitive debt)

Assume:

1. the hypotheses of `LCC.A`;
2. a fixed active pair family `\mathcal J` with `\mathcal J_k\subset\mathcal J`
   for every retained window;
3. the retained-window bounded-overlap law `(F.1)`.

Then

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
N_{\mathrm{ov}}\,|I|\,\mu_J^{pair}(\mathcal J),
\tag{LCC.2}
```

so `(F.1)` supplies `(LCC.0)` and therefore absorbs the coarse overlap price.

### Proof

This is exactly the counting argument already extracted in
[localized-projector-coarse-overlap-is-f1-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-f1-consumer.md).
∎

## Interpretation

The coarse localized-projector overlap route now has the sharpest theorem-facing
shape currently justified on disk:

```math
\boxed{
\texttt{normalized local kernels}
}
\quad+\quad
\boxed{
\texttt{bounded multiplicity + subordination}
}
\Longrightarrow
\boxed{
\texttt{coarse overlap consumes only } \sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
}.
\tag{LCC.3}
```

So the theorem routing is:

1. primitive coarse consumer: one retained-cover counting law `(LCC.0)`;
2. one sufficient upstream supplier: the retained-window bounded-overlap law
   `(F.1)`;
3. no use of the observation/error series `(F.6)`-`(F.7)`.

This note does **not** claim that `(LCC.0)` is already closed independently of
`(F.1)`. It only records the exact primitive consumer below the source-level
`V3` split.
