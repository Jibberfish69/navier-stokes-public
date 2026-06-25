---
theorem_id: forward-gold-moving-pump-weighted-material-energy-identity-test-20260625
status: exact-identity-installed; moving-pump-equals-weighted-material-energy-growth-plus-viscous-and-interface-service
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the remaining moving low-high pressure-strain pump by differentiating a
  frequency-weighted material energy on the same transported packet. The exact
  identity shows that the pump is not an external source: it is the positive
  part of weighted material energy growth plus weighted viscous loss and the
  same pressure/incompressibility/coefficient interface terms. This proves the
  correct ontology and rejects arbitrary cascade language. It also shows that
  the identity alone is not a producer from energy: controlling its positive
  part is exactly controlling the continuation-depth material record. The next
  possible gold closure must prove a one-way anti-pump inequality for this
  weighted material energy, or an equivalent all-scale no-free-upward-transfer
  theorem on the same pressure-viscosity-incompressibility-velocity packet.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-all-scale-pressure-stress-transfer-pump-split-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strain-pressure-hessian-service-continuation-clock-placement-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
---

# Moving Pump Weighted Material Energy Identity Test

Date: 2026-06-25

## 0. Object

The remaining pump is the moving low-high pressure-strain band under each
active shell.  It is read on the same transported material history:

```math
\partial_t v+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0,
\tag{MPW.1}
```

with

```math
A=F^{-1},
\qquad
G=AA^\top,
\qquad
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t).
\tag{MPW.2}
```

The point of this test is to see whether the moving pump is already a
one-way storage derivative.

## 1. Weighted material energy

Let \(\Delta_j^a\) be a Littlewood-Paley decomposition on the fixed material
coordinate chart.  Set

```math
v_j=\Delta_j^a v.
\tag{MPW.3}
```

For a chosen continuation depth \(N\), let \(w_j\) be the corresponding
positive dyadic weight; for example \(w_j=2^{2Nj}\) on the whole-torus
readout.  Define

```math
E_w(t)
:=
{1\over2}\sum_j w_j\|v_j(t)\|_{L^2_a}^2.
\tag{MPW.4}
```

Apply \(\Delta_j^a\) to `(MPW.1)`:

```math
\partial_t v_j
+\Delta_j(A^\top\nabla_aq)
=
\nu\Delta_j\operatorname{div}_a(G\nabla_av).
\tag{MPW.5}
```

Taking the \(L^2_a\) pairing with \(w_jv_j\), summing in \(j\), and separating
the principal viscous term gives the exact identity

```math
{d\over dt}E_w(t)
+\nu D_w(t)
=
\mathcal M_w(t),
\tag{MPW.6}
```

where

```math
D_w(t)
:=
\sum_j w_j
\int G\nabla_av_j\cdot\nabla_av_j\,da,
\tag{MPW.7}
```

and

```math
\begin{aligned}
\mathcal M_w(t)
:={}&
-\sum_j w_j\langle \Delta_j(A^\top\nabla_aq),v_j\rangle \\
&+
\nu\sum_j w_j
\left\langle
\Delta_j\operatorname{div}_a(G\nabla_av)
-\operatorname{div}_a(G\nabla_av_j),
v_j
\right\rangle .
\end{aligned}
\tag{MPW.8}
```

This is exact.  The first line is the pressure/incompressibility/coefficient
interface.  The second line is the viscous coefficient commutator.

## 2. Pressure does not detach

Write

```math
\Delta_j(A^\top\nabla_aq)
=
A^\top\nabla_aq_j
+
[\Delta_j,A^\top\nabla_a]q,
\qquad
q_j=\Delta_jq .
\tag{MPW.9}
```

The principal pressure pairing is

```math
-\langle A^\top\nabla_aq_j,v_j\rangle
=
\langle q_j,\operatorname{div}_a(Av_j)\rangle .
\tag{MPW.10}
```

Because the actual constraint is

```math
\operatorname{div}_a(Av)=0,
\tag{MPW.11}
```

we have

```math
\operatorname{div}_a(Av_j)
=
\operatorname{div}_a(A\Delta_jv)
-
\Delta_j\operatorname{div}_a(Av)
=
\operatorname{div}_a([A,\Delta_j]v).
\tag{MPW.12}
```

Thus the pressure line in `(MPW.8)` is not a pressure-only force.  It is exactly
the failure of a frequency shell to remain divergence-free under the moving
material coefficient \(A\).  That failure is the same coefficient/strain
record:

```math
\dot A=-A(\nabla_xu\circ X).
\tag{MPW.13}
```

So pressure, incompressibility, and material-frame deformation remain one
object.

## 3. Moving pump identification

The moving low-high pump is the positive part of the interface in `(MPW.8)`.
Define

```math
\mathcal P_w^{pump}(t):=[\mathcal M_w(t)]_+ .
\tag{MPW.14}
```

By `(MPW.6)`,

```math
\mathcal P_w^{pump}(t)
=
\left[
{d\over dt}E_w(t)+\nu D_w(t)
\right]_+ .
\tag{MPW.15}
```

Since \(D_w\ge0\),

```math
\mathcal P_w^{pump}(t)
\le
\left[{d\over dt}E_w(t)\right]_+
+\nu D_w(t).
\tag{MPW.16}
```

Conversely, `(MPW.6)` gives

```math
\left[{d\over dt}E_w(t)\right]_+
\le
\mathcal P_w^{pump}(t),
\tag{MPW.17}
```

because the viscous term appears with the positive sign on the left side of
`(MPW.6)`.

Therefore finite pump work is equivalent, up to the weighted viscous loss, to
finite positive variation of the weighted material energy:

```math
\int_0^{T_*}\mathcal P_w^{pump}(t)\,dt<\infty
\quad
\Longleftrightarrow
\quad
\int_0^{T_*}\left[{d\over dt}E_w(t)\right]_+dt
+\nu\int_0^{T_*}D_w(t)dt<\infty ,
\tag{MPW.18}
```

with the precise direction `(MPW.16)`--`(MPW.17)`.

## 4. Why this identity is not yet the producer

The physical energy inequality controls only the unweighted \(L^2\) energy and
unweighted gradient dissipation.  It does not control the weighted quantities

```math
E_w(t)
=
{1\over2}\sum_jw_j\|v_j(t)\|_2^2,
\qquad
D_w(t)
=
\sum_jw_j\int G\nabla_av_j\cdot\nabla_av_j .
\tag{MPW.19}
```

For continuation-depth weights \(w_j\), these are exactly the material
\(H^N\)-level record and its viscous tower.  Thus `(MPW.18)` is not a free
estimate from finite energy.  It is the continuation-depth clock itself.

This is the exact physical meaning: the surrounding annulus can feed the
active shell only by increasing the weighted material record or by paying
weighted viscous/interface loss.  Proving that the total positive feed is
finite is exactly proving that this weighted material record cannot undergo
infinite positive variation before \(T_*\).

## 5. Gold route consequence

The fake object is gone.  The pump is not arbitrary and not detached.  It is
the same pressure-viscosity-incompressibility-velocity transaction written as
weighted material energy growth.

The remaining possible gold closure is the one-way anti-pump inequality

```math
dE_w
+c\,d\Omega_w^{pump}
+d\mathcal L_w
\le
dR_w,
\qquad
E_w\ge0,
\qquad
\int_0^{T_*}dR_w<\infty ,
\tag{MPW.20}
```

or an equivalent all-scale no-free-upward-transfer theorem for the same moving
material pressure-strain pump.

Without `(MPW.20)`, the weighted identity is exact but only conditional:
finite pump work and finite continuation-depth material energy are the same
remaining problem.
