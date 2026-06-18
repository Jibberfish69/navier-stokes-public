# `PD.70z` Cycle-Exact Normal-Covector Route

## Status

Parallel theorem note for the cocycle path. This note does **not** replace the
live `PD.70` packet; it records the sharpest independent continuation of the
cycle-exact branch presently visible on disk.

## Purpose

The synchronized pair-defect packet already proves that on the cycle-exact
branch

```math
D_J=\nabla_{\!graph}\alpha_J
\Longrightarrow
\mathcal E_J^{loop}(I)=0,
\tag{CN.1}
```

so the residual closure collapses to

```math
\boxed{
\mathcal E_J^{dir}(I)\le C_{\mathrm{CN2}}\mathcal E_J^{obs}(I).
}
\tag{CN.2}
```

The remaining ambiguity is not the loop term. It is the concrete realization of
the directional defect `\Xi_J`. This note isolates the cleanest cocycle-side
continuation of that problem.

## Constitutive Import

This route is a branch consumer of the same MPP carrier. It is not an
autonomous normal-covector semantics engine.

It also sits strictly on the Law-2-survivor side. By
[mpp-law2-survivor-reduction-to-one-field-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law2-survivor-reduction-to-one-field-frontier.md),
the dead-endpoint line must already have been reduced away before this normal-covector
continuation is mathematically relevant.

Its constitutive import is:

1. the one-field law that keeps neighboring towers inside one smooth field;
2. the pressure-viscosity participation carrier, exported on a transported good
   family through the CM-side supplier budget `\mathcal E_J^{cm}`;
3. the incompressible packing side, which keeps the transported family and
   bundle geometry inside one common deformation class.

So the honest missing theorem on this branch is not just “observe
`\Theta_J^\perp` from `W_J`.” It is the normal-covector specialization of the
fused supplier splice:

```math
\mathcal E_J^{cm}
+
\mathfrak R_J^{\perp}
\Longrightarrow
\mathfrak e_{J,\perp}^{cm}
\Longrightarrow
\Theta_J^\perp.
\tag{CN.2a}
```

That branch-specific splice is now written explicitly in
[mpp-normal-covector-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-normal-covector-witness-to-readout-theorem.md).

So the present note is a consumer packet downstream of that splice, not the
earliest constitutive start of the normal-covector branch.

## Why the scalar cocycle still stops short

The current scalar chart-label witness in
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md)
uses a covector field `\eta_J(a)` satisfying

```math
|\eta_J(a)\cdot v|\ge c_\eta |v|
\qquad
\text{for all }v\in N_a.
\tag{CN.3}
```

That is enough to witness nonshadowing once pair gaps are already known, but it
does **not** identify the distance of a unit pair direction `e_{ab}` to the
expanding plane `N_a`: one covector that is merely nondegenerate on `N_a` need
not annihilate `N_a^\perp`.

So the cycle-exact cocycle route does not chase another scalar label.
On the present `3D` rank-two bundle branch, the correct cocycle refinement is a
single **bundle-normal covector**; any finite normal coframe alternative
collapses to the same one-dimensional normal row space.

## Normal-covector refinement

The transported bundle `a\mapsto N_a` is already part of the installed
deformation/spectral packet. So on the current 3D branch, existence of a normal
covector is not a new theorem burden; it is a measurable linear-algebra
consequence of the bundle itself.

### Proposition TPS-measurable-normal-covector-selection

Let `a\mapsto N_a` be a measurable rank-two bundle with orthogonal projectors
`P_{N_a}`. Then there exists a measurable unit normal covector `n_J(a)` such
that

```math
n_J(a)\in (\mathbb R^3)^*,
\qquad
|n_J(a)|=1,
\qquad
\ker n_J(a)=N_a.
\tag{CN.4}
```

**Proof.**
Write `R_a:=I-P_{N_a}`. Since `N_a` has rank two, `R_a` is a measurable rank-one
orthogonal projector. For the standard basis `e_1,e_2,e_3`,

```math
\sum_{k=1}^3 |R_a e_k|^2=\operatorname{tr}R_a=1.
\tag{CN.4a}
```

Hence for each `a` there exists `k\in\{1,2,3\}` with `|R_a e_k|\ge 3^{-1/2}`.
Define `k(a)` to be the least such index and set

```math
n_J(a):=\frac{R_a e_{k(a)}}{|R_a e_{k(a)}|}.
\tag{CN.4b}
```

Because `R_a` is measurable, so are `k(a)` and `n_J(a)`. Since `R_a` is the
orthogonal projector onto `N_a^\perp`, the vector `n_J(a)` spans `N_a^\perp`,
hence `\ker n_J(a)=N_a`. ∎

### Corollary TPS-normal-coframe-collapse-in-3D

On the present `3D` rank-two bundle branch, any measurable finite normal
coframe whose common kernel is `N_a` collapses to the one-dimensional row space
spanned by `n_J(a)`. So the “finite normal coframe” alternative does not widen
the theorem route: one measurable unit normal covector already captures the full
normal information.

With `n_J(a)` fixed as above, define

```math
n_J(a)\in (\mathbb R^3)^*,
\qquad
|n_J(a)|=1,
\qquad
\ker n_J(a)=N_a.
\tag{CN.4c}
```

For an active pair `(a,b)` define the normal directional defect

```math
\xi_J^{\perp}(a,b,t)
:=
|n_J(a)\cdot e_{ab}(t)|,
\tag{CN.5}
```

and the corresponding quadratic defect

```math
\Xi_J^{\perp}(a,b,t)
:=
\big(\xi_J^{\perp}(a,b,t)\big)^2.
\tag{CN.6}
```

Then

```math
\xi_J^{\perp}(a,b,t)
=
\big\|\big(I-P_{N_a}\big)e_{ab}(t)\big\|,
\tag{CN.7}
```

So if one sharpens Hypothesis `PG-C` by taking the pairwise bundle-angle defect
in `(3.2)` of
[spectral-transversality-cocycle-bridge-to-sg4.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md)
to be `\xi_J^{\perp}` itself, then `\Xi_J^{\perp}=(\xi_J^{\perp})^2` is an
admissible quadratic choice of pair-direction defect for Theorem
Candidate B in
[spectral-transversality-cocycle-bridge-to-sg4.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-transversality-cocycle-bridge-to-sg4.md).

