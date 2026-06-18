# Jump_avg lower accumulation for the full-SCF shared charge

## Status

Conditional discharge of the lower side for an enlarged shared charge.

The narrow target

```math
Jump_{avg}\Longrightarrow \text{positive terminal lower accumulation for }\nu_{SCF}
```

remains blocked by the `E_u` component-selection channel. This note closes the lower theorem after replacing the narrow charge by the full-SCF charge that also carries `E_u`.

## Definition of the enlarged normalized charge

On a selected same-fluid terminal atlas, write each admissible window as
`Q=Q_R^\Phi`.  Define the base packet by

```math
SCF_{base}=E_u+D_u+P+G_\Phi.
```

Here the four terms are the normalized packet quantities used by the SCF test,
not raw measures:

```math
E_u(Q)=R^{-2}\iint_Q |u-u_Q^{aff}|^3,
\qquad
D_u(Q)=R^{-1}\iint_Q |\nabla u|^2,
```

```math
P(Q)=R^{-2}\sum_\chi\iint_Q |p_\chi^{loc}|^{3/2},
\qquad
G_\Phi(Q)=\text{the normalized bounded-geometry ledger on }Q.
```

Set

```math
\mathsf N_{fullSCF}(Q):=E_u(Q)+D_u(Q)+P(Q)+G_\Phi(Q),
```

and

```math
\mathsf N_{SCF}(Q):=D_u(Q)+P(Q).
```

The raw underlying measures are `\mu_E`, `\mu_D`, `\mu_{P,\chi}`, and
`\mu_G`.  The lower side below spends the normalized packet functional
`\mathsf N_{fullSCF}(Q)`, not unnormalized raw mass.

The narrow normalized charge is

```math
\mathsf N_{SCF}=D_u+P.
```

The enlarged normalized charge is the shared charge for the next no-escape step.
Its lower side sees every possible `SCF_base` threshold component. Its upper
side is the active-window amplitude-gain target for the velocity-energy part
plus the already separated pressure/dissipation/geometric ledgers.

## Theorem

Assume `Jump_avg(\mathcal T)` on a bounded-distortion same-fluid terminal tail.
Fix the SCF threshold `\varepsilon_m>0` used in that branch.  For every terminal
subtail there is an admissible same-fluid window `Q` with

```math
SCF_{base}(Q)>\varepsilon_m.
```

If the bounded-distortion atlas supplies a terminal Besicovitch extraction, then
there is a separated terminal subfamily `{Q_k}` with bounded overlap and

```math
\mathsf N_{fullSCF}(Q_k)\ge \varepsilon_m
```

for every `k`.  Hence

```math
\sum_k \mathsf N_{fullSCF}(Q_k)=\infty
```

on any infinite separated terminal schedule selected from the `Jump_avg` tail.
This is positive terminal lower accumulation for the normalized full-SCF packet
functional.

## Proof

By the definition of `Jump_avg`, every terminal subtail has loss of positive
SCF-good radius.  For each terminal index, choose a material-time point and
radius giving an admissible same-fluid window `Q` with

```math
SCF_{base}(Q)>\varepsilon_m.
```

The extraction step is an explicit hypothesis on the retained atlas: the
Besicovitch constant `B_\Phi` gives a subfamily `{Q_k}` whose window indicators
have overlap at most `B_\Phi`, with radii still tending to the terminal scale and
with the threshold inequality preserved on the selected windows.

For each selected window, decompose the failed packet into its normalized
nonnegative components:

```math
SCF_{base}(Q_k)=E_u(Q_k)+D_u(Q_k)+P(Q_k)+G_\Phi(Q_k).
```

Since `\mathsf N_{fullSCF}` is exactly this normalized sum,

```math
\mathsf N_{fullSCF}(Q_k)=SCF_{base}(Q_k)>\varepsilon_m.
```

The separated schedule gives terminally separated windows with bounded overlap,
so the normalized lower packet mass persists along the terminal sequence:

```math
\liminf_k\mathsf N_{fullSCF}(Q_k)\ge \varepsilon_m.
```

This proves lower accumulation for the enlarged shared charge.

## Consequence

The previous obstruction for the narrow `\mathsf N_{SCF}` charge is handled by
changing the shared normalized functional rather than forcing the `E_u` channel
into `D_u/P`. The remaining theorem is the upper side for the same separated
family:

```math
\sum_k \mathsf N_{fullSCF}(Q_k)\le C(E_0,\nu,\text{atlas},\text{source})
```

or an equivalent scale-normalized heat-square/source estimate. A bound on raw
unnormalized mass is insufficient for this contradiction.

That upper estimate is exactly the active-window amplitude-gain target for the
`E_u` part, with pressure/dissipation/geometric terms kept on the same selected
carrier.

## Boundary

This note closes only the lower side. The branch contradiction for `Jump_avg`
still requires scale-normalized upper control for the `E_u` part of
`\mathsf N_{fullSCF}` on the same separated terminal schedule. The next target is
active-window amplitude gain.
