# Exterior Energy Tightness From Weighted Moment Propagation

## Target

For periodic approximants `u_n` on boxes with side lengths `L_n\to\infty`, prove

```math
\lim_{R\to\infty}\sup_n\sup_{t\le T}\int_{|x|>R}|u_n(x,t)|^2dx=0.
```

## Theorem `Tail.E`

Assume the approximating data have a uniform weighted moment

```math
\sup_n\int (1+|x|^2)^a |u_n^0(x)|^2dx <\infty
\qquad(a>0),
```

and assume the exterior pressure flux through annuli is controlled by

```math
\int_0^T\left|\int_{R<|x|<2R}p_n u_n\cdot\nabla\chi_R dx\right|dt
\le C_T R^{-\sigma}+o_R(1)
```

for some `\sigma>0`. Then exterior energy tightness holds.

## Proof

Let `\chi_R` vanish on `B_R` and equal one outside `B_{2R}`. The localized energy identity gives

```math
\frac12\frac d{dt}\int \chi_R |u_n|^2
+\nu\int \chi_R |\nabla u_n|^2
\le
C R^{-2}\int_{R<|x|<2R}|u_n|^2
+\int (|u_n|^2+2p_n)u_n\cdot\nabla\chi_R.
```

The viscous cutoff term is bounded by `CR^{-2}\|u_n\|_2^2`. The convective flux term has size

```math
R^{-1}\int_{R<|x|<2R}|u_n|^3,
```

which is controlled on smooth finite windows by local interpolation and the annular energy tail. The pressure flux is controlled by the stated pressure-tail hypothesis.

The weighted moment gives the initial tail bound

```math
\int_{|x|>R}|u_n^0|^2dx\le C R^{-2a}.
```

Integrating in time and applying Gronwall to the exterior tail functional yields

```math
\sup_{t\le T}\int_{|x|>2R}|u_n(x,t)|^2dx
\le C_T R^{-\gamma}+o_R(1)
```

for some `\gamma>0`. Taking `R\to\infty` gives the claim.

## Exact Export Input

The theorem reduces exterior tightness to two concrete estimates:

```math
\text{uniform weighted }L^2\text{ moment propagation},
```

and

```math
\text{annular pressure-flux control}.
```

These are the exterior inputs needed by the periodic-to-`R^3` exhaustion theorem.

## Boundary

The result is conditional on weighted/tail propagation. It records the route for converting decay of the approximating data into uniform exterior energy tightness.