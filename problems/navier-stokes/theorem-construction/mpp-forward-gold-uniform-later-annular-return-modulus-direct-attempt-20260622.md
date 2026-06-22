---
theorem_id: forward-gold-uniform-later-annular-return-modulus-direct-attempt-20260622
status: direct-attempt-fails-from-current-inputs-heat-scale-radius-discount-exact
logical_landing_node: uniform_later_annular_return_modulus
edge_effect: >-
  Tests UniformLaterAnnularReturnModulus.A for the later-on outer-annulus
  stress/strain carrier. The fixed-annulus no-atom statement is exact, but it
  is not uniform across shrinking heat-scale annuli. Under Navier-Stokes
  scaling, the physical annular stress/strain mass over one heat window is
  O(r), while the normalized terminal packet divides by r and can remain
  order-one. Therefore physical L^1 annular stress/strain control gives only a
  radius-discounted tail, not the normalized uniform terminal modulus needed to
  kill the endpoint pulse. The remaining producer is an unweighted annular
  stress-work reserve or a no-free infinite material Zeno stress-chain theorem
  on the same full participation packet.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-later-annular-stress-return-to-material-clock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nested-material-annulus-stress-cancellation-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
---

# Uniform Later Annular Return Modulus Direct Attempt

Date: 2026-06-22

## 0. Target

The desired uniform annular return theorem is:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{T_m-\Theta_m(\theta)}^{T_m}
\rho_{A,m}(t)\,dt
=0,
\tag{ULR.1}
```

in the same normalized packet currency that controls the center/time overlap.

Here

```math
\rho_A(t)
=
\int_{\partial A(t)}|u\cdot T(u,p)n|\,dA
+
2\nu\int_{A(t)}|S(u)|^2\,dx,
\tag{ULR.2}
```

with

```math
T(u,p)=-pI+2\nu S(u).
\tag{ULR.3}
```

This is the same pressure-viscosity-incompressibility-velocity packet written
through annular stress work and strain.

## 1. Heat-scale annular scaling

Take a normalized profile \((U,P)\) on a unit annulus and rescale by radius
\(r\):

```math
u_r(t,x)
=
r^{-1}U(r^{-2}t,r^{-1}x),
\qquad
p_r(t,x)
=
r^{-2}P(r^{-2}t,r^{-1}x).
\tag{ULR.4}
```

Then

```math
S(u_r)
=
r^{-2}S(U)(r^{-2}t,r^{-1}x),
\qquad
T(u_r,p_r)
=
r^{-2}T(U,P)(r^{-2}t,r^{-1}x).
\tag{ULR.5}
```

On an annulus \(A_r\) of size \(r\), volume scales like \(r^3\) and boundary
area scales like \(r^2\).  Therefore

```math
2\nu\int_{A_r}|S(u_r)|^2\,dx
=
r^{-1}
2\nu\int_{A_1}|S(U)|^2\,dy,
\tag{ULR.6}
```

and

```math
\int_{\partial A_r}|u_r\cdot T(u_r,p_r)n|\,dA
=
r^{-1}
\int_{\partial A_1}|U\cdot T(U,P)n|\,dA_y.
\tag{ULR.7}
```

Thus the physical annular participation density has size \(r^{-1}\) on one
heat window of length \(r^2\).

Integrating over that heat window gives

```math
\int_{I_r}\rho_{A_r}(t)\,dt
=
r
\int_{-1}^{0}\rho_{A_1}(s)\,ds.
\tag{ULR.8}
```

The physical annular stress/strain mass is radius-discounted.

## 2. Normalized packet currency

The terminal center overlap is measured in the normalized heat-scale packet.
The matching normalized annular return is

```math
\widehat \rho_{A_r}(s)
:=
r\,\rho_{A_r}(T+r^2s).
\tag{ULR.9}
```

Then `(ULR.8)` becomes

```math
\int_{-1}^{0}\widehat\rho_{A_r}(s)\,ds
=
\int_{-1}^{0}\rho_{A_1}(s)\,ds.
\tag{ULR.10}
```

So a heat-scale annular return can be order-one in the normalized packet while
its physical stress/strain mass is only \(O(r)\).

This is the same radius discount already seen in the material deformation and
physical dissipation calculations, now written for the later-on annular
stress/strain carrier.

## 3. Why physical absolute continuity is not uniform enough

For each fixed \(m\), physical \(L^1\) absolute continuity gives

```math
\lim_{\theta\downarrow0}
\int_{T_m-\theta}^{T_m}\rho_{A,m}(t)\,dt
=0.
\tag{ULR.11}
```

The gold theorem needs the normalized uniform version:

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\widehat\rho_{A,m}(s)\,ds
=0.
\tag{ULR.12}
```

The model

```math
\widehat\rho_{A,m}(s)
=
a\,\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{ULR.13}
```

is still compatible with finite physical annular mass when multiplied by the
shrinking radius \(r_m\).  It violates `(ULR.12)` exactly:

```math
\int_{-\theta}^{0}\widehat\rho_{A,m}(s)\,ds
=a
\quad
\text{for }\theta\ge\tau_m.
\tag{ULR.14}
```

Therefore fixed-annulus absolute continuity does not imply the uniform
normalized annular return modulus.

## 4. Exact remaining producer

The theorem needed is an unweighted same-packet annular reserve:

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}\widehat\rho_{A,m}(s)\,ds
=0.
}
\tag{ULR.15}
```

Equivalently, one may prove a super-\(L^1\), Hardy, Orlicz, reverse-Holder, or
Carleson bound for \(\widehat\rho_{A,m}\) on the retained full packet.

In the nested-chain language, this is:

```math
\boxed{
\texttt{NoFreeInfiniteMaterialZenoStressChain.A}.
}
\tag{ULR.16}
```

The finite-chain stress cancellation theorem remains valid, but passing to an
infinite terminal Zeno family requires `(ULR.15)` or `(ULR.16)`.

## 5. Result

The direct attempt proves the exact limitation:

```math
\boxed{
\text{physical annular stress/strain }L^1
\Longrightarrow
\text{only radius-discounted terminal control.}
}
\tag{ULR.17}
```

It does not prove the normalized uniform annular return modulus.

The active fork is unchanged:

```math
\boxed{
\begin{array}{ll}
\text{uniform retained annular return modulus}
&\Rightarrow
\text{terminal overlap no-jump}
\Rightarrow
A_{4B}\text{ contradiction},\\[1mm]
\text{uniform retained annular return record fails}
&\Rightarrow
Pack_Q+\neg Part_{N,Q}.
\end{array}
}
\tag{ULR.18}
```

