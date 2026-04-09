# Carrier Frequency-Aligned Readout Theorem

## Status

This note isolates the first export interface in exact theorem form:

```text
selector-localized coherent readout at scale j_0
\longrightarrow
classical low-frequency band at scale j_0.
```

It is the structural prerequisite for the low-mode export program. It does not
prove the full carrier-to-classical low-mode export theorem. It proves the
readout identity under the exact functional-calculus compatibility that the
carrier route would need in order for the rest of the export program to make
sense.

The identification of the lane's active abstract coherent projector with this
spectral low-pass projector is isolated separately in
[active-coherent-projector-spectral-identification-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/active-coherent-projector-spectral-identification-theorem.md).
The spectral realization of the thresholded selector family itself is
proved in
[holonomy-refinement-projector-spectral-realization-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/holonomy-refinement-projector-spectral-realization-theorem.md).
The ontology correction behind this readout step is recorded in
[carrier-ontology-and-selector-correction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-ontology-and-selector-correction-note.md):
the carrier is the persistent coherent support `K_D`, while thresholded
projectors are derived selectors on that support or on its classical readout.

## Purpose

The carrier-to-classical export route only becomes meaningful if the
thresholded selector family genuinely lands on the classical low modes and not
on some architecture-dependent surrogate. The right way to make that statement
exact is to phrase both projectors through the same spectral
multiplier family and require the readout map to intertwine the corresponding
functional calculi on the persistent carrier. This does not promote the
thresholded family to ontology; it only treats it as selector machinery acting
on an already-given coherent support object.

## Fixed Setup

Let

```text
\rho : \mathfrak R \to L^2_\sigma(\mathbb R^3)
```

be the classical readout map and define

```text
u := \rho(X).
```

Define also the coherent readout

```text
u_{\mathrm{coh}} := \rho(\mathbb H_D X).
```

Let `\Lambda_{\mathrm{cl}}` denote the classical first-order frequency
generator on the Euclidean side, taken in the inhomogeneous form

```text
\Lambda_{\mathrm{cl}} := (I-\Delta)^{1/2}.
```

Let `\chi_{\le 0}` be a fixed smooth low-pass symbol and define the rescaled
family

```text
\chi_{\le j_0}(\lambda) := \chi_{\le 0}(2^{-j_0}\lambda).
```

Define the classical low-pass projector by

```math
P_{\le j_0} := \chi_{\le j_0}(\Lambda_{\mathrm{cl}}).
```

On the carrier side, let `K_D` denote the persistent carrier, let
`D_{\mathrm{coh}}` denote the coherent first-order spectral generator on
`K_D`, and define the thresholded selector family by

```math
\mathbb H_D(j_0) := \chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D,
```

where the spectral multiplier is extended by zero on `K_D^\perp`.

## Theorem R\_freq

Assume:

1. **Exact spectral intertwining on a common core.**

   There is a dense common core `\mathcal C_0 \subseteq \mathfrak R` such that

   ```math
   \rho(D_{\mathrm{coh}}X)=\Lambda_{\mathrm{cl}}\rho(X)
   \qquad
   \forall X\in \mathcal C_0.
   ```

2. **Compatibility of functional calculi.**

   The above intertwining extends to bounded Borel functional calculus for the
   chosen multiplier family:

   ```math
   \rho\big(m(D_{\mathrm{coh}})X\big)=m(\Lambda_{\mathrm{cl}})\rho(X)
   ```

   for every bounded Borel multiplier `m` in the admissible low-pass family.

Then for every dyadic threshold `j_0`,

```math
\rho(\mathbb H_D(j_0)X)=P_{\le j_0}u_{\mathrm{coh}},
\qquad
u_{\mathrm{coh}}=\rho(\mathbb H_D X).
```

In particular, the selector-localized coherent readout at threshold `j_0` is
frequency aligned with the classical low-mode band at the same threshold.

## Proof

By definition,

```math
\mathbb H_D(j_0)=\chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D.
```

Apply the functional-calculus intertwining identity with

```text
m=\chi_{\le j_0}.
```

Then

```math
\rho(\mathbb H_D(j_0)X)
=
\rho\big(\chi_{\le j_0}(D_{\mathrm{coh}})\mathbb H_D X\big)
=
\chi_{\le j_0}(\Lambda_{\mathrm{cl}})\rho(\mathbb H_D X)
=
P_{\le j_0}u_{\mathrm{coh}}.
```

This is exactly the required identity. `\square`

## Realized Euclidean Corollary

On the realized Euclidean carrier in
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md),
one has

```text
\rho=\mathrm{Id},
\qquad
D_{\mathrm{coh}}=\Lambda_{\mathrm{cl}}=(I-\Delta)^{1/2}.
```

Therefore

```math
\rho(\mathbb H_D(j_0)X)=P_{\le j_0}u_{\mathrm{coh}}
```

holds exactly whenever the coherent projector is chosen as the corresponding
spectral low-pass projector.

## What This Proves And What It Does Not

This note proves the carrier-restricted readout theorem in the precise spectral
form that the export route needs as its first structural layer.

It does **not** prove that the lane's active selector family
`\mathbb H_D(j_0)` is already known to equal this carrier-restricted spectral
selector on the abstract carrier. That remains an additional identification
problem.

So the exact status split is:

1. if the selector-localized coherent readout is defined by spectral low-pass
   functional calculus compatible with `\rho`, then the coherent readout
   identity is exact;
2. if the coherent support is defined only as an abstract support block or
   sector with no spectral readout theorem, then frequency alignment remains
   open.

## Strategic Meaning

This is the first export step because it decides whether the carrier program is
actually aiming at the same low-frequency object as the Euclidean route.

If the selector-localized coherent readout is spectrally aligned, then the
later identification step can ask whether `u_{\mathrm{coh}}` is exactly the
classical low-mode part of `u`, and the operator-bound and leakage-export
questions are well-posed. If not, the export program collapses before any
transport estimate matters.

## Interfaces

- [carrier-to-classical-low-mode-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-to-classical-low-mode-export-theorem.md)
- [holonomy-refinement-projector-spectral-realization-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/holonomy-refinement-projector-spectral-realization-theorem.md)
- [carrier-realization-classical-identification.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md)
- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)
