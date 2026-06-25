---
theorem_id: forward-gold-superheat-intrinsic-time-shell-ode-test-20260625
status: direct-test-installed-intrinsic-time-shell-ode-is-growth-control-not-residence-producer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the surviving super-heat-rate material residence against the active
  shell ODE after changing to intrinsic material-rate time
  \(d\tau_j=\Theta_j^{mat}dt\). The ODE preserves the same-fluid annular
  participation picture: positive active-shell feed is still stored,
  dissipated, or returned through the same pressure-strain-coefficient-collar
  interface. In intrinsic time it gives at most logarithmic growth control of
  the shell energy. It does not prove the residence
  \(\int e_j\,d\tau_j\) is finite, because the heat damping coefficient becomes
  \(\nu2^{2j}/\Theta_j^{mat}\) and loses a lower bound precisely on the
  superheat set. Therefore the live producer remains finite superheat
  residence itself, finite acceleration-weighted same-interface variation, or
  a bounded-below same-material storage paying that residence directly.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-no-free-acceleration-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
---

# Superheat Intrinsic-Time Shell ODE Test

Date: 2026-06-25

## 0. Object

The object is the original smooth solution in its transported material annular
history.  The active shell balance is

```math
{d\over dt}e_j(t)+d_j(t)=m_j(t),
\tag{SIT.1}
```

where \(e_j\) is active-shell material energy, \(d_j\) is the same-shell
viscous residence, and \(m_j\) is the signed pressure/incompressibility/
coefficient/collar interface of the same packet.

At shell \(j\), the material rate is

```math
\Theta_j^{mat}
=
\Theta_j^{strain}
+\Theta_j^{press}
+\Theta_j^{coef}
+\Theta_j^{collar}.
\tag{SIT.2}
```

The surviving residence is

```math
\mathcal R_{sh,N}(t)
=
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}} .
\tag{SIT.3}
```

Equivalently, on a selected superheat shell this is the density
\(e_j\,d\tau_j\), where

```math
d\tau_j=\Theta_j^{mat}(t)\,dt.
\tag{SIT.4}
```

## 1. Shell ODE in material-rate time

Rewrite `(SIT.1)` in the time variable `(SIT.4)`:

```math
{d e_j\over d\tau_j}
+
{d_j\over \Theta_j^{mat}}
=
{m_j\over \Theta_j^{mat}}.
\tag{SIT.5}
```

The shell viscosity has the lower bound

```math
d_j(t)\gtrsim \nu2^{2j}e_j(t).
\tag{SIT.6}
```

So in material-rate time the damping coefficient is

```math
{d_j\over \Theta_j^{mat}e_j}
\gtrsim
{\nu2^{2j}\over\Theta_j^{mat}}.
\tag{SIT.7}
```

On the superheat set,

```math
\Theta_j^{mat}>\delta2^{2j},
\tag{SIT.8}
```

this coefficient has no positive lower bound.  It is only bounded above by a
constant scale:

```math
{\nu2^{2j}\over\Theta_j^{mat}}
<
{\nu\over\delta},
\tag{SIT.9}
```

and it can go to zero when the pressure-strain-coefficient-collar material rate
is much faster than heat.

That is the exact meaning of the superheat case: the same annular interface is
moving faster than the heat-rate damping which already paid the subheat branch.

## 2. What the ODE does prove

The moving-pump estimate gives

```math
[m_j]_+
\lesssim
\Theta_j^{mat}e_j
\quad
\text{on the superheat set},
\tag{SIT.10}
```

after the subheat/viscous part has already been separated.  Hence `(SIT.5)`
implies the one-sided logarithmic estimate

```math
{d\over d\tau_j}\log(1+e_j)
\le
{[m_j]_+\over \Theta_j^{mat}(1+e_j)}
\lesssim
{e_j\over 1+e_j}
\le
1.
\tag{SIT.11}
```

Thus finite material-rate time controls growth of \(e_j\):

```math
\log(1+e_j(\tau_2))
\le
\log(1+e_j(\tau_1))
+C(\tau_2-\tau_1).
\tag{SIT.12}
```

This is a continuation consumer.  It says that once the annular material-rate
time is finite, shell energy cannot grow faster than exponentially in that
time.

## 3. What the ODE does not prove

The desired superheat residence is

```math
\int e_j\,d\tau_j
=
\int
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt.
\tag{SIT.13}
```

The logarithmic estimate `(SIT.11)` controls the growth of \(e_j\) as a
function of \(\tau_j\).  It does not control the integral of \(e_j\) over
\(\tau_j\).  For example, a bounded positive shell energy over an infinite
material-rate interval has

```math
\sup_\tau e_j(\tau)<\infty,
\qquad
\int e_j(\tau)\,d\tau=\infty .
\tag{SIT.14}
```

The shell ODE blocks detached free creation, because all feed remains attached
to storage, viscosity, or same-interface return.  It does not by itself impose
finite residence above heat speed.

## 4. Exact consequence

The intrinsic-time shell equation proves:

```math
\text{finite superheat material-rate residence}
\quad\Longrightarrow\quad
\text{controlled active-shell growth}.
\tag{SIT.15}
```

It does not prove:

```math
\text{controlled active-shell growth}
\quad\Longrightarrow\quad
\text{finite superheat material-rate residence}.
\tag{SIT.16}
```

So this test confirms the active live edge:

```math
\boxed{
\int_0^{T_*}
\sum_j
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt
<\infty
}
\tag{SIT.17}
```

must be produced by a true one-way same-material law: finite first superheat
residence, finite acceleration-weighted same-interface variation, or a
bounded-below same-material storage whose drop pays `(SIT.17)`.

