# Exact-Potential Convex `V2` Simultaneous Isotropization Wall

## Status

Active theorem-facing sharpening note for the convex product-set parabolic
branch inside the exact-potential `V2` menu.

Role: replace the vague phrase "gauge / coordinate reduction `F.11d => F.11g`"
by the exact geometric theorem object needed on the installed route.

## Purpose

The convex route audit
[exact-potential-convex-product-parabolic-v2-route-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-product-parabolic-v2-route-audit.md)
already records that the localized chart equation from `F.11d`

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k
\tag{EVI.1}
```

does not by itself yield the lower-order convex-domain packet `(F.11g2)`-`(F.11g3)`.

This note sharpens the missing theorem object. The point is that a scalar gauge
does not change the principal matrix, so any route from `(EVI.1)` to
`(F.11g2)` must first isotropize the diffusion family itself.
The algebraic reduction of that isotropization step is now recorded in
[exact-potential-convex-v2-common-conformal-structure-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-common-conformal-structure-wall.md).

## Proposition `EVI.A` (the fixed-chart convex route first requires simultaneous isotropization)

Fix one retained chart block `\Omega_k\times I_k`, and let

```math
m:=\dim \Omega_k=6.
\tag{EVI.2}
```

Assume there exist:

1. one time-independent diffeomorphism
   `\Phi_k:\Omega_k\to \widehat\Omega_k`;
2. one nonvanishing scalar gauge `e^{\psi_k(y,t)}`;
3. one fixed convex target chart `\widehat\Omega_k`;

such that the transformed variable

```math
\widehat q_k(y,t)
:=
e^{\psi_k(y,t)}\,
\widetilde q_k(\Phi_k^{-1}(y),t)
\tag{EVI.3}
```

satisfies the exact Phung--Wang target packet

```math
\partial_t \widehat q_k
-\nu\Delta_y \widehat q_k
+\widehat b_k\cdot \nabla_y \widehat q_k
+\widehat c_k\widehat q_k
=
\widehat f_k
\tag{EVI.4}
```

on `\widehat\Omega_k\times I_k`.

Then the whole time family of diffusion matrices must obey the simultaneous
pushforward identity

```math
(\Phi_k)_* a_k(\cdot,t)=\nu I
\qquad\text{for every }t\in I_k,
\tag{EVI.5}
```

where

```math
(\Phi_k)_* a_k(y,t)
:=
\frac{D\Phi_k(\zeta)\,a_k(\zeta,t)\,D\Phi_k(\zeta)^\top}
{|\det D\Phi_k(\zeta)|}
\Big|_{\zeta=\Phi_k^{-1}(y)}.
\tag{EVI.6}
```

Equivalently, if

```math
g_{k,t}
:=
(\det a_k(\cdot,t))^{\frac1{m-2}}\,a_k(\cdot,t)^{-1},
\qquad m=6,
\tag{EVI.7}
```

then every slice metric `g_{k,t}` is conformally flat and the entire time family
shares one common isotropizing chart `\Phi_k`.

### Proof

Multiplication by the scalar gauge `e^{\psi_k}` changes only first-order and
zeroth-order coefficient terms, so it does not alter the principal second-order
coefficient. A time-independent spatial diffeomorphism changes the principal
matrix by the determinant-normalized pushforward displayed in `(EVI.6)`.
Therefore the exact target `-\nu\Delta_y` in `(EVI.4)` forces the pointwise
identity `(EVI.5)`.

For divergence-form scalar operators in dimension `m\ge 3`, the conductivity
matrix determines the associated metric by

```math
g=(\det a)^{\frac1{m-2}}a^{-1}.
\tag{EVI.8}
```

So `(EVI.5)` says exactly that each slice metric `g_{k,t}` is conformal to the
flat Euclidean metric in the same coordinates `y=\Phi_k(\zeta)`. That is the
simultaneous isotropization statement. ∎

## Corollary `EVI.B` (the fixed-chart exact target forces diffusion rigidity)

Under the hypotheses of `EVI.A`, the localized diffusion family is actually
rigid on the whole retained window:

```math
a_k(\cdot,t)\equiv a_k(\cdot,t')
\qquad\text{for every }t,t'\in I_k.
\tag{EVI.8a}
```

### Proof

Equation `(EVI.5)` says that the same pushforward map `(\Phi_k)_*` sends every
slice `a_k(\cdot,t)` to the same constant matrix `\nu I`. Since `(\Phi_k)_*` is
invertible with inverse pullback by `\Phi_k`, each `a_k(\cdot,t)` equals the
same pulled-back tensor `\Phi_k^*(\nu I)`. ∎

## Proposition `EVI.C` (constant diffusion is stronger than mere isotropization)

Assume only that one time-independent diffeomorphism `\Phi_k` isotropizes the
family to scalar diffusion:

```math
(\Phi_k)_* a_k(\cdot,t)=\gamma_k(\cdot,t)\,I
\qquad\text{for every }t\in I_k.
\tag{EVI.9}
```

Then the transformed equation takes the form

```math
\partial_t u_k
-\nabla_y\cdot(\gamma_k\nabla_y u_k)
+\widetilde b_k\cdot \nabla_y u_k
+\widetilde c_k u_k
=
\widetilde f_k.
\tag{EVI.10}
```

So even after isotropization, the installed convex route has **not** yet reached
the exact packet `(F.11g2)` unless one has the stronger constant-diffusion
identity

```math
\gamma_k\equiv \nu
\tag{EVI.11}
```

or one adds a separate space-time normalization theorem converting
`(EVI.10)` to `(F.11g2)` on a fixed product chart.

### Proof

Equation `(EVI.10)` is just the scalar-isotropic specialization of the
divergence-form operator after the spatial pushforward. Since scalar gauges do
not alter the principal symbol, they cannot replace the scalar matrix
`\gamma_k I` by the constant matrix `\nu I`. Therefore `(F.11g2)` needs the
stronger constant-diffusion conclusion `(EVI.11)` or an additional
normalization theorem beyond isotropization. ∎

## Corollary `EVI.D` (the current convex `V2` wall)

On the installed exact-potential route, the convex product-set parabolic branch
is now reduced to the following three-step theorem packet:

```math
\boxed{
\texttt{simultaneous isotropization of the }6\texttt{D diffusion family on one fixed chart}
}
\Longrightarrow
\boxed{
\texttt{fixed-chart diffusion rigidity}
}
\Longrightarrow
\boxed{
\texttt{constant-diffusion scalar flattening on one fixed product domain}
}
\Longrightarrow
\boxed{
\texttt{Phung--Wang import for }V2
}.
\tag{EVI.12}
```

The current `F.11d` hypotheses provide only uniform ellipticity and
`W^{1,\infty}` coefficient control. They do **not** provide:

1. conformal flatness of each slice metric `g_{k,t}`;
2. one common isotropizing chart for all `t\in I_k`;
3. the fixed-chart diffusion rigidity `(EVI.8a)`;
4. one theorem turning a scalar isotropic family `\gamma_k I` into the exact
   constant diffusion packet `(F.11g2)`.

So the convex route remains open upstream of the Phung--Wang import.

## Interpretation

The honest geometric wall is now sharper than "find a nicer chart." On the
fixed-chart convex route, one first needs simultaneous isotropization of the
time family `a_k(\cdot,t)`. Equivalently, by
[exact-potential-convex-v2-common-conformal-structure-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-common-conformal-structure-wall.md),
the determinant-normalized anisotropy tensor must already be time-rigid, or the
associated metric family must already share one common conformal structure.

If instead one allows a time-dependent chart `\Phi_{k,t}`, then
`\partial_t(\widetilde q_k\circ \Phi_{k,t}^{-1})` introduces an extra transport
term and potentially a moving observation chart. That is a different theorem
route, not the installed fixed-domain packet `(F.11g2)`-`(F.11g3)`.

The geometric inference above is exactly the determinant-normalized
pushforward `(EVI.6)` together with the metric definition `(EVI.8)`.
Greenleaf--Lassas--Uhlmann identify the conductivity-metric correspondence in
dimensions `n\ge 3`, and Kolehmainen--Lassas--Ola identify isotropic
pushforwards in dimensions three and higher by Cotton--York / Weyl diagnostics.
Here that support is used only to sharpen the missing theorem object; it does
not discharge it.
