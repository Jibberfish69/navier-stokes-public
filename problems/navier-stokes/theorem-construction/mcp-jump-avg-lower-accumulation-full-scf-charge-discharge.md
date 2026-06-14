# Jump_avg lower accumulation for the full-SCF shared charge

## Status

Conditional discharge of the lower side for an enlarged shared charge.

The narrow target

```math
Jump_{avg}\Longrightarrow \text{positive terminal lower accumulation for }\nu_{SCF}
```

remains blocked by the `E_u` component-selection channel. This note closes the lower theorem after replacing the narrow charge by the full-SCF charge that also carries `E_u`.

## Definition of the enlarged charge

On a selected same-fluid terminal atlas, define the base packet by

```math
SCF_{base}=E_u+D_u+P+G_\Phi.
```

Let

```math
\nu_{fullSCF}:=\mu_{E}+\mu_D+\sum_\chi\mu_{P,\chi}+\mu_{G},
```

where `\mu_E` is the additive velocity-energy carrier, `\mu_D` is the dissipation carrier, `\mu_{P,\chi}` are the local pressure carriers, and `\mu_G` is the controlled geometry ledger on the retained bounded-distortion same-fluid atlas.

The narrow charge is

```math
\nu_{SCF}=\mu_D+\sum_\chi\mu_{P,\chi}.
```

The enlarged charge is the shared charge for the next no-escape step. Its lower side sees every possible `SCF_base` threshold component; its upper side is exactly the active-window amplitude-gain target.

## Theorem

Assume `Jump_avg(\mathcal T)` on a bounded-distortion same-fluid terminal tail. Then there is a separated terminal schedule of admissible windows `Q_k` such that

```math
SCF_{base}(Q_k)>\varepsilon_m
```

and

```math
\nu_{fullSCF}(Q_k)\ge c_m>0
```

for every `k`. Hence

```math
\sum_k \nu_{fullSCF}(Q_k)=\infty
```

on any infinite separated terminal schedule, or equivalently the branch has positive terminal lower accumulation for the enlarged full-SCF charge.

## Proof

By the definition of `Jump_avg`, every terminal subtail has loss of positive SCF-good radius. Therefore, for each terminal index `k`, choose a material-time point and radius giving an admissible same-fluid window `Q_k` with

```math
SCF_{base}(Q_k)>\varepsilon_m.
```

Apply a standard Vitali/Besicovitch extraction in the bounded-distortion same-fluid atlas to obtain a separated terminal subfamily with bounded overlap. The terminal property is preserved by passing to this subfamily.

For each selected window, decompose the failed packet:

```math
SCF_{base}(Q_k)=E_u(Q_k)+D_u(Q_k)+P(Q_k)+G_\Phi(Q_k).
```

The bounded-distortion atlas controls the purely geometric ledger. After shrinking the SCF threshold margin if needed, the failure inequality implies that at least one analytic or ledger component carried by `\nu_{fullSCF}` is bounded below. Thus

```math
\nu_{fullSCF}(Q_k)\ge c_m\varepsilon_m=:c_*>0.
```

The separated schedule gives pairwise terminally separated windows with bounded overlap, so the lower mass persists along the terminal sequence:

```math
\liminf_k\nu_{fullSCF}(Q_k)\ge c_*>0.
```

This proves lower accumulation for the enlarged shared charge.

## Consequence

The previous obstruction for the narrow `\nu_{SCF}` charge is resolved by changing the shared charge rather than forcing the `E_u` channel into `D_u/P`. The remaining theorem is the upper side for the enlarged charge:

```math
\sum_k r_k^{-\alpha}\nu_{fullSCF}(Q_k)\le C(E_0,\nu,\text{source})
```

or an equivalent heat-scale square-source estimate.

That upper estimate is exactly the active-window amplitude gain target.

## Boundary

This note closes only the lower side. The branch contradiction for `Jump_avg` still requires scale-normalized upper control for the `E_u` part of `\nu_{fullSCF}`. The next target is active-window amplitude gain.
