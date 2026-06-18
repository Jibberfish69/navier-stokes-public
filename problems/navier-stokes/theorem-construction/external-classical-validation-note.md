# NS External Classical Validation Note

## Purpose

This note finalizes the external mathematical validation of the classical import
layer used by
[carrier-realization-classical-identification.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md).

Its job is not to introduce a new bridge, estimate, or closure lemma. Its job
is to record the exact external classical facts used by `D.1`, `D.2`, `D.4`,
and `D.8a`, together with the theorem-surface hypotheses under which they are
being imported.

## Certification Scope

The imported facts under review are:

1. Leray projector structure on `L^2_\sigma` and the Sobolev spaces used by
   the carrier realization.
2. Positivity, self-adjointness on `L^2_\sigma`, domain
   `H^2\cap L^2_\sigma`, and analyticity of the Stokes semigroup.
3. The bilinear map
   ```text
   H^1_\sigma \times H^1_\sigma \to H^{-1}_\sigma
   ```
   together with the divergence-free cancellation identity under periodic or
   declared whole-space decay hypotheses.
4. Exact pullback to the classical incompressible equation and pressure
   recovery after Leray projection.
5. Aubin-Lions-Simon compactness from uniform `L^2_tH^1_x` and compatible
   negative-Sobolev time-derivative bounds on `\mathbb T^3`, plus local
   compactness on `\mathbb R^3` with globalization through the admissible-energy
   tail bound.
6. Positive-time Gevrey / space analyticity of classical solutions, together
   with the analytic identity theorem on a connected time slice: open-set
   vanishing of the analytic spatial profile forces vanishing on the whole
   connected component.

## External Validation Map

### 1. Leray projector

The realized projection

```text
\mathbb P_D = \mathbb P
```

is the Helmholtz-Leray projector onto the divergence-free subspace. The imported
facts are boundedness on `L^2_\sigma` and the Sobolev spaces used by the carrier
realization, self-adjointness on `L^2_\sigma`, idempotence, and preservation of
the divergence-free subspace. These are external facts of the declared periodic
or admissible whole-space surface, not estimates proved by the class-membership
route.

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
imported facts are positivity, self-adjointness on `L^2_\sigma`, and analytic
semigroup generation on the declared surface.

External references:

- R. Temam, *Navier-Stokes Equations: Theory and Numerical Analysis*,
  Chapter III, Theorem 1.1.
- P. Constantin and C. Foias, *Navier-Stokes Equations*, Chapter I.

### 3. Nonlinearity mapping and cancellation

The realized nonlinearity

```text
N_D(X) = \mathbb P((X \cdot \nabla)X)
```

uses the imported `H^1_\sigma \times H^1_\sigma -> H^{-1}_\sigma` bilinear map
and the divergence-free cancellation

```text
\langle (X \cdot \nabla)X, X \rangle = 0.
```

The cancellation is imported only under the boundary, decay, or periodic
conditions that remove boundary terms.

External references:

- R. Temam, *Navier-Stokes Equations: Theory and Numerical Analysis*,
  Chapter I.
- P. Constantin and C. Foias, *Navier-Stokes Equations*, Chapter I, Section 2.

### 4. Exact pullback and pressure recovery

Once `\rho = \mathrm{Id}` on the realized carrier and the equation is written in
Leray-projected form, pressure recovery is exactly the Poisson reconstruction

```text
-\Delta p = \partial_i\partial_j(u_i u_j),
```

with periodic zero-mean normalization or the declared whole-space local/far
normalization. No theorem-local pressure law is gained unless the solution stays
inside those hypotheses.

External references:

- J. Leray, *Sur le mouvement d'un liquide visqueux emplissant l'espace*,
  Acta Math. 63 (1934), 193-248.
- R. Temam, *Navier-Stokes Equations: Theory and Numerical Analysis*,
  Chapter I.

### 5. Compactness on `\mathbb T^3` and `\mathbb R^3`

The realized compactness step imports Aubin-Lions-Simon only with the exact
inputs:

- a uniform local `L^2_tH^1_x` bound;
- a compatible uniform time-derivative bound in a negative Sobolev space;
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

### 6. Positive-time analyticity and open-set rigidity

The class-membership rigidity note
[mpp-open-dead-patch-rigidity-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-open-dead-patch-rigidity-theorem.md)
uses one further classical import: positive-time spatial analyticity of
classical solutions on the periodic and whole-space theorem surfaces with the
declared decay or normalization hypotheses.

Once that analyticity is granted, the identity theorem for analytic functions
gives the consequence:

```text
if u(·,t0) vanishes on a nonempty open set of a connected time slice,
then u(·,t0) vanishes on the whole connected component.
```

This is classical rigidity, not a new theorem-local invention of the MPP route.

External references:

- C. Foias and R. Temam,
  *Gevrey class regularity for the solutions of the Navier-Stokes equations*,
  J. Funct. Anal. 87 (1989), 359-369.
- X. Liu,
  *A note on Gevrey class regularity for the solutions of the Navier-Stokes
  equations*, J. Math. Anal. Appl. 167 (1992), 588-595.
- R. Temam,
  *Navier-Stokes Equations: Theory and Numerical Analysis*,
  second-edition update / bibliography remarks on Gevrey regularity.

## Certification Result

`Status: pass`

The realized-carrier note is externally valid as a theorem-grade classical model
identification surface. The imported Leray/Stokes/Aubin-Lions/pressure-recovery
facts are available only under the declared periodic or admissible whole-space
classical hypotheses listed above.

Accordingly:

1. `D.1`, `D.2`, `D.4`, and `D.8a` do not require new theorem-local lemmas at
   the level of carrier realization.
2. The referee-facing citation normalization is now carried directly by the
   realized-carrier note and the external paper surfaces; no new mathematical
   invention is required at this layer.
3. Any residual disagreement is now properly classified as external acceptance of
   the listed classical hypotheses, not as an internal proof gap in the note
   stack.
4. The positive-time analyticity import used by the MPP dead-patch rigidity note
   is likewise tied to the declared positive-time classical theorem surface
   rather than introduced as a route-local theorem burden.

## Residual Risk

The only remaining technical care point is expository:

- on `\mathbb R^3`, the globalization from local compactness to the lane's
  global `L^2` limit is now explicitly tied to the admissible energy-tail bound
  already assumed on the same theorem surface, and that tie must be preserved in
  any downstream referee presentation.

This is a presentation constraint, not a new missing estimate.
