---
theorem_id: forward-gold-material-service-variation-direct-calculation-20260625
status: exact-variation-density-admitted-to-full-material-packet; finite-variation-not-produced-by-energy-or-net-ledgers
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Performs the direct material-history calculation demanded by the
  signed-to-rectified BV reduction. The temporal variation of a signed annular
  stress-work service is not a free signal: after pulling back to the original
  transported material annulus, its derivative is an exact finite sum of
  velocity, pressure, deformation-coefficient, viscous, pressure-elliptic, and
  collar terms from the same pressure-viscosity-incompressibility-velocity
  packet. This proves same-packet admission of the rectification cost. The
  calculation also shows that finite variation of the service density is the
  full continuation-strength material clock: it requires control of pressure
  time/second-time elliptic service, quartic strain-vorticity service, viscous
  higher-tower service, and coefficient/collar material variation.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-net-to-rectified-annular-clock-bv-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-same-packet-identity-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frequency-controlled-annular-return-direct-attempt-20260625.md
---

# Material Service Variation Direct Calculation

Date: 2026-06-25

## 0. Object

The object is one original smooth material history. Let

```math
x=X(a,t),
\qquad
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\tag{MSV.1}
```

and

```math
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^\top .
\tag{MSV.2}
```

Let \(\psi(a)\) be the fixed material annular cutoff. The transported Eulerian
cutoff is \(\phi(X(a,t),t)=\psi(a)\), and

```math
\nabla_x\phi(X(a,t),t)=A^\top\nabla_a\psi .
\tag{MSV.3}
```

The pulled-back stress is

```math
\mathcal T=-qI+2\nu S_x,
\qquad
S_x=\operatorname{sym}\big((\nabla_av)A\big).
\tag{MSV.4}
```

The signed annular stress-work service is

```math
F_\psi(t)
=
\int v_i\mathcal T_{ij}A_{\ell j}\partial_{a_\ell}\psi\,da .
\tag{MSV.5}
```

