# Jump_avg branch elimination rerun audit with nu_SCF charge

## Target

Rerun the `jump-avg-branch-elimination` audit after forcing the route to use one shared charge.

## Final charge selected

The final shared charge for this rerun is

```math
nu_SCF = mu_D + sum_chi mu_P_chi.
```

For a terminal window `Q_k`, the charge is

```math
D_k_SCF = nu_SCF(Q_k).
```

The hF survivor charge is kept out of the proof unless a comparison theorem with `nu_SCF` is installed.

## Current proved side

The upper side is available for `nu_SCF`:

```math
sum_k D_k_SCF <= C_atlas nu_SCF(total) < infinity
```

for separated or bounded-overlap terminal window families in the finite transported atlas. This follows from finite dissipation, finite local pressure measure, and bounded overlap.

## Missing side

The lower side is unavailable:

```math
Jump_avg => positive terminal lower accumulation for nu_SCF
```

is not installed.

The reason is structural. `Jump_avg` records terminal collapse of the full `SCF_base` good radius. The charge `nu_SCF` tracks only analytic pressure-dissipation mass. Current surfaces do not prove that full `SCF_base` radius collapse must occur through the analytic pressure-dissipation components rather than through geometric, field-side, or unselected coherence loss.

## Audit verdict

The rerun does not discharge `jump-avg-branch-elimination`.

The route has made real progress: the final upper-bound charge has been selected and controlled. The blocker is now smaller and exact:

```math
Jump_avg + SCFBase radius collapse
=> positive terminal lower accumulation for nu_SCF.
```

Equivalently, the next theorem is a component-selection / moving-concentration compactness result:

```math
failure of SCFBase.Modulus
=> nonzero terminal defect carried by mu_D + sum_chi mu_P_chi.
```

## Status

`jump-avg-branch-elimination` remains open.

## Boundary

This is a local theorem-work audit artifact. It records a failed discharge and the exact remaining theorem. It does not update the proof-obligation matrix to grounded.