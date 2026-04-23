# Diagonal Restriction Stability On Entrance-Sector Refinement

## Status

Active theorem-facing upstream debt note.

Role: isolate the source-level selector sign theorem that remains after the
entrance-sector graph inherits bounded multiplicity from the parent shell/cap
graph, namely diagonal restriction stability on the entrance-sector
refinement.

## Purpose

Discharge the remaining selector-local sign primitive:

```math
\boxed{
\text{diagonal restriction stability on the entrance-sector refinement}
\Longrightarrow
\text{entrance-sector selector sign primitive.}
}
\tag{DRS.0}
```

This is the exact source-level theorem exported by `TPS-sign-ent''''` and is
strictly sharper than the packaged `QSP.11k` selector primitive.

## Exact Target

### Theorem DRS.A (diagonal restriction stability is the remaining new selector sign theorem)

Keep the hypotheses of `TPS-sign-ent'''` from
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md),
so the entrance-sector graph is inherited from the parent cap graph with
bounded multiplicity and the sector-edge half of the selector sign packet is
automatic.

Then the only remaining genuinely new sign-side theorem on the entrance-sector
refinement is the diagonal transfer law

```math
d_j^{diag}(Q_s^{ent})
\ge
\theta_{\mathrm{diag}}\,
d_j^{diag}(Q)\,
\frac{\mu_j(Q_s^{ent})}{\mu_j(Q)}
\qquad
\text{for every terminal sector cell }Q_s^{ent}\subset Q.
\tag{DRS.1}
```

Equivalently, relative to the parent sign packet and the inherited bounded
multiplicity sector graph, the exact selector-local primitive is

```math
\text{diagonal restriction stability on the entrance-sector refinement.}
\tag{DRS.2}
```

So the constructive exact-potential shape route no longer needs to treat the
full entrance-sector sign packet as primitive once the inherited sector-edge
localization has been accepted.

## Proof

By `TPS-sign-ent'''`, the edge half of the sector-level sign pair is
automatic. The remaining new burden is therefore exactly the diagonal transfer
law `(DRS.1)`, which is precisely the selector-local primitive `(DRS.2)`. ∎

## Further Reduction

### Proposition DRS.B (sectorwise relative oscillation of the diagonal density supplies restriction stability)

Assume that for every parent stopped cell `Q` there exists a nonnegative
diagonal density `\delta_{j,Q}\in L^1(Q,d\mu_j)` such that

```math
d_j^{diag}(A)=\int_A \delta_{j,Q}\,d\mu_j
\qquad\text{for every measurable }A\subseteq Q.
\tag{DRS.5}
```

Write the parent-cell average diagonal density as

```math
\bar\delta_j(Q)
:=
\frac{d_j^{diag}(Q)}{\mu_j(Q)}
=
\fint_Q \delta_{j,Q}\,d\mu_j.
\tag{DRS.6}
```

Assume there exists a uniform constant `0\le \sigma_{\mathrm{diag}}<1` such
that for every parent stopped cell `Q` and every terminal entrance-sector cell
`Q_s^{ent}\subset Q`,

```math
\operatorname*{ess\,sup}_{a\in Q_s^{ent}}
\bigl|\delta_{j,Q}(a)-\bar\delta_j(Q)\bigr|
\le
\sigma_{\mathrm{diag}}\,\bar\delta_j(Q).
\tag{DRS.7}
```

Then `(DRS.1)` holds with `\theta_{\mathrm{diag}}=1-\sigma_{\mathrm{diag}}`.
Equivalently, the remaining selector-local sign primitive reduces to

```math
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average.}
\tag{DRS.8}
```

**Proof.**
By `(DRS.7)`, one has
`\delta_{j,Q}(a)\ge (1-\sigma_{\mathrm{diag}})\bar\delta_j(Q)` for
`d\mu_j`-almost every `a\in Q_s^{ent}`. Integrating over `Q_s^{ent}` and using
`(DRS.6)` yields

```math
d_j^{diag}(Q_s^{ent})
=
\int_{Q_s^{ent}}\delta_{j,Q}\,d\mu_j
\ge
(1-\sigma_{\mathrm{diag}})
\bar\delta_j(Q)\,\mu_j(Q_s^{ent})
=
(1-\sigma_{\mathrm{diag}})
d_j^{diag}(Q)\,
\frac{\mu_j(Q_s^{ent})}{\mu_j(Q)},
```

which is exactly `(DRS.1)` with
`\theta_{\mathrm{diag}}=1-\sigma_{\mathrm{diag}}`. ∎

