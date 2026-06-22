---
theorem_id: forward-gold-material-strain-metric-clock-sharpening-20260622
status: base-material-annular-geometry-clock-sharpened-to-strain-full-tower-still-open
logical_landing_node: material_strain_metric_clock
edge_effect: >-
  Corrects the material deformation clock for the heat-scale annular carrier.
  The transported annular metric is driven by the symmetric strain, not by the
  arbitrary rotational part of the velocity gradient. For the base material
  annulus, bounded geometry follows from the heat-scale strain clock int
  ||S(V_m)||_Linf ds. This matches the physical stress/strain carrier: strain is
  the internal deformation force recorded by the full pressure-viscosity-
  incompressibility-velocity packet. The strain clock is exactly invariant
  under heat-scale normalization, so it is a material deformation-time readout,
  not a radius-discounted energy quantity. The correction sharpens the no-exit
  target but does not prove the full finite tower, because the pulled-back
  derivative tower still needs a controlled frame/connection and transported
  velocity-pressure coefficient record.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-material-annular-return-record-noexit-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-record-survival-material-clock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-material-tower-noexit-direct-attempt-20260622.md
---

# Material Strain-Metric Clock Sharpening

Date: 2026-06-22

## 0. Correction

The earlier material-clock notes used the full velocity-gradient clock as a
sufficient condition:

```math
\int \|\nabla V_m(s)\|_{L^\infty}\,ds < \infty.
\tag{SMC.1}
```

That is stronger than the geometry needs.  The annular carrier does not lose
its thickness or collar geometry because of pure rotation.  Its metric changes
because of strain.

Write

```math
\nabla V_m = S_m+\Omega_m,
\qquad
S_m={1\over2}\left(\nabla V_m+\nabla V_m^\top\right),
\qquad
\Omega_m={1\over2}\left(\nabla V_m-\nabla V_m^\top\right).
\tag{SMC.2}
```

The base material-annulus geometry is controlled by \(S_m\), not by
\(\Omega_m\).

## 1. Exact metric identity

Let \(Y_m(a,s)\) be the normalized material map and

```math
F_m=D_aY_m.
\tag{SMC.3}
```

Then

```math
\partial_sF_m=(\nabla V_m)(Y_m,s)F_m.
\tag{SMC.4}
```

Define the pulled-back metric

```math
C_m=F_m^\top F_m .
\tag{SMC.5}
```

Then

```math
\begin{aligned}
\partial_s C_m
&=
(\partial_sF_m)^\top F_m+F_m^\top(\partial_sF_m)\\
&=
F_m^\top
\left(\nabla V_m^\top+\nabla V_m\right)
F_m\\
&=
2F_m^\top S_m F_m.
\end{aligned}
\tag{SMC.6}
```

The antisymmetric part cancels from the metric identity.  It rotates the
material frame; it does not stretch the annulus.

For any material tangent vector \(\xi\),

```math
{d\over ds}|F_m\xi|^2
=
2(F_m\xi)\cdot S_m(F_m\xi).
\tag{SMC.7}
```

Therefore

```math
{d\over ds}\log |F_m\xi|^2
\le
2\|S_m(s)\|_{L^\infty(\widehat A_m(s))},
\tag{SMC.8}
```

and similarly for the lower singular value.  Hence

```math
\boxed{
\|F_m(s)\|_\infty+\|F_m(s)^{-1}\|_\infty
\le
C
\exp\left(
\int_I
\|S_m(\tau)\|_{L^\infty(\widehat A_m(\tau))}\,d\tau
\right).
}
\tag{SMC.9}
```

This is the exact base annular geometry clock.

## 2. Heat-scale form

On a retained heat-scale annular return window \(I_m^{ret}\), the base carrier
geometry is retained if

```math
\boxed{
\sup_m
\int_{I_m^{ret}}
\|S(V_m)(s)\|_{L^\infty(\widehat A_m(s))}\,ds
<\infty .
}
\tag{SMC.10}
```

This is sharper than the full-gradient condition.  It also matches the
physical carrier:

```math
\sigma_m=-Q_mI+2\nu S(V_m).
\tag{SMC.11}
```

The same strain that changes the annular metric is the strain recorded by the
Cauchy stress in the annular stress-work identity.

The clock is exactly the heat-scale version of the physical material strain
clock.  For

```math
V_r(s,y)=r\,u(t_r+r^2s,x_r+ry),
\tag{SMC.11a}
```

one has

```math
S_y(V_r)(s,y)=r^2S_x(u)(t_r+r^2s,x_r+ry),
\qquad
ds={dt\over r^2}.
\tag{SMC.11b}
```

Therefore, on the corresponding material annulus,

```math
\int_{s_0}^{s_1}
\|S_y(V_r)(s)\|_{L^\infty_y}\,ds
=
\int_{t_0}^{t_1}
\|S_x(u)(t)\|_{L^\infty_x}\,dt .
\tag{SMC.11c}
```