On the cycle-exact branch, where `\operatorname{Err}_J^{loop}=0`, the same
theorem becomes

```math
\mathfrak d_J^-(a,b,t)
\le
\varepsilon_J^{spec}(t,a)
+2M_J(t)\theta_J(a,t)^2
+C\,M_J(t)\Xi_J^{\perp}(a,b,t).
\tag{CN.8}
```

So the cocycle path now reduces `PD.70z` to observability of the normal
component of the pair direction.

## Directional energy in normal form

Define

```math
\mathcal E_J^{dir,\perp}(I)
:=
\int_I\int_{G_J^{pair,\angle}}
M_J(t)^2\big(\Xi_J^{\perp}(a,b,t)\big)^2\,
d\mu_J^{pair}(a,b)\,dt.
\tag{CN.9}
```

Under the normal-covector refinement of `PG-C`, this is the concrete
directional ledger appearing in the cycle-exact residual theorem.

The exact cocycle continuation is therefore no longer

```text
find another scalar potential.
```

It is

```text
use the canonical measurable normal covector attached to `N_a`, then show that
its normal-direction defect is observable from the pair-defect PDE.
```

## Smallest new PDE object on the cocycle route

The current pair-defect packet already exposes the two-point defect field
`W_J` and the near-diagonal observability node `\Gamma_J^{obs}`. The smallest
additional PDE-side object on the cycle-exact branch is a **selector-normal
moment observable**, not a new geometric theorem.

Fix a smooth radial cutoff `\zeta\in C_c^\infty(B(0,2))` with
`\zeta\equiv 1` on `B(0,1)`. For a scale `\rho>0` and center `z\in\mathbb R^3`,
write

```math
\zeta_{\rho,z}(x):=\zeta\!\Big(\frac{x-z}{\rho}\Big).
\tag{CN.9a}
```

On a shadow-window time for the pair `(a,b)`, meaning
`|X_{\le J}(a,t)-X_{\le J}(b,t)|\le C_{\mathrm{sh}}\varsigma_J(t)` as in
[tps-shadow-time-budget-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-time-budget-packet.md),
define the pair-local selector-normal moment of the defect field

```math
\mathcal M_J^{\perp}(a,b,t)
:=
\varsigma_J(t)^{-1}
\Bigg|
\iint
n_J(a)\cdot(x-y)\,
\zeta_{\varsigma_J(t),X_{\le J}(a,t)}(x)\,
\zeta_{\varsigma_J(t),X_{\le J}(b,t)}(y)\,
W_J(x,y,t)\,dx\,dy
\Bigg|.
\tag{CN.9b}
```

Because the cutoff restricts to `|x-y|\le C_\zeta\varsigma_J(t)` on the
shadow window, one has the pointwise majorization

```math
\mathcal M_J^{\perp}(a,b,t)
\le C_{\mathcal M}
\iint
\zeta_{\varsigma_J(t),X_{\le J}(a,t)}(x)\,
\zeta_{\varsigma_J(t),X_{\le J}(b,t)}(y)\,
|W_J(x,y,t)|\,dx\,dy.
\tag{CN.9c}
```

So the cycle-exact normal observable is not a new defect field. It is a
selector-normal refinement of the already installed pair-defect observable.

## Theorem Candidate `PD.70z-cocycle-normal`

Fix one strip `I=[t_0,t_1]`, and assume the cycle-exact branch `D_J=\nabla_{\!graph}\alpha_J`
so that `(PD.70x)`-`(PD.70y)` hold.

Assume moreover there exists a refined transported good-pair family
`G_J^{pair,tr}` such that on the directional windows of
Theorem Candidate E in
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md)
one has

```math
\boxed{
M_J(t)^2\big(\Xi_J^{\perp}(a,b,t)\big)^2
\le
C_{\perp}\,
\mathcal M_J^{\perp}(a,b,t)
+\varepsilon_J^{\perp}(a,b,t),
}
\tag{CN.10}
```

and the pair-averaged normal moment is dominated by the installed parabolic
observation packet:

```math
\boxed{
\int_I\int_{G_J^{pair,tr}}
\big(\mathcal M_J^{\perp}(a,b,t)\big)^2\,
d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{obs},\perp}\,
\mathcal E_J^{obs}(I),
}
\tag{CN.11}
```

and negligible window loss

```math
\mathcal E_{J,\perp}^{err}(I)
:=
\int_I\int_{G_J^{pair,tr}}
\big(\varepsilon_J^{\perp}(a,b,t)\big)^2\,
d\mu_J^{pair}(a,b)\,dt
\le
o_J(1).
\tag{CN.12}
```

Then

```math
\int_I\int_{G_J^{pair,tr}}
M_J(t)^4\big(\Xi_J^{\perp}(a,b,t)\big)^4\,
d\mu_J^{pair}(a,b)\,dt
\le C_{\mathrm{CN13}}
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I).
\tag{CN.13}
```

So `(CN.10)` plus `(CN.11)` closes the cycle-exact branch in a weighted `L^4`
form for the normal defect.

If in addition the strip carries a positive coarse spectral floor

```math
M_J(t)\ge m_I>0
\qquad\text{for a.e. }t\in I,
\tag{CN.13a}
```

then

```math
\int_I\int_{G_J^{pair,tr}}
\big(\Xi_J^{\perp}(a,b,t)\big)^4\,
d\mu_J^{pair}(a,b)\,dt
\le C_{\mathrm{CN13b}}
m_I^{-4}\Big(\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)\Big).
\tag{CN.13b}
```

**Proof.**
Use `(CN.7)` to replace the abstract pairwise defect in `PG-C` by the sharper
normal leakage `\xi_J^{\perp}` and hence `\Xi_J^{\perp}`. Then specialize
Theorem Candidate E from
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md)
to the cycle-exact branch by setting the loop observable to zero and replacing
`\Xi_J` by `\Xi_J^{\perp}`. Squaring `(CN.10)` gives

```math
M_J^4(\Xi_J^{\perp})^4
\le C_{\mathrm{CN13c}}
(\mathcal M_J^{\perp})^2+(\varepsilon_J^{\perp})^2.
\tag{CN.13c}
```

Integrating over `I\times G_J^{pair,tr}`, then applying `(CN.11)` and `(CN.12)`,
gives `(CN.13)`. If `(CN.13a)` holds, divide by `m_I^4` to obtain `(CN.13b)`. ∎

