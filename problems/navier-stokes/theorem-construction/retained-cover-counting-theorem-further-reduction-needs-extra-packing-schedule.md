# Retained-Cover Counting Theorem Further Reduction Needs Extra Packing Schedule

## Status

Active theorem-facing boundary note for the localized-projector exact-potential
branch.

Role: record the result of one bounded self-attempt to reduce the scalar
retained-cover counting theorem further on the installed route. That further
reduction is not available on current hypotheses alone; it needs extra
quantitative window-envelope / packing hypotheses.

## Audit Result

The current scalar endpoint on the installed coarse localized-projector route is

```math
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)
\le
C\bigl(\mathcal E_J^{obs}(I)+\mathrm{Err}_{J,\mathrm{pair}}(I)\bigr).
\tag{RCP.0}
```

I checked whether `(RCP.0)` already collapses on disk to an older active-strip
mass-pricing packet or another installed scalar theorem. It does not.

The only nearby further reduction on disk is a stronger sufficient realization
on the adiabatic branch:

1. windowwise envelopes `(F.11h1)`-`(F.11h2)`;
2. a packing bound `\mu_J^{pair}(\mathcal J_k)\le C_{\mathrm{pack}} r_k^5`;
3. extra scale envelopes `(F.11h6)` and the split schedules `(F.11h4)`-
   `(F.11h5)`, equivalently `(EP.7e)`-`(EP.7f)`.

Those are extra quantitative hypotheses, not consequences of the present scalar
route.

## Corollary `RCP.A` (current scalar endpoint is honest and unreduced)

On the installed localized-projector coarse route, the retained-cover counting
theorem `(RCP.0)` is the honest current endpoint.

Any further reduction requires one additional theorem packet supplying
quantitative window envelopes and/or packing control strong enough to place
`\mu_J^{pair}(\mathcal J_k)` inside the split schedules `(F.11h4)`-`(F.11h5)`.

### Proof

The active-strip mass-pricing packet `F.11l` is about strip occupancy
`\sum_{S\in\mathcal I_J^{act}}|S|`, not about the retained-cover pair-family
counting term `\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)`. No direct on-disk
identification of those quantities exists.

By contrast, `F.11h1`-`(F.11h9)` and `EP.7e`-`(EP.7f)` explicitly use the same
retained-cover counting factor `|I_k|\,\mu_J^{pair}(\mathcal J_k)`, but only
after introducing extra windowwise envelopes and packing hypotheses. So those
packets are stronger sufficient realizations, not reductions of `(RCP.0)` from
current route assumptions. ∎

## Interpretation

The localized-projector coarse route should therefore be read in two layers:

1. **Installed endpoint:** one scalar retained-cover counting theorem `(RCP.0)`.
2. **Stronger sufficient continuation:** adiabatic window-envelope plus packing
   schedules `(F.11h)` / `(EP.7e)`-`(EP.7f)`.

This note does **not** claim that the stronger sufficient continuation is the
active minimal wall. It only records that without those extra hypotheses, the
scalar retained-cover counting theorem is the honest stopping point.
The separate theorem-facing realization of that stronger route is now recorded
in
[localized-projector-coarse-route-stronger-adiabatic-continuation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-stronger-adiabatic-continuation.md).
