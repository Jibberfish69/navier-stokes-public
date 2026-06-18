# hF survivor charge to SCFBase analytic charge bridge — obstruction

## Target

Bridge the finite-infinitesimal survivor charge with the SCFBase analytic charge so the Jump_avg route can use one shared quantity for both lower and upper estimates.

## Objects

The finite-infinitesimal survivor object uses the material separation defect

```math
D_{hF}=h-F r.
```

Its scale-window charge measures terminal deformation-memory in finite material separations.

The SCFBase analytic charge is

```math
nu_{SCF}=mu_D+sum_chi mu_{P,chi},
```

where `mu_D` is the dissipation measure and `mu_P,chi` is the local pressure measure.

## Attempt

The identity

```math
D_{hF}(a,r,t)=int_0^1 (F(a+s r,t)-F(a,t)) r ds
```

shows that the finite-infinitesimal charge measures finite-scale variation of the deformation gradient. To bridge it to `nu_SCF`, one needs an estimate of the form

```math
hF_charge <= C (nu_SCF + controlled pack/source terms).
```

A reverse bridge requires terminal `nu_SCF` mass to produce a nonzero
finite-infinitesimal survivor.

## Obstruction

The unified survivor surface defines the finite-infinitesimal object as a theorem-facing candidate. It keeps weak-star compactness, nontrivial terminal survival, branch projection, and scale-family collapse as theorem burdens.

The current repo surfaces do not provide a comparison theorem between geometric deformation-memory and analytic dissipation/local-pressure mass. The identity for `D_hF` gives deformation variation, while `nu_SCF` measures analytic pressure-dissipation concentration. These are compatible objects, yet the bridge between them is a theorem burden.

## Result

The bridge remains open. The Jump_avg no-escape route must use one final charge. Current status:

1. `nu_SCF` has a finite upper carrier.
2. The hF survivor is a candidate lower-survivor object.
3. No installed theorem identifies the two charges.

## Required theorem

A valid replacement theorem is a deformation-energy comparison:

```math
hF_charge <= C (nu_SCF + controlled pack/source terms).
```

A second valid route is to use `nu_SCF` as the only branch charge and prove Jump_avg lower accumulation directly for it.

## Boundary

This note records a failed bridge attempt and prevents mixing the hF lower-bound candidate with the SCFBase upper-carrier estimate as though they were already one charge.
