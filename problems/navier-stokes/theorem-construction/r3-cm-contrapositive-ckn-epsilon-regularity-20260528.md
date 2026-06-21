# R3 CKN / Epsilon-Regularity Wall To CM Face

Date: 2026-05-28

Status: discharged as a route-local CM Part/Field-classification theorem.

## Target

For a synchronized R3 witness ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T),
```

prove

```math
CKNWall(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

## Proof

A CKN or epsilon-regularity terminal wall is represented by a same-time approach family of bad parabolic cylinders. The first requirement is synchronized carrier selection. If the bad-cylinder family has no localized same-fluid carrier Q with retained ancestry, finite-overlap cylinder bookkeeping, and terminal selection data, then the Pack service fails:

```math
\neg Pack_Q(\mathcal W).
```

Assume Pack_Q survives. The local energy inequality, pressure decomposition, velocity field, viscosity, and nonlinear source terms must belong to the same Navier-Stokes participation ledger. If this local PDE participation fails, then

```math
\neg Part_{N,Q}(\mathcal W).
```

Assume Part_{N,Q} plus Field-window evidence survive. A persistent CKN wall says that every terminal positive-scale cylinder remains bad for the epsilon criterion. The retained carrier and same-law local energy ledger leave only one possible failure: the positive-scale field service never survives. Hence

```math
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

If some Field_{N,rho,Q} survives, it supplies a positive-scale coherent local cylinder with the required epsilon smallness/readout. The epsilon-regularity theorem gives local smoothness on the terminal cylinder, contradicting the bad-cylinder wall.

Therefore the CKN/epsilon terminal wall lands in Part or Field.

## CM consequence

The Part/Field failure gives

```math
Exit(Q):=\neg Member(Q).
```