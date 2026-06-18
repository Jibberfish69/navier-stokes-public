# R3 Vorticity / BKM / Strain Wall To CM Face

Date: 2026-05-28

Status: route-local CM face-classification theorem conditional on the exact
BKM/strain readout bridge stated below.

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

Assume Pack_Q and Part_{N,Q} survive. If there exists rho>0 with
Field_{N,rho,Q}, the proof still needs the exact readout bridge

```math
\mathrm{Field}_{N,\rho,Q}(\mathcal W)
\Longrightarrow
\int_{T_*-\delta}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty,
\tag{BKM.1}
```

or the corresponding strain/Besov criterion on the same synchronized ledger.
Equivalently, the retained positive-scale coherent tower must supply a finite
quantity `G_{N,\rho,Q}(t)` such that

```math
\|\omega(t)\|_{L^\infty}
\le C_{N,\rho,Q}G_{N,\rho,Q}(t),
\qquad
\int_{T_*-\delta}^{T_*}G_{N,\rho,Q}(t)\,dt<\infty.
\tag{BKM.2}
```

Under `(BKM.1)` or `(BKM.2)`, the BKM continuation theorem gives a finite
Sobolev continuation norm `M_s=\sup_{t<T_*}\|u(t)\|_{H^s}<\infty` for
`s>5/2` on a terminal interval. The \(H^s\) local theory then supplies a
uniform lifespan `\tau(\nu,s,M_s)>0`; relaunching from times
`t_j\uparrow T_*` with `T_*-t_j<\tau/2` and using uniqueness on the overlap
extends the same smooth solution beyond `T_*`. This contradicts the assumed
vorticity/strain terminal wall.

Without the readout bridge `(BKM.1)` or `(BKM.2)`, retained Field is only a
candidate BKM-facing bridge and the Field-face conclusion below is not yet
proved by this note.

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
