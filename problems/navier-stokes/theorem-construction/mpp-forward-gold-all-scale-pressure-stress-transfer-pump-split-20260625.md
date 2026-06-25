---
theorem_id: forward-gold-all-scale-pressure-stress-transfer-pump-split-20260625
status: exact-split-installed; pure-high-high-absorbed-moving-low-high-pump-is-live-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the all-scale nonlinear transfer producer against the same material
  spike-wave object. Pure velocity high-high transfer has an installed
  absorption mechanism after low-mode and spill terms are removed. The
  remaining moving low-high pressure/strain interaction is not a detachable
  cascade error: it is the physical pump by which the surrounding annulus can
  feed a thinning spike. In dyadic form it is the coefficient
  S_{<j}\nabla u, pressure Hessian, and material coefficient/collar service
  acting on the active high shell. Fixed low modes are already excluded, but the
  moving low band below each active shell is exactly the continuation clock.
  Thus an all-scale spectral-gap theorem would have to prove finite work of
  that moving material pump; it cannot be replaced by pure high-high damping.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/all-scale-frequency-transfer-inefficiency-theorem.md
  - problems/navier-stokes/theorem-construction/gradient-genuine-high-high-packet.md
  - problems/navier-stokes/theorem-construction/gradient-cubic-tail-absorption-lemma.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strain-pressure-hessian-service-continuation-clock-placement-20260625.md
---

# All-Scale Pressure-Stress Transfer Pump Split

Date: 2026-06-25

## 0. Object

The live physical object is one original transported material spike-wave
history.  A terminal spike can only be sustained by the same surrounding fluid:
strain, pressure Hessian, viscosity, incompressibility, velocity transfer,
coefficient deformation, and collar motion.

The all-scale transfer question is therefore not whether an arbitrary cascade
can happen.  It is whether the same annular material pump can do infinite
rectified work before \(T_*\).

## 1. Dyadic split

In a dyadic reading of the nonlinear stress-transfer density, the active
interaction has the Bony split

```math
\Delta_j(u\cdot\nabla u)
=
\Delta_j(S_{<j-C}u\cdot\nabla\Delta_ju)
+\Delta_j(\Delta_ju\cdot\nabla S_{<j-C}u)
+\Delta_jR_j(u,u).
\tag{APS.1}
```

The first term is the incompressible transport part.  Its leading contribution
is skew in the \(L^2\) shell energy:

```math
\int
(S_{<j-C}u\cdot\nabla\Delta_ju)\cdot\Delta_ju\,dx
=0
\tag{APS.2}
```

up to commutators and collars that are already same-packet legal terms.

The second term is the moving low-high strain pump:

```math
\int
(\Delta_ju\cdot\nabla S_{<j-C}u)\cdot\Delta_ju\,dx .
\tag{APS.3}
```

It is bounded by

```math
\|\nabla S_{<j-C}u(t)\|_{L^\infty}
\|\Delta_ju(t)\|_2^2 .
\tag{APS.4}
```

The pressure and material-coordinate form replaces the coefficient in
`(APS.4)` by the same packet's strain, pressure Hessian, coefficient, and
collar service:

```math
\nabla S_{<j-C}u
\quad\leadsto\quad
S_{<j-C}S,\quad
S_{<j-C}\nabla_x^2p,\quad
S_{<j-C}\dot G,\quad
S_{<j-C}\dot B_\psi .
\tag{APS.5}
```

This is the physical pump under the spike.

## 2. Pure high-high transfer is not the wall

After strict low-mode and threshold-spill terms are separated, the genuine
near-diagonal high-high packet has the installed form

```math
\mathfrak H_N^{grad,HH}(t)
\le
C_M\sum_{j\ge N-M}2^{\frac92j}\|\Delta_ju(t)\|_2^3 .
\tag{APS.6}
```

The cubic-tail absorption lemma gives, when the enstrophy layer is present,

```math
\mathfrak H_N^{grad,HH}(t)
\le
\eta\nu D_N(t)+C_0\,2^{-2\delta N}.
\tag{APS.7}
```

So the pure velocity high-high tail is not the remaining physical producer.
It is a paid coordinate after the full packet has supplied the needed
enstrophy/gradient layer.

## 3. Fixed low modes are already excluded

For each fixed dyadic threshold \(J\), after Galilean gauge,

```math
\sup_{t<T_*}\|\nabla P_{\le J}u(t)\|_{L^\infty}
\le
C_J\|u_0\|_2 .
\tag{APS.8}
```

Thus no fixed finite low band can be the terminal infinite pump.

The remaining coefficient in `(APS.4)` is different: it is the moving band
\(S_{<j-C}\nabla u\) immediately below the active high shell.  As \(j\to\infty\)
near the terminal scale, this moving band is not controlled by a fixed
low-mode bound.

## 4. The exact remaining all-scale estimate

The all-scale producer must therefore control the work of the moving material
pump:

```math
\int_0^{T_*}
\sum_j
w_j
\Bigl(
\|\nabla S_{<j-C}u\|_\infty
+\|S_{<j-C}\nabla_x^2p\|_{\mathcal X_j}
+\|S_{<j-C}\dot G\|_{\mathcal Y_j}
+\|S_{<j-C}\dot B_\psi\|_{\mathcal Z_j}
\Bigr)
E_j(t)\,dt
<\infty .
\tag{APS.9}
```

Here \(E_j(t)\) is the active high-shell energy/stress weight and
\(\mathcal X_j,\mathcal Y_j,\mathcal Z_j\) are the fixed-depth packet norms
already used by the material strain/pressure-Hessian service.  The exact
weights \(w_j\) are determined by the chosen continuation-depth readout.

Formula `(APS.9)` is not a pressure-only or vorticity-only statement.  It is
the dyadic version of finite rectified same-material strain/pressure-Hessian
service.

## 5. Consequence

The all-scale route has one valid target:

```math
\text{finite work of the moving same-material pressure-strain pump}.
\tag{APS.10}
```

It cannot be closed by pointing to pure high-high damping, fixed low-mode
boundedness, or signed global cancellation alone.  Those are real support
facts, but the live MPP-facing producer is the moving low-high material pump
`(APS.9)`.
