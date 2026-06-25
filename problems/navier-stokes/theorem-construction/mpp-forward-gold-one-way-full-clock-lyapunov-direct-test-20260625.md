---
theorem_id: forward-gold-one-way-full-clock-lyapunov-direct-test-20260625
status: direct-one-way-storage-test-open; standard-same-packet-storages-redistribute-not-produce-full-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the remaining physical object directly: finite full positive clock
  for the original transported material spike-wave history. The desired proof
  is a bounded-below same-material Lyapunov inequality whose derivative pays
  the high-frequency pressure-stress transfer clock. The exact stress,
  pressure-service, Cauchy-Green, dyadic gradient, and signed terminal-tail
  storages already checked preserve participation, but their derivatives
  redistribute the pressure-time and cubic annular service instead of producing
  a one-way loss. Thus the remaining closure is not an annular attachment
  problem, not a low-mode/initial-frequency problem, and not a pure velocity
  high-high problem. It is a new global same-material one-way coercivity law
  for the full pressure-viscosity-incompressibility-velocity clock.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-full-clock-original-history-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-frequency-pressure-stress-transfer-is-continuation-clock-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-time-cubic-strain-service-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-same-packet-pressure-cubic-cancellation-recheck-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-cauchy-green-annular-stress-work-lyapunov-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-low-gradient-support-vs-full-clock-producer-audit-20260625.md
---

# One-Way Full-Clock Lyapunov Direct Test

Date: 2026-06-25

## 0. Object

