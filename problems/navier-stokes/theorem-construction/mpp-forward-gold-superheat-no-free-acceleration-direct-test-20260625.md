---
theorem_id: forward-gold-superheat-no-free-acceleration-direct-test-20260625
status: direct-test-installed-superheat-requires-acceleration-clock-or-bounded-storage
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the surviving super-heat-rate annular pump on the original smooth
  material history. The shell balance, donor identity, transported stress
  identity, and moving-pump dichotomy already prove that sub-heat feed is
  absorbed by viscosity and that every unabsorbed feed is same-fluid
  pressure-strain-coefficient-collar residence. This note tests whether the
  superheat case itself is finite from the same ledgers. It is not: in
  intrinsic material-rate time, superheat is precisely the regime where heat
  damping is too slow to be the stopper. Rectified recirculation is controlled
  only by an acceleration-weighted interface-variation clock or by a
  bounded-below same-material storage. Therefore the live proof line is now
  exact: prove finite superheat residence by a true no-free-acceleration
  principle for the same pressure-viscosity-incompressibility-velocity packet,
  or construct the missing bounded-below storage.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-subheat-absorption-superheat-record-dichotomy-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-updown-shell-recirculation-balance-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-interface-variation-coercivity-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
---

# Superheat No-Free-Acceleration Direct Test

Date: 2026-06-25

## 0. Object

The object is still one original smooth material Navier--Stokes history.  In
the fixed material chart,

```math
\partial_t v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0,
\tag{SNA.1}
```

and the active shell balance is

```math
{d\over dt}e_j(t)+d_j(t)=m_j(t),
\tag{SNA.2}
```

where \(e_j\) is the weighted active-shell material energy, \(d_j\ge0\) is the
same-shell viscous residence, and \(m_j\) is the signed
pressure/incompressibility/coefficient/collar interface of the same packet.

The already-installed dichotomy gives

```math
[m_j(t)]_+
\le
{1\over2}d_j(t)
+
C\,\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}}
+
r_j(t),
\tag{SNA.3}
```