### Corollary TPS-selector-normal-moment-from-localized-L2-observability

For a shadow-window pair `(a,b,t)`, define the selector-normal test kernel

```math
\Phi_{J;a,b}^{\perp}(x,y,t)
:=
\varsigma_J(t)^{-1}
n_J(a)\cdot(x-y)\,
\zeta_{\varsigma_J(t),X_{\le J}(a,t)}(x)\,
\zeta_{\varsigma_J(t),X_{\le J}(b,t)}(y),
\tag{CN.13d}
```

so that

```math
\mathcal M_J^{\perp}(a,b,t)
=
\Big|\iint \Phi_{J;a,b}^{\perp}(x,y,t)\,W_J(x,y,t)\,dx\,dy\Big|.
\tag{CN.13e}
```

Let

```math
K_{J}^{\perp}(a,b,t)
:=
\operatorname{supp}\Phi_{J;a,b}^{\perp}(\cdot,\cdot,t).
\tag{CN.13f}
```

Then on every shadow-window time one has

```math
\big\|\Phi_{J;a,b}^{\perp}(\cdot,\cdot,t)\big\|_{L^2_{x,y}}^2
\le C_{\Phi}
\varsigma_J(t)^6.
\tag{CN.13g}
```

Consequently, if the weighted localized observability estimate

```math
\int_I\int_{G_J^{pair,tr}}
\varsigma_J(t)^6
\big\|W_J(t)\big\|_{L^2(K_J^{\perp}(a,b,t))}^2\,
d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{loc}}\,
\mathcal E_J^{obs}(I)
\tag{CN.13h}
```

holds, then `(CN.11)` follows.

**Proof.**
On the support of `\Phi_{J;a,b}^{\perp}`, one has
`|x-X_{\le J}(a,t)|\le C_\zeta\varsigma_J(t)` and
`|y-X_{\le J}(b,t)|\le C_\zeta\varsigma_J(t)`. On a shadow window,
`|X_{\le J}(a,t)-X_{\le J}(b,t)|\le C_{\mathrm{sh}}\varsigma_J(t)`, hence also
`|x-y|\le C_{xy}\varsigma_J(t)`. Since `|n_J(a)|=1`, the amplitude of
`\Phi_{J;a,b}^{\perp}` is bounded by `C_\Phi` and its support volume is at most
`C_{\mathrm{supp}}\varsigma_J(t)^6`,
which gives `(CN.13g)`. Cauchy-Schwarz in `(x,y)` therefore yields

```math
\big(\mathcal M_J^{\perp}(a,b,t)\big)^2
\le
\big\|\Phi_{J;a,b}^{\perp}(\cdot,\cdot,t)\big\|_{L^2_{x,y}}^2
\big\|W_J(t)\big\|_{L^2(K_J^{\perp}(a,b,t))}^2
\le C_{\mathrm{CN13i}}
\varsigma_J(t)^6
\big\|W_J(t)\big\|_{L^2(K_J^{\perp}(a,b,t))}^2.
\tag{CN.13i}
```

Integrate over `I\times G_J^{pair,tr}` and apply `(CN.13h)`. ∎

### Corollary TPS-selector-normal-moment-from-unweighted-localized-L2-observability

Assume in addition that the normalized shadow scale is uniformly bounded on the
strip:

```math
\sup_{t\in I}\varsigma_J(t)\le \overline\varsigma_I<\infty.
\tag{CN.13h1}
```

If

```math
\int_I\int_{G_J^{pair,tr}}
\big\|W_J(t)\big\|_{L^2(K_J^{\perp}(a,b,t))}^2\,
d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{loc},0}\,
\mathcal E_J^{obs}(I),
\tag{CN.13h2}
```

then `(CN.11)` follows with

```math
C_{\mathrm{obs},\perp}\le C_{\mathrm{CN13h3}}\overline\varsigma_I^6 C_{\mathrm{loc},0}.
\tag{CN.13h3}
```

So the simpler unweighted localized `L^2` observability theorem is enough on any
strip where the shadow scale stays uniformly bounded.

**Proof.**
Under `(CN.13h1)`, the factor `\varsigma_J(t)^6` in `(CN.13h)` satisfies
`\varsigma_J(t)^6\le \overline\varsigma_I^6`, so `(CN.13h2)` implies `(CN.13h)`,
and hence `(CN.11)`. ∎

### Corollary TPS-selector-normal-moment-from-overlap-counting

Define the weighted overlap counting function

```math
\mathfrak N_{J,\perp}(x,y,t)
:=
\int_{G_J^{pair,tr}}
\varsigma_J(t)^6\,
\mathbf 1_{K_J^{\perp}(a,b,t)}(x,y)\,
d\mu_J^{pair}(a,b).
```

Assume

```math
\mathfrak N_{J,\perp}(x,y,t)\le C_{\mathrm{ov},\perp}
\qquad
\text{for a.e. }(x,y,t)\in \mathbb R^3\times\mathbb R^3\times I.
\tag{CN.13h4}
```

Then

```math
\int_I\int_{G_J^{pair,tr}}
\varsigma_J(t)^6
\big\|W_J(t)\big\|_{L^2(K_J^{\perp}(a,b,t))}^2\,
d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{ov},\perp}
\int_I\big\|W_J(t)\big\|_{L^2_{x,y}}^2\,dt.
\tag{CN.13h5}
```

Consequently, if the strip also satisfies the global pair-defect `L^2` control

```math
\int_I\big\|W_J(t)\big\|_{L^2_{x,y}}^2\,dt
\le
C_{W,\perp}\,\mathcal E_J^{obs}(I),
\tag{CN.13h6}
```

then `(CN.13h)` follows with

```math
C_{\mathrm{loc}}\le C_{\mathrm{ov},\perp}C_{W,\perp}.
\tag{CN.13h7}
```

So the localized observability clause can be reduced further to two exact
subtasks: a weighted overlap theorem for the shadow-window supports and a global
`L^2` defect-energy estimate on the installed two-point PDE.

**Proof.**
Expand the localized norm and apply Tonelli/Fubini:

