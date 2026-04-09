# Active Coherent Projector Spectral Identification Theorem

## Status

This note isolates the exact gap between the lane's abstract selector package on
the persistent coherent support and the spectral low-pass selector needed by the
readout theorem.

The thresholded selector family is now realized spectrally on the
persistent carrier in
[holonomy-refinement-projector-spectral-realization-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/holonomy-refinement-projector-spectral-realization-theorem.md).
The ontology correction behind that realization is recorded in
[carrier-ontology-and-selector-correction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-and-selector-correction-note.md):
the thresholded family is selector machinery on top of the persistent carrier,
not the ontic definition of the carrier itself.

This note keeps the stronger identification problem:

```text
does that spectral realization agree with the coherent-Laplacian route
and with the lane's abstract active selector package?
```

So this note no longer asks whether *some* spectral realization exists. It asks
whether the lane's abstract selector package on the persistent carrier is the
same as the coherent-Laplacian spectral selector package.

The exact obstruction on the current zero-mode carrier route is now isolated in
[coherent-laplacian-zero-mode-obstruction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/coherent-laplacian-zero-mode-obstruction-lemma.md).

## Problem

The export route now needs an exact thresholded spectral statement. The right
target is not a raw low-pass projector on the whole physical sector, and it is
not the ontic definition of the carrier. It is a derived selector on the
persistent carrier:

```math
K_D(j_0)
=
K_D\cap \operatorname{Ran}\chi_{\le j_0}(D_{\mathrm{coh}}),
```

with ambient projector

```math
\mathbb H_D(j_0)=\chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D.
```

So the actual theorem is a selector-equivalence theorem:

```math
\text{active }NC\text{-coherence at threshold }j_0
\iff
\text{low spectral support of }D_{\mathrm{coh}}\text{ on }K_D.
```

At present, the lane carries two different structures that have been drifting
together:

1. **Persistent support object.**
   In
   [persistent-carrier-projector-and-coercivity.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md),
   the coherent regime `K_D` is defined intrinsically by refinement coherence
   and nontrivial loop holonomy, and `\mathbb H_D` is the orthogonal projector
   onto that regime.

2. **Thresholded selector family.**
   In
   [carrier-block-closure-and-commutator-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/carrier-block-closure-and-commutator-reduction.md),
   a localized selector family is treated as an isolated spectral object.

These are not the same role.

## Exact Negative Observation

From the current abstract carrier surfaces alone, one cannot prove the stronger
coherent-Laplacian carrier-threshold identity

```math
K_D(j_0)=K_D\cap \operatorname{Ran}\chi_{\le j_0}(D_{\mathrm{coh}})
```

or the ambient projector formula

```math
\mathbb H_D(j_0)=\chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D,
```

for the specific choice

```math
D_{\mathrm{coh}}=(I+\mathcal L_{\mathrm{coh}})^{1/2},
```

because the
active definition of `K_D` does not yet specify:

1. a first-order generator whose spectral resolution defines the coherent
   sector,
2. monotone thresholded families `K_D(j_0)`,
3. equivalence between refinement/holonomy coherence and low spectral support.

So the current carrier note gives an intrinsic coherence regime, but not a
coherent-Laplacian selector theorem.

More sharply: if one follows the current spectral-floor proof route and
identifies `K_D` with the co-closed zero eigenspace of `\Delta_D`, then the
coherent Laplacian vanishes on `K_D` and its spectral family is trivial. So a
nontrivial thresholded selector family cannot come from that
zero-mode carrier package.

## Strong Carrier-Restricted Spectral Equivalence Theorem

### Theorem S\_eq

Assume the inherited carrier package is strengthened by the following
coherent-Laplacian realization, all on the same persistent carrier `K_D`.

1. **Coherent Laplacian package.**

   The compressed coherent Laplacian

   ```math
   \mathcal L_{\mathrm{coh}}
   :=
   \mathbb H_D \mathbb P_D \Delta_D \mathbb P_D \mathbb H_D|_{K_D}
   ```

   is self-adjoint and nonnegative on `K_D`.
   Define the coherent first-order generator by

   ```math
   D_{\mathrm{coh}} := (I+\mathcal L_{\mathrm{coh}})^{1/2}.
   ```

2. **Spectral refinement realization on the carrier.**

   The admissible refinement maps restricted to `K_D` are the low-pass spectral
   truncations of `D_{\mathrm{coh}}`:

   ```math
   \pi^{\mathrm{coh}}_j = \chi_{\le j}(D_{\mathrm{coh}}).
   ```

3. **Transport compatibility.**

   Admissible overlap transport preserves `K_D` and intertwines the coherent
   spectral filtration:

   ```math
   T \chi_{\le j}(D_{\mathrm{coh}})
   =
   \chi_{\le j}(D_{\mathrm{coh}}) T
   \qquad\text{on }K_D.
   ```

4. **Thresholded active coherence.**

   A vector `Y\in K_D` is active `NC`-coherent at threshold `j_0` if and only if
   it is fixed by every refinement above that threshold and remains inside the
   persistent carrier under admissible transport:

   ```math
   \pi^{\mathrm{coh}}_j Y = Y
   \quad \forall j\ge j_0,
   \qquad
   T Y \in K_D
   \text{ for all admissible }T.
   ```

Then the thresholded selector sector equals the low spectral-support sector of
that coherent generator on `K_D`:

```math
K_D(j_0)
=
\{Y\in K_D : Y \text{ active }NC\text{-coherent at threshold }j_0\}
=
\operatorname{Ran}\chi_{\le j_0}(D_{\mathrm{coh}}).
```

Consequently, the orthogonal projector onto the selector sector is

```math
\mathbb H_D(j_0)
=
\chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D
=
\mathbb H_D\chi_{\le j_0}(D_{\mathrm{coh}}).
```