The signed-to-rectified BV reduction says that total positive action of
\(F_\psi'\) is controlled by signed net action plus
\(\operatorname{Var}(F_\psi')\). This note computes that variation cost on the
same material packet.

## 1. First derivative

Set

```math
B_j=A_{\ell j}\partial_{a_\ell}\psi.
\tag{MSV.6}
```

Then

```math
F_\psi(t)=\int v_i\mathcal T_{ij}B_j\,da .
\tag{MSV.7}
```

The first derivative is exactly

```math
a_\psi(t):=F_\psi'(t)
=I_v(t)+I_T(t)+I_B(t),
\tag{MSV.8}
```

where

```math
I_v=\int (\partial_tv_i)\mathcal T_{ij}B_j\,da,
\tag{MSV.9}
```

```math
I_T=\int v_i(\partial_t\mathcal T_{ij})B_j\,da,
\tag{MSV.10}
```

and

```math
I_B=\int v_i\mathcal T_{ij}(\partial_tB_j)\,da.
\tag{MSV.11}
```

The material Navier--Stokes packet is

```math
\partial_tv+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0,
\tag{MSV.12}
```

with coefficient equation

```math
\partial_tA=-A(\nabla_av)A.
\tag{MSV.13}
```

Since \(B_j=A_{\ell j}\partial_\ell\psi\),

```math
\partial_tB_j
=
-A_{\ell r}(\partial_{a_r}v_s)A_{sj}\partial_\ell\psi.
\tag{MSV.14}
```

The pressure is tied to the same packet by

```math
-\partial_{a_\ell}(G_{\ell k}\partial_{a_k}q)
=
A_{\ell i}A_{kj}
(\partial_{a_\ell}v_j)(\partial_{a_k}v_i).
\tag{MSV.15}
```

Thus every term in \(a_\psi\) is a velocity-pressure-coefficient-viscous-collar
term of the same material packet.

## 2. Second derivative / variation density

Assume first that the preterminal solution is smooth on a closed interval
\(I\subset[0,T_*)\). Then \(a_\psi\) is absolutely continuous and

```math
\operatorname{Var}_I(a_\psi)
=
\int_I |a_\psi'(t)|\,dt .
\tag{MSV.16}
```

Differentiate `(MSV.8)`:

```math
a_\psi'
=
J_{vv}+J_{vT}+J_{vB}
+J_{Tv}+J_{TT}+J_{TB}
+J_{Bv}+J_{BT}+J_{BB},
\tag{MSV.17}
```

where the nine terms are

```math
J_{vv}=\int(\partial_{tt}v_i)\mathcal T_{ij}B_j\,da,
\tag{MSV.18}
```

```math
J_{vT}=\int(\partial_tv_i)(\partial_t\mathcal T_{ij})B_j\,da,
\tag{MSV.19}
```

```math
J_{vB}=\int(\partial_tv_i)\mathcal T_{ij}(\partial_tB_j)\,da,
\tag{MSV.20}
```

```math
J_{Tv}=\int(\partial_tv_i)(\partial_t\mathcal T_{ij})B_j\,da,
\tag{MSV.21}
```

```math
J_{TT}=\int v_i(\partial_{tt}\mathcal T_{ij})B_j\,da,
\tag{MSV.22}
```

```math
J_{TB}=\int v_i(\partial_t\mathcal T_{ij})(\partial_tB_j)\,da,
\tag{MSV.23}
```

```math
J_{Bv}=\int(\partial_tv_i)\mathcal T_{ij}(\partial_tB_j)\,da,
\tag{MSV.24}
```

```math
J_{BT}=\int v_i(\partial_t\mathcal T_{ij})(\partial_tB_j)\,da,
\tag{MSV.25}
```

and

```math
J_{BB}=\int v_i\mathcal T_{ij}(\partial_{tt}B_j)\,da.
\tag{MSV.26}
```

The duplicate mixed terms are intentionally left visible: they come from
differentiating the three physical factors \(v\), \(\mathcal T\), and \(B\).
Equivalently, one can combine equal pairs with coefficient \(2\).

Define the exact variation density

```math
\mathcal V_\psi(t)
:=
|J_{vv}|+|J_{vT}|+|J_{vB}|
+|J_{Tv}|+|J_{TT}|+|J_{TB}|
+|J_{Bv}|+|J_{BT}|+|J_{BB}|.
\tag{MSV.27}
```

Then

```math
\boxed{
\operatorname{Var}_I(a_\psi)
\le
\int_I\mathcal V_\psi(t)\,dt .
}
\tag{MSV.28}
```

This is exact. No scalar free signal has been introduced.

## 3. Closing the time derivatives inside the same packet

The second time derivative of velocity is obtained by differentiating
`(MSV.12)`:

```math
\begin{aligned}
\partial_{tt}v
={}&
-(\partial_tA^\top)\nabla_aq
-A^\top\nabla_a\partial_tq\\
&+
\nu\,\operatorname{div}_a\big((\partial_tG)\nabla_av\big)
+
\nu\,\operatorname{div}_a(G\nabla_a\partial_tv).
\end{aligned}
\tag{MSV.29}
```

Here

```math
\partial_tG=(\partial_tA)A^\top+A(\partial_tA)^\top,
\tag{MSV.30}
```

and \(\partial_tv\), \(\partial_tA\), \(\partial_tG\) are already fixed by
`(MSV.12)`--`(MSV.14)`.

The second time derivative of the collar vector is

```math
\partial_{tt}B_j=(\partial_{tt}A_{\ell j})\partial_\ell\psi,
\tag{MSV.31}
```

with

```math
\partial_{tt}A
=
-(\partial_tA)(\nabla_av)A
-A(\nabla_a\partial_tv)A
-A(\nabla_av)(\partial_tA).
\tag{MSV.32}
```

The stress derivative is

```math
\partial_t\mathcal T
=
-(\partial_tq)I
+
2\nu\,\operatorname{sym}\big((\nabla_a\partial_tv)A+(\nabla_av)\partial_tA\big),
\tag{MSV.33}
```

and the second stress derivative is

```math
\begin{aligned}
\partial_{tt}\mathcal T
={}&
-(\partial_{tt}q)I\\
&+
2\nu\,\operatorname{sym}\big(
(\nabla_a\partial_{tt}v)A
+2(\nabla_a\partial_tv)\partial_tA
+(\nabla_av)\partial_{tt}A
\big).
\end{aligned}
\tag{MSV.34}
```

The pressure time derivatives are not free. They are obtained by differentiating
the material elliptic equation `(MSV.15)`. The first derivative is

```math
\begin{aligned}
-\partial_\ell(G_{\ell k}\partial_k\partial_tq)
={}&
\partial_\ell((\partial_tG_{\ell k})\partial_kq)\\
&+
\partial_t\Big[
A_{\ell i}A_{kj}
(\partial_\ell v_j)(\partial_kv_i)
\Big],
\end{aligned}
\tag{MSV.35}
```

and the second derivative is

```math
\begin{aligned}
-\partial_\ell(G_{\ell k}\partial_k\partial_{tt}q)
={}&
2\partial_\ell((\partial_tG_{\ell k})\partial_k\partial_tq)
+
\partial_\ell((\partial_{tt}G_{\ell k})\partial_kq)\\
&+
\partial_{tt}\Big[
A_{\ell i}A_{kj}
(\partial_\ell v_j)(\partial_kv_i)
\Big].
\end{aligned}
\tag{MSV.36}
```

With the pressure gauge fixed, `(MSV.35)`--`(MSV.36)` define
\(\partial_tq\) and \(\partial_{tt}q\) from the same material packet.

Therefore \(\mathcal V_\psi\) is a finite expression made only from

```math
v,\ q,\ A,\ G,\ \partial_tv,\ \partial_tq,\ \partial_{tt}v,\ \partial_{tt}q,
\ \partial_tA,\ \partial_{tt}A,
\tag{MSV.37}
```

and the fixed collar derivatives of \(\psi\), with all time derivatives closed
by `(MSV.12)`--`(MSV.36)`.

## 4. What this proves

The rectified action estimate now has the exact form

```math
\int_I [a_\psi(t)]_+\,dt
\le
\left[\int_Ia_\psi(t)\,dt\right]_+
+
|I|\int_I\mathcal V_\psi(t)\,dt.
\tag{MSV.38}
```

The net term is the signed annular payback. The second term is the physical
cost of changing the annular stress/strain service in time.

The calculation proves:

```math
\boxed{
\text{service variation is attached to the original same-material packet.}
}
\tag{MSV.39}
```

It also proves:

```math
\boxed{
\text{finite service variation requires controlling the finite-depth packet}
\text{ terms in }(MSV.37).
}
\tag{MSV.40}
```

Those terms are exactly the continuation-depth pressure-viscosity-
incompressibility-velocity clock. They include pressure-time and pressure
second-time elliptic service, coefficient deformation service, viscous
higher-tower service, and cubic/quartic strain-vorticity service.

## 5. Consequence

The physical picture has now removed another fake gap:

```math
\text{annular sign changes are not arbitrary oscillations.}
\tag{MSV.41}
```

They are measured by \(\mathcal V_\psi\), an explicit same-material
pressure/strain variation density.

The calculation does not prove

```math
\int_0^{T_*}\mathcal V_\psi(t)\,dt<\infty
\tag{MSV.42}
```

from energy, Betchov, enstrophy, or the signed payback identity alone. Proving
`(MSV.42)` is the same full-clock producer in direct material-service form.