So the strain-metric clock is not a radius-discounted energy quantity.  It is
the scale-invariant material deformation time experienced by the annulus.

The same identity gives the exact deformation-factor lower bound.  Let

```math
K_m(I)
:=
\int_I
\|S_m(s)\|_{L^\infty(\widehat A_m(s))}\,ds .
\tag{SMC.11d}
```

Then `(SMC.8)` gives, for every material line element,

```math
e^{-K_m(I)}|\xi_0|
\le
|F_m(s)\xi_0|
\le
e^{K_m(I)}|\xi_0| .
\tag{SMC.11e}
```

Consequently, if the same material annulus changes a line length, collar
thickness, or comparable material separation by a factor \(\Lambda\), then

```math
K_m(I)\ge \log\Lambda .
\tag{SMC.11f}
```

The lower bound is additive along a finite same-material thinning chain.  Let
\(I_1,\ldots,I_M\) be pairwise disjoint retained material-time intervals on
the same transported annulus.  If, on each \(I_j\), some retained material line
element, collar thickness, or comparable material separation changes by a
factor \(\Lambda_j>1\), then

```math
\int_{\bigcup_{j=1}^{M}I_j}
\|S_m(s)\|_{L^\infty(\widehat A_m(s))}\,ds
=
\sum_{j=1}^{M}K_m(I_j)
\ge
\sum_{j=1}^{M}\log\Lambda_j .
\tag{SMC.11g}
```

In particular, dyadic thinning on the same retained material annulus costs at
least \(M\log 2\) in the strain clock over \(M\) retained thinning events:

```math
\Lambda_j\ge2\quad(1\le j\le M)
\qquad\Longrightarrow\qquad
\int_{\bigcup_j I_j}\|S_m(s)\|_{L^\infty}\,ds
\ge
M\log2 .
\tag{SMC.11h}
```

This is the exact mathematical version of the spike-thinning statement on a
retained material annulus: the annulus cannot compress or stretch by an
arbitrary factor while the strain clock stays bounded.  A same-material
infinite dyadic thinning cascade cannot be invisible as a center-only terminal
pulse; either the retained annulus has unbounded strain-clock record, or the
same-material record has been lost.

## 3. What this proves

The base material annulus, transported collars, and annular thickness do not
require a bound on arbitrary vorticity rotation.  They require the strain clock
`(SMC.10)`.

Thus the no-exit target for the base annular carrier should be sharpened from

```math
\int \|\nabla V_m\|_{L^\infty}\,ds<\infty
\tag{SMC.12}
```

to

```math
\int \|S(V_m)\|_{L^\infty}\,ds<\infty.
\tag{SMC.13}
```

This is not cosmetic.  It keeps the later-on annular debt in the stress/strain
object Thomas identified, instead of measuring it with an overlarge
full-gradient clock.

## 4. What remains open

The finite derivative tower is stricter than base annular geometry.  After
pullback,

```math
\partial_s v_m
+
A_m^\top\nabla_a q_m
=
\nu\,\operatorname{div}_a(G_m\nabla_a v_m),
\qquad
\operatorname{div}_a(A_mv_m)=0,
\tag{SMC.14}
```

and differentiating this equation creates commutators involving derivatives of
\(A_m\), \(G_m\), \(v_m\), and \(q_m\).

The strain clock controls the singular values of \(F_m\).  It does not by
itself control all higher material coefficient derivatives or the transported
velocity-pressure tower.  A full no-exit theorem still needs one of the
following same-packet records:

```math
\boxed{
\sup_m
\left[
\int_{I_m^{ret}}\|S(V_m)\|_{L^\infty}\,ds
+
\mathfrak T_{N,m}^{frame/coeff}(I_m^{ret})
+
\mathfrak T_{N,m}^{v,q}(I_m^{ret})
\right]
<\infty.
}
\tag{SMC.15}
```

Here the frame/coefficient term records the controlled transported frame or
connection needed by the finite tower, and the \(v,q\) term records the
transported velocity-pressure tower.  Both remain inside the same
pressure-viscosity-incompressibility-velocity packet.

## 5. Result

The heat-scale no-exit problem is sharpened:

```math
\boxed{
\text{base annular geometry no-exit}
\Longleftarrow
\text{uniform heat-scale strain metric clock}.
}
\tag{SMC.16}
```

The full forward-gold no-exit theorem is now:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\text{uniform heat-scale strain metric clock}
+
\text{finite same-packet frame/coefficient/velocity-pressure tower}.
}
\tag{SMC.17}
```

That full theorem is still not proved by the current installed inputs.  The
important correction is that the base annular carrier is tied to strain, which
is the internal deformation record of the full packet, rather than to a
viscosity-only or full-gradient proxy.
