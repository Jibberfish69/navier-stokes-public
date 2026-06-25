---
theorem_id: forward-gold-signed-net-to-rectified-annular-clock-bv-test-20260625
status: exact-signed-to-rectified-bv-reduction-installed; bv-producer-is-full-material-clock-strength
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Installs the exact scalar conversion from signed same-material annular service
  to rectified positive annular action. A signed net ledger controls the
  rectified positive clock only after the temporal BV of the same service
  density is charged. For the Betchov/enstrophy cubic service this BV derivative
  contains pressure-Hessian, quartic strain-vorticity, viscous tower, and
  localization/transport terms. Those terms are not a new detached obstruction:
  they are precisely the same pressure-viscosity-incompressibility-velocity
  material clock already identified as the remaining producer.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-net-payback-vs-total-annular-action-closure-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-active-height-flux-trichotomy-route-20260506.md
---

# Signed Net To Rectified Annular Clock BV Test

Date: 2026-06-25

## 0. Object

The object is one original smooth material history. Let \(a(t)\) be a signed
same-material service density produced by that history: a localized annular
stress/strain service, a pressure-time partner, or the global cubic
strain-vorticity service.

The signed ledger sees

```math
\int_I a(t)\,dt.
\tag{NTR.1}
```

The rectified annular clock sees one of

```math
\int_I [a(t)]_+\,dt,
\qquad
\int_I |a(t)|\,dt.
\tag{NTR.2}
```

The physical question is therefore exact: when can the signed same-fluid ledger
be converted into total same-fluid action?

## 1. Exact scalar conversion

Let \(I=(t_0,t_1)\) and let \(a\in BV(I)\). Write

```math
\bar a_I={1\over |I|}\int_I a(t)\,dt.
\tag{NTR.3}
```

Since

```math
[x+y]_+\le [x]_+ + |y|,
\tag{NTR.4}
```

we have

```math
\begin{aligned}
\int_I [a(t)]_+\,dt
&=
\int_I [\bar a_I+(a(t)-\bar a_I)]_+\,dt\\
&\le
|I|[\bar a_I]_+
+
\int_I |a(t)-\bar a_I|\,dt .
\end{aligned}
\tag{NTR.5}
```

The one-dimensional BV Poincare estimate gives

```math
\int_I |a(t)-\bar a_I|\,dt
\le
|I|\,\operatorname{Var}_I(a).
\tag{NTR.6}
```

Therefore

```math
\boxed{
\int_I [a(t)]_+\,dt
\le
\left[\int_I a(t)\,dt\right]_+
+
|I|\,\operatorname{Var}_I(a).
}
\tag{NTR.7}
```

The same argument gives the total-action version

```math
\boxed{
\int_I |a(t)|\,dt
\le
\left|\int_I a(t)\,dt\right|
+
|I|\,\operatorname{Var}_I(a).
}
\tag{NTR.8}
```

With a nonnegative packet weight \(e(t)\), the direct consequence is

```math
\boxed{
\int_I e(t)[a(t)]_+\,dt
\le
\sup_I e
\left(
\left[\int_I a(t)\,dt\right]_+
+
|I|\,\operatorname{Var}_I(a)
\right).
}
\tag{NTR.9}
```

This is the precise version of the older heat-dwell correction: positive-phase
harvesting is controlled by signed net service plus variation of the same
service. The variation is not optional bookkeeping. It is where the sign
changes physically live.

## 2. What the Betchov ledger supplies

On the periodic surface, the Betchov/enstrophy ledger gives the exact signed
cubic service

```math
a_B(t)
=
\int_{T^3}\omega\cdot S\omega\,dx
=
-{4\over3}\int_{T^3}\operatorname{tr}(S^3)\,dx.
\tag{NTR.10}
```

It controls the net service through enstrophy:

```math
{1\over2}{d\over dt}\int|\omega|^2\,dx
+
\nu\int|\nabla\omega|^2\,dx
=
a_B(t).
\tag{NTR.11}
```

By `(NTR.7)`, this signed ledger controls the positive cubic service on \(I\)
only if the same history also controls

```math
|I|\,\operatorname{Var}_I(a_B).
\tag{NTR.12}
```

So the exact conversion is:

```math
\int_I [a_B(t)]_+\,dt
\le
\left[
{1\over2}\|\omega(t_1)\|_2^2
-
{1\over2}\|\omega(t_0)\|_2^2
+
\nu\int_I\|\nabla\omega(t)\|_2^2\,dt
\right]_+
+
|I|\,\operatorname{Var}_I(a_B).
\tag{NTR.13}
```

The first term is signed net enstrophy service. The second term is the
rectification cost.

## 3. What the variation contains

For the material derivative,

```math
D_t\omega=S\omega+\nu\Delta\omega,
\tag{NTR.14}
```

and

```math
D_tS
=
-S^2-W^2-\nabla^2p+\nu\Delta S.
\tag{NTR.15}
```

Differentiating the cubic service gives, schematically but with the exact
channels displayed,

```math
\begin{aligned}
{d\over dt}\int \omega\cdot S\omega\,dx
&=
\int 2(S\omega)\cdot S\omega\,dx\\
&\quad
+
\int \omega\cdot(-S^2-W^2-\nabla^2p)\omega\,dx\\
&\quad
+
\nu\int
\left(
(\Delta\omega)\cdot S\omega
+
\omega\cdot S\Delta\omega
+
\omega\cdot(\Delta S)\omega
\right)\,dx .
\end{aligned}
\tag{NTR.16}
```

After localization to a transported annulus, `(NTR.16)` also carries the
transported collar and pressure-memory terms from the same material packet.

Thus \(\operatorname{Var}(a_B)\) is made of:

```math
\text{quartic strain-vorticity service}
+
\text{pressure-Hessian service}
+
\text{viscous higher-tower service}
+
\text{transported collar / pressure-memory service}.
\tag{NTR.17}
```

These are exactly pressure, viscosity, incompressibility, and velocity acting as
one coupled material law. They are not independent signals and not free
oscillations.

## 4. Consequence for the physical route

The physical frame deletes the fake arbitrary-signal problem. A terminal spike
cannot choose an arbitrary sign-changing annular service curve. Its service
curve is generated by the original smooth solution, the transported annuli, the
stress tensor, pressure coupling, incompressibility, and viscosity.

But the exact scalar algebra says that signed net service becomes rectified
annular action only after the temporal variation of that same service is paid.
In the NS variables, that temporal variation is the full material clock.

So the useful conclusion is:

```math
\boxed{
\text{signed net payback}
+
\text{finite same-material service variation}
\Longrightarrow
\text{finite rectified annular action}.
}
\tag{NTR.18}
```

And the exact unresolved producer is:

```math
\boxed{
\int_0^{T_*}\operatorname{Var}_{dt}
\bigl(
\text{same-material pressure/strain service density}
\bigr)
<\infty,
}
\tag{NTR.19}
```

with the variation generated by `(NTR.16)` and its localized transported-annulus
analogue.

This is the same object as the global full material clock. The signed-to-total
gap is no longer an abstract endpoint or packet problem; it is the physical
amount of pressure-stress service variation in the original transported
material history.

## 5. Status

This note proves the exact signed-to-rectified reduction and identifies the
only lawful rectification cost. It does not prove finite material service
variation from energy, Betchov, or enstrophy alone.

Therefore the live edge remains:

```math
\text{prove finite same-material pressure/strain service variation}
\quad
\text{or equivalently the full pressure-viscosity-incompressibility-velocity clock.}
\tag{NTR.20}
```

