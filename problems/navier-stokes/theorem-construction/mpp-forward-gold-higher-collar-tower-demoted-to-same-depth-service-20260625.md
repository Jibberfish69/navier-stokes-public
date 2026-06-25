---
theorem_id: forward-gold-higher-collar-tower-demoted-to-same-depth-service-20260625
status: live-edge-correction-installed-higher-collar-is-not-independent-producer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Consolidates the base collar absorption with the existing heat-window
  interface demotion.  The base transported collar is paid by the material
  frame/top-strain clock.  Higher collar and commutator derivatives do not
  create an independent tower-depth obstruction on terminal heat windows:
  multiplying the exact interface-variation derivative by the heat-window
  thickness \(2^{-2j}\) demotes the apparent time derivative loss back to
  same-depth pressure-gradient, pressure-elliptic, coefficient/strain, viscous
  commutator, and collar/frame service.  After the coefficient-frame reduction,
  the live producer is therefore sharpened to same-depth pressure/RHS service
  plus annular stress-work service, with collar/tower terms treated as their
  coordinates inside that same service rather than as a separate obstruction.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-window-interface-variation-same-depth-demotion-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md
---

# Higher Collar/Tower Demoted To Same-Depth Service

Date: 2026-06-25

## 0. Object

The object is one original transported material annulus.  The collar is not
moving independently:

```math
\phi(X(a,t),t)=\psi(a).
\tag{HCD.1}
```

Base collar geometry is already absorbed by the frame identity:

```math
\nabla_x\phi=A^\top\nabla_a\psi,
\qquad
D_t\log|\nabla_x\phi|
\lesssim
\lambda_+ .
\tag{HCD.2}
```

So base collar motion is paid by the same top-strain logarithmic storage.

## 1. The apparent higher-tower loss

The remaining collar terms appear when differentiating interface or stress-work
currents.  A typical active-shell interface derivative has the schematic form

```math
\dot P_j,\ \dot C_j
\quad\text{containing}\quad
\dot q,\ \dot G,\ \dot v,\ \dot A,
\tag{HCD.3}
```

and therefore seems to require one extra parabolic time derivative.

The exact heat-window interface calculation shows that the contribution is not
\(\dot P_j\) or \(\dot C_j\) alone.  On a terminal heat window attached to shell
\(j\),

```math
|I_j|\simeq2^{-2j}.
\tag{HCD.4}
```

Thus the rectification term is

```math
2^{-2j}\left(|\dot P_j|+|\dot C_j|\right).
\tag{HCD.5}
```

This is the same-depth quantity.

## 2. Exact demoted interface density

After substituting the material equation

```math
\dot v=-A^\top\nabla_aq+\nu\operatorname{div}_a(G\nabla_av),
\tag{HCD.6}
```

the demoted interface density is made of

```math
\text{pressure-gradient service}
+
\text{pressure-time elliptic service}
+
\text{coefficient/strain service}
+
\text{viscous commutator service}
+
\text{collar/frame service}.
\tag{HCD.7}
```

The collar/frame piece in `(HCD.7)` is not a separate free signal.  Its base
part is already paid by `(HCD.2)`.  Its higher derivative part is the same
finite-depth derivative of \(A,G,v,q\) that appears in the pressure-time and
viscous commutator service.

So the correct read is:

```math
\text{higher collar/tower term}
\subset
\text{same-depth pressure/RHS and stress-work service}.
\tag{HCD.8}
```

## 3. Consequence for the live producer

The live producer should no longer list higher collar/tower variation as an
independent obstruction.  The current reduced object is

```math
\int_0^{T_*}
\left(
d\Omega_N^{press/RHS}
+
d\Omega_N^{annular\ stress}
\right)
<\infty,
\tag{HCD.9}
```

where the pressure/RHS and annular stress terms are understood to include their
same-depth collar/frame and viscous-commutator coordinates.

This is still not the MPP closure.  It is a narrower correct target: the collar
derivative stack has been folded back into the full same-material service
instead of being treated as a new problem.
