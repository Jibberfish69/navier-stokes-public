# Exact-Potential Bounded-Chart Stokes `V2` Route Audit

## Status

Active theorem-facing audit note for the stronger adiabatic continuation on the
exact-potential branch.

Role: test the first `V2` import route after `EP.11d`, namely the bounded-chart
non-stationary Stokes route from `(EP.12a1)`-`(EP.12a2)`.

## Purpose

The note
[exact-potential-v2-import-menu-after-ep11d.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-import-menu-after-ep11d.md)
records that after `EP.11d`, the stronger adiabatic continuation stops at a
three-way `V2` operator-class choice.

This note audits the first branch in that menu:

```math
\texttt{bounded-chart Stokes route }(EP.12a1)\texttt{--}(EP.12a2).
\tag{EVS.0}
```

## Audit Result

On the current installed localization, the bounded-chart Stokes route is **not**
yet reached.

What is on disk is Proposition `F.11d`: after cutoff localization

```math
q_k:=\chi_k W_J,
\tag{EVS.1}
```

the localized pair defect satisfies

```math
\partial_t q_k+V_J\cdot \nabla_{x,y}q_k-\nu\Delta_{x,y}q_k
=
f_k^{hi}+f_k^{cut},
\tag{EVS.2}
```

and after chart normalization,

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k^{hi}+\widetilde f_k^{cut}+\widetilde f_k^{chart},
\tag{EVS.3}
```

with uniformly elliptic variable diffusion `a_k` and coefficient class
`(F.11d12)`-`(F.11d13)`.

By contrast, the Stokes import route `EP.12a` requires a localized defect
variable satisfying

```math
\partial_t q_k-\nu\Delta q_k+\nabla \pi_k = F_k,
\qquad
\nabla\!\cdot q_k=0,
\qquad
q_k|_{\partial\Omega_k}=0.
\tag{EVS.4}
```

The current installed route does not yet supply:

1. a divergence-free repaired localized defect variable on the selector chart;
2. a pressure decomposition putting the chart-localized defect into the exact
   Stokes form `(EVS.4)`;
3. a theorem identifying the variable-diffusion chart equation `(EVS.3)` with a
   bounded-chart non-stationary Stokes system.

So `EP.12a` is still conditional.

## Corollary `EVS.A` (the bounded-chart Stokes route is not yet closed on the installed localization)

On the current exact-potential stronger adiabatic branch, Proposition `F.11d`
does not by itself place the localized defect in the bounded-chart Stokes class
required by `EP.12a`.

Therefore the Stokes import route remains open at one new localization theorem.

### Proof

`F.11d` gives the cutoff-localized defect equation `(EVS.2)` and the chart
equation `(EVS.3)`. These are variable-diffusion divergence-form equations with
explicit cutoff and chart source terms.

`EP.12a`, however, assumes the stronger Stokes packet `(EVS.4)`, including a
divergence-free constraint and an explicit pressure term. No on-disk theorem
currently converts `(EVS.3)` into `(EVS.4)`. So the Stokes import route is not
yet available from the installed localization alone. ∎

## Interpretation

This bounded self-attempt clarifies the exact remaining debt on the Stokes
branch:

```math
\boxed{\texttt{current localization }F.11d}
\not\Longrightarrow
\boxed{\texttt{bounded-chart Stokes packet }EP.12a}.
\tag{EVS.5}
```

If one wants to keep the Stokes route alive, the missing theorem is now clear:

```math
\boxed{\texttt{Stokes-preserving localization / chart theorem}}
\Longrightarrow
\boxed{\texttt{EP.12a usable for }V2}.
\tag{EVS.6}
```

Otherwise the honest fallback is to leave the Stokes branch and use one of the
other two `V2` routes already isolated in
[exact-potential-v2-import-menu-after-ep11d.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-import-menu-after-ep11d.md):

1. the convex product-set parabolic route through `(F.11g2)`-`(F.11g3)`;
2. the analytic-coefficient route.

This note does **not** choose that fallback. It records that the first bounded
self-attempt on the Stokes branch does not close on the installed localization.
