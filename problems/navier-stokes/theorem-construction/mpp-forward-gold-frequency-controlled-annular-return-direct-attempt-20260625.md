---
theorem_id: forward-gold-frequency-controlled-annular-return-direct-attempt-20260625
status: direct-dyadic-implementation-reduces-to-nonlinear-high-frequency-refill-clock
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Implements the frequency-controlled annular return plan on the same
  transported material history. The initial-frequency contribution is summable
  from smooth data, and the linear viscous heat contribution has the expected
  high-frequency damping. The remaining term is the nonlinear high-frequency
  refill of the annular stress-time signal. Bony/Littlewood-Paley localization
  keeps it on the full pressure-viscosity-incompressibility-velocity packet,
  but does not bound it from energy alone. The route closes only if the
  same-packet nonlinear refill clock is proved; otherwise the plan reduces to
  the existing high-frequency cascade/active-square wall rather than proving
  finite annular force-action variation.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rectified-annular-force-action-variation-proof-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-frequency-data-to-material-clock-pressure-test-20260624.md
  - problems/navier-stokes/theorem-construction/derivative-lp-compatibility-bridge-note.md
  - problems/navier-stokes/theorem-construction/dyadic-high-frequency-gain-theorem.md
---

# Frequency-Controlled Annular Return Direct Attempt

Date: 2026-06-25

## 0. Target

The object is the original smooth solution and its transported material
annular history around a candidate terminal concentration.  The annular
stress-work flux is

```math
F_\phi^\sharp(t)
=
\int U_iT^\sharp_{ij}\partial_j\phi\,dx,
\qquad
T^\sharp=-PI+2\nu S(U),
\tag{FCA.1}
```

with \(\phi\) transported by the same velocity field.  The desired estimate is

```math
\int_0^{T_*}|(F_\phi^\sharp)'(t)|\,dt<\infty .
\tag{FCA.2}
```

The previous direct calculation gives

```math
|(F_\phi^\sharp)'(t)|
\le
\int_{\operatorname{collar}\phi}
\left(
|\nabla\cdot T^\sharp|\,|T^\sharp|
+
|U|\,|D_tT^\sharp|
+
|U|\,|T^\sharp|\,|\nabla u|
\right)|\nabla\phi|\,dx .
\tag{FCA.3}
```

The plan is to prove `(FCA.2)` by frequency control rather than treating
\(F_\phi^\sharp\) as an arbitrary time signal.

## 1. Dyadic decomposition of the annular signal

Let \(\Delta_j\) be a Littlewood--Paley decomposition on the same chart used to
read the transported annular packet.  In material coordinates this is a fixed
\(a\)-decomposition; in Eulerian coordinates the same formula carries the
transport/cutoff commutators as packet terms.  Write

```math
(F_\phi^\sharp)'(t)=\sum_j (F_{\phi,j}^\sharp)'(t),
\tag{FCA.4}
```

where each shell is obtained by applying \(\Delta_j\) to the full integrand in
`(FCA.3)`.  The decomposition is not a new object.  It is a frequency reading
of the same pressure-viscosity-incompressibility-velocity transaction.

For a fixed continuation depth, the force-action integrand is controlled by a
finite sum of dyadic stress/source packets of the form

```math
\mathcal B_j(t)
=
\Delta_j\mathcal B(u,p,\phi)(t),
\tag{FCA.5}
```

where \(\mathcal B\) is made of the three terms in `(FCA.3)`.  Thus

```math
|(F_{\phi,j}^\sharp)'(t)|
\lesssim
\|\mathcal B_j(t)\|_{L^1(\operatorname{collar}\phi)}
\tag{FCA.6}
```

up to the fixed packet/collar constants.

## 2. Initial spectrum is not the problem

For the linear heat part of one dyadic shell,

```math
\Delta_j u^{lin}(t)=e^{\nu t\Delta}\Delta_j u_0,
\tag{FCA.7}
```

and therefore

```math
\|\nabla^m\Delta_j u^{lin}(t)\|_2
\lesssim
2^{mj}e^{-c\nu 2^{2j}t}\|\Delta_j u_0\|_2 .
\tag{FCA.8}
```

Integrating in time gives

```math
\int_0^{T_*}
\|\nabla^m\Delta_j u^{lin}(t)\|_2\,dt
\lesssim
\nu^{-1}2^{(m-2)j}\|\Delta_j u_0\|_2 .
\tag{FCA.9}
```

Since \(u_0\) is smooth, for every fixed \(M\),

```math
\sum_j 2^{Mj}\|\Delta_j u_0\|_2<\infty .
\tag{FCA.10}
```

So every finite-depth initial-frequency contribution to `(FCA.2)` is
summable.  The initial pulse may have infinitely many frequencies, but not
infinite finite-depth amplitude.

## 3. Linear viscosity damps high frequencies

The nonlinear Duhamel formula is

