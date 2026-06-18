# nu_SCF final charge pressure/source upper bound

## Target

Install the matching upper-bound side for the final chosen charge in the Jump_avg no-escape route.

## Charge choice

The final charge for the present branch is

```math
nu_SCF := mu_D + sum_chi mu_P_chi.
```

Here `mu_D` is the dissipation measure and `mu_P_chi` is the chartwise local pressure measure. For a terminal window `Q_k`, set

```math
D_k_SCF := nu_SCF(Q_k).
```

The hF survivor charge remains a separate candidate object pending a comparison theorem. The present upper bound uses only `nu_SCF`.

## Lemma

For every separated or bounded-overlap terminal window family inside the finite transported atlas,

```math
sum_k D_k_SCF <= C_atlas nu_SCF(total) < infinity.
```

## Proof

The Leray energy inequality gives finite dissipation:

```math
int |nabla u|^2 dx dt < infinity.
```

Thus `mu_D` is finite on the terminal spacetime slab.

On each transported cutoff chart, split the pressure into a local part and a harmonic tail. The local part solves the localized pressure Poisson equation driven by the cutoff quadratic velocity tensor. Calderon-Zygmund estimates and finite-energy bounds give

```math
int |p_loc_chi|^(3/2) dx dt < infinity
```

on each chart. The atlas is finite, so the sum of chartwise local pressure measures is finite.

Therefore `nu_SCF` is a finite positive Radon measure on the terminal atlas domain. If the terminal windows have overlap at most `Omega`, then measure subadditivity with bounded overlap gives

```math
sum_k nu_SCF(Q_k) <= Omega nu_SCF(total).
```

Atlas and geometry constants are absorbed into `C_atlas`. This proves the pressure/source upper bound for the final chosen charge.

## Result

The upper side for the final `nu_SCF` charge is installed conditionally on the
displayed finite-atlas hypotheses: finitely many charts, overlap at most
`\Omega`, and finite local pressure/source measures on each chart.

## Remaining obstruction

The remaining Jump_avg work is lower production for this same charge:

```math
Jump_avg => positive terminal lower accumulation for nu_SCF.
```

The existing lower-attempt note records this as open because Jump_avg is a full SCFBase radius-collapse object and nu_SCF tracks only analytic pressure-dissipation mass.
