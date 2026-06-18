# Exact-Potential `F.11d` Static-Diffusion Audit

## Status

Active theorem-facing audit note for the exact-potential `V2` localization
packet.

Role: check whether the installed `F.11d` chart equation should really be read
as a time-dependent variable-diffusion family, or as a fixed diffusion matrix
with lower-order chart/drift terms.

## Purpose

Several recent exact-potential `V2` notes inherited the theorem-facing readout

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k,
\tag{EFS.1}
```

with a principal coefficient previously written schematically as

```math
a_k=\nu G_k+a_k^{chart},
\qquad
G_k:=D\Theta_kD\Theta_k^\top,
\tag{EFS.2}
```

and with `a_k^{chart}` allowed to depend on `V_J`.

This note audits that readout against the proof line of `F.11d`, which says the
chart equation is the exact pushforward of the Euclidean Laplacian under a
**time-independent** `C^2` diffeomorphism.

## Proposition `EFS.A` (time-independent chart pushforward leaves the principal diffusion static)

Let `\Theta_k:U_k\to\Omega_k` be time-independent, and let

```math
\widetilde q_k(\zeta,t):=q_k(\Theta_k^{-1}(\zeta),t).
\tag{EFS.3}
```

If `q_k` satisfies

```math
\partial_t q_k+V_J\cdot\nabla_{x,y}q_k-\nu\Delta_{x,y}q_k
=
f_k^{hi}+f_k^{cut},
\tag{EFS.4}
```

then the theorem-facing pushforward takes the form

```math
\partial_t \widetilde q_k
-\nu\,J_k^{-1}\partial_{\zeta_\alpha}
\big(J_k g_k^{\alpha\beta}\partial_{\zeta_\beta}\widetilde q_k\big)
+\widetilde b_k\cdot \nabla_\zeta \widetilde q_k
+\widetilde c_k\widetilde q_k
=
\widetilde f_k^{hi}+\widetilde f_k^{cut},
\tag{EFS.5}
```

where:

1. with `\Psi_k=\Theta_k^{-1}`,
   `J_k(\zeta)=|\det D_\zeta\Psi_k(\zeta)|` and
   `g_k^{\alpha\beta}(\zeta)=
   \partial_{x_i}\Theta_k^\alpha(\Psi_k(\zeta))
   \partial_{x_i}\Theta_k^\beta(\Psi_k(\zeta))`, so
   `J_kg_k^{\alpha\beta}` depends only on the chart `\Theta_k`;
2. the lower-order coefficients `\widetilde b_k,\widetilde c_k` depend
   algebraically on `D\Theta_k`, `D^2\Theta_k`, and `V_J`;
3. no `V_J`-dependent term enters the second-order diffusion matrix.

### Proof

The time derivative is unchanged because `\Theta_k` is time-independent. The
drift term `V_J\cdot\nabla q_k` remains first-order after composition with
`\Theta_k^{-1}`. The Laplacian term is the only second-order part, and its
pushforward is exactly

```math
(\Delta_x q_k)\circ\Psi_k
=
J_k^{-1}\partial_{\zeta_\alpha}
\big(J_k g_k^{\alpha\beta}\partial_{\zeta_\beta}\widetilde q_k\big).
```

Therefore the principal coefficient `J_kg_k^{\alpha\beta}` depends only on
`\Theta_k`, not on `V_J`. Any derivatives of `J_k` or `g_k^{\alpha\beta}` are
chart lower-order coefficient terms, not new forcing and not time-dependent
principal diffusion. ∎

## Corollary `EFS.B` (the active convex `V2` wall should be read as static diffusion)

On the theorem-facing exact-potential route, the honest `F.11d` operator-class
wall is:

```math
\boxed{
\partial_t \widetilde q_k
-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta \widetilde q_k)
+\widetilde b_k\cdot \nabla_\zeta \widetilde q_k
+\widetilde c_k\widetilde q_k
=
\widetilde f_k^{hi}+\widetilde f_k^{cut}
}
\tag{EFS.6}
```

with fixed diffusion matrix `\nu G_k`.

So the convex Phung--Wang route no longer needs a theorem controlling a
time-dependent diffusion family. It needs only:

1. one static flattening / isotropization theorem for the fixed chart metric
   `G_k`;
2. one admissibility theorem for the lower-order coefficient/source packet after
   that flattening.

## Interpretation

This audit changes the active exact-potential `V2` wall in an important way.
The older notes about time-rigid normalized anisotropy, common conformal
structure of the whole diffusion family, and normalized chart-defect rigidity
remain useful as conditional analyses of the stronger variable-diffusion
packaging written in `(EFS.2)`. But on the theorem-facing readout justified by
the proof line of `F.11d`, the live convex wall is smaller:

```math
\boxed{
\texttt{static chart-metric flattening of }G_k
}
\Longrightarrow
\boxed{
\texttt{lower-order admissibility on the flattened convex chart}
}
\Longrightarrow
\boxed{
\texttt{Phung--Wang import for }V2
}.
\tag{EFS.7}
```
