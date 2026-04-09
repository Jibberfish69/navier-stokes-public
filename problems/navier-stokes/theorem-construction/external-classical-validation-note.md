# NS External Classical Validation Note

## Purpose

This note finalizes the external mathematical validation of the classical import
layer used by
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md).

Its job is not to introduce a new bridge, estimate, or closure lemma. Its job
is to certify that the realized-carrier facts used by `D.1`, `D.2`, `D.4`, and
`D.8a` are standard classical Navier-Stokes infrastructure on the declared
Euclidean theorem surface.

## Certification Scope

The imported facts under review are:

1. Leray projector structure on `L^2_\sigma` and `H^s_\sigma`.
2. Positivity, self-adjointness, and analyticity of the Stokes semigroup.
3. The bilinear map
   ```text
   H^1_\sigma \times H^1_\sigma \to H^{-1}_\sigma
   ```
   together with the standard cancellation identity.
4. Exact pullback to the classical incompressible equation and pressure
   recovery after Leray projection.
5. Aubin-Lions-Simon compactness on `\mathbb T^3` and local compactness on
   `\mathbb R^3`, with globalization through the admissible-energy tail bound.

## External Validation Map

### 1. Leray projector

The realized projection

```text
\mathbb P_D = \mathbb P
```

is the standard Helmholtz-Leray projector onto the divergence-free subspace.
The boundedness, self-adjointness, idempotence, and Sobolev preservation used in
the realized-carrier theorem are standard classical facts.

External references:

- J. Leray, *Sur le mouvement d'un liquide visqueux emplissant l'espace*,
  Acta Math. 63 (1934), 193-248.
- R. Temam, *Navier-Stokes Equations: Theory and Numerical Analysis*,
  Chapter I and Chapter III.
- P. Constantin and C. Foias, *Navier-Stokes Equations*, Chapter I.

### 2. Stokes generator and analytic semigroup

The realized operator

```text
A = -\mathbb P \Delta
```

with domain `H^2 \cap L^2_\sigma` is the classical Stokes operator. The
realized-carrier use of positivity, self-adjointness, and analytic semigroup
generation is mathematically standard and does not introduce a new theorem-local
burden.

External references:

- R. Temam, *Navier-Stokes Equations: Theory and Numerical Analysis*,
  Chapter III, Theorem 1.1.
- P. Constantin and C. Foias, *Navier-Stokes Equations*, Chapter I.

### 3. Nonlinearity mapping and cancellation

The realized nonlinearity

```text
N_D(X) = \mathbb P((X \cdot \nabla)X)
```

uses the standard `H^1_\sigma \times H^1_\sigma -> H^{-1}_\sigma` bilinear map
and the divergence-free cancellation

```text
\langle (X \cdot \nabla)X, X \rangle = 0.
```

These are classical NS identities and are correctly imported as infrastructure,
not as new route lemmas.

External references:

- R. Temam, *Navier-Stokes Equations: Theory and Numerical Analysis*,
  Chapter I.
- P. Constantin and C. Foias, *Navier-Stokes Equations*, Chapter I, Section 2.

### 4. Exact pullback and pressure recovery

Once `\rho = \mathrm{Id}` on the realized carrier and the equation is written in
Leray-projected form, pressure recovery is exactly the classical Poisson
reconstruction

```text
-\Delta p = \nabla \cdot ((u \cdot \nabla)u),
```

unique up to an additive constant. No new theorem-local derivation is needed
beyond the classical Helmholtz decomposition and the projected equation itself.

External references:

- J. Leray, *Sur le mouvement d'un liquide visqueux emplissant l'espace*,
  Acta Math. 63 (1934), 193-248.
- R. Temam, *Navier-Stokes Equations: Theory and Numerical Analysis*,
  Chapter I.

### 5. Compactness on `\mathbb T^3` and `\mathbb R^3`

The realized compactness step uses the standard Aubin-Lions-Simon compactness
framework:

- compact embedding `H^1_\sigma \hookrightarrow L^2_\sigma` on `\mathbb T^3`;
- local compactness on `\mathbb R^3`;
- globalization on the fixed admissible data class through the lane's uniform
  energy-tail control.

The theorem-local work is therefore not a new compactness lemma but the honest
verification that the lane has the required bounds and tail control on the same
classical surface.

External references:

- J. Simon, *Compact sets in the space `L^p(0,T;B)`*,
  Ann. Mat. Pura Appl. 146 (1987), 65-96.
- F. Boyer and P. Fabrie,
  *Mathematical Tools for the Study of the Incompressible Navier-Stokes
  Equations and Related Models*, Theorem II.5.16.

## Certification Result

`Status: pass`

The realized-carrier note is externally valid as a theorem-grade classical model
identification surface. The imported Leray/Stokes/Aubin-Lions/pressure-recovery
facts are standard classical NS facts on the declared Euclidean theorem surface.

Accordingly:

1. `D.1`, `D.2`, `D.4`, and `D.8a` do not require new theorem-local lemmas at
   the level of carrier realization.
2. The referee-facing citation normalization is now carried directly by the
   realized-carrier note and the external paper surfaces; no new mathematical
   invention is required at this layer.
3. Any residual disagreement is now properly classified as external acceptance of
   standard imports, not as an internal proof gap in the note stack.

## Residual Risk

The only remaining technical care point is expository:

- on `\mathbb R^3`, the globalization from local compactness to the lane's
  global `L^2` limit is now explicitly tied to the admissible energy-tail bound
  already assumed on the same theorem surface, and that tie must be preserved in
  any downstream referee presentation.

This is a presentation constraint, not a new missing estimate.
