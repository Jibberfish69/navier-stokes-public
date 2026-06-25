---
theorem_id: forward-gold-direct-full-clock-original-history-attempt-20260625
status: direct-proof-not-closed; reduced-to-full-annular-stress-transfer-or-signed-coercivity
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the direct proof of the full material clock from the original smooth
  material spike-wave history. The object is one transported material history,
  not independent heat-scale packets. Energy, signed storage, and dyadic
  frequency control each preserve that object, but none produces the finite
  positive full clock from the checked inputs. The exact remaining mechanism is
  either high-frequency nonlinear stress-transfer absorption for the full
  annular density, or a signed global terminal-tail coercivity statement whose
  storage is bounded below without assuming the same full clock.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-full-material-clock-producer-direct-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frequency-controlled-annular-return-direct-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-global-full-clock-stress-time-spatial-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-bridge-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-global-terminal-tail-inequality-direct-test-20260625.md
---

# Direct Full-Clock Proof From Original History Attempt

Date: 2026-06-25

## 0. Object

The object is one original smooth incompressible Navier--Stokes history on the
active periodic surface:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
```

Let the material map satisfy

```math
\dot X(a,t)=u(X(a,t),t),
\qquad
\det D_aX(a,t)=1.
```

The spike-wave, transported annular layers, pressure response, viscous strain,
incompressibility constraint, and later annular return are all readings of this
one material history.

The direct full-clock theorem would prove, for each fixed continuation depth
`N`,

```math
\int_0^{T_*}d\Omega_N^{full}<\infty,
\tag{DFC.1}
```

where the full clock contains both the positive material-record variation and
the positive annular pressure/strain service:

```math
d\Omega_N^{full}
\supset
C_N\,d[\log(1+\mathcal P_N^{mat})]_+
+
\sum_j2^{\gamma j}\|\Delta_j\mathcal S^\sharp_\phi(t)\|_{L^1_x}\,dt.
\tag{DFC.2}
```

The stress-time term has already been reduced to the same-material spatial
density

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
\tag{DFC.3}
```

with

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0.
\tag{DFC.4}
```

So the live problem is not attachment. It is finite positive variation of this
attached same-material pressure/strain service.

## 1. Energy test

The exact energy inequality gives

```math
\sup_{t<T_*}\|u(t)\|_2^2
+
2\nu\int_0^{T_*}\|\nabla u(t)\|_2^2\,dt
\le
\|u_0\|_2^2.
\tag{DFC.5}
```

This proves finite raw energy and finite raw viscous dissipation. It also gives
height-width thinning:

```math
|\{x:|u(t,x)|\ge h\}|
\le
\frac{\|u_0\|_2^2}{h^2}.
\tag{DFC.6}
```

But `(DFC.5)` does not imply `(DFC.1)`. The full clock is an unweighted
terminal material-action clock. On a heat-scale sample of radius `r`, the raw
energy/dissipation contribution carries the radius weight, while the normalized
material action of a self-similar annular return remains order one after the
heat-scale readout. Thus energy can attach the spike to the annulus and pay raw
dissipation, but it does not control the rectified positive annular
pressure/strain service.

This is a scaling obstruction inside the same material history, not a detached
packet scenario.

## 2. Signed storage test

For a transported annular cutoff,

```math
(\partial_t+u\cdot\nabla)\phi=0,
```

and

```math
M_\phi(t)=\int {1\over2}|u|^2\phi\,dx,
\qquad
T=-pI+2\nu S,
```

the exact stress identity is

```math
{d\over dt}M_\phi(t)
+
2\nu\int\phi|S|^2\,dx
=
-\int u\cdot T\nabla\phi\,dx.
\tag{DFC.7}
```

This is the pay-it-back-later attachment identity: center storage change is
read through the same transported annular stress/strain return.

The stronger signed route tries to absorb the pressure-time piece into a
storage such as

```math
Y_\phi(t)=\int P\,U\cdot\nabla\phi\,dx.
\tag{DFC.8}
```

The exact differentiation keeps the pressure-time service inside the same
packet, but the resulting signed primitive must be bounded below to produce a
one-way positive clock. A direct bound for `(DFC.8)` at terminal scale requires
scale-uniform pressure and velocity control such as the normalized local
`L^3/L^{3/2}` or fixed-depth material record. That is already the continuation
strength supplied by `(DFC.1)`.

So the signed identity preserves participation and removes the fake free-time
signal. It does not, by itself, prove finite positive variation.

## 3. Frequency test

Smooth initial data gives, for every fixed continuation depth `M`,

```math
\sum_j2^{2Mj}\|\Delta_j u_0\|_2^2<\infty.
\tag{DFC.9}
```

The linear heat evolution damps high frequencies:

```math
\|\nabla^m\Delta_j e^{\nu t\Delta}u_0\|_2
\lesssim
2^{mj}e^{-c\nu2^{2j}t}\|\Delta_j u_0\|_2.
\tag{DFC.10}
```

Therefore the initial spectrum and the purely linear high-frequency return are
not the source of a terminal full-clock failure.

The nonlinear Duhamel term is the same pressure-viscosity-incompressibility-
velocity transfer written in frequency coordinates. The full annular derivative
density requires

```math
\int_0^{T_*}
\sum_j2^{\gamma j}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L^1_x}\,dt
<\infty.
\tag{DFC.11}
```

The checked gradient cascade notes discharge the genuine fixed-threshold
velocity high-high packet after the strict low-mode and threshold-spill splits.
That support is real. It does not discharge `(DFC.11)` because `(DFC.11)` also
contains the active pressure-time elliptic service and cubic material strain
service:

```math
|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|,
\qquad
|U|\,|\nabla U|^2|\nabla\phi|.
\tag{DFC.12}
```

Those are the positive annular service of the same material spike-wave. They
are not lower-order legal residuals, and they are not controlled by ordinary
energy or the installed scheduled tail theorem.

## 4. Direct proof verdict

The direct proof from original smooth data has been tested through the three
available mechanisms:

1. energy and raw dissipation;
2. signed same-packet stress storage;
3. dyadic frequency transfer from initial spectrum plus nonlinear Duhamel
   response.

All three preserve the physical object. They prove attachment, finite initial
finite-depth amplitude, linear damping, and fixed-threshold high-tail support.
They do not prove the finite positive full material clock.

The exact noncircular remaining alternatives are:

```math
\boxed{
\int_0^{T_*}
\sum_j2^{\gamma j}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L^1_x}\,dt
<\infty
}
\tag{DFC.13}
```

as a high-frequency nonlinear stress-transfer absorption theorem on the same
transported annular history, or

```math
\boxed{
\text{a signed global terminal-tail coercivity inequality whose storage is
bounded below without assuming }(DFC.1).
}
\tag{DFC.14}
```

Without one of `(DFC.13)` or `(DFC.14)`, the direct full-clock proof is not
closed.

## 5. Consequence for the MPP route

If `(DFC.1)` is proved, then the installed material-clock-to-fixed-`H^s`
readout gives bounded continuation-depth material record, the fixed-coordinate
`H^s` norm remains bounded for `s>5/2`, and classical local theory relaunches
the same smooth solution past `T_*`.

This note does not prove `(DFC.1)`. It isolates the remaining direct producer
without changing the object: the missing control is finite positive action of
the full pressure-viscosity-incompressibility-velocity material history.