---
theorem_id: forward-gold-material-service-variation-coercivity-split-20260625
status: exact-split-installed; pure-high-high-absorbed; coefficient-pressure-second-time-clock-remains
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Splits the explicit material-service variation density from the direct
  calculation into the part already paid by high-frequency velocity-tail
  absorption and the part that still requires the full same-material
  pressure/strain coefficient clock. This prevents the variation producer from
  remaining a vague label. The remaining density is the pressure-second-time
  elliptic service, low-strain/pressure coefficient times high stress-transfer
  shell, coefficient deformation service, and transported collar variation.
  Those terms are the full pressure-viscosity-incompressibility-velocity clock,
  not a detached obstruction.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-direct-calculation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-frequency-full-annular-stress-transfer-absorption-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-way-full-clock-lyapunov-direct-test-20260625.md
---

# Material Service Variation Coercivity Split

Date: 2026-06-25

## 0. Object

The object is still one original transported material annulus. From the direct
calculation, the signed service

```math
a_\psi(t)=F_\psi'(t)
\tag{VCS.1}
```

satisfies

```math
\operatorname{Var}_I(a_\psi)
\le
\int_I\mathcal V_\psi(t)\,dt,
\tag{VCS.2}
```

where \(\mathcal V_\psi\) is the sum of the nine differentiated
velocity-stress-collar terms:

```math
\mathcal V_\psi
=
\sum_{\alpha,\beta\in\{v,T,B\}}
|J_{\alpha\beta}|.
\tag{VCS.3}
```

This note tests whether \(\mathcal V_\psi\) has a one-way coercive estimate
from the already-installed same-material support.

## 1. Full-packet closure of the terms

The time derivatives in `(VCS.3)` are closed by the material packet:

```math
\partial_tv+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\tag{VCS.4}
```

```math
\partial_tA=-A(\nabla_av)A,
\qquad
\partial_tG=(\partial_tA)A^\top+A(\partial_tA)^\top,
\tag{VCS.5}
```

and the pressure equations

```math
-\partial_\ell(G_{\ell k}\partial_kq)
=
A_{\ell i}A_{kj}(\partial_\ell v_j)(\partial_kv_i),
\tag{VCS.6}
```

```math
-\partial_\ell(G_{\ell k}\partial_k\partial_tq)
=
\partial_\ell((\partial_tG_{\ell k})\partial_kq)
+
\partial_t\!\left[
A_{\ell i}A_{kj}(\partial_\ell v_j)(\partial_kv_i)
\right],
\tag{VCS.7}
```

```math
\begin{aligned}
-\partial_\ell(G_{\ell k}\partial_k\partial_{tt}q)
={}&
2\partial_\ell((\partial_tG_{\ell k})\partial_k\partial_tq)
+
\partial_\ell((\partial_{tt}G_{\ell k})\partial_kq)\\
&+
\partial_{tt}\!\left[
A_{\ell i}A_{kj}(\partial_\ell v_j)(\partial_kv_i)
\right].
\end{aligned}
\tag{VCS.8}
```

Therefore \(\mathcal V_\psi\) is on the full participation packet. The issue is
coercivity, not attachment.

## 2. Dyadic split

On the material chart, decompose each term dyadically. A representative product
has the form

```math
\Delta_j(C_{\le j-C}\,H_j),
\tag{VCS.9}
```

where \(H_j\) is a high stress/velocity/pressure shell and \(C_{\le j-C}\) is a
low material coefficient: strain, pressure Hessian, \(A\), \(G\), transported
collar, or a low velocity gradient.

The pure velocity high-high pieces are the terms where all active high factors
are velocity-gradient shells and no pressure-time or coefficient time derivative
is needed. These reduce to the installed high-high gradient packet:

```math
\mathcal V_\psi^{HH,vel}(t)
\le
\eta\nu D_N(t)+R_N^{HH}(t),
\qquad
R_N^{HH}\in L^1_t,
\tag{VCS.10}
```

after the strict-low and spill decompositions already checked in the cascade
notes.

That is a real paid part of the variation density.

## 3. The remaining terms

The rest is

```math
\mathcal V_\psi^{rem}
=
\mathcal V_\psi^{press,tt}
+
\mathcal V_\psi^{coef}
+
\mathcal V_\psi^{low\text{-}high}
+
\mathcal V_\psi^{collar}.
\tag{VCS.11}
```

