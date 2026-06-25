---
theorem_id: forward-gold-original-data-full-material-clock-producer-direct-attack-20260625
status: direct-physical-attack-fails-with-exact-missing-positive-clock-mechanism
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the remaining gold-route producer directly from the accepted physical
  ontology: one original smooth material spike-wave history, transported
  annular layers, smooth finite-amplitude initial spectrum, pressure-viscosity-
  incompressibility-velocity coupling, and heat-scale windows only as samples of
  that history. The exact derivation proves attachment, height-width thinning,
  strain-clock quantization for material deformation, and same-material annular
  stress-work payment. It does not prove finite total positive material clock.
  The missing step is now isolated without detached packet language: a theorem
  that positive material deformation/action of the original annular stack has
  finite total variation before T*. Energy and signed stack telescoping control
  net storage and fixed-annulus time-thickness, but they do not control total
  positive deformation/pressure-service variation over infinitely many shrinking
  material scales.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rectified-force-action-vs-native-material-stack-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-spike-thinning-full-participation-trichotomy-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-material-annular-return-identity-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scheduled-cascade-to-full-annular-density-bridge-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-material-heat-scale-sampling-invariant-20260625.md
---

# Original-Data Full Material Clock Producer Direct Attack

Date: 2026-06-25

## 0. Object

The object is one original smooth incompressible Navier--Stokes history:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
u>0.
```

The material map is

```math
\dot X(a,t)=u(X(a,t),t),
\qquad
\det D_aX(a,t)=1
```

on every preterminal interval. The spike, its annular layers, the pressure
response, the viscous strain, and the later annular return are one material
history. Heat-scale windows are samples of this history, not independent
packet events.

The target is the finite positive material clock

```math
\int_{\sigma_0}^{\infty}d\Omega_N^{full}<\infty,
```

where the clock contains the positive material-record variation needed for a
fixed `H^s` relaunch:

```math
d\Omega_N^{full}
\supset
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+ .
```

## 1. What the physical ontology proves exactly

### 1.1 Finite energy forces thinning

Let

```math
H(t)=\|u(t)\|_{L^\infty_x},
\qquad
E_h(t)=\{x:|u(t,x)|\ge h\}.
```

The energy inequality gives

```math
|E_h(t)|\le {\|u_0\|_2^2\over h^2}.
```

Thus if `H(t_j)->infty`, then the high-amplitude region must thin:

```math
|E_{\theta H(t_j)}(t_j)|\le {\|u_0\|_2^2\over \theta^2H(t_j)^2}\to0.
```

This is the exact height-width constraint.

### 1.2 Material deformation has a strain clock

Let `F=D_aX` and `C=F^TF`. Then

```math
\partial_t C=2F^TSF,
\qquad
S={\nabla u+\nabla u^T\over2}.
```

For every material line element,

```math
\left|{d\over dt}\log |F(t)\xi|\right|
\le
\|S(t)\|_{L^\infty(X(A,t))}.
```

A dyadic material thinning or stretching event therefore spends a fixed amount
of strain clock:

```math
|F(t_1)\xi|\ge2|F(t_0)\xi|
\quad\Longrightarrow\quad
\int_{t_0}^{t_1}\|S(t)\|_{L^\infty(X(A,t))}\,dt\ge\log2.
```

### 1.3 Center storage is attached to annular stress/strain return

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

the exact identity is

```math
{d\over dt}M_\phi(t)+2\nu\int\phi|S|^2\,dx
=
-\int u\cdot T\nabla\phi\,dx.
```

So center storage change cannot detach from the same material annulus:

```math
[M_\phi(a)-M_\phi(b)]_+
\le
\int_a^b
\left(
2\nu\int\phi|S|^2\,dx
+
\left|\int u\cdot T\nabla\phi\,dx\right|
\right)dt.
```

### 1.4 Initial frequencies are finite at every continuation depth

Smooth initial data gives, for each fixed depth `N`,

```math
\sum_j2^{2Nj}\|\Delta_j u_0\|_2^2<\infty.
```

So an infinite-frequency initial pulse is allowed, but its finite-depth
amplitude is summable. Any later high-frequency replenishment must be generated
by the same pressure-viscosity-incompressibility-velocity evolution.

## 2. What these facts do not prove

The facts above prove same-material attachment and quantization of individual
height/thinning/deformation events. They do not prove that the total positive
material action over all shrinking terminal samples is finite.

The signed material stack controls net storage and telescoping stress-work.
For nested material layers, oriented internal interface work cancels. That is
why the center pulse is not detached.

The continuation proof needs a positive clock. Net cancellation does not bound
positive variation. A same-fluid annular layer may pass energy/deformation
inward and later outward with small net exchange while still accumulating
positive strain, pressure-service, and material-tower variation. The required
clock is exactly that positive record:

```math
d\Omega_N^{full}
\supset
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+
+
\text{annular positive stress/strain action}.
```

Energy controls

```math
\sup_{t<T_*}\|u(t)\|_2^2
+2\nu\int_0^{T_*}\|\nabla u(t)\|_2^2\,dt,
```

which is physical finite-time dissipation. On shrinking heat-scale samples it
is radius-weighted and does not become the unweighted full material clock.

Scheduled high-frequency tail suppression controls selected velocity tails
after a threshold. It does not control the all-active-shell pressure-time
elliptic service and cubic strain density of the transported annular stack.

Therefore the direct implication

```math
\text{smooth data + physical same-material ontology}
\Longrightarrow
\int d\Omega_N^{full}<\infty
```

is not proved by energy, signed stack telescoping, fixed-annulus absolute
continuity, initial-frequency summability, or installed scheduled tail
suppression alone.

## 3. Exact missing producer

The remaining theorem is not an endpoint theorem and not a packet-exit theorem.
It is the following positive material-action theorem for the original history:

```math
\boxed{
\text{For the original smooth material spike-wave history, the total positive
pressure-viscosity-incompressibility-velocity deformation/action clock is
finite before }T_*.
}
```

One precise form is:

```math
\int_{\sigma_0}^{\infty}
\left(
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+
+d\Omega_N^{ann,+}
+d\mathcal L_{4B,N}
\right)<\infty.
```

A rectified annular force-action estimate is one sufficient coordinate:

```math
\sum_m\int_{J_m}\left|{d\over ds}F_{\phi_m}^{\sharp}(s)\right|ds<\infty,
```

but the native theorem is the positive material clock, not the scalar
rectified coordinate.

## 4. Verdict

This direct physical attack preserves the ontology and removes the detached
obstructions. It proves:

```math
\text{center spike}\quad\text{is attached to}\quad
\text{same-fluid annular stress/strain history},
```

and

```math
\text{height growth}\quad\text{forces}\quad
\text{thinning, material deformation, selector change, or storage/stress work}.
```

It does not prove the finite positive full clock. The exact unresolved line is
now only this:

```math
\text{same-material signed stack + pressure/viscosity/incompressibility}
\Longrightarrow
\text{finite positive material-action variation}.
```

That line is equivalent to the continuation-strength estimate already named
`GlobalSamePacketFullClockFromOriginalData.A`. It is the remaining hard math,
not a detachable obstruction.