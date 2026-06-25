---
theorem_id: forward-gold-material-record-osgood-subcritical-scaling-obstruction-20260625
status: proof-installed-finite-depth-record-ogood-subcritical-bound-scale-incompatible; signed-global-storage-is-remaining-route
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the Osgood-subcritical branch left by the material-record no-Zeno
  threshold. A finite-depth material record cannot control the full material
  service rate by an Osgood-divergent function of that record alone. On a
  critical heat-scale sample of width ell, velocity height ell^{-1}, and strain
  ell^{-2}, the continuation-depth record scales like ell^{1-2N} while the
  service rate scales like ell^{-2}. Hence the service rate is a positive power
  of the record, not logarithmic or Osgood-subcritical. This is scale-compatible
  with the full pressure-viscosity-incompressibility-velocity packet and rules
  out the scalar finite-record no-Zeno path. The remaining noncircular route is
  a signed global same-material storage/coercivity law, or an additional
  critical-norm clock not reducible to the finite-depth record alone.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-nozeno-osgood-threshold-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-continuation-strength-audit-20260625.md
---

# Material Record Osgood-Subcritical Scaling Obstruction

Date: 2026-06-25

## 0. Target

The no-Zeno/Osgood test left one possible scalar path:

```math
\Theta_N(t)
\le
g(Y_N(t))+r(t),
\qquad
Y_N(t)=1+\mathcal P_N^{mat}(t),
\qquad
r\in L^1_t,
\tag{MOS.1}
```

with

```math
\int^\infty {dY\over Yg(Y)}=\infty.
\tag{MOS.2}
```

This note tests whether such an Osgood-subcritical \(g\) can be scale-compatible
with the same original material spike-wave history when \(Y_N\) is the finite
continuation-depth material record.

## 1. Critical heat-scale sample

Take one active heat-scale sample of material width \(\ell\).  The
Navier--Stokes critical scaling is

```math
U_\ell\sim \ell^{-1},
\qquad
\tau_\ell\sim \ell^2,
\qquad
|\nabla u|_\ell\sim \ell^{-2}.
\tag{MOS.3}
```

The same-material service rate contains at least the strain/pressure-Hessian
coefficient scale

```math
\Theta_\ell\sim \ell^{-2}.
\tag{MOS.4}
```

This is not a detached strain-only coordinate.  In the full packet the same
scale is read as strain, pressure-Hessian, coefficient motion, collar motion,
and nonlinear stress-transfer service.

## 2. Finite-depth material record scale

For a continuation depth \(N\), the highest velocity derivative in the material
record has model size

```math
\|\nabla^N u\|_{L^2(B_\ell)}^2
\sim
\left(\ell^{-1-N}\right)^2\ell^3
=
\ell^{1-2N}.
\tag{MOS.5}
```

The coefficient and pressure towers at the same fixed continuation depth have
the same positive-power scale dependence after the material elliptic readout
and product closure.  Thus the finite-depth record satisfies, at the scale of
the critical sample,

```math
Y_N\sim \ell^{-(2N-1)}
\qquad (N\ge1).
\tag{MOS.6}
```

Solving for \(\ell\) gives

```math
\ell\sim Y_N^{-1/(2N-1)}.
\tag{MOS.7}
```

Therefore the service rate obeys the scale relation

```math
\Theta_\ell
\sim
\ell^{-2}
\sim
Y_N^{\,2/(2N-1)}.
\tag{MOS.8}
```

For every fixed continuation depth \(N\), the exponent

```math
a_N={2\over 2N-1}
\tag{MOS.9}
```

is positive.

## 3. Osgood consequence

The scale relation `(MOS.8)` is incompatible with a logarithmic or
Osgood-subcritical bound of \(\Theta_N\) by \(Y_N\) alone.  Along the critical
samples,

```math
{Y_N^{a_N}\over 1+\log Y_N}\to\infty
\qquad
\text{as }Y_N\to\infty.
\tag{MOS.10}
```

More generally, any \(g\) satisfying the Osgood divergence `(MOS.2)` grows too
slowly to dominate the positive-power critical relation `(MOS.8)` on all
large records, unless extra structure beyond \(Y_N\) is inserted.

With \(g(Y)=CY^{a_N}\), the Osgood integral is finite:

```math
\int^\infty {dY\over Y\,CY^{a_N}}
<\infty.
\tag{MOS.11}
```

So the finite-depth material record cannot by itself generate the no-Zeno
modulus.

## 4. What this rules out

This rules out the scalar finite-record closure:

```math
\boxed{
\Theta_N\le g(Y_N)+L^1,
\quad
\int^\infty {dY\over Yg(Y)}=\infty
}
\tag{MOS.12}
```

as a consequence of the standard finite-depth material tower alone.

The reason is physical and scale-native.  A critical spike sample can have very
small raw energy while its deformation service is large relative to any
Osgood-subcritical function of the fixed-depth record.

This does not detach the sample from the annular history.  It is exactly the
same pressure-viscosity-incompressibility-velocity participation law at
critical scale.

## 5. Remaining route

After this test, the scalar Osgood branch has only two honest forms.

First, introduce an additional critical norm clock \(K(t)\) so that

```math
\Theta_N(t)
\le
K(t)\bigl(1+\log Y_N(t)\bigr)+r(t),
\qquad
\int_0^{T_*}K(t)\,dt<\infty.
\tag{MOS.13}
```

This is the BKM-type route.  It still requires a proof of the critical clock
\(\int K<\infty\) from the same material participation law.

Second, prove a signed bounded-below same-material storage:

```math
d\mathfrak L_N
+c\,d[\log Y_N]_+
+d\mathcal L_N
\le
dR_N,
\qquad
\mathfrak L_N\ge -C,
\qquad
\int dR_N<\infty.
\tag{MOS.14}
```

This avoids bounding the service rate by the record size and pays the positive
record growth directly.

## 6. Result

The Osgood-subcritical scalar path is not available from the finite-depth
material record alone:

```math
\boxed{
\text{critical scaling forces }\Theta_N\text{ to grow like a positive power of }
Y_N.
}
\tag{MOS.15}
```

The live producer is therefore sharpened again.  It must be either a new
integrable critical clock \(K\) inside the same pressure-viscosity-
incompressibility-velocity packet, or a signed global same-material storage
whose lower bound does not assume the finite full clock.