```math
\Delta_j u(t)
=
e^{\nu t\Delta}\Delta_j u_0
-
\int_0^t
e^{\nu(t-s)\Delta}
\Delta_j\mathbb P\nabla\cdot(u\otimes u)(s)\,ds .
\tag{FCA.11}
```

Here \(\mathbb P\nabla\cdot(u\otimes u)\) is only the Eulerian shorthand for
the coupled pressure-incompressibility response.  In the transported material
packet this is read as the velocity equation together with the pressure
complement, coefficient equations, and divergence constraint; the pressure
channel is not discarded.

The heat kernel gives

```math
\int_s^{T_*}
2^{mj}e^{-c\nu 2^{2j}(t-s)}\,dt
\lesssim
\nu^{-1}2^{(m-2)j}.
\tag{FCA.12}
```

Thus the linear part gives the expected high-frequency damping.  Any
nondecaying high-frequency annular reversal must enter through the nonlinear
source term

```math
\Delta_j\mathbb P\nabla\cdot(u\otimes u).
\tag{FCA.13}
```

This is the precise mathematical version of the physical statement: faster
annular reversals are not free; they must be created by original spectrum or by
legal nonlinear transfer.

## 4. The nonlinear refill term

Applying `(FCA.12)` to the Duhamel term reduces finite annular variation to a
weighted nonlinear refill estimate of the form

```math
\int_0^{T_*}
\sum_j
2^{\gamma j}
\left\|
\Delta_j\mathbb P\nabla\cdot(u\otimes u)(s)
\right\|_2
\,ds
<\infty ,
\tag{FCA.14}
```

where \(\gamma\) is the finite derivative weight required by the stress-time
terms in `(FCA.3)`.  The exact value of \(\gamma\) depends only on the chosen
finite continuation depth and on the collar/gauge norm used to read the
annular packet.

Bony decomposition gives the shellwise split

```math
\Delta_j(u\otimes u)
=
\Delta_j(T_u u)+\Delta_j(T_u^{op}u)
+
\Delta_jR(u,u).
\tag{FCA.15}
```

The low-high part contains

```math
\Delta_j\big(S_{j-C}u\,\Delta_j u\big),
\tag{FCA.16}
```

and after the divergence this is bounded by a coefficient of the form

```math
\|\nabla S_{j-C}u\|_\infty\|\Delta_j u\|_2 .
\tag{FCA.17}
```

The high-high part contains the finite-collar resonant packet

```math
\sum_{\ell\ge j-C}
\Delta_j\big(\Delta_\ell u\,\widetilde\Delta_\ell u\big),
\tag{FCA.18}
```

which contributes a weighted square/refill term of the schematic form

```math
\sum_j 2^{\gamma j}
\sum_{\ell\ge j-C}
2^j
\|\Delta_\ell u\|_2
\|\widetilde\Delta_\ell u\|_\infty .
\tag{FCA.19}
```

Equivalently, after Bernstein and finite-collar summation, one obtains the
same active high-frequency square/cascade quantity already isolated in the
LPAS/CTS and dyadic high-frequency notes.

## 5. Why this does not close from current inputs

Energy gives

```math
u\in L^\infty_tL^2_x,
\qquad
\nabla u\in L^2_{t,x}.
\tag{FCA.20}
```

It does not imply `(FCA.14)`.  The low-high term `(FCA.17)` requires a
coefficient clock comparable to

```math
\int_0^{T_*}\|\nabla u(t)\|_\infty\,dt,
\tag{FCA.21}
```

or a same-packet substitute for that clock.  The high-high term `(FCA.19)`
requires the scale-critical nonlinear refill/active-square estimate.

Both are legitimate readings of the same physical law.  Neither is supplied by
initial smoothness plus the energy inequality alone.  Initial smoothness gives
the entrance tail `(FCA.10)`, and viscosity damps the linear tail `(FCA.12)`;
the unproved part is the nonlinear replenishment of high-frequency stress-time
amplitude.

Thus the frequency route proves the following exact reduction:

```math
\boxed{
\text{finite annular force-action variation}
\Leftarrow
\text{finite same-packet nonlinear high-frequency refill clock.}
}
\tag{FCA.22}
```

It does not prove that refill clock from the currently installed inputs.

## 6. Result of implementing the plan

The plan's physical correction is valid: \(F_\phi^\sharp\) is not an arbitrary
oscillator.  Its high-frequency reversals must come from the initial spectrum
or from nonlinear transfer under the full Navier--Stokes packet.

The initial-spectrum and linear-viscosity parts are controlled.  The remaining
same-packet nonlinear refill estimate is

```math
\boxed{
\int_0^{T_*}
\sum_j
2^{\gamma j}
\left\|
\Delta_j\mathbb P\nabla\cdot(u\otimes u)
\right\|_2
\,dt
<\infty .
}
\tag{FCA.23}
```

or the equivalent material-coordinate version with pressure, coefficient,
transported-collar, and projector commutator terms included.

This is not a detached obstruction.  It is exactly the full coupled
pressure-viscosity-incompressibility-velocity transfer needed to make the
annular stress/strain return have finite variation.
