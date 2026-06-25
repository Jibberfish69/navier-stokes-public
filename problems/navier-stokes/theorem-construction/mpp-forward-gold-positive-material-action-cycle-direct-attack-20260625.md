---
theorem_id: forward-gold-positive-material-action-cycle-direct-attack-20260625
status: direct-attack-identifies-positive-action-cycle-branch; corrected-by-bounded-record-packing; global-clock-still-open
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the remaining finite full material clock directly on the original
  smooth material spike-wave history. The result eliminates the fake detached
  packet and arbitrary-signal models: if the full clock is infinite, the only
  remaining failure shape is infinitely many unit positive same-material
  pressure-viscosity-incompressibility-velocity action cycles on the transported
  annular history, with signed storage/payback canceling but rectified action
  accumulating. This is not a new proxy problem; it is the original missing
  global clock in minimal-cycle form. The later bounded-record packing note
  corrects the overstrong single-cycle wording: one unit action cycle can exist,
  but infinitely many unit cycles cannot accumulate before a finite terminal
  time while the continuation-depth material record remains bounded.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/thread-trajectories/assess-stirling-for-ns-binomials.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
  - problems/navier-stokes/theorem-construction/mcp-global-full-clock-stress-time-spatial-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-strain-annular-action-producer-test-20260625.md
---

# Positive Material Action Cycle Direct Attack

Date: 2026-06-25

## 0. Physical object

The object is one original smooth material spike-wave history.  The annular
layers are transported layers of that same fluid, and heat-scale packets are
only samples of that history near a candidate terminal concentration.

Write the transported annular stress identity as

```math
(\partial_t+u\cdot\nabla)\phi=0,
\qquad
M_\phi(t)=\int {1\over2}|u|^2\phi\,dx,
```

```math
T=-pI+2\nu S,
\qquad
D_\phi(t)=2\nu\int\phi |S|^2\,dx,
\qquad
F_\phi(t)=\int u\cdot T\nabla\phi\,dx.
```

Then, for every smooth preterminal time,

```math
{d\over dt}M_\phi(t)+D_\phi(t)=-F_\phi(t).
\tag{PAC.1}
```

This is the exact pay-it-back-later identity.  The center cannot be separated
from the outer annular stress/strain history.

## 1. Native full clock

The live finite-clock target is not raw dissipation and not a projected source
coordinate.  In the stress-time spatial reduction it is a same-packet positive
measure of the form

```math
d\Omega_N^{full}
=
\mathcal A_N^\sharp(t)\,dt
+
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+
+d\Omega_N^{legal},
\tag{PAC.2}
```

