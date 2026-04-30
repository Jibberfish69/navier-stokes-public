# SGC.A_a.e Terminal SCF-Good Coverage

Status: conditional measure/coverage theorem.

## Statement

On a bounded-distortion same-fluid approach chart, finite-energy suitability supplies material almost-everywhere `SCF_base` good cylinders. Equivalently,

```math
SGC.A_{a.e.}:
Q^\Phi(I,A_\sharp)\setminus\mathcal B_{\varepsilon_m}^{\Phi}
\text{ admits finite SCF-good subcovers locally on compact subsets.}
```

Here

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

## Proof

Finite energy and suitability give the local scale-critical integrability layer

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
\qquad
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc}.
```

On a same-fluid chart with bounded distortion, material spacetime measure and Eulerian spacetime measure are comparable on the chart. Parabolic Lebesgue differentiation therefore applies after pullback to material coordinates.

At material-a.e. point `(a,t)`, the normalized quantities satisfy

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

Thus, for material-a.e. point, there is a positive radius `r(a,t)` such that

```math
SCF_{base}(Q_{r(a,t)}^\Phi(a,t))\le\varepsilon_m.
```

These points form the good material region

```math
\mathcal G_{\varepsilon_m}^{\Phi}
:=Q^\Phi(I,A_\sharp)\setminus\mathcal B_{\varepsilon_m}^{\Phi}.
```

The strict inequality can be stabilized after a radius shrink and a small change of center inside the same bounded chart. Hence the SCF-good cylinders form an open cover of each compact subset

```math
K\Subset\mathcal G_{\varepsilon_m}^{\Phi}.
```

Compactness then gives finitely many SCF-good cylinders

```math
K\subset\bigcup_{i=1}^M Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

This proves `SGC.A_{a.e.}`.

## Boundary

This theorem supplies almost-everywhere coverage and compact-good finite subcovers. The complement is exactly the bad material set `\mathcal B_{\varepsilon_m}^{\Phi}` and is routed by the next theorem item

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow Jump_{avg}.
```

Thus the route uses

```math
SGC.A_{a.e.}+CAVG.J
```

rather than a strong full-coverage assertion.