with

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+
\Theta_j^{press}
+
\Theta_j^{coef}
+
\Theta_j^{collar}.
\tag{SNA.4}
```

Thus the remaining positive pump is

```math
\mathcal R_{sh,N}(t)
:=
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}} .
\tag{SNA.5}
```

This is the same-fluid annular residence above the heat rate.

## 1. Intrinsic material-rate time

On a superheat interval for shell \(j\), define the intrinsic material-rate
time

```math
d\tau_j(t)=\Theta_j^{mat}(t)\,dt .
\tag{SNA.6}
```

Then the heat damping coefficient in `(SNA.2)` becomes

```math
{\nu2^{2j}\over \Theta_j^{mat}(t)} .
\tag{SNA.7}
```

On the superheat set

```math
\Theta_j^{mat}(t)>\delta2^{2j},
\tag{SNA.8}
```

this coefficient satisfies only

```math
{\nu2^{2j}\over \Theta_j^{mat}(t)}
<
{\nu\over\delta}.
\tag{SNA.9}
```

and it can be arbitrarily small when the material pressure-strain rate is much
larger than the heat rate.  So superheat is exactly the regime where heat
damping no longer supplies the one-way stopper in intrinsic material time.

The residence `(SNA.5)` is simply

```math
\int e_j\,d\tau_j
\tag{SNA.10}
```

on the superheat set.  A proof of finite superheat residence therefore has to
control the material-rate time spent by shell energy above heat speed.  The
ordinary heat-time damping has already been used in the subheat branch.

## 2. Shell donor law gives attachment, not finiteness

Splitting \(m_j=p_j-n_j\), where

```math
p_j=[m_j]_+,\qquad n_j=[-m_j]_+,
\tag{SNA.11}
```

the shell balance gives

```math
\int_I p_j\,dt
=
e_j(b)-e_j(a)
+
\int_I d_j\,dt
+
\int_I n_j\,dt
\tag{SNA.12}
```

on every interval \(I=(a,b)\).  This is exact same-fluid bookkeeping.  Positive
feed is stored, dissipated, or returned through the negative side of the same
pressure-strain interface.

The identity does not bound the rectified amount \(p_j+n_j\).  Infinite
up/down recirculation remains possible at the level of this signed ledger until
the sign changes of \(m_j\) are charged.

## 3. Variation charges sign changes but creates the acceleration clock

The heat-window interface-variation calculation gives

```math
\int_{I_j}[m_j]_+\,dt
\le
[e_j(b)-e_j(a)]_+
+
\int_{I_j}d_j\,dt
+
C\int_{I_j}2^{-2j}(\Theta_j^{mat})^2e_j\,dt
+
R_{legal}.
\tag{SNA.13}
```

The subheat part of the last term is absorbed by viscosity.  On the superheat
set,

```math
2^{-2j}(\Theta_j^{mat})^2e_j
=
\left({\Theta_j^{mat}\over2^{2j}}\right)
\Theta_j^{mat}e_j .
\tag{SNA.14}
```

So interface variation controls recirculation only by the stronger
acceleration-weighted clock

```math
\int
\left({\Theta_j^{mat}\over2^{2j}}\right)
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt .
\tag{SNA.15}
```

The factor \(\Theta_j^{mat}/2^{2j}\) is the physical acceleration ratio: the
same annular pressure-strain/coefficient/collar interface is changing faster
than heat time at shell \(j\).  It is bounded below on the superheat set and
has no upper bound from energy, enstrophy, signed donor exchange, pressure
ellipticity, or the shell balance.

Therefore the variation route proves this exact implication:

```math
\text{finite acceleration-weighted same-interface variation}
\quad\Longrightarrow\quad
\text{finite superheat residence}.
\tag{SNA.16}
```

It does not prove finite superheat residence from the first residence clock
itself.

## 4. Why this is not a detached obstruction

Every term in `(SNA.15)` is generated by `(SNA.1)`.  The acceleration ratio is
not an external oscillator and not a separate pressure-only signal.  It is made
from:

```math
\dot A,\quad \dot G,\quad S,\quad \nabla^2q,\quad
\text{viscous tower terms},\quad
\text{transported collar/frame variation}.
\tag{SNA.17}
```

The calculation preserves participation completely.  It says only that the
same physical law is being asked to do a stronger job: not merely attach the
payback to the annulus, and not merely absorb below-heat feed, but prevent
infinite faster-than-heat recirculation of the same pressure-strain interface.

## 5. Exact proof state

The current direct route has proved:

```math
\text{subheat annular feed}
\quad\Longrightarrow\quad
\text{viscous residence};
\tag{SNA.18}
```

```math
\text{superheat annular feed}
\quad\Longrightarrow\quad
\text{same-material pressure-strain-coefficient-collar residence};
\tag{SNA.19}
```

```math
\text{rectified recirculation}
\quad\Longrightarrow\quad
\text{same-interface acceleration variation}.
\tag{SNA.20}
```

The missing MPP-closing step is exactly one of:

```math
\int_0^{T_*}
\sum_j
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt
<\infty,
\tag{SNA.21}
```

proved directly as a no-free-upward-transfer law, or

```math
\int_0^{T_*}
\sum_j
\left({\Theta_j^{mat}\over2^{2j}}\right)
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt
<\infty,
\tag{SNA.22}
```

proved as a no-free-acceleration law, or a bounded-below same-material storage
whose derivative pays `(SNA.21)` without putting `(SNA.21)` or `(SNA.22)` on
the right side.

Thus the direct test does not close the MPP.  It removes the remaining vague
wording.  The unsolved object is faster-than-heat same-interface recurrence on
the original material history, and the only acceptable producer is a true
one-way same-material law for that recurrence.