### Corollary DRS.C (anchored Holder control on the entrance sectors is a stronger sufficient realization)

Keep the density representation `(DRS.5)`. Assume there exist constants
`\beta_{\mathrm{diag}},\gamma_{\mathrm{diag}}\ge 0` with
`\beta_{\mathrm{diag}}+\gamma_{\mathrm{diag}}<1` such that for every parent
stopped cell `Q` and every terminal entrance-sector cell `Q_s^{ent}\subset Q`
one can choose a reference point `a_{Q,s}\in Q_s^{ent}` satisfying

```math
\bigl|\delta_{j,Q}(a_{Q,s})-\bar\delta_j(Q)\bigr|
\le
\beta_{\mathrm{diag}}\,\bar\delta_j(Q),
\tag{DRS.9}
```

and

```math
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha
\le
\gamma_{\mathrm{diag}}\,\bar\delta_j(Q)
\qquad\text{for some fixed }\alpha\in(0,1].
\tag{DRS.10}
```

Then `(DRS.7)` holds with
`\sigma_{\mathrm{diag}}=\beta_{\mathrm{diag}}+\gamma_{\mathrm{diag}}`, hence
`(DRS.1)` follows.

**Proof.**
For any `a\in Q_s^{ent}`, the triangle inequality and `(DRS.10)` give

```math
\bigl|\delta_{j,Q}(a)-\delta_{j,Q}(a_{Q,s})\bigr|
\le
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha
\le
\gamma_{\mathrm{diag}}\,\bar\delta_j(Q).
```

Combining this with `(DRS.9)` yields

```math
\bigl|\delta_{j,Q}(a)-\bar\delta_j(Q)\bigr|
\le
(\beta_{\mathrm{diag}}+\gamma_{\mathrm{diag}})\,\bar\delta_j(Q)
```

for all `a\in Q_s^{ent}`, which is `(DRS.7)` with
`\sigma_{\mathrm{diag}}=\beta_{\mathrm{diag}}+\gamma_{\mathrm{diag}}`. Now
apply Proposition `DRS.B`. ∎

### Corollary DRS.D (terminal sector-center lower density plus local Holder oscillation is the selector-native sufficient route)

Keep the density representation `(DRS.5)`. Assume each terminal
entrance-sector cell `Q_s^{ent}` in the selector refinement carries one label
center `a_{Q,s}\in Q_s^{ent}`. Assume there exist constants
`c_{\mathrm{diag}}^{ctr}>0`, `\gamma_{\mathrm{diag}}\ge 0`, and
`\alpha\in(0,1]` with
`c_{\mathrm{diag}}^{ctr}>\gamma_{\mathrm{diag}}` such that for every parent
stopped cell `Q` and every terminal entrance-sector cell `Q_s^{ent}\subset Q`,

```math
\delta_{j,Q}(a_{Q,s})
\ge
c_{\mathrm{diag}}^{ctr}\,\bar\delta_j(Q),
\tag{DRS.11}
```

and

```math
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha
\le
\gamma_{\mathrm{diag}}\,\bar\delta_j(Q).
\tag{DRS.12}
```

Then `(DRS.1)` holds with
`\theta_{\mathrm{diag}}=c_{\mathrm{diag}}^{ctr}-\gamma_{\mathrm{diag}}`.

Equivalently, the stronger selector-native sufficient realization of the
source-level sign wall is

```math
\text{terminal sector-center lower density relative to the parent-cell average}
\quad+\quad
\text{local Holder oscillation on the terminal entrance-sector cells.}
\tag{DRS.13}
```

**Proof.**
For any `a\in Q_s^{ent}`, the triangle inequality and `(DRS.12)` give

```math
\delta_{j,Q}(a)
\ge
\delta_{j,Q}(a_{Q,s})
-
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha.
```

Insert `(DRS.11)` and `(DRS.12)` to obtain

```math
\delta_{j,Q}(a)
\ge
\bigl(c_{\mathrm{diag}}^{ctr}-\gamma_{\mathrm{diag}}\bigr)\bar\delta_j(Q)
```

for every `a\in Q_s^{ent}`. Integrating over `Q_s^{ent}` yields `(DRS.1)` with
`\theta_{\mathrm{diag}}=c_{\mathrm{diag}}^{ctr}-\gamma_{\mathrm{diag}}`. ∎

### Corollary DRS.E (parent stopped-cell center lower density plus parent-cell Holder control supplies `DRS.D`)

Keep the density representation `(DRS.5)`. Assume each parent stopped cell `Q`
carries one label center `a_Q\in Q`, and each terminal entrance-sector cell
`Q_s^{ent}\subset Q` carries one label center `a_{Q,s}\in Q_s^{ent}`.

