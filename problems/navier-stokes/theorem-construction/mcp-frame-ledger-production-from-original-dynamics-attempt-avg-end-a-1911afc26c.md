# Frame-Ledger Production From Original Dynamics Attempt

Status: failed as a direct theorem. This identifies the direct branch obstruction and preserves the averaged-route workaround.

## Target

The requested direct theorem is

```math
OriginalSmoothData
\Longrightarrow
\Gamma_\sharp+
\|A^{-1}\dot A\|_{scale}
\text{ controlled on terminal same-fluid charts}.
```

Here `Gamma_sharp` is the bounded-distortion / pack-side chart gauge, and `A(t)` is the affine frame used in the moving-cylinder CKN normalization.

## Calculation

The same-fluid deformation gradient obeys

```math
\partial_tF(a,t)=(\nabla u)(\Phi(a,t),t)F(a,t).
```

Thus

```math
\frac{d}{dt}\log \|F\|
\le C_F
\|\nabla u(t)\|_{L^\infty},
```

and similarly for `F^{-1}`. A sufficient direct terminal estimate is therefore

```math
\int_{t_0}^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty.
```

Equivalently, one may prove a pack-native strain budget

```math
Pack.TTU:
OriginalSmoothData
\Longrightarrow
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty.
```

The affine frame must spend the actual matrix strain budget. If `A(t)` is tied
to the same-fluid deformation/transported chart, the coefficient is

```math
B_A(t):=A(t)^{-1}\dot A(t),
```

and terminal scale-normalized control of that ledger requires

```math
\int_{t_0}^{T_*}\|B_A(t)\|\,dt<\infty.
```

The displayed strain budget implies this only after the same-frame comparison

```math
\|A(t)^{-1}\dot A(t)\|
\le C_A\|\nabla u(t)\|_{L^\infty(\Omega_A(t))}
```

is proved on the transported chart domain `\Omega_A(t)`. Without that
comparison, the affine frame budget remains a separate hypothesis rather than a
"same kind" consequence.

## Failed substitutes

Incompressibility gives only

```math
\det F=1.
```

It does not bound singular values or inverse singular values.

Energy and enstrophy give

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
```

which do not imply the terminal Lipschitz integral or a pack-native strain budget.

Endpoint exclusion cannot be used here, since `END.Pack` consumes the pack/frame control that the direct theorem would be trying to produce.

## Verdict

The direct theorem

```math
OriginalSmoothData
\Longrightarrow
\Gamma_\sharp+
\|A^{-1}\dot A\|_{scale}<\infty
\text{ on the terminal tail}
```

is not discharged by the current analytic inputs. It is equivalent to, or stronger than, the direct `Pack.TTU` obstruction.

## Noncircular replacement

The averaged route should continue to use the terminal-good-cover dichotomy:

```math
TGC.A:
SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
Jump_{avg}\vee\text{finite scheduled SCF-good cover}.
```

On the no-`Jump_avg` branch, bounded chart/cover ledgers are inputs to `AACT.Global.noJump`. On the complementary branch, `Jump_avg` is consumed by `AVG.END.A`. This avoids spending endpoint exclusion to manufacture the pack gauge.
