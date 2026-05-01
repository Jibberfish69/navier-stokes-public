# Material Lebesgue Differentiation For SCF_base

Status: conditional measure theorem.

## Statement

On a bounded-distortion same-fluid chart, assume

```math
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc},
\qquad
\nabla u\in L^2_{loc}.
```

Then, for material-a.e. point `(a,t)`,

```math
SCF_{base}(Q_r^\Phi(a,t))\to 0
\qquad (r\downarrow0).
```

## Proof

Bounded chart distortion gives material/Eulerian measure comparability. Hence parabolic Lebesgue differentiation applies in material coordinates to the pullbacks of

```math
|u|^3,
\qquad
|p|^{3/2},
\qquad
|\nabla u|^2.
```

At material-a.e. point `(a,t)`, local averages of these quantities over same-fluid parabolic cylinders converge to their point values in the normalized density sense.

For the velocity fluctuation, choose the local velocity normalizer as the average or the minimizing affine/constant mode used in `SCF_base`. The minimizing property gives a value bounded by the average-subtraction value, and Lebesgue differentiation gives

```math
r^{-2}\iint_{Q_r^\Phi(a,t)}|u-u_{r}^{norm}|^3\to0.
```

For pressure, the pressure normalization lemma fixes the CKN-compatible gauge. Since `p in L^{3/2}_{loc}`, the same differentiation theorem gives

```math
r^{-2}\iint_{Q_r^\Phi(a,t)}|p-p_{r}^{norm}|^{3/2}\to0.
```

For the gradient term,

```math
r^{-1}\iint_{Q_r^\Phi(a,t)}|\nabla u|^2\to0
```

at finite-density points of `|nabla u|^2`, which hold material-a.e. by local integrability and the parabolic scaling used in `SCF_base`.

Summing the three pieces yields

```math
SCF_{base}(Q_r^\Phi(a,t))\to0
```

for material-a.e. point.

## Consequence

For every threshold `epsilon_m>0`, material-a.e. point admits a positive same-fluid radius satisfying

```math
SCF_{base}(Q_r^\Phi(a,t))\le\epsilon_m.
```

This is the measure core of

```math
SGC.A_{a.e.}.
```