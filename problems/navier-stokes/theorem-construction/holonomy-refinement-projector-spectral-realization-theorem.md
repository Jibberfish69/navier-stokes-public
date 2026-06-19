# Holonomy-Refinement Projector Spectral Realization Theorem

## Status

This note proves the sharp structural realization theorem that the export route
actually needs:

```text
a thresholded holonomy/refinement selector family
is a spectral truncation family on the persistent carrier.
```

It does not prove that every abstract appearance of `\mathbb H_D` in the lane
already comes equipped with such a thresholded family. It proves that once the
lane uses the finite-scale projector package already present in the Appendix A /
direct-limit carrier machinery, the induced continuum threshold projectors are
exactly the spectral projectors of a self-adjoint coherent generator on `K_D`.

By the ontology correction in
[carrier-ontology-and-selector-correction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-and-selector-correction-note.md),
this theorem is about selector machinery on top of the persistent carrier, not
about the ontic definition of the carrier itself.

## Input Surface

Use the inherited carrier package already recorded in:

- [persistent-carrier-projector-and-coercivity.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md),
- [projected-defect-growth-and-carrier-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-defect-growth-and-carrier-reduction.md),
- [spectral-closure-and-unified-invariant.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/spectral-closure-and-unified-invariant.md),
- [continuum-physical-sector-theorem-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/continuum-physical-sector-theorem-packet.md).

At finite scale `\Lambda`, let

```text
K_\Lambda \subseteq H_\Lambda^{phys}
```

denote the persistent carrier subspace and let

```text
\mathbb H_D^\Lambda : H_\Lambda^{phys} \to K_\Lambda
```

be the orthogonal projector.

Assume the direct-limit carrier hypotheses already used elsewhere on the lane:

1. **Refinement compatibility on carrier modes.**

   For `\Lambda \le \Lambda'`,

   ```text
   \iota_{\Lambda\Lambda'}(K_\Lambda) \subseteq K_{\Lambda'}.
   ```

2. **Isometric refinement.**

   The embeddings

   ```text
   \iota_{\Lambda\Lambda'} : K_\Lambda \to K_{\Lambda'}
   ```

   are isometric.

3. **Carrier completeness.**

   The continuum persistent carrier is the Hilbert colimit closure

   ```text
   K_D = \overline{\varinjlim_\Lambda K_\Lambda}.
   ```

Fix dyadic thresholds `\Lambda_j := 2^j`.

For each `j`, let `K_D(j)` denote the closed image in `K_D` of the scale
carrier `K_{\Lambda_j}`, and let

```text
\mathbb H_D(j) : K_D \to K_D(j)
```

be the orthogonal projector.

This is the lane's thresholded holonomy/refinement selector family on the
persistent carrier.

## Theorem HRS

Under the input surface above:

1. the family `(\mathbb H_D(j))_{j\in\mathbb Z}` is increasing,

   ```math
   K_D(j) \subseteq K_D(j+1),
   \qquad
   \mathbb H_D(j)\mathbb H_D(j+1)=\mathbb H_D(j);
   ```

2. it converges strongly to the identity on `K_D`,

   ```math
   \mathbb H_D(j)Y \to Y
   \qquad
   \forall Y\in K_D;
   ```

3. there exists a positive self-adjoint operator `D_{\mathrm{coh}}` on `K_D`
   such that

   ```math
   \mathbb H_D(j)=\mathbf 1_{[0,2^j]}(D_{\mathrm{coh}})
   ```

   for every dyadic threshold `j`.

Equivalently, the lane's holonomy/refinement selector family is
realized exactly by the spectral truncation family of `D_{\mathrm{coh}}` on
`K_D`.

## Proof

### Step 1. The finite-scale coherent carriers form an increasing family

By refinement compatibility,

```text
\iota_{\Lambda_j,\Lambda_{j+1}}(K_{\Lambda_j}) \subseteq K_{\Lambda_{j+1}}.
```

Passing to the common continuum colimit identifies the image of
`K_{\Lambda_j}` as a closed subspace of the image of `K_{\Lambda_{j+1}}`.
Hence

```math
K_D(j)\subseteq K_D(j+1).
```

Since `\mathbb H_D(j)` and `\mathbb H_D(j+1)` are the orthogonal projectors
onto nested closed subspaces, the projector identity follows:

