---
theorem_id: forward-gold-initial-smooth-frequency-tail-to-material-record-direct-attempt-20260622
status: direct-attempt-reduces-to-continuation-clock-not-gold-producer
logical_landing_node: initial_smooth_frequency_tail_to_material_record
edge_effect: >-
  Tests Thomas's initial wave-packet/frequency question at the current
  material-record wall. Smooth initial data gives finite Sobolev/Littlewood-
  Paley tails at the initial time, but it does not impose finite frequency
  support and does not by itself give a uniform terminal material coefficient
  tower. The exact H^s and material-tower estimates propagate the record only
  under an integral strain/gradient clock, which is the same terminal record
  survival condition already isolated. Therefore initial smoothness is an
  entrance condition for the coupled packet, not a gold no-exit producer unless
  paired with a new full-participation clock bound.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-material-tower-noexit-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-record-survival-material-clock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frequency-travel-time-first-pack-survival-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-barrier-tail-damping-reconciliation-20260619.md
---

# Initial Smooth Frequency Tail To Material Record Direct Attempt

Date: 2026-06-22

## 0. Target

This note tests whether smooth initial data itself supplies the missing
same-carrier material record:

```math
u_0\in C^\infty,\quad \nabla\cdot u_0=0
\Longrightarrow
\sup_{t<T_*}\mathfrak P_N^{mat}(t)<\infty.
\tag{IFT.1}
```

The test is kept inside the full participation packet.  Frequency tails are
allowed only as coordinates for the velocity-pressure-incompressibility-viscosity
tower; they are not a separate route.

## 1. What smooth initial data gives

On \(\mathbb T^3\), smooth initial data means that for every \(s\ge0\),

```math
\|u_0\|_{H^s}^2
=
\sum_{k\in\mathbb Z^3}(1+|k|^2)^s|\widehat u_0(k)|^2
<\infty.
\tag{IFT.2}
```

Equivalently, for a Littlewood--Paley decomposition,

```math
\sum_{j\ge0}2^{2sj}\|\Delta_j u_0\|_2^2<\infty
\qquad
\text{for every }s.
\tag{IFT.3}
```

This does not mean finite frequency support.  Smooth data may contain
infinitely many frequencies.  The constraint is decay of the initial tail, not
absence of high frequencies.

## 2. Propagation needs the strain clock

For \(s>5/2\), the standard commutator estimate gives the continuation-form
Sobolev inequality

```math
{1\over2}{d\over dt}\|u(t)\|_{H^s}^2
+
\nu\|\nabla u(t)\|_{H^s}^2
\le
C_s\|\nabla u(t)\|_{L^\infty}\|u(t)\|_{H^s}^2.
\tag{IFT.4}
```

Therefore

```math
\|u(t)\|_{H^s}^2
\le
\|u_0\|_{H^s}^2
\exp\left(
C_s\int_0^t\|\nabla u(\tau)\|_{L^\infty}\,d\tau
\right).
\tag{IFT.5}
```

So the initial frequency tail propagates to \(T_*\) only if the same
velocity-gradient clock is finite:

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}\,dt<\infty.
\tag{IFT.6}
```

That is not a new gold producer.  It is the continuation/material-record clock.

## 3. Material coefficient record has the same dependence

The material coefficient starts from a smooth record:

```math
F(0)=I,
\qquad
A(0)=I,
\qquad
G(0)=I.
\tag{IFT.7}
```

But the first material coefficient rung obeys

```math
\partial_tF
=
(\nabla u)(X,t)F.
\tag{IFT.8}
```

Thus

```math
\|F(t)\|_{L^\infty}
+
\|F(t)^{-1}\|_{L^\infty}
\le
C
\exp\left(
\int_0^t\|\nabla u(\tau)\|_{L^\infty}\,d\tau
\right).
\tag{IFT.9}
```

Higher material coefficients satisfy inequalities of the same form, with
additional source terms from transported higher spatial derivatives of \(u\).
More precisely, repeated \(a\)-differentiation of `(IFT.8)`, the inverse
equation for \(A\), and \(G=AA^\top\), followed by the product estimates on the
fixed material collar, gives constants \(C_N,M_N\) such that

```math
{d\over dt}\mathfrak P_N^{mat}(t)
\le
C_N
\left(
1+\mathfrak P_N^{mat}(t)
\right)^{M_N}
\left(
\|\nabla u(t)\|_{L^\infty}
+
\|u(t)\|_{H^{N+2}}
+
\|p(t)\|_{H^{N+1}}
\right).
\tag{IFT.10}
```

This is the finite-depth coefficient/tower Gronwall inequality.  So finite
initial smoothness gives

```math
\mathfrak P_N^{mat}(0)<\infty,
\tag{IFT.11}
```

but a terminal bound requires an integral bound for the coupled clock appearing
on the right of `(IFT.10)`.

## 4. Why finite-band intuition is not enough

If the data were truly finite-band and the nonlinear evolution stayed in a
fixed band, then finite dimensionality would bound all tower rungs by finitely
many amplitudes.  Navier--Stokes does not preserve a fixed finite Fourier band.
The product \(u\cdot\nabla u\) expands support, and pressure is recovered by a
global Fourier multiplier.

The already installed frequency-travel-time test shows that upward transfer is
not forced to move shell by shell.  Shallow comparable-band interactions can
feed a high packet on the same heat clock.  The already installed damped-tail
reconciliation shows that viscous damping can control high tails only after the
packet estimates retain the coercive tail inequality on the same coupled
surface.

Thus initial frequency decay is real entrance data, but it is not by itself
terminal same-packet survival.

## 5. Exact result

The smooth-data frequency route gives the conditional propagation statement:

```math
\boxed{
\mathfrak P_N^{mat}(0)<\infty
+
\int_0^{T_*}\mathcal K_N(t)\,dt<\infty
\Longrightarrow
\sup_{t<T_*}\mathfrak P_N^{mat}(t)<\infty,
}
\tag{IFT.12}
```

where \(\mathcal K_N\) is the same coupled material strain/velocity-pressure
clock needed to control `(IFT.10)`.

The missing pure-gold theorem would be:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\int_0^{T_*}\mathcal K_N(t)\,dt<\infty.
}
\tag{IFT.13}
```

That theorem is not installed.  Without it, initial smooth data places the
solution inside the packet at entrance, while loss of the terminal material
record is still the Part face:

```math
\boxed{
\text{terminal material record lost}
\Rightarrow
Pack_Q+\neg Part_{N,Q}.
}
\tag{IFT.14}
```