The object is one original smooth material Navier--Stokes history on the active
periodic surface:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{OWL.1}
```

The material map and packet variables are

```math
\dot X(a,t)=u(X(a,t),t),
\qquad
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\tag{OWL.2}
```

with

```math
F=D_aX,\qquad A=F^{-1},\qquad G=AA^\top .
\tag{OWL.3}
```

The spike, the thinning base, the transported annular layers, the later
stress/strain return, pressure, viscosity, incompressibility, velocity, and
frequency transfer are all readings of this one history.

The active full clock is the high-frequency same-material pressure-stress
transfer clock

```math
\mathfrak T_N^{hi}(t)
:=
\sum_j2^{\gamma_Nj}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L^1_x},
\tag{OWL.4}
```

where

```math
\begin{aligned}
\mathcal S_\phi^\sharp
:={}&
|\nabla\cdot T^\sharp|\,|T^\sharp|\,|\nabla\phi|
+
|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|\\
&+
|\nabla\cdot T^\sharp|\,|U|\,|\nabla^2\phi|
+
|\nabla\cdot T^\sharp|\,|\nabla U|\,|\nabla\phi|\\
&+
|U|\,|\nabla U|^2|\nabla\phi|
+
|U|\,|T^\sharp|\,|\nabla U|\,|\nabla\phi|,
\end{aligned}
\tag{OWL.5}
```

and

```math
T^\sharp=-PI+2\nu S(U),
\qquad
D_tU=\nabla\cdot T^\sharp,
\qquad
\nabla\cdot U=0.
\tag{OWL.6}
```

The MPP-closing estimate at continuation depth \(N=N_s\) is

```math
\int_0^{T_*}\mathfrak T_N^{hi}(t)\,dt<\infty .
\tag{OWL.7}
```

Together with the installed material-record readout, `(OWL.7)` gives bounded
fixed-coordinate \(H^s\), \(s>5/2\), and classical relaunch past \(T_*\).

## 1. The one-way storage that would close the route

The direct physical proof would be a same-material storage \(\mathcal B_N(t)\)
such that

```math
{d\over dt}\mathcal B_N(t)
+
c\,\mathfrak T_N^{hi}(t)
+
\mathcal L_N(t)
\le
R_N(t),
\tag{OWL.8}
```

with

```math
\mathcal B_N(t)\ge -C,
\qquad
\int_0^{T_*}R_N(t)\,dt<\infty.
\tag{OWL.9}
```

Then integrating `(OWL.8)` gives

```math
c\int_0^{T_*}\mathfrak T_N^{hi}(t)\,dt
\le
\mathcal B_N(0)-\inf_{t<T_*}\mathcal B_N(t)
+
\int_0^{T_*}R_N(t)\,dt,
\tag{OWL.10}
```

and `(OWL.7)` follows.

So the missing proof is now exactly this: construct a bounded-below
same-material storage whose derivative pays the full rectified annular
pressure-stress clock.

## 2. What the existing storages already do

The transported local energy storage

```math
M_\phi(t)=\int {1\over2}|u|^2\phi\,dx,
\qquad
D_t\phi=0,
\tag{OWL.11}
```

has the exact identity

```math
{d\over dt}M_\phi
+
2\nu\int\phi |S|^2\,dx
=
-\int u\cdot(-pI+2\nu S)\nabla\phi\,dx.
\tag{OWL.12}
```

This proves attachment of center storage change to same-fluid annular
stress/strain return. It controls signed net exchange plus raw dissipation. It
does not control the rectified positive clock `(OWL.4)`.

The pressure-service storage

```math
Y_\phi(t)=\int P\,U\cdot\nabla\phi\,dx
\tag{OWL.13}
```

removes the raw material time derivative of pressure:

```math
-\int D_tP\,U\cdot\nabla\phi
=
-{d\over dt}Y_\phi
+
\int P(\nabla\cdot T^\sharp)\cdot\nabla\phi
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi).
\tag{OWL.14}
```

This is a real same-packet cancellation. It does not make the pressure service
disappear. It moves it into pressure-stress and pressure-transport terms on the
same transported annulus.

The Cauchy-Green material storage records deformation:

```math
C=F^\top F,
\qquad
\partial_tC=2F^\top S F.
\tag{OWL.15}
```

It proves that material stretching and thinning are strain-clock events. It
does not give a sign-definite annular stress-work descent: the local
incompressible affine normal form has real material strain, pressure-balanced
convection, zero interior viscous forcing, and collar-dependent stress-work
sign.

The dyadic gradient transfer storage controls the pure velocity high-frequency
tail after the strict-low and threshold-spill decompositions. It does not
control the full annular density because `(OWL.5)` still contains pressure-time
elliptic service and cubic collar strain service.

## 3. Exact obstruction in the current storages

After the pressure-service cancellation, the modified signed annular flux has
the form

```math
{d\over dt}(F_\phi^\sharp+Y_\phi)
=
\mathcal Q_\phi^{press/stress}
+
\mathcal C_\phi^{cubic}
+
\mathcal R_\phi^{collar/stress}.
\tag{OWL.16}
```

The cubic collar term contains contractions such as

```math
-\nu\int
U_i
\left(
\partial_iU_k\partial_kU_j
+
\partial_jU_k\partial_kU_i
\right)
\partial_j\phi
-
2\nu\int U_iS_{ij}(U)(\partial_jU_k)(\partial_k\phi).
\tag{OWL.17}
```

These terms are on the same material annulus. They are the physical
stress/strain service of the return layer. They also have no universal sign.
Under the algebraic flip

```math
U\mapsto -U,\qquad \nabla U\mapsto -\nabla U,
\tag{OWL.18}
```

the cubic collar functional changes sign, so it cannot be a hidden nonnegative
loss.

Natural second storages,

```math
\int P|U|^2\chi,\qquad
\int T^\sharp:T^\sharp\chi,\qquad
\int U\cdot\nabla P\,\chi,
\tag{OWL.19}
```

differentiate into the same pressure-stress and cubic collar contractions,
plus higher pressure/material derivatives. A lower bound for these storages on
shrinking terminal annuli requires normalized pressure, velocity, and material
tower control. That is exactly the material record whose positive clock is
being sought.

Thus the current storages preserve the physical packet and prevent fake
detachment, but they do not produce the one-way bound `(OWL.8)`.

## 4. What this proves and what remains

The direct one-way Lyapunov test proves this checked boundary:

```math
\text{standard same-packet storages}
\quad\Longrightarrow\quad
\text{same-packet redistribution of pressure/cubic service,}
\tag{OWL.20}
```

not

```math
\text{finite full positive material clock.}
\tag{OWL.21}
```

The missing theorem is not attachment of the spike to the annulus. Attachment
is already supplied by `(OWL.12)`. It is not initial frequency amplitude,
linear heat damping, fixed low modes, global affine strain, or pure velocity
high-high cascade; those have already been separated or paid.

The remaining theorem is exactly the one-way coercivity law

```math
\boxed{
\exists\,\mathcal B_N\text{ satisfying }(OWL.8)\text{ and }(OWL.9)
}
\tag{OWL.22}
```

for the full pressure-viscosity-incompressibility-velocity material clock of
the original solution.

Equivalently, prove `(OWL.7)` directly from the full coupled Navier--Stokes law
without assuming bounded \(H^s\) or bounded material record.

This is the current gold-route frontier.
