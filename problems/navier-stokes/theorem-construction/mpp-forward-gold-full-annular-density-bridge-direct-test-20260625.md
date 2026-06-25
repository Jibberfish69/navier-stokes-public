---
theorem_id: forward-gold-full-annular-density-bridge-direct-test-20260625
status: bridge-equivalent-to-full-positive-material-clock-not-proved-from-scheduler
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the full annular density bridge required by the finite rectified
  annular force-action route. The stress-time term has already been reduced to
  the same material spatial pressure-stress-velocity tower, so the object is
  not a free time signal and not a detached packet. The installed scheduled
  high-tail machinery pays fixed-threshold/high-shell velocity subpieces, but
  it does not bound the active pressure-time elliptic service and cubic
  gradient/strain terms of the full transported annular density. Therefore the
  bridge is not discharged as installed; it is equivalent to proving the full
  positive material clock or replacing absolute control by a signed global
  terminal-tail inequality.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-same-material-service-clock-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-density-termwise-control-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scheduled-cascade-to-full-annular-density-bridge-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-global-full-clock-stress-time-spatial-reduction-20260625.md
---

# Full Annular Density Bridge Direct Test

Date: 2026-06-25

## 0. Target

The transported annular stress-work derivative has been reduced to the same
material density

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
\tag{FDB.1}
```

where

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0.
\tag{FDB.2}
```

The full annular density bridge would prove

```math
\boxed{
\int_0^{T_*}\sum_j2^{\gamma j}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L_x^1}\,dt<\infty
}
\tag{FDB.3}
```

from the original smooth material history and installed scheduler/cascade
machinery.

This is the exact physical object: one transported annular layer history, not
an independent packet event.

## 1. Terms supported by installed high-tail machinery

The scheduled cascade theorem controls high-frequency velocity-tail quantities
after a threshold has been chosen:

```math
E_N(t)=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2,
\qquad
D_N(t)=\sum_{j\ge N}2^{4j}\|\Delta_j u(t)\|_2^2.
\tag{FDB.4}
```

Its fixed-threshold collar coefficient is integrable:

```math
\Theta_N^\sharp(t)
=
\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_2^2
\le C_{N,M}\|u(t)\|_2^2.
\tag{FDB.5}
```

Consequently, genuinely high-shell pieces of `(FDB.1)` that reduce to
velocity-tail `H^1/H^2` quantities can be routed through the installed cascade
support after pressure, collar, and coefficient commutators have been restored
inside the same packet.

This proves a support statement, not the full bridge.

## 2. Pressure-time elliptic service is not covered

The second term in `(FDB.1)` is

```math
S_2=|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|.
\tag{FDB.6}
```

The source \(\mathcal E_P\) is produced by differentiating

```math
-\Delta P=\partial_iU_j\partial_jU_i
\tag{FDB.7}
```

along the material flow. It contains same-packet terms of the form

```math
\partial^2T^\sharp\,\partial U,
\qquad
(\partial U)^3,
\qquad
\partial U\,\partial^2P,
\qquad
\Delta U\,\nabla P.
\tag{FDB.8}
```

Calderon--Zygmund keeps `(FDB.6)` in the pressure tower. It does not lower the
order or turn it into a scheduler-controlled velocity tail. Bounding `(FDB.6)`
by absolute values is exactly a pressure-time service estimate for the same
material record.

Thus `(FDB.6)` is not covered by `PST.A` or by fixed-threshold coefficient
integrability.

## 3. Cubic gradient/strain service is not covered

The fifth term is

```math
S_5=|U|\,|\nabla U|^2|\nabla\phi|.
\tag{FDB.9}
```

This is the positive cubic strain service of the same annular spike-wave
history. The local energy class gives

```math
U\in L^{10/3}_{t,x},
\qquad
\nabla U\in L^2_{t,x},
\tag{FDB.10}
```

but `(FDB.10)` does not give the scale-uniform terminal bound for `(FDB.9)` on
the shrinking transported annular sampling family. A direct bound for `(FDB.9)`
requires exactly the missing positive material service clock or a signed
cancellation before absolute values are taken.

## 4. Bridge verdict

The direct bridge

```math
\texttt{PST.A}
\Longrightarrow
(FDB.3)
\tag{FDB.11}
```

is false as installed. `PST.A` is useful high-tail support, but it does not
control the active pressure-time elliptic service `(FDB.6)` or the cubic
strain service `(FDB.9)`.

The correct implication is only

```math
(FDB.3)
\Longleftarrow
\text{high-tail scheduler support}
+
\text{pressure-time service control}
+
\text{cubic strain service control}.
\tag{FDB.12}
```

The last two controls are not separate physical objects. They are the same
pressure-viscosity-incompressibility-velocity material clock in annular-density
coordinates.

## 5. Result

The full annular density bridge is not proved from the current installed
scheduler/cascade inputs. It reduces to the same remaining global full-clock
producer:

```math
\boxed{
\text{prove finite positive material service for }S_2+S_5
\text{, or prove a signed global terminal-tail inequality before rectification.}
}
\tag{FDB.13}
```

This keeps the ontology intact. The annular return is attached to the original
material history; the unsolved issue is not detachment, but control of the
positive active pressure/strain service of that same history.