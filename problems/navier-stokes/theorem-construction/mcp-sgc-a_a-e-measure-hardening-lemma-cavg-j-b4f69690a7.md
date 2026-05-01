# SGC.A_a.e Measure Hardening Lemma

Status: conditional measure theorem.

## Statement

On a bounded-distortion same-fluid chart, finite-energy suitability implies material almost-everywhere SCF-good coverage:

```math
SGC.A_{a.e.}:
Q^\Phi(I,A_\sharp)\setminus\mathcal B_{\varepsilon_m}^{\Phi}
\text{ admits finite SCF-good subcovers on compact subsets.}
```

## Measure comparability

The same-fluid chart has bounded distortion. Hence the material/Eulerian Jacobian satisfies

```math
0<c(M_\sharp)\le J_\Phi(a,t)\le C(M_\sharp)<\infty.
```

Therefore material spacetime null sets and Eulerian spacetime null sets agree inside the chart, up to the fixed comparability constants.

## Differentiation

Finite-energy suitability gives

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
\qquad
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc}.
```

By parabolic Lebesgue differentiation in the bounded chart, for material-a.e. point `(a,t)`,

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

Thus material-a.e. point has a positive radius with

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m.
```

## Compact good subcovers

Let

```math
\mathcal G_{\varepsilon_m}^{\Phi}
:=Q^\Phi(I,A_\sharp)\setminus\mathcal B_{\varepsilon_m}^{\Phi}.
```

For every compact set

```math
K\Subset\mathcal G_{\varepsilon_m}^{\Phi},
```

each point has a positive SCF-good cylinder. Local stability of `SCF_base` gives an open neighborhood of each point still covered by an `epsilon_m`-good same-fluid cylinder after radius shrink. Compactness gives finitely many cylinders:

```math
K\subset\bigcup_{i=1}^M Q_{r_i}^\Phi(a_i,t_i),
\qquad
SCF_{base}(Q_{r_i}^\Phi(a_i,t_i))\le\varepsilon_m.
```

This proves `SGC.A_a.e`.

## Boundary

The complement

```math
\mathcal B_{\varepsilon_m}^{\Phi}
```

is not erased by this theorem. It is carried as the averaged jump face through `CAVG.J`.