```math
\mathbb H_D(j)\mathbb H_D(j+1)=\mathbb H_D(j)
=
\mathbb H_D(j+1)\mathbb H_D(j).
```

So the thresholded selector family is monotone.

### Step 2. The family is strongly complete on the persistent carrier

By carrier completeness,

```text
K_D = \overline{\bigcup_j K_D(j)}.
```

Take `Y\in K_D`. For every `\varepsilon>0`, choose `j_\varepsilon` and
`Y_\varepsilon \in K_D(j_\varepsilon)` such that

```math
\|Y-Y_\varepsilon\|<\varepsilon.
```

Then for every `j\ge j_\varepsilon`,

```math
\mathbb H_D(j)Y_\varepsilon = Y_\varepsilon
```

because `Y_\varepsilon` already lies in `K_D(j)`.
Therefore

```math
\|Y-\mathbb H_D(j)Y\|
\le
\|Y-Y_\varepsilon\|

+ \|\mathbb H_D(j)(Y_\varepsilon-Y)\|
\le
2\varepsilon,
```

using `\|\mathbb H_D(j)\|\le 1`.
Since `\varepsilon` is arbitrary,

```math
\mathbb H_D(j)Y \to Y
```

for every `Y\in K_D`.

### Step 3. Build the coherent spectral slices

Define

```math
S_j := \mathbb H_D(j)-\mathbb H_D(j-1).
```

Because the selector family is increasing and commuting, each `S_j` is an
orthogonal projector, the ranges of the `S_j` are mutually orthogonal, and

```math
\sum_{j\in\mathbb Z} S_j = I_{K_D}
```

in the strong operator topology.

So every `Y\in K_D` has the orthogonal decomposition

```math
Y=\sum_{j\in\mathbb Z} S_jY.
```

### Step 4. Define the coherent generator

Define the operator

```math
D_{\mathrm{coh}}Y
:=
\sum_{j\in\mathbb Z} 2^j S_jY
```

on the natural domain

```math
\operatorname{Dom}(D_{\mathrm{coh}})
:=
\left\{
Y\in K_D:
\sum_{j\in\mathbb Z} 2^{2j}\|S_jY\|^2 < \infty
\right\}.
```

Since the `S_j` are mutually orthogonal projections, this is the
spectral-series construction of a positive self-adjoint operator on `K_D`.

### Step 5. Recover the selector family as spectral truncations

For any dyadic threshold `j_0`, the spectral subspace of `D_{\mathrm{coh}}`
with eigenvalues `\le 2^{j_0}` is exactly

```math
\bigoplus_{j\le j_0}\operatorname{Ran}(S_j).
```

Therefore

```math
\mathbf 1_{[0,2^{j_0}]}(D_{\mathrm{coh}})
=
\sum_{j\le j_0} S_j
=
\mathbb H_D(j_0).
```

That is the required realization theorem. `\square`

## Consequence

The holonomy/refinement selector family is not merely compatible with a
spectral picture. On the lane's own direct-limit carrier surface, it *is* a
spectral selector family on the persistent carrier.

So the thresholded selector sector can be written exactly as

```math
K_D(j_0)=\operatorname{Ran}\mathbf 1_{[0,2^{j_0}]}(D_{\mathrm{coh}}).
```

This is the exact object needed by the readout/export program.

## What This Proves And What It Does Not

This note proves the spectral realization of the *thresholded* active
holonomy/refinement selector family carried by the finite-scale Appendix A /
direct-limit package.

It does not prove more than that. In particular, it does not identify the
whole unthresholded abstract `\mathbb H_D` from
[persistent-carrier-projector-and-coercivity.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md)
with a spectral projector of some ambient whole-space operator without using
the finite-scale family. The proof lives on `K_D` and on its refinement-indexed
subspaces.

## Interfaces

- [active-coherent-projector-spectral-identification-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/active-coherent-projector-spectral-identification-theorem.md)
- [carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md)
- [persistent-carrier-projector-and-coercivity.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md)
- [projected-defect-growth-and-carrier-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-defect-growth-and-carrier-reduction.md)
- [spectral-closure-and-unified-invariant.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/spectral-closure-and-unified-invariant.md)