Assume there exist constants `c_{\mathrm{diag}}^{par}>0`,
`\gamma_{\mathrm{diag}}^{par}\ge 0`, and `\alpha\in(0,1]` with
`c_{\mathrm{diag}}^{par}>\gamma_{\mathrm{diag}}^{par}` such that for every
parent stopped cell `Q`,

```math
\delta_{j,Q}(a_Q)
\ge
c_{\mathrm{diag}}^{par}\,\bar\delta_j(Q),
\tag{DRS.14}
```

and

```math
[\delta_{j,Q}]_{C^\alpha(Q)}
\operatorname{diam}(Q)^\alpha
\le
\gamma_{\mathrm{diag}}^{par}\,\bar\delta_j(Q).
\tag{DRS.15}
```

Then `DRS.D` holds with
`c_{\mathrm{diag}}^{ctr}=c_{\mathrm{diag}}^{par}-\gamma_{\mathrm{diag}}^{par}`
and `\gamma_{\mathrm{diag}}=\gamma_{\mathrm{diag}}^{par}`. In particular,
`(DRS.1)` follows.

Equivalently, an even more canonical selector-native sufficient realization of
the source-level sign wall is

```math
\text{parent stopped-cell center lower density relative to the parent-cell average}
\quad+\quad
\text{parent stopped-cell Holder control of the diagonal density.}
\tag{DRS.16}
```

**Proof.**
Since `a_Q,a_{Q,s}\in Q`, one has
`|a_{Q,s}-a_Q|\le \operatorname{diam}(Q)`. Thus `(DRS.15)` gives

```math
\bigl|\delta_{j,Q}(a_{Q,s})-\delta_{j,Q}(a_Q)\bigr|
\le
[\delta_{j,Q}]_{C^\alpha(Q)}
\operatorname{diam}(Q)^\alpha
\le
\gamma_{\mathrm{diag}}^{par}\,\bar\delta_j(Q).
```

Combining this with `(DRS.14)` yields

```math
\delta_{j,Q}(a_{Q,s})
\ge
\bigl(c_{\mathrm{diag}}^{par}-\gamma_{\mathrm{diag}}^{par}\bigr)\bar\delta_j(Q),
```

which is exactly `(DRS.11)` with
`c_{\mathrm{diag}}^{ctr}=c_{\mathrm{diag}}^{par}-\gamma_{\mathrm{diag}}^{par}`.
Also, since `Q_s^{ent}\subset Q`, the parent-cell Holder bound `(DRS.15)`
implies `(DRS.12)` on `Q_s^{ent}` with the same `\gamma_{\mathrm{diag}}^{par}`.
So Corollary `DRS.D` applies. ∎

## Interpretation

This note is the strongest source-level reduction currently visible on the
selector side of the constructive `PTC-Shape` branch.

The packaged theorem-facing selector primitive remains:

```math
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision,}
\tag{DRS.3}
```

but after inheriting the bounded-multiplicity sector graph from the parent
shell/cap geometry, the row-sum side is no longer the active theorem wall. The
remaining source-level selector burden is no longer the raw restriction law
`(DRS.2)` itself. Proposition `DRS.B` shows that it is enough to prove the
sectorwise relative oscillation theorem `(DRS.8)` for the diagonal density.

A stronger sufficient realization is the anchored Holder packet `(DRS.9)`-
`(DRS.10)`, which turns the source-level selector wall into a localized
regularity-plus-aperture theorem on the entrance-sector cells.

The sharper source-level selector wall itself is now isolated separately in
[sectorwise-relative-oscillation-of-diagonal-density.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md).
An even more selector-native sufficient realization is `(DRS.13)`: lower bound
the diagonal density at the terminal sector label centers and control the local
Holder oscillation on those same terminal entrance-sector cells.
Corollary `DRS.E` sharpens this again: it is enough to lower-bound the diagonal
density at the parent stopped-cell label centers and control the Holder
oscillation on the parent stopped cells themselves.
That stronger sufficient route is now isolated separately in
[terminal-sector-center-density-and-local-holder-oscillation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md).

## Downstream Use

This note supplies one stronger source-level realization of the selector-side
constructive stop line:

```math
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average}
\;+\;
\text{finite shell comparability}
\;+\;
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced-frame shape descendants.}
\tag{DRS.4}
```

It refines the selector-side primitive recorded in
[finite-entrance-sector-sign-refinement.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-entrance-sector-sign-refinement.md),
[ptc-shape-normalization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md),
and
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).