The pressure-second-time part comes from \(J_{TT}\), through
\(\partial_{tt}\mathcal T\) and hence \(\partial_{tt}q\):

```math
\mathcal V_\psi^{press,tt}
\sim
\left|
\int v_i(\partial_{tt}q)\,B_i\,da
\right|
+
\text{pressure-time elliptic partners}.
\tag{VCS.12}
```

By `(VCS.8)`, this contains differentiated coefficient products and
differentiated quadratic gradient products. A typical dyadic piece is

```math
\Delta_j\nabla(-\Delta_G)^{-1}
\partial_t\partial_t
\left(
A A\,\nabla v\,\nabla v
\right).
\tag{VCS.13}
```

After expanding \(\partial_t\), `(VCS.13)` contains the same material stress,
pressure Hessian, coefficient motion, and cubic/quartic gradient products as
the full clock.

The low-high coefficient part has the model estimate

```math
\|\Delta_j(C_{\le j-C}H_j)\|_{L^1}
\lesssim
\|C_{\le j-C}\|_{L^\infty}\|H_j\|_{L^1}.
\tag{VCS.14}
```

Summing all active shells gives

```math
\sum_j2^{\gamma_Nj}
\|\Delta_j(C_{\le j-C}H_j)\|_{L^1}
\lesssim
\Theta_N^{coef}(t)
\sum_j2^{\gamma_Nj}\|H_j\|_{L^1},
\tag{VCS.15}
```

where

```math
\Theta_N^{coef}(t)
=
\sup_j\|C_{\le j-C}(t)\|_{L^\infty(\operatorname{annulus})}.
\tag{VCS.16}
```

For fixed thresholds this is a finite classical coefficient. For the terminal
all-active-shell clock, finite integral of `(VCS.16)` is exactly material
coefficient/strain service control.

The collar part is not free either:

```math
\partial_tB=(\partial_tA)^\top\nabla\psi,
\qquad
\partial_{tt}B=(\partial_{tt}A)^\top\nabla\psi,
\tag{VCS.17}
```

and \(\partial_tA,\partial_{tt}A\) are products of \(A\), \(\nabla_av\), and
\(\nabla_a\partial_tv\). Thus collar variation is material deformation service.

## 4. Exact estimate obtained

Combining the paid high-high part with the remainder gives

```math
\boxed{
\mathcal V_\psi(t)
\le
\eta\nu D_N(t)
+
R_N^{HH}(t)
+
\mathcal V_\psi^{press,tt}(t)
+
\mathcal V_\psi^{coef}(t)
+
\mathcal V_\psi^{low\text{-}high}(t)
+
\mathcal V_\psi^{collar}(t).
}
\tag{VCS.18}
```

The last four terms are not defects outside the packet. They are the full
pressure-viscosity-incompressibility-velocity material clock written at the
level of service variation.

So the exact coercive estimate needed for smoothness is

```math
\boxed{
\int_0^{T_*}
\left(
\mathcal V_\psi^{press,tt}
+
\mathcal V_\psi^{coef}
+
\mathcal V_\psi^{low\text{-}high}
+
\mathcal V_\psi^{collar}
\right)dt
<\infty .
}
\tag{VCS.19}
```

Equivalently, a bounded-below same-material storage must pay those four terms
before rectification.

## 5. Why this is not a new obstruction

The remaining terms in `(VCS.19)` are the physical mechanism of the spike-wave
history:

- pressure-second-time service is the incompressibility force changing in time;
- coefficient service is deformation of the same material annulus;
- low-high service is surrounding annular strain/pressure feeding high stress;
- collar service is the moving annular layer itself.

They are not arbitrary oscillations, endpoint atoms, or independent heat-scale
packets. They are the same material pressure/strain return.

## 6. Status

This split proves a real reduction:

```math
\text{service variation}
=
\text{paid pure high-high velocity tail}
+
\text{same-material coefficient/pressure variation clock}.
\tag{VCS.20}
```

It does not prove `(VCS.19)` from energy or net ledgers. The live producer is
now exactly the finite coefficient/pressure variation clock `(VCS.19)` or a
one-way storage that pays it.