```math
\begin{aligned}
&\int_I\int_{G_J^{pair,tr}}
\varsigma_J(t)^6
\big\|W_J(t)\big\|_{L^2(K_J^{\perp}(a,b,t))}^2\,
d\mu_J^{pair}(a,b)\,dt \\
&=
\int_I\iint_{\mathbb R^3\times\mathbb R^3}
|W_J(x,y,t)|^2
\Bigg(
\int_{G_J^{pair,tr}}
\varsigma_J(t)^6\,
\mathbf 1_{K_J^{\perp}(a,b,t)}(x,y)\,
d\mu_J^{pair}(a,b)
\Bigg)
dx\,dy\,dt \\
&=
\int_I\iint_{\mathbb R^3\times\mathbb R^3}
|W_J(x,y,t)|^2\,\mathfrak N_{J,\perp}(x,y,t)\,dx\,dy\,dt \\
&\le
C_{\mathrm{ov},\perp}
\int_I\big\|W_J(t)\big\|_{L^2_{x,y}}^2\,dt.
\end{aligned}
```

This is `(CN.13h5)`. Combining `(CN.13h5)` with `(CN.13h6)` gives `(CN.13h)`
with the constant in `(CN.13h7)`. ∎

### Corollary TPS-selector-normal-overlap-counting-from-transported-weighted-overlap

Assume the shadow scale is uniformly bounded on the strip:

```math
\sup_{t\in I}\varsigma_J(t)\le \overline\varsigma_I<\infty.
\tag{CN.13h8}
```

For each selector label `a` and time `t`, let `\widetilde Q_{J,a}(t)\subset
\mathbb R^3` be a measurable transported support envelope such that

```math
\operatorname{supp}\zeta_{\varsigma_J(t),X_{\le J}(a,t)}
\subseteq
\widetilde Q_{J,a}(t).
\tag{CN.13h9}
```

Write

```math
G_{J,1}^{tr}
:=
\big\{a:\exists\,b\text{ with }(a,b)\in G_J^{pair,tr}\big\}
\tag{CN.13h9a}
```

for the first-coordinate transported carrier of the refined good-pair family.

Assume the transported selector family obeys the weighted overlap bound

```math
\sup_{(x,t)\in\mathbb R^3\times I}
\int_{G_{J,1}^{tr}}
\mathbf 1_{\widetilde Q_{J,a}(t)}(x)\,
d\mu_j(a)
\le
M_{\mathrm{ov}}^{tr},
\tag{CN.13h10}
```

the active valence bound

```math
\sup_{a\in G_{J,1}^{tr}}\#N(a)\le N_{\mathrm{cap}},
\tag{CN.13h11}
```

and pair-measure domination by the active graph measure:

```math
d\mu_J^{pair}(a,b)
\le
C_{\mathrm{pair}}\,
\mathbf 1_{\{(a,b)\in\mathcal A_J^{adj}\}}\,
d\mu_j(a)\,d\#_{N(a)}(b).
\tag{CN.13h12}
```

Then the weighted overlap counting function from `(CN.13h4)` satisfies

```math
\mathfrak N_{J,\perp}(x,y,t)
\le
C_{\mathrm{pair}}\,
\overline\varsigma_I^6\,
M_{\mathrm{ov}}^{tr}\,
N_{\mathrm{cap}}
\qquad
\text{for a.e. }(x,y,t),
\tag{CN.13h13}
```

so `(CN.13h4)` is discharged with

```math
C_{\mathrm{ov},\perp}
\le
C_{\mathrm{pair}}\,
\overline\varsigma_I^6\,
M_{\mathrm{ov}}^{tr}\,
N_{\mathrm{cap}}.
\tag{CN.13h14}
```

Thus the overlap subtask in `(CN.13h4)` follows formally from a transported
weighted-overlap packet plus active-valence control. In particular, under any
unit-mass carrier normalization where the transported selector theorem upgrades
`(TPS.1a)` to `(CN.13h10)`, the remaining observability subgap is only the
stripwise pair-defect energy ledger `(CN.13h15)`, equivalently `(PD.51b)`
feeding `(PD.51c)`.

**Proof.**
Fix `(x,y,t)`. If `(x,y)\in K_J^{\perp}(a,b,t)`, then by `(CN.13f)` and
`(CN.13h9)` one has `x\in \widetilde Q_{J,a}(t)`. Therefore `(CN.13h12)` gives

```math
\begin{aligned}
\mathfrak N_{J,\perp}(x,y,t)
&=
\int_{G_J^{pair,tr}}
\varsigma_J(t)^6\,
\mathbf 1_{K_J^{\perp}(a,b,t)}(x,y)\,
d\mu_J^{pair}(a,b) \\
&\le
\overline\varsigma_I^6 C_{\mathrm{pair}}
\int_{G_{J,1}^{tr}}
\mathbf 1_{\widetilde Q_{J,a}(t)}(x)\,
\mathbf 1_{\{(a,b)\in\mathcal A_J^{adj}\}}\,
d\mu_j(a)\,d\#_{N(a)}(b) \\
&=
\overline\varsigma_I^6 C_{\mathrm{pair}}
\int_{G_{J,1}^{tr}}
\mathbf 1_{\widetilde Q_{J,a}(t)}(x)\,
\#N(a)\,
d\mu_j(a) \\
&\le
\overline\varsigma_I^6 C_{\mathrm{pair}}N_{\mathrm{cap}}
\int_{G_{J,1}^{tr}}
\mathbf 1_{\widetilde Q_{J,a}(t)}(x)\,
d\mu_j(a) \\
&\le
C_{\mathrm{pair}}\,
\overline\varsigma_I^6\,
M_{\mathrm{ov}}^{tr}\,
N_{\mathrm{cap}}.
\end{aligned}
```

This is `(CN.13h13)`, hence `(CN.13h14)` follows. ∎

### Corollary TPS-selector-normal-moment-from-stripwise-pair-defect-energy

Fix the same strip `I=[t_0,t_1]`. Assume the pair-defect packet closes the
stripwise initial/source ledger by

```math
\|W_J(t_0)\|_{L^2_{x,y}}^2
+
\int_I
\|r_J(s)\|_{L^\infty_x}^2
\|K_J(s)\|_{L^2_{x,y}}^2\,ds
\le
C_{W,I}\,\mathcal E_J^{obs}(I).
\tag{CN.13h15}
```

Then the global pair-defect `L^2` control `(CN.13h6)` holds with

```math
C_{W,\perp}\le |I|\,C_{W,I}.
\tag{CN.13h16}
```

