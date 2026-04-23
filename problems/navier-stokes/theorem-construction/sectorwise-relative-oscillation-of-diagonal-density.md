# Sectorwise Relative Oscillation Of Diagonal Density

## Status

Active theorem-facing upstream debt note.

Role: isolate the strongest selector-side source theorem currently visible on
the constructive exact-potential shape branch, namely sectorwise relative
oscillation control of the diagonal density around the parent-cell average.

## Purpose

Discharge the final selector-side source reduction presently exported by the
`TPS-sign-ent` chain:

```math
\boxed{
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average}
\Longrightarrow
\text{diagonal restriction stability on the entrance-sector refinement.}
}
\tag{SROD.0}
```

This is the sharper source-level selector wall behind the packaged theorem
`QSP.11k` and the kernel-local selector wall `QSP.11o`.

## Exact Setup

Keep the hypotheses of `TPS-sign-ent''''` from
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md).
Assume that for every parent stopped cell `Q` there exists a nonnegative
diagonal density `\delta_{j,Q}\in L^1(Q,d\mu_j)` such that

```math
d_j^{diag}(A)=\int_A \delta_{j,Q}\,d\mu_j
\qquad\text{for every measurable }A\subseteq Q.
\tag{SROD.0a}
```

Write the parent-cell average diagonal density as

```math
\bar\delta_j(Q)
:=
\frac{d_j^{diag}(Q)}{\mu_j(Q)}
=
\fint_Q \delta_{j,Q}\,d\mu_j.
\tag{SROD.0b}
```

## Exact Target

### Theorem SROD.A (sectorwise relative oscillation implies diagonal restriction stability)

Assume there exists a uniform constant `0\le \sigma_{\mathrm{diag}}<1` such
that for every parent stopped cell `Q` and every terminal entrance-sector cell
`Q_s^{ent}\subset Q`,

```math
\operatorname*{ess\,sup}_{a\in Q_s^{ent}}
\bigl|\delta_{j,Q}(a)-\bar\delta_j(Q)\bigr|
\le
\sigma_{\mathrm{diag}}\,\bar\delta_j(Q).
\tag{SROD.1}
```

Then diagonal restriction stability is automatic, with
`\theta_{\mathrm{diag}}=1-\sigma_{\mathrm{diag}}`:

```math
d_j^{diag}(Q_s^{ent})
\ge
(1-\sigma_{\mathrm{diag}})
d_j^{diag}(Q)\,
\frac{\mu_j(Q_s^{ent})}{\mu_j(Q)}.
\tag{SROD.2}
```

Equivalently, the remaining selector-local sign primitive shrinks to

```math
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average.}
\tag{SROD.3}
```

So this is the strongest selector-side source-level reduction currently
exposed on disk.

## Proof

By `(SROD.1)`, one has
`\delta_{j,Q}(a)\ge (1-\sigma_{\mathrm{diag}})\bar\delta_j(Q)` for
`d\mu_j`-almost every `a\in Q_s^{ent}`. Integrating over `Q_s^{ent}` and using
`(SROD.0b)` gives

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
\tag{SROD.4}
```

which is exactly `(SROD.2)`. ∎

### Corollary SROD.B (terminal sector-center lower density plus local Holder oscillation is a stronger selector-native bypass route)

Keep the setup above. Assume each terminal entrance-sector cell `Q_s^{ent}`
carries one label center `a_{Q,s}\in Q_s^{ent}`. Assume there exist constants
`c_{\mathrm{diag}}^{ctr}>0`, `\gamma_{\mathrm{diag}}\ge 0`, and
`\alpha\in(0,1]` with `c_{\mathrm{diag}}^{ctr}>\gamma_{\mathrm{diag}}` such
that for every parent stopped cell `Q` and every terminal entrance-sector cell
`Q_s^{ent}\subset Q`,

```math
\delta_{j,Q}(a_{Q,s})
\ge
c_{\mathrm{diag}}^{ctr}\,\bar\delta_j(Q),
\tag{SROD.7}
```

and

```math
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha
\le
\gamma_{\mathrm{diag}}\,\bar\delta_j(Q).
\tag{SROD.8}
```

Then `(SROD.2)` holds with
`\theta_{\mathrm{diag}}=c_{\mathrm{diag}}^{ctr}-\gamma_{\mathrm{diag}}`.

Equivalently, one stronger selector-native bypass of the oscillation wall is

```math
\text{terminal sector-center lower density relative to the parent-cell average}
\quad+\quad
\text{local Holder oscillation on the terminal entrance-sector cells.}
\tag{SROD.9}
```

**Proof.**
For any `a\in Q_s^{ent}`, the triangle inequality and `(SROD.8)` give

```math
\delta_{j,Q}(a)
\ge
\delta_{j,Q}(a_{Q,s})
-
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha
\ge
\bigl(c_{\mathrm{diag}}^{ctr}-\gamma_{\mathrm{diag}}\bigr)\bar\delta_j(Q),
```

Integrating this lower bound over `Q_s^{ent}` yields `(SROD.2)` directly with
`\theta_{\mathrm{diag}}=c_{\mathrm{diag}}^{ctr}-\gamma_{\mathrm{diag}}`. ∎

## Interpretation

The selector-side constructive hierarchy is now:

```math
\text{sectorwise relative oscillation control}
\Longrightarrow
\text{diagonal restriction stability}
\Longrightarrow
\text{entrance-sector selector primitive}
\tag{SROD.5}
```

So, once the inherited bounded-multiplicity sector graph and the parent sign
packet are accepted, the remaining selector-side source wall is no longer the
full entrance-sector refinement theorem. It is the oscillation control of the
diagonal density on terminal sectors.

One stronger selector-native sufficient realization of that same wall is the
terminal-sector-center route `(SROD.9)`, which bypasses `(SROD.1)` and reaches
the same downstream diagonal restriction theorem directly.
That stronger selector-native route is now isolated separately in
[terminal-sector-center-density-and-local-holder-oscillation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md).

## Downstream Use

This note gives the sharpest selector-side stop line currently visible on the
constructive exact-potential branch:

```math
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average}
\;+\;
\text{finite shell comparability}
\;+\;
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced-frame shape descendants.}
\tag{SROD.6}
```

A stronger selector-native sufficient route is:

```math
\text{terminal sector-center lower density relative to the parent-cell average}
\;+\;
\text{local Holder oscillation on the terminal entrance-sector cells}
\;+\;
\text{finite shell comparability}
\;+\;
\sup|\nabla v_J|\text{ on the active segments}
\Longrightarrow
\text{balanced-frame shape descendants.}
\tag{SROD.10}
```

It refines the selector-side walls recorded in
[terminal-sector-center-density-and-local-holder-oscillation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md),
[diagonal-restriction-stability-on-entrance-sector-refinement.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/diagonal-restriction-stability-on-entrance-sector-refinement.md),
[finite-entrance-sector-sign-refinement.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-entrance-sector-sign-refinement.md),
[ptc-shape-normalization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md),
and
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).
