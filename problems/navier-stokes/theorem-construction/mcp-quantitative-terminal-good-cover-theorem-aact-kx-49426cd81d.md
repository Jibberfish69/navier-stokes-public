# Quantitative Terminal Good-Cover Theorem

Status: conditional quantitative cover theorem.

## Statement

On a bounded-distortion same-fluid terminal approach tail, assume

```math
\neg Jump_{avg}.
```

Then the terminal averaged route has a finite SCF-good same-fluid cover with quantitative constants

```math
r_*>0,
\qquad
\Omega<\infty,
\qquad
B_*,F_*\in L^1([t_0,T_*)).
```

## Proof

By `TGC.class`, `Jump_avg` contains both bad material points and terminal SCF-good radius degeneration. Hence `neg Jump_avg` gives two facts:

```math
\mathcal B_{\varepsilon_m}^{\Phi}\cap\mathcal T=\varnothing,
```

and terminal SCF-good radii along the tail have a positive lower bound after restricting to a terminal subtail.

The strict-margin SCF stability lemma turns pointwise good cylinders into open same-fluid good neighborhoods after radius shrink. Since the retained terminal portion is compact in the route topology, finitely many such neighborhoods cover it. Thus there are cylinders

```math
Q_j=Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
1\le j\le J,
```

with

```math
SCF_{base}(Q_j)\le\varepsilon_m,
\qquad
r_j\ge r_*>0.
```

Bounded same-fluid geometry and finite selection give finite overlap

```math
\operatorname{ovlp}(\{Q_j\}_{j=1}^{J})\le\Omega<\infty.
```

On each shrunken cylinder, `ATD_m^epsilon` and local `AACT.KX` supply route-parameter ledgers

```math
B_{j,p},F_{j,p}\in L^1(I_j),
\qquad
p\in\mathscr P_{req}.
```

The cover and the route parameter set are finite. Define

```math
B_*(t)=\sum_{j=1}^{J}\sum_{p\in\mathscr P_{req}}1_{I_j}(t)B_{j,p}(t),
```

```math
F_*(t)=\sum_{j=1}^{J}\sum_{p\in\mathscr P_{req}}1_{I_j}(t)F_{j,p}(t).
```

A finite sum of `L^1` functions is `L^1`, so

```math
B_*,F_*\in L^1([t_0,T_*)).
```

## Output

The no-`Jump_avg` terminal branch supplies the scheduler-ready quantitative cover consumed by

```math
AACT.Global.noJump.
```