So the global defect-energy subtask in `(CN.13h6)` is discharged directly from
the stripwise pair-defect energy packet `(PD.51a)`-`(PD.51c)` once the
initial/source ledger is normalized into `\mathcal E_J^{obs}(I)`.

**Proof.**
By `(PD.51c)` in
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md),
assumption `(CN.13h15)` implies

```math
\int_I\|W_J(t)\|_{L^2_{x,y}}^2\,dt
\le
|I|\,C_{W,I}\,\mathcal E_J^{obs}(I).
```

This is exactly `(CN.13h6)` with the constant in `(CN.13h16)`. ∎

### Corollary TPS-quadratic-selector-normal-calibration-implies-`PD.70z`

Assume, in place of `(CN.10)`, the strengthened quadratic selector-normal
calibration

```math
M_J(t)^2\big(\Xi_J^{\perp}(a,b,t)\big)^2
\le
C_{\perp}^{sq}\,
\big(\mathcal M_J^{\perp}(a,b,t)\big)^2
+\widetilde\varepsilon_J^{\perp}(a,b,t)^2,
\tag{CN.13j}
```

with

```math
\int_I\int_{G_J^{pair,tr}}
\widetilde\varepsilon_J^{\perp}(a,b,t)^2\,
d\mu_J^{pair}(a,b)\,dt
\le
\widetilde{\mathcal E}_{J,\perp}^{err}(I).
\tag{CN.13k}
```

Then

```math
\mathcal E_J^{dir,\perp}(I)
\le C_{\mathrm{CN13l}}
\mathcal E_J^{obs}(I)+\widetilde{\mathcal E}_{J,\perp}^{err}(I),
\tag{CN.13l}
```

so the cycle-exact residual theorem `(PD.70z)` follows under the
normal-covector refinement of `PG-C`.

**Proof.**
Integrate `(CN.13j)` over `I\times G_J^{pair,tr}` and apply `(CN.11)` and
`(CN.13k)`. ∎

### Corollary TPS-square-root-upgrade-from-weighted-`L^4`

Assume the hypotheses of `(CN.13)`, and suppose the strip carries finite
pair/time mass

```math
|I|\,\mu_J^{pair}\big(G_J^{pair,tr}\big)
\le
\mathfrak M_J(I)<\infty.
\tag{CN.13m}
```

Then the weighted closure `(CN.13)` implies the sublinear directional estimate

```math
\mathcal E_J^{dir,\perp}(I)
\le
\mathfrak M_J(I)^{1/2}
\Big(
C\,\mathcal E_J^{obs}(I)
+
\mathcal E_{J,\perp}^{err}(I)
\Big)^{1/2}.
\tag{CN.13n}
```

In particular, if
`\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)=o_J(1)`, then

```math
\mathcal E_J^{dir,\perp}(I)=o_J(1).
\tag{CN.13o}
```

So the normal-covector route already closes a vanishing-budget version of the
cycle-exact branch on finite selector-good strips, even though the full
quadratic directional estimate `(PD.70z)` still requires `(CN.13j)` or another
explicit upgrade.

**Proof.**
Write
`f(a,b,t):=M_J(t)\Xi_J^{\perp}(a,b,t)`. Then `(CN.13)` is
`\int_{I\times G_J^{pair,tr}} f^4 \le C_4
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)`, while
`\mathcal E_J^{dir,\perp}(I)=\int f^2`. Hölder on the finite-measure space
`I\times G_J^{pair,tr}` gives

```math
\int f^2
\le
\bigg(\int 1\bigg)^{1/2}
\bigg(\int f^4\bigg)^{1/2},
```

which is exactly `(CN.13n)` after inserting `(CN.13m)` and `(CN.13)`. Statement
`(CN.13o)` follows by the same substitution. ∎

### Corollary TPS-PD70z-from-support-smallness

Define the active normal-defect support

```math
\mathfrak S_J^{\perp}(I)
:=
\big\{(a,b,t)\in G_J^{pair,tr}\times I:
M_J(t)\Xi_J^{\perp}(a,b,t)\neq 0
\big\}.
\tag{CN.13p}
```

If, in addition to `(CN.13)`, one has the linear support bound

```math
(\mu_J^{pair}\otimes dt)\big(\mathfrak S_J^{\perp}(I)\big)
\le
C_{\mathrm{supp}}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big),
\tag{CN.13q}
```

then the full quadratic directional ledger obeys the desired linear-in-budget
bound:

```math
\mathcal E_J^{dir,\perp}(I)
\le C_{\mathrm{CN13m}}
C_{\mathrm{supp}}^{1/2}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13r}
```

So the self-improvement slot from `(CN.13)` to `(PD.70z)` is discharged under a
support-smallness theorem for the active normal defect.

**Proof.**
With `f(a,b,t):=M_J(t)\Xi_J^{\perp}(a,b,t)`, one has
`\mathcal E_J^{dir,\perp}(I)=\int f^2` and `f=0` off
`\mathfrak S_J^{\perp}(I)`. Hölder on `\mathfrak S_J^{\perp}(I)` gives

```math
\int f^2
\le
\Big((\mu_J^{pair}\otimes dt)(\mathfrak S_J^{\perp}(I))\Big)^{1/2}
\Big(\int f^4\Big)^{1/2}.
\tag{CN.13s}
```

Apply `(CN.13q)` and `(CN.13)`. This yields `(CN.13r)`. ∎

### Corollary TPS-PD70z-from-shadow-occupancy-support-smallness

Fix a measurable route-local shadow tube

```math
\mathcal S_{J}^{sh}(t)
:=
\big\{(a,b)\in G_J^{pair,tr}:
|X(a,t)-X(b,t)|\le \sigma_J^{sh}(t)
\big\}.
\tag{CN.13t0}
```

Assume the active normal defect is supported on that shadow tube:

```math
M_J(t)\Xi_J^{\perp}(a,b,t)\neq 0
\Longrightarrow
(a,b)\in \mathcal S_J^{sh}(t)
\qquad
\text{for a.e. }(a,b,t)\in G_J^{pair,tr}\times I.
\tag{CN.13t1}
```

If the same strip satisfies the quantitative pair-measure occupancy estimate

```math
\int_I
\mu_J^{pair}\big(\mathcal S_J^{sh}(t)\big)\,dt
\le
C_{\mathrm{sh,supp}}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big),
\tag{CN.13t2}
```

