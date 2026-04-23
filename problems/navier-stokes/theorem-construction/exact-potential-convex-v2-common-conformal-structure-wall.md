# Exact-Potential Convex `V2` Common Conformal-Structure Wall

## Status

Active theorem-facing reduction note for the convex product-set parabolic branch
inside the exact-potential `V2` menu.

Role: reduce the simultaneous-isotropization burden to an exact rigidity law
for the diffusion family itself.

## Purpose

The note
[exact-potential-convex-v2-simultaneous-isotropization-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-simultaneous-isotropization-wall.md)
already shows that the fixed-chart Phung--Wang route needs simultaneous
isotropization of the `6`-dimensional diffusion family `a_k(\cdot,t)`.

This note sharpens that requirement algebraically. A time-independent chart
isotropizing all slices to scalar diffusion is equivalent to saying that the
entire diffusion family has one fixed anisotropy shape and varies only by a
scalar conformal factor.

## Proposition `ECC.A` (fixed-chart scalar isotropization forces one common anisotropy shape)

Fix one retained chart block `\Omega_k\times I_k`, let `m:=\dim\Omega_k=6`, and
assume there exists one time-independent diffeomorphism
`\Phi_k:\Omega_k\to\widehat\Omega_k` such that

```math
(\Phi_k)_* a_k(\cdot,t)=\gamma_k(\cdot,t)\,I
\qquad\text{for every }t\in I_k
\tag{ECC.1}
```

for some scalar family `\gamma_k>0`.

Then there exist:

1. one fixed positive-definite tensor field `a_k^{base}` on `\Omega_k`;
2. one positive scalar family `\vartheta_k(\cdot,t)`;

such that

```math
a_k(\cdot,t)=\vartheta_k(\cdot,t)\,a_k^{base}
\qquad\text{for every }t\in I_k.
\tag{ECC.2}
```

In fact one may take

```math
a_k^{base}(x)
:=
|\det D\Phi_k(x)|\,
D\Phi_k(x)^{-1}D\Phi_k(x)^{-T},
\tag{ECC.3}
```

and

```math
\vartheta_k(x,t):=\gamma_k(\Phi_k(x),t).
\tag{ECC.4}
```

### Proof

The conductivity pushforward identity is

```math
(\Phi_k)_* a_k(y,t)
=
\frac{D\Phi_k(x)\,a_k(x,t)\,D\Phi_k(x)^\top}
{|\det D\Phi_k(x)|}
\Big|_{x=\Phi_k^{-1}(y)}.
\tag{ECC.5}
```

If `(ECC.1)` holds, multiply by `D\Phi_k^{-1}` on the left and
`D\Phi_k^{-T}` on the right to recover

```math
a_k(x,t)
=
\gamma_k(\Phi_k(x),t)\,
|\det D\Phi_k(x)|\,
D\Phi_k(x)^{-1}D\Phi_k(x)^{-T}.
\tag{ECC.6}
```

That is exactly `(ECC.2)` with `(ECC.3)`-`(ECC.4)`. ∎

## Corollary `ECC.B` (normalized anisotropy is time-rigid)

Define the normalized anisotropy tensor

```math
\mathfrak A_{k,t}
:=
(\det a_k(\cdot,t))^{-1/m}\,a_k(\cdot,t),
\qquad m=6.
\tag{ECC.7}
```

Under `(ECC.1)`, the normalized anisotropy is independent of time:

```math
\mathfrak A_{k,t}\equiv \mathfrak A_k^{base}
\qquad\text{for every }t\in I_k,
\tag{ECC.8}
```

where

```math
\mathfrak A_k^{base}
:=
(\det a_k^{base})^{-1/m}\,a_k^{base}.
\tag{ECC.9}
```

### Proof

Insert `(ECC.2)` into `(ECC.7)`. Since
`\det(\vartheta_k a_k^{base})=\vartheta_k^m\det a_k^{base}`, the scalar factor
`\vartheta_k` cancels:

```math
(\det a_k(\cdot,t))^{-1/m}\,a_k(\cdot,t)
=
(\det a_k^{base})^{-1/m}\,a_k^{base}.
\tag{ECC.10}
```

So the normalized anisotropy shape is time-rigid. ∎

## Corollary `ECC.C` (common conformal structure of the associated metrics)

Let

```math
g_{k,t}:=(\det a_k(\cdot,t))^{\frac1{m-2}}\,a_k(\cdot,t)^{-1},
\qquad m=6.
\tag{ECC.11}
```

Under `(ECC.1)`, there exists one fixed metric `h_k` on `\Omega_k` and one
positive scalar family `\lambda_k(\cdot,t)` such that

```math
g_{k,t}=\lambda_k(\cdot,t)\,h_k
\qquad\text{for every }t\in I_k.
\tag{ECC.12}
```

Thus the full time family shares one common conformal structure.

### Proof

From `(ECC.2)`,

```math
g_{k,t}
=
(\det(\vartheta_k a_k^{base}))^{\frac1{m-2}}
(\vartheta_k a_k^{base})^{-1}
=
\vartheta_k^{\frac{2}{m-2}}
(\det a_k^{base})^{\frac1{m-2}}
(a_k^{base})^{-1}.
\tag{ECC.13}
```

So `(ECC.12)` holds with

```math
h_k:=(\det a_k^{base})^{\frac1{m-2}}(a_k^{base})^{-1},
\qquad
\lambda_k:=\vartheta_k^{\frac{2}{m-2}}.
\tag{ECC.14}
```

∎

## Corollary `ECC.D` (the exact convex-route reduction)

On the installed fixed-chart convex `V2` route, simultaneous isotropization is
equivalent to the following exact rigidity burden:

```math
\boxed{
\texttt{the normalized anisotropy tensor }\mathfrak A_{k,t}
\texttt{ is time-rigid on each retained chart}
}
\Longleftrightarrow
\boxed{
\texttt{the metric family }g_{k,t}\texttt{ shares one common conformal structure}
}.
\tag{ECC.15}
```

So the convex route can now be read as

```math
\boxed{
\texttt{common conformal-structure rigidity of the diffusion family}
}
\Longrightarrow
\boxed{
\texttt{constant-diffusion scalar flattening on one fixed product domain}
}
\Longrightarrow
\boxed{
\texttt{Phung--Wang import for }V2
}.
\tag{ECC.16}
```

The current `F.11d` packet gives only uniform ellipticity and bounded first
derivatives of the coefficients. It does **not** provide this time-rigid common
conformal-structure law. On the installed variables this rigidity is sharpened
further in
[exact-potential-convex-v2-normalized-chart-defect-rigidity.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-normalized-chart-defect-rigidity.md),
which rewrites the burden as time-rigidity of the determinant-normalized chart
defect from `a_k=\nu G_k+a_k^{chart}`.

## Interpretation

This is a better theorem-facing shape than "find a chart." The first real
convex-route burden is that the time family `a_k(\cdot,t)` must already have
one fixed anisotropy shape after determinant normalization. Only then does a
time-independent scalar-isotropizing chart even make sense.

The exact target `-\nu\Delta` from
[exact-potential-convex-v2-simultaneous-isotropization-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-simultaneous-isotropization-wall.md)
is stronger still: it collapses the remaining scalar conformal factor and forces
full diffusion rigidity on the retained window.