where \(\mathcal A_N^\sharp\) contains the full gauge-reduced annular
pressure-stress-velocity tower density, including the pressure-time elliptic
service and the cubic collar term.  The exact spatial representative installed
in the stress-time reduction is

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
|U|\,|T^\sharp|\,|\nabla U|\,|\nabla\phi|.
\end{aligned}
\tag{PAC.3}
```

The target estimate is

```math
\int_0^{T_*}d\Omega_N^{full}<\infty.
\tag{PAC.4}
```

The installed continuation bridge proves that `(PAC.4)` implies bounded fixed
\(H^s\), \(s>5/2\), and hence classical relaunch past \(T_*\).

## 2. Direct contradiction reduction

Assume `(PAC.4)` fails.  Since the solution is smooth on every compact
preterminal interval \([0,T_* -\epsilon]\), the clock is finite there.  Thus any
infinite mass of \(d\Omega_N^{full}\) accumulates only at \(T_*\).

Choose stopping times \(a_k<b_k<T_*\), with \(a_k\uparrow T_*\), on the same
transported material annular history so that

```math
\int_{a_k}^{b_k}d\Omega_N^{full}=1.
\tag{PAC.5}
```

These intervals are not independent packets.  They are unit positive-action
samples of the same original fluid history.

By `(PAC.1)`, on each interval,

```math
\int_{a_k}^{b_k}F_\phi(t)\,dt
=
M_\phi(a_k)-M_\phi(b_k)
-
\int_{a_k}^{b_k}D_\phi(t)\,dt.
\tag{PAC.6}
```

The signed annular transaction is therefore tethered to storage change and raw
viscous strain.  Since \(M_\phi\) is bounded by the global kinetic energy and
\(\sum_k\int_{a_k}^{b_k}D_\phi\le \int_0^{T_*}2\nu\|S(t)\|_2^2dt<\infty\) on
bounded-overlap samples, unbounded full clock cannot be a detached center-only
source and cannot be an arbitrary time signal.

The only remaining failure shape is this:

```math
\sum_k\int_{a_k}^{b_k}d\Omega_N^{full}=\infty
```

while

```math
\sum_k\left|
\int_{a_k}^{b_k}F_\phi(t)\,dt
\right|<\infty
\quad\text{after storage and raw dissipation are accounted for.}
\tag{PAC.7}
```

So failure is an infinite sequence of rectified positive same-material action
cycles whose signed payback cancels.  The annulus is attached; the open issue is
positive variation, not location.

## 3. Minimal-cycle normal form

Normalize the unit-action intervals by the positive clock measure

```math
d\widehat\Omega_k
:=
1_{[a_k,b_k]}\,d\Omega_N^{full},
\qquad
\widehat\Omega_k([a_k,b_k])=1.
\tag{PAC.8}
```

After passing to the heat-scale coordinates of those intervals, every failure
of `(PAC.4)` produces a sequence of smooth same-material annular cycles with:

```math
\int d\widehat\Omega_k=1,
\tag{PAC.9}
```

```math
\left|M_\phi(b_k)-M_\phi(a_k)\right|
+
\int_{a_k}^{b_k}D_\phi(t)\,dt
\longrightarrow 0
\quad\text{along a subsequence if no material record grows,}
\tag{PAC.10}
```

and no loss of material attachment, because the cutoff and the pressure-stress
tower are transported before the limit.

Thus the exact enemy is a nontrivial positive action cycle with zero net
storage growth, zero raw-dissipation escape, and no loss of material carrier.

## 4. The precise theorem needed

The direct attack closes exactly if the following same-object inequality is
proved:

```math
d\mathcal B_N
+
c\,d\Omega_N^{full}
\le
dR_N,
\qquad
\mathcal B_N\ge -C,
\qquad
\int_0^{T_*}dR_N<\infty.
\tag{PAC.11}
```

The first corrected cycle consequence is now installed in
`BoundedMaterialRecordExcludesInfiniteActionCycles.A`: under a bounded
continuation-depth material record, the full annular action density is bounded,
so infinitely many unit positive cycles cannot fit into finite time.  The
remaining open part is the record-growth part of the same clock.

Equivalently, the accurate cycle language is:

```math
\boxed{
\text{No infinite family of smooth same-material annular
pressure-viscosity-incompressibility-velocity cycles can carry unit positive
full-clock action before }T_*\text{ with bounded continuation-depth material
record.}
}
\tag{PAC.12}
```

Thus bounded-record oscillatory cycling is not the remaining producer.  The
remaining finite full-clock producer is the finite positive variation of the
same continuation-depth material record itself.

## 5. What this proves and what it does not prove

This direct attack proves the following reduction:

```math
\neg\int_0^{T_*}d\Omega_N^{full}<\infty
```

implies infinitely many unit positive same-material action cycles on the
original transported annular history.

It also proves that the failure is not:

```math
\text{a detached center pulse,}
```

```math
\text{an arbitrary external time signal,}
```

```math
\text{a hidden independent heat-scale packet,}
```

or

```math
\text{a viscosity-only or pressure-only accounting issue.}
```

The branch remains open at the exact physical theorem `(PAC.11)` / `(PAC.12)`.
A proof of that theorem is a proof of `GlobalSamePacketFullClockFromOriginalData.A`,
and the installed continuation bridge then closes the MPP smoothness argument.