then `(CN.13q)` holds with `C_{\mathrm{supp}}\le C_{\mathrm{sh,supp}}`, and
hence `(CN.13r)` follows.

So the support-smallness route to `PD.70z` is reduced to an exact
shadow-window support theorem: one must show that the active normal defect lives
inside a controlled shadow tube and that the pair/time mass of that tube is
linear in the installed observation budget.

**Proof.**
By `(CN.13t1)`, the active support set from `(CN.13p)` satisfies

```math
\mathfrak S_J^{\perp}(I)
\subseteq
\big\{(a,b,t)\in G_J^{pair,tr}\times I:
(a,b)\in \mathcal S_J^{sh}(t)\big\}.
\tag{CN.13t3}
```

Therefore

```math
\begin{aligned}
(\mu_J^{pair}\otimes dt)\big(\mathfrak S_J^{\perp}(I)\big)
&\le
\int_I
\mu_J^{pair}\big(\mathcal S_J^{sh}(t)\big)\,dt \\
&\le
C_{\mathrm{sh,supp}}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\end{aligned}
```

This is exactly `(CN.13q)` with `C_{\mathrm{supp}}\le
C_{\mathrm{sh,supp}}`. Apply `(CN.13r)`. ∎

### Corollary TPS-PD70z-support-smallness-from-active-graph-occupancy

Assume the pair-measure domination `(CN.13h12)` and the same support
containment `(CN.13t1)`. Suppose also the shadow tube in `(CN.13t0)` satisfies
the quantitative active-graph occupancy bound

```math
\frac{1}{T_J\,\mu_j(\mathcal C_j)}
\int_I
\nu_J^{act}\big(\mathcal S_J^{sh}(t)\big)\,dt
\le
\mathfrak O_J^{sh}(I),
\tag{CN.13t4}
```

and this occupancy is itself controlled by the installed strip budget:

```math
T_J\,\mu_j(\mathcal C_j)\,\mathfrak O_J^{sh}(I)
\le
C_{\mathrm{occ}}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13t5}
```

Then `(CN.13t2)` holds with `C_{\mathrm{sh,supp}}\le
C_{\mathrm{pair}}C_{\mathrm{occ}}`. Consequently `(CN.13q)` and `(CN.13r)`
follow.

This is the direct splice from the weak shadow-time packet to the quadratic
`PD.70z` ledger: once the active normal defect is localized to shadow windows,
the last support-smallness burden is only a quantitative active-graph occupancy
estimate on that same shadow tube. The bound `(CN.13t5)` is exactly the
stripwise occupancy ledger `(ST.12c)` from
[tps-shadow-time-budget-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-time-budget-packet.md)
after identifying `\mathfrak O_J^{sh}(I)` with the normalized occupancy of the
route-local shadow tube and taking
`\mathcal B_J^{occ}(I)=\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)`.

**Proof.**
By `(CN.13h12)` and the definition of `\nu_J^{act}`,

```math
\mu_J^{pair}\big(\mathcal S_J^{sh}(t)\big)
\le
C_{\mathrm{pair}}\,
\nu_J^{act}\big(\mathcal S_J^{sh}(t)\big)
\qquad\text{for a.e. }t\in I.
\tag{CN.13t6}
```

Integrating `(CN.13t6)` over `I` and applying `(CN.13t4)`-`(CN.13t5)` gives

```math
\int_I
\mu_J^{pair}\big(\mathcal S_J^{sh}(t)\big)\,dt
\le
C_{\mathrm{pair}}C_{\mathrm{occ}}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13t7}
```

This is `(CN.13t2)` with
`C_{\mathrm{sh,supp}}\le C_{\mathrm{pair}}C_{\mathrm{occ}}`. Apply
`TPS-PD70z-from-shadow-occupancy-support-smallness`. ∎

### Corollary TPS-PD70z-from-time-support-smallness

Define the active time support

```math
\mathfrak T_J^{\perp}(I)
:=
\big\{t\in I:
\mu_J^{pair}\big(\{(a,b)\in G_J^{pair,tr}:M_J(t)\Xi_J^{\perp}(a,b,t)\neq 0\}\big)>0
\big\}.
\tag{CN.13v}
```

Assume the selector-good family has finite pair mass

```math
\mu_J^{pair}\big(G_J^{pair,tr}\big)\le \overline\mu_J<\infty.
\tag{CN.13w}
```

If, in addition to `(CN.13)`, one has the time-support bound

```math
|\mathfrak T_J^{\perp}(I)|
\le
C_{\mathrm{time}}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big),
\tag{CN.13x}
```

then `(CN.13q)` follows with
`C_{\mathrm{supp}}\le C_{\mu}\overline\mu_J C_{\mathrm{time}}`, and therefore

```math
\mathcal E_J^{dir,\perp}(I)
\le C_{\mathrm{CN13x}}
(\overline\mu_J C_{\mathrm{time}})^{1/2}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13y}
```

So a time-only support theorem is enough for `(PD.70z)` once it is upgraded to
the pair-time support bound through finite pair mass.

**Proof.**
By definition of `\mathfrak T_J^{\perp}(I)`, the pair-time active set
`\mathfrak S_J^{\perp}(I)` from `(CN.13p)` is contained in
`G_J^{pair,tr}\times\mathfrak T_J^{\perp}(I)`. Therefore

```math
(\mu_J^{pair}\otimes dt)\big(\mathfrak S_J^{\perp}(I)\big)
\le
\mu_J^{pair}\big(G_J^{pair,tr}\big)\,|\mathfrak T_J^{\perp}(I)|
\le
\overline\mu_J C_{\mathrm{time}}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13z}
```

This is exactly `(CN.13q)` with
`C_{\mathrm{supp}}\le C_{\mu}\overline\mu_J C_{\mathrm{time}}`. Apply
`(CN.13r)`. ∎

### Corollary TPS-PD70z-from-aggregated-time-profile-support

Define the aggregated quadratic time profile

```math
\mathfrak A_J^{\perp}(t)^2
:=
\int_{G_J^{pair,tr}}
M_J(t)^2\big(\Xi_J^{\perp}(a,b,t)\big)^2\,
d\mu_J^{pair}(a,b)
=
\int_{G_J^{pair,tr}} f(a,b,t)^2\,d\mu_J^{pair}(a,b).
\tag{CN.13zaa}
```

Then

