# FiniteTotalThetaNServiceCoordinateHardObstruction.A

Status: not discharged.  This is the exact remaining Gold theorem after the local metric-capacity and terminal-tail-storage reductions.

## 0. Target

Prove for the original smooth material Navier-Stokes history up to a candidate endpoint \(T^*\):

```math
\boxed{\int_0^{T^*}\Theta_N(t)dt<\infty.}
```

Here \(\Theta_N\) is the full moving same-material service coordinate controlling the continuation-depth material record:

```math
\Theta_N
\sim
\text{strain-metric service}
+\text{coefficient/frame service}
+\text{pressure/Hodge service}
+\text{viscous/collar service}
+\text{interface/selector service}.
```

The installed growth law is

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le C_N\Theta_N(t)dt+dR_N^0.
```

Thus finite \(\Theta_N\) implies bounded material record and hence the Gold full-clock conclusion.

## 1. What energy supplies

Original energy supplies only

```math
u\int_0^{T^*}\|\nabla u(t)\|_2^2dt<\infty,
```

and hence \(L_t^2L_x^2\) strain control.  Annular stress-work supplies local \(L^2\)-strain force records and signed/collar transactions.

These are not enough for \(\Theta_N\), because the metric part includes the scale-invariant strain clock

```math
\int\|S\|_{L^\infty(X(A,t))}dt
```

and the finite-depth material coefficient/tower service.  On heat-scale packets this clock is not radius-discounted.

## 2. Heat-scale obstruction

A terminal heat-scale stack can have physical energy cost shrinking with scale while each retained material deformation event costs order one in the material strain-metric clock.  The material metric identity

```math
\partial_t(F^TF)=2F^TSF
```

implies that dyadic thinning on the same retained material annulus costs at least \(\log 2\) of strain clock per event:

```math
\int_I\|S\|_{L^\infty}dt\ge \log 2.
```

Energy does not preclude infinitely many such scale-normalized events.

## 3. Local storage obstruction

The affine incompressible strain normal form

```math
u_{aff}(x)=Ax,\qquad p_{aff}(x)=-{1\over2}x\cdot A^2x,
\qquad A=A^T,\quad \operatorname{tr}A=0
```

solves the local Navier-Stokes equations and has positive material metric growth with zero interior viscous Laplacian.  A local bounded-below storage paying this growth would integrate to an impossibility over long affine-strain duration.  Thus no local Cauchy-Green / stress-work / finite-jet primitive proves \(\Theta_N\in L^1\).

## 4. Terminal-tail storage obstruction

The exact global tail primitive

```math
\mathfrak L_N^{tail}(t)=\int_t^{T^*}\Theta_N(s)ds
```

satisfies

```math
d\mathfrak L_N^{tail}+\Theta_Ndt=0,
```

but its entrance value is finite exactly when the target theorem is true.  Therefore terminal-tail storage is equivalent to finite \(\Theta_N\), not an independent proof.

## 5. Exact live theorem

All previous Gold reductions now point to the same theorem:

```math
\boxed{\text{FiniteTotalThetaNServiceCoordinate.A}}
```

or equivalently a nonlocal, noncircular, same-material inequality

```math
d\mathfrak L_N+c\Theta_N(t)dt\le dR_N(t),
\qquad
\mathfrak L_N\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty,
```

where \(\mathfrak L_N\) is not the circular tail integral and not a local metric primitive.

## Verdict

The theorem is not proved from the installed inputs.  The full Gold/global clock is reduced to one exact open estimate:

```math
\int_0^{T^*}\Theta_N(t)dt<\infty.
```

This is the service-coordinate form of the Navier-Stokes continuation problem for the original transported material history.