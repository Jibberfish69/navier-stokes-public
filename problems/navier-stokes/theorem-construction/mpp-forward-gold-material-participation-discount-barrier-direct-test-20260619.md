# MPP Forward Gold Material Participation Discount Barrier Direct Test

Date: 2026-06-19

## Status

Direct material-participation test complete.  The material packet formulation
is the cleanest exact expression of the corrected participation law, but it
does not close the terminal heat-scale branch from current inputs.

The exact result is sharper: material participation removes artificial
convection-through-a-fixed-boundary, but the physical energy identity carries
an exponential log-time discount.  Renormalizing away that discount introduces
the positive scale-growth term that prevents a monotone no-waste functional
from following directly.

## 1. Physical material packet identity

Let \((u,p)\) be a smooth incompressible Navier-Stokes solution,

```math
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{MPD.1}
```

Let \(\Omega(t)\) be a smooth material control volume:

```math
V_{\partial\Omega(t)}=u.
\tag{MPD.2}
```

Set

```math
E_{\Omega}(t)
=
\int_{\Omega(t)}{1\over2}|u|^2\,dx.
\tag{MPD.3}
```

By Reynolds transport and `(MPD.1)`,

```math
{d\over dt}E_{\Omega}(t)
=
\int_{\Omega(t)}u\cdot D_tu\,dx.
\tag{MPD.4}
```

Using the symmetric stress

```math
T(u,p)=-pI+2\nu S,
\qquad
S={\nabla u+\nabla u^T\over2},
\tag{MPD.5}
```

and \(\nabla\cdot T=-\nabla p+\nu\Delta u\), this gives the exact identity

```math
{d\over dt}E_{\Omega}(t)
+2\nu\int_{\Omega(t)}|S|^2\,dx
=
\int_{\partial\Omega(t)}u\cdot T(u,p)n\,dA.
\tag{MPD.6}
```

This is the material participation ledger.  The packet is not private:
stored kinetic energy can increase or persist only through boundary stress
work by the same coupled fluid, after interior viscous dissipation is charged.

## 2. Heat-scale material packet identity

Use the terminal heat-scale variables

```math
s=-\log(T-t),
\qquad
y={x-x_0\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\qquad
q(s,y)=(T-t)p(t,x).
\tag{MPD.7}
```

Let \(\Lambda(s)\) be the rescaled image of the physical material control
volume.  Since physical material points satisfy \(dx/dt=u\), their rescaled
motion is

```math
{dy\over ds}=v+{1\over2}y.
\tag{MPD.8}
```

The rescaled equation is

```math
\left(\partial_s+\left(v+{1\over2}y\right)\cdot\nabla_y\right)v
=
\nu\Delta_y v-\nabla_y q-{1\over2}v.
\tag{MPD.9}
```

Define

```math
E_{\Lambda}(s)
=
\int_{\Lambda(s)}{1\over2}|v|^2\,dy.
\tag{MPD.10}
```

Applying Reynolds transport in \(y\)-space with velocity
\(v+\frac12y\), and using

```math
\nabla_y\cdot\left(v+{1\over2}y\right)={3\over2},
\tag{MPD.11}
```

one obtains

```math
{d\over ds}E_{\Lambda}(s)
+2\nu\int_{\Lambda(s)}|S_y(v)|^2\,dy
=
\int_{\partial\Lambda(s)}v\cdot T_y(v,q)n\,dA
+{1\over2}E_{\Lambda}(s),
\tag{MPD.12}
```

where

```math
T_y(v,q)=-qI+2\nu S_y(v).
\tag{MPD.13}
```

The final term \(\frac12E_{\Lambda}\) is not an estimate.  It is the exact
growth term created by the parabolic rescaling of physical kinetic energy in
three space dimensions.

## 3. Discounted physical energy identity

The physical and rescaled material energies are related by

```math
E_{\Omega}(t)=e^{-s/2}E_{\Lambda}(s).
\tag{MPD.14}
```

Multiplying `(MPD.12)` by \(e^{-s/2}\) gives the exact discounted identity

```math
{d\over ds}\left(e^{-s/2}E_{\Lambda}(s)\right)
+e^{-s/2}2\nu\int_{\Lambda(s)}|S_y(v)|^2\,dy
=
e^{-s/2}
\int_{\partial\Lambda(s)}v\cdot T_y(v,q)n\,dA.
\tag{MPD.15}
```

Thus physical material participation gives a finite discounted budget in
log-time.  It does not give an unweighted budget for infinitely many unit
log-time slabs.

## 4. Why this blocks the naive strict Lyapunov route

The recurrent heat-scale branch needs an unweighted action contradiction:

```math
\sum_k\int_{J_k}\mathcal A(s)\,ds=\infty.
\tag{MPD.16}
```

The physical material energy identity controls only

```math
\sum_k\int_{J_k}e^{-s/2}\mathcal A(s)\,ds,
\tag{MPD.17}
```

after replacing \(\mathcal A\) by a stress-work or strain action controlled by
`(MPD.15)`.

The discount in `(MPD.17)` is exactly why a terminal heat-scale pulse can have
finite physical energy cost while repeating at unit normalized strength in
log-time.

Trying to remove the discount by using \(E_{\Lambda}\) instead of
\(e^{-s/2}E_{\Lambda}\) returns to `(MPD.12)`, where the additional
\(\frac12E_{\Lambda}\) term has the wrong sign for monotone decay.

Therefore a strict no-waste Lyapunov theorem cannot be obtained from material
energy alone.  It must supply a new functional or a new coercive readout that
absorbs the exact scaling-growth term and the signed boundary stress work
together.

## 5. Exact reduced supplier

The material participation pass replaces the pressure-isolated obstruction by
the exact boundary stress-work obstruction:

```math
\mathcal W_{\partial\Lambda}(s)
=
\int_{\partial\Lambda(s)}
v\cdot T_y(v,q)n\,dA.
\tag{MPD.18}
```

The needed gold supplier is one of the following exact statements.

First, a strict rescaled no-waste Lyapunov functional:

```math
-{d\over ds}L(s)
\ge
c\,\mathcal A(s)-\mathcal R_{\rm legal}(s),
\qquad
\inf_s L(s)>-\infty,
\qquad
\int^\infty\mathcal R_{\rm legal}(s)\,ds<\infty.
\tag{MPD.19}
```

Second, an unweighted boundary-stress-work reserve:

```math
\int_{s_0}^{\infty}
\left[\mathcal W_{\partial\Lambda}(s)\right]_+\,ds
<\infty
\quad\text{on the selected terminal family,}
\tag{MPD.20}
```

together with the lower action quantum for recurrent packets.

Third, an equivalent selected critical-action Carleson reserve, normalized CKN
Carleson reserve, or source-square reserve on the same material packet family.

## Verdict

The material participation identity proves the correct accounting law exactly:
no material packet gains or retains energy privately.

It does not prove the gold terminal anti-atom from current inputs.  The
remaining obstruction is no longer an isolated pressure term.  It is the
unweighted terminal control of the complete material stress-work interface
after the physical log-time discount has been removed.
