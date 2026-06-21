# R3 Type-I / Self-Similar Wall To CM Face

Date: 2026-05-28

Status: discharged as a route-local CM Part/Field-classification theorem.

## Target

For a synchronized R3 witness ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T),
```

prove

```math
TypeIWall(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

## Proof

A Type-I or self-similar route attempts to extract a terminal rescaled profile, an ancient solution profile, or a self-similar limiting object.

If the terminal profile cannot be extracted on a localized same-fluid carrier with retained ancestry, tightness, scale bookkeeping, and finite-overlap packet data, the Pack service has failed:

```math
\neg Pack_Q(\mathcal W).
```

Assume Pack_Q survives. The extracted profile must inherit the same Navier-Stokes pressure-viscosity law from the original solution. If the profile or ancient limit cannot be read as participating in that same law on the selected ledger, the Part service has failed:

```math
\neg Part_{N,Q}(\mathcal W).
```

Assume Pack_Q and Part_{N,Q} survive. If some Field_{N,rho,Q} survives, the profile has positive-scale coherent readout through the required depth on the same ledger. The Type-I/self-similar route then obtains the profile rigidity, backward uniqueness, or continuation mechanism consumed by the route. The terminal Type-I wall is eliminated.

Therefore a retained Pack+Part Type-I wall forces loss of positive-scale field coherence:

```math
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

Thus every Type-I/self-similar terminal wall lands in Part or Field.

## CM consequence

The Part/Field failure gives

```math
Exit(Q):=\neg Member(Q).
```