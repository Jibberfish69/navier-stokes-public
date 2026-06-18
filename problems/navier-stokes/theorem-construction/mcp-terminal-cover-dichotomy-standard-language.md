# Terminal Cover Dichotomy In Standard PDE Language

## Statement

Let `T` be a bounded-distortion same-fluid terminal approach tail for a periodic Navier-Stokes solution. For each `(a,t) in T`, define the good-cylinder radius

```math
r_{good}(a,t)=\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m\}.
```

Then exactly one terminal alternative holds.

### Alternative A: positive-scale coherent cover

There are a terminal subtail `T'` and a number `r_*>0` such that

```math
r_{good}(a,t)\ge r_*
\qquad ((a,t)\in T').
```

Equivalently, `T'` admits a finite positive-scale family of same-fluid parabolic cylinders with controlled overlap and SCF-smallness.

### Alternative B: terminal loss of good scale

For every terminal subtail `T'`,

```math
\inf_{(a,t)\in T'}r_{good}(a,t)=0.
```

Equivalently, the same-fluid tail loses every uniform positive SCF-good scale approaching the endpoint.

## Proof

The alternatives are complementary for the nonnegative function `r_good` on terminal subtails. If a terminal subtail has a positive lower bound, Alternative A holds. If every terminal subtail has infimum zero, Alternative B holds.

In Alternative A, choose cylinders with radii in `[r_*,2r_*]` at every point of
`T'`.  In pulled-back same-fluid coordinates, a maximal `r_*/4`-separated net
on the retained compact tail gives a finite subcover with at most
`C_4(M_\sharp)(1+D_T/r_*)^4` cylinders and fixed-dilate overlap bounded by
`\Omega_4(M_\sharp)`.  This is the quantitative terminal cover theorem.

In Alternative B, there is no terminal subtail carrying a uniform positive SCF-good radius. This is the terminal coherence-loss endpoint face.

## Referee translation

Internal vocabulary:

```text
Field_avg = Alternative A
Jump_avg  = Alternative B
```

Standard PDE vocabulary:

```text
Field_avg = terminal positive-scale SCF-good same-fluid cylinder cover
Jump_avg  = terminal loss of uniform positive SCF-good scale
```

## Boundary

This dichotomy is a compactness/coherence statement for moving parabolic cylinders. It uses no endpoint readout and no pointwise tower recovery.
