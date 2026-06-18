# SGC.A_a.e Material Coverage Completion

Status: conditional measure/coverage theorem.

## Theorem

Let `Q^Phi(I,A_sharp)` be a retained same-fluid approach chart with bounded distortion. Let `(u,p)` be a suitable finite-energy Navier-Stokes solution on this chart. Then finite energy supplies material almost-everywhere `SCF_base` good cylinders:

```math
SGC.A_{a.e.}:
Q^\Phi(I,A_\sharp)\setminus\mathcal B_{\varepsilon_m}^{\Phi}
\text{ admits finite SCF-good subcovers on compact subsets}.
```

The bad material set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

## Proof

Finite energy and suitability give

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
\qquad
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc}.
```

The same-fluid chart has bounded distortion: for its spatial Jacobian \(J_\Phi(a,t)\) there are constants \(0<c_\Phi\le C_\Phi<\infty\) on the chart such that

```math
c_\Phi \le |\det J_\Phi(a,t)| \le C_\Phi .
```

Consequently, for every nonnegative measurable \(f\) supported in the chart,

```math
c_\Phi\iint f(\Phi(a,t),t)\,da\,dt
\le
\iint f(x,t)\,dx\,dt
\le
C_\Phi\iint f(\Phi(a,t),t)\,da\,dt .
```

Pulling the local energy-class functions into material coordinates therefore preserves local integrability with constants depending only on \(c_\Phi,C_\Phi\).

Parabolic Lebesgue differentiation then gives, for material-a.e. `(a,t)`,

```math
r^{-2}\iint_{Q_r^\Phi(a,t)}|u-u_{a,t,r}^{norm}|^3\to0,
```

```math
r^{-2}\iint_{Q_r^\Phi(a,t)}|p-p_{a,t,r}^{norm}|^{3/2}\to0,
```

and

```math
r^{-1}\iint_{Q_r^\Phi(a,t)}|\nabla u|^2\to0.
```

Hence material-a.e. `(a,t)` admits some positive radius with

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m.
```

This defines the good set

```math
\mathcal G_{\varepsilon_m}^{\Phi}
:=Q^\Phi(I,A_\sharp)\setminus\mathcal B_{\varepsilon_m}^{\Phi}.
```

For every compact

```math
K\Subset\mathcal G_{\varepsilon_m}^{\Phi},
```

each point of `K` has a positive SCF-good cylinder. Local stability of the normalized SCF packet under sufficiently small center and radius perturbations gives an open neighborhood covered by comparable SCF-good cylinders. These open neighborhoods cover `K`. Compactness gives finitely many cylinders:

```math
K\subset\bigcup_{i=1}^M Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

This proves `SGC.A_a.e`.

## Output

The good material region has finite SCF-good subcovers locally. Combined with `ATD_m^epsilon`, each such cylinder supplies the averaged finite-depth tower packet.

## Boundary

Finite energy supplies almost-everywhere good coverage. The complement is retained as

```math
\mathcal B_{\varepsilon_m}^{\Phi}
```

and routed by `CAVG.J` into `Jump_avg`.