```math
\mathcal E_J^{dir,\perp}(I)
=
\int_I \mathfrak A_J^{\perp}(t)^2\,dt.
\tag{CN.13zab}
```

Assume `(CN.13w)` and the support bound

```math
\big|\{t\in I:\mathfrak A_J^{\perp}(t)>0\}\big|
\le
C_{\mathrm{time},A}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13zac}
```

Then

```math
\mathcal E_J^{dir,\perp}(I)
\le C_{\mathrm{CN13A}}
(\overline\mu_J C_{\mathrm{time},A})^{1/2}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13zad}
```

So the scalar time-support route is valid after replacing the pointwise field
`f(a,b,t)` by the aggregated time profile `\mathfrak A_J^\perp(t)`.

**Proof.**
By Cauchy-Schwarz in the pair variable and `(CN.13w)`,

```math
\mathfrak A_J^{\perp}(t)^4
=
\Big(\int_{G_J^{pair,tr}} f^2\,d\mu_J^{pair}\Big)^2
\le
\mu_J^{pair}\big(G_J^{pair,tr}\big)
\int_{G_J^{pair,tr}} f^4\,d\mu_J^{pair}
\le
\overline\mu_J
\int_{G_J^{pair,tr}} f^4\,d\mu_J^{pair}.
\tag{CN.13zae}
```

Integrating `(CN.13zae)` over `I` and applying `(CN.13)` gives

```math
\int_I \mathfrak A_J^{\perp}(t)^4\,dt
\le C_{\mathrm{CN13zae}}
\overline\mu_J
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13zaf}
```

Now Hölder in time on the support set from `(CN.13zac)` yields

```math
\int_I \mathfrak A_J^{\perp}(t)^2\,dt
\le
\big|\{t:\mathfrak A_J^{\perp}(t)>0\}\big|^{1/2}
\Big(\int_I \mathfrak A_J^{\perp}(t)^4\,dt\Big)^{1/2}.
\tag{CN.13zag}
```

Insert `(CN.13zac)` and `(CN.13zaf)`, then use `(CN.13zab)`. This is
`(CN.13zad)`. ∎

### Remark finite pair mass enters quantitatively in the aggregated route

The aggregated-profile route does not identify
`\int_I \mathfrak A_J^{\perp}(t)^4\,dt` directly with the pair-time quartic
closure `(CN.13)`. The comparison is exactly `(CN.13zae)`-`(CN.13zaf)`, and it
carries the quantitative factor `\overline\mu_J`. So finite pair mass is not
used only to guarantee integrability; it also appears in the final constant in
`(CN.13zad)`.

### Remark `PD.70z` consumes the quadratic ledger, not `\int f`

With `f(a,b,t):=M_J(t)\Xi_J^{\perp}(a,b,t)`, the upstream exact-potential
theorem `(PD.70z)` in
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md)
consumes

```math
\mathcal E_J^{dir,\perp}(I)=\int_{I\times G_J^{pair,tr}} f^2,
\tag{CN.13t}
```

not the linear integral `\int f`. Therefore a theorem of the form

```math
\int_{I\times G_J^{pair,tr}} f
\le C_{\mathrm{CN13u}}
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\tag{CN.13u}
```

does not by itself discharge `(PD.70z)` unless it is supplemented by an
independent `L^1\to L^2` comparison on the same strip. The support-smallness
criterion `(CN.13q)`, and its time-support specialization `(CN.13x)` under
finite pair mass `(CN.13w)`, are useful precisely because, together with the
weighted closure `(CN.13)`, they upgrade `f` from weighted `L^4` control to the
needed quadratic ledger `\int f^2`.

### Proposition support-smallness is not a consequence of `(CN.13)` alone

Fix any strip and refined transported good-pair family with finite nonzero
pair-time measure

```math
0<
(\mu_J^{pair}\otimes dt)\big(G_J^{pair,tr}\times I\big)
<\infty.
\tag{CN.13zah}
```

Then the weighted quartic closure `(CN.13)` does not by itself imply either the
pair-time support bound `(CN.13q)` or the time-support bound `(CN.13x)`.

**Proof.**
Write
`\Omega:=G_J^{pair,tr}\times I` and
`|\Omega|:=(\mu_J^{pair}\otimes dt)(\Omega)`. For any budget level `B>0`, the
constant field

```math
f_B(a,b,t):=\Big(\frac{B}{|\Omega|}\Big)^{1/4}
\qquad\text{on }\Omega
\tag{CN.13zai}
```

satisfies

```math
\int_{\Omega} f_B^4\,d(\mu_J^{pair}\otimes dt)=B,
\tag{CN.13zaj}
```

but has full pair-time support

```math
(\mu_J^{pair}\otimes dt)\big(\operatorname{supp}f_B\big)=|\Omega|,
\tag{CN.13zak}
```

and full time support

```math
\big|\{t\in I:f_B(\cdot,\cdot,t)\neq 0\}\big|=|I|.
\tag{CN.13zal}
```

So no estimate of the form `(CN.13q)` or `(CN.13x)` can follow from a quartic
bound alone without additional structural input. ∎

### Corollary TPS-PD70z-from-two-sided-weight-control

Define the quadratic normal-direction density

```math
\Theta_J^{\perp}(a,b,t)
:=
M_J(t)^2\big(\Xi_J^{\perp}(a,b,t)\big)^2
=
f(a,b,t)^2.
\tag{CN.13aa}
```

Assume on the same strip `I\times G_J^{pair,tr}` there exists a measurable
weight `w_J^{\perp}(a,b,t)` with quantitative two-sided control

```math
0<c_{w,I}\le w_J^{\perp}(a,b,t)\le C_{w,I}<\infty
\qquad\text{for a.e. }(a,b,t)\in G_J^{pair,tr}\times I,
\tag{CN.13ab}
```

and a weighted quadratic observability estimate

```math
\int_I\int_{G_J^{pair,tr}}
w_J^{\perp}(a,b,t)\,\Theta_J^{\perp}(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt
\le
C_{w,\perp}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13ac}
```

Then the full quadratic directional ledger obeys

```math
\mathcal E_J^{dir,\perp}(I)
=
\int_I\int_{G_J^{pair,tr}}
\Theta_J^{\perp}(a,b,t)\,
d\mu_J^{pair}(a,b)\,dt
\le
c_{w,I}^{-1}C_{w,\perp}
\Big(
\mathcal E_J^{obs}(I)+\mathcal E_{J,\perp}^{err}(I)
\Big).
\tag{CN.13ad}
```

