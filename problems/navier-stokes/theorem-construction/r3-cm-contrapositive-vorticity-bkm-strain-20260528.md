# R3 Vorticity / BKM / Strain Wall To CM Face

Date: 2026-05-28

Status: discharged as a route-local CM face-classification theorem.

## Target

On a synchronized R3 terminal witness ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T),
```

the theorem is

```math
BKMStrainWall(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

## Proof

A vorticity/BKM terminal wall means the forward route cannot keep the continuation quantity

```math
\int_0^{T_*}\|\omega(t)\|_{L^\infty}\,dt
```

or the equivalent strain readout finite on the terminal approach.

First test carrier admissibility. If the vorticity or strain signal responsible for the terminal wall cannot be placed on the selected same-fluid localized R3 carrier Q, with retained transported ancestry and finite-overlap readout structure, then the carrier service fails:

```math
\neg Pack_Q(\mathcal W).
```

Assume Pack_Q survives. Test same-law participation. The vorticity and strain equations are derived from the same Navier-Stokes solution and use the same pressure-viscosity law. If the terminal signal cannot be represented inside that same law on Q through depth N, then the participation service fails:

```math
\neg Part_{N,Q}(\mathcal W).
```

Assume Pack_Q and Part_{N,Q} survive. If there exists rho>0 with Field_{N,rho,Q}, the Field service supplies positive-scale coherent control of the differentiated velocity tower on Q. Since N is chosen above the vorticity readout depth, this gives the local-to-global bound on the BKM/strain continuation quantity over the terminal window.

Thus retained Pack, retained Part, and retained Field imply the standard BKM continuation condition. The same smooth solution extends beyond T_*. This contradicts the assumed vorticity/strain terminal wall.

Therefore, on the retained Pack+Part branch,

```math
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

The wall is exhausted by carrier loss, same-law participation loss, or coherent field loss. Hence the vorticity/BKM/strain terminal wall lands in a CM face.

## CM consequence

The face failure gives

```math
Exit(Q):=\neg Member(Q).
```