### Proof

Take `Y\in K_D`.

If `Y` is active `NC`-coherent at threshold `j_0`, then by definition it is
fixed by every carrier refinement above that threshold. In particular, taking
`j=j_0` and using the spectral refinement realization,

```math
Y=\pi^{\mathrm{coh}}_{j_0}Y=\chi_{\le j_0}(D_{\mathrm{coh}})Y.
```

So `Y\in \operatorname{Ran}\chi_{\le j_0}(D_{\mathrm{coh}})`.

Conversely, if

```math
Y\in \operatorname{Ran}\chi_{\le j_0}(D_{\mathrm{coh}}),
```

then for every `j\ge j_0`, monotonicity of the low-pass family gives

```math
\chi_{\le j}(D_{\mathrm{coh}})Y=Y.
```

Hence `Y` is fixed by every refinement above threshold. Transport
compatibility preserves `K_D` and each low spectral slice, so admissible
transport keeps `Y` in the same thresholded selector sector. Therefore `Y` is
active `NC`-coherent at threshold `j_0`.

This proves

```math
K_D(j_0)=\operatorname{Ran}\chi_{\le j_0}(D_{\mathrm{coh}})
```

as subspaces of `K_D`. The projector identity follows because both
`\mathbb H_D(j_0)` and `\chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D` are
orthogonal projectors onto the same closed subspace. `\square`

## Conditional Whole-Sector Identification

### Theorem S\_id

Assume there exists a self-adjoint first-order carrier generator

```text
D_{\mathrm{coh}}
```

on `K_D` such that:

1. **Spectral carrier filtration.**

   For each threshold `j_0`, define

   ```math
   K_D(j_0):=\operatorname{Ran}\chi_{\le j_0}(D_{\mathrm{coh}}),
   \qquad
   \mathbb H_D^{\mathrm{spec}}(j_0):=\chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D.
   ```

2. **Coherence = low spectral support.**

   A mode belongs to the active selector regime at threshold `j_0` if and only
   if it lies in `K_D(j_0)`:

   ```math
   Y \text{ is } NC\text{-coherent at threshold } j_0
   \iff
   Y\in \operatorname{Ran}\chi_{\le j_0}(D_{\mathrm{coh}}).
   ```

3. **Threshold compatibility.**

   The active abstract projector `\mathbb H_D(j_0)` is the orthogonal projector
   onto the same thresholded coherent regime.

Then

```math
\mathbb H_D(j_0)=\mathbb H_D^{\mathrm{spec}}(j_0)
=
\chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D
```

for every threshold `j_0`.

### Proof

By assumption, both `\mathbb H_D(j_0)` and `\mathbb H_D^{\mathrm{spec}}(j_0)`
are orthogonal projectors onto the same closed subspace `K_D(j_0)`. Orthogonal
projection onto a fixed closed subspace is unique. Therefore the two projectors
coincide. `\square`

## Realized Euclidean Corollary

On the realized Euclidean carrier in
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md),
if one chooses

```math
D_{\mathrm{coh}}=(I-\Delta)^{1/2}
```

and defines the coherent threshold sector by classical low spectral support,
then

```math
\mathbb H_D(j_0)=P_{\le j_0}
=
\chi_{\le j_0}((I-\Delta)^{1/2})
```

exactly.

This proves the identification only for the spectrally defined selector sector,
not for the currently abstract holonomy/refinement-defined sector.

## Consequence For The Readout Program

The readout theorem in
[carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md)
is therefore split into two layers:

1. **Spectral layer.**
   If the coherent projector is spectrally defined and `\rho` intertwines the
   functional calculi, then

   ```math
   \rho(\mathbb H_D(j_0)X)=P_{\le j_0}u
   ```

   is exact.

2. **Identification layer.**
   To use that theorem for the active lane projector, one still needs a theorem
   identifying the active abstract coherent regime with the spectral low-pass
   regime of the coherent carrier generator coming from the coherent-Laplacian
   package on `K_D`.

That second layer is the actual unresolved theorem debt.

## Honest Boundary

The current repo surfaces now prove a spectral realization of the thresholded
selector family on `K_D`, and they also prove an exact obstruction to
identifying that realization with the coherent-Laplacian route on the current
zero-mode carrier package. What they do not yet prove is the upgraded windowed
carrier theorem needed to remove that obstruction.

Concretely, the repo does not yet prove:

1. that the active carrier should be a localized coherent spectral-window
   family rather than the co-closed zero-mode carrier,
2. that on that upgraded carrier the realized spectral generator is the specific
   ```math
   (I+\mathcal L_{\mathrm{coh}})^{1/2},
   ```
3. that carrier refinements are the functional-calculus truncations of that
   coherent-Laplacian generator,
4. that the lane's abstract unthresholded `\mathbb H_D` package is exactly the
   ambient projector induced by that stronger coherent-Laplacian realization.

So the strongest honest conclusion is:

```text
the thresholded selector family is spectrally realizable on K_D;
the stronger identification with `(I+\mathcal L_{\mathrm{coh}})^{1/2}` is
ruled out on the current zero-mode carrier route and therefore requires an
explicit upgrade to a localized coherent spectral-window carrier.
```

## Interfaces

- [carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md)
- [carrier-to-classical-low-mode-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-to-classical-low-mode-export-theorem.md)
- [holonomy-refinement-projector-spectral-realization-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/holonomy-refinement-projector-spectral-realization-theorem.md)
- [coherent-laplacian-zero-mode-obstruction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/coherent-laplacian-zero-mode-obstruction-lemma.md)
- [persistent-carrier-projector-and-coercivity.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md)
- [carrier-block-closure-and-commutator-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/carrier-block-closure-and-commutator-reduction.md)