So any theorem supplying `(CN.13ab)`-`(CN.13ac)` discharges the last
normal-covector upgrade slot to the quadratic `PD.70z` budget. This is an
alternate sufficient route; it does not follow from `(CN.13)` alone.

**Proof.**
By `(CN.13ab)`, one has
`\Theta_J^{\perp}\le c_{w,I}^{-1}w_J^{\perp}\Theta_J^{\perp}` almost
everywhere on `I\times G_J^{pair,tr}`. Integrate and apply `(CN.13ac)`. ∎

## Honest remaining theorem

This note closes two false gaps:

1. measurable selector-normal covectors already exist by `(CN.4)`-`(CN.4b)`;
2. in `3D`, the finite-coframe alternative collapses to that one covector.

So the exact cocycle task that remains after scalar exactness splits into two
levels.

First, the current one-sided selector-normal calibration theorem `(CN.10)` plus
`(CN.11)` gives the weighted closure `(CN.13)`.

Second, to recover the full quadratic directional budget `(PD.70z)` itself, one
still needs either the strengthened quadratic calibration `(CN.13j)` or another
explicit upgrade beyond the square-root estimate `(CN.13n)` from the weighted
`L^4` control `(CN.13)` to the quadratic directional ledger
`\mathcal E_J^{dir,\perp}(I)`, for example the support-smallness criterion
`(CN.13q)` or the two-sided weight-control criterion
`(CN.13ab)`-`(CN.13ad)`.

The full cycle-exact residual theorem is therefore:

```math
\boxed{
\text{cycle-exact potential}
+\text{ selector-normal calibration }(CN.10)
+\text{ pair-averaged parabolic domination }(CN.11)
\Longrightarrow
\text{weighted cycle-exact closure }(CN.13),
}
\tag{CN.14}
```

while the exact localized observability reduction of `(CN.11)` is

```math
\boxed{
\text{weighted localized }L^2\text{ observability }(CN.13h)
\Longrightarrow
(CN.11).
}
\tag{CN.14a}
```

Thus the cocycle path now has three exact remaining clauses, but the second one
has now been narrowed further, and the third one has a direct support-smallness
splice through shadow occupancy:

1. a selector-normal calibration estimate from the pair-local defect moment to
   the normal-direction ledger;
2. a weighted localized parabolic observability estimate for the pair-defect
   field; on the current route the weighted-overlap part `(CN.13h4)` is already
   discharged by the transported weighted-overlap / active-valence packet
   `(CN.13h8)`-`(CN.13h14)`, while the global defect-energy bound `(CN.13h6)` is
   reduced directly to the stripwise pair-defect initial/source ledger
   `(CN.13h15)`, equivalently `(PD.51b)` feeding `(PD.51c)`;
3. an upgrade from the weighted closure `(CN.13)` or its finite-measure
   square-root consequence `(CN.13n)` to the quadratic `PD.70z` ledger,
   equivalently the strengthened quadratic calibration `(CN.13j)`, the
   support-smallness criterion `(CN.13q)`, or the two-sided weight-control
   criterion `(CN.13ab)`-`(CN.13ad)`; on the support-smallness branch this is
   now reduced further to shadow-window support localization and a quantitative
   pair- or active-graph occupancy theorem by `(CN.13t0)`-`(CN.13t7)`, where
   the occupancy budget itself is exactly the stripwise shadow-time ledger
   `(ST.12c)`.

```math
M_J^2(\Xi_J^{\perp})^2
\le C_{\mathrm{CN14b}}
\mathcal M_J^{\perp}+\varepsilon_J^{\perp};
\tag{CN.14b}
```

```math
\int
\varsigma_J^6\|W_J\|_{L^2(K_J^\perp)}^2
\le C_{\mathrm{CN14c}}
\mathcal E_J^{obs}.
\tag{CN.14c}
```

```math
\text{either }(CN.13j)\text{ or another explicit quadratic-ledger upgrade such as }(CN.13q)\text{ or }(CN.13ab)\text{-}(CN.13ad).
\tag{CN.14d}
```

The second clause is therefore no longer an opaque localized observability
request: the weighted overlap-counting half is now formal under
`(CN.13h8)`-`(CN.13h14)`, and the global `L^2` defect-energy half is reduced to
the stripwise pair-defect energy ledger `(PD.51b)`-`(PD.51c)` via
`(CN.13h15)`-`(CN.13h16)`. The third clause is the exact remaining
self-improvement slot between the weighted closure already proved formally here
and the quadratic `PD.70z` budget consumed upstream, and its support-smallness
subroute is now reduced to the shadow-occupancy splice `(CN.13t0)`-`(CN.13t7)`
with occupancy budget `(ST.12c)`.

No other cocycle-side geometry remains open in this note.

That is still strictly narrower than the old “prove `PD.70`” slogan and more
honest than reusing the scalar chart label as if it already measured plane
leakage.

### Remark exact-potential normal-covector splice does not by itself discharge full `PD.70z`

The later exact-potential bridge note now records a weaker but route-honest
shadow-occupancy splice: once the active normal shadow counter is priced by a
thresholded directional-defect ledger and that same ledger is `o_J(1)`, the
Chebyshev step `(F.11j)` and the vanishing-error closure `(F.11i)` give
`(PD.70z11)` on the corresponding cycle-exact strip family.

The exact additional supplier isolated there is:

```math
\Sigma_J^\perp(I)
\le
C_{\mathrm{tr}}
\int_I \|W_J(t)\|_{L^2_{x,y}}^2\,dt
+o_J(1),
\qquad
\int_I \|W_J(t)\|_{L^2_{x,y}}^2\,dt=o_J(1),
\tag{CN.14e}
```

which is the same-ledger transfer plus vanishing stripwise pair-defect energy
statement recorded as `(F.11k)`.

This does **not** replace the full quadratic `PD.70z` wall in the present note.
It closes only the vanishing-error cycle-exact subroute. Full `PD.70z` still
requires one of the explicit quadratic-ledger upgrades already isolated here:
the strengthened selector-normal calibration `(CN.13j)`, the support-smallness
route `(CN.13q)` with shadow localization `(CN.13t1)`, or the two-sided
weight-control route `(CN.13ab)`-`(CN.13ad)`.
