---
theorem_id: forward-gold-finite-same-material-service-clock-direct-test-20260625
status: direct-test-reduces-to-high-side-full-annular-density-clock-not-proved
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the finite same-material service clock directly after the bounded-record
  action-cycle reduction. The physical object is preserved: one original smooth
  material spike-wave history; heat-scale windows are only bounded-overlap
  samples; pressure, viscosity, incompressibility, and velocity remain coupled.
  The exact result is that fixed-threshold/fixed-collar service coefficients are
  integrable from the energy surface, but the full moving all-active-shell
  material service clock is not produced by those estimates. The remaining
  term is the same high-side nonlinear stress-transfer / full annular density
  clock already identified in the rectified annular return route.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-growth-is-remaining-clock-producer-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frequency-controlled-annular-return-direct-attempt-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-threshold-spill-collar-estimate-and-augmented-coefficient-control-sp-a-c00079335f.md
  - problems/navier-stokes/gradient-discharge-source-pack.md
---

# Finite Same-Material Service Clock Direct Test

Date: 2026-06-25

## 0. Target

After `MaterialRecordGrowthIsRemainingClockProducer.A`, the live estimate is
finite positive growth of the same material record. In the material variables

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\qquad
A=(D_aX)^{-1},
\qquad
G=AA^T,
```

the record obeys the already-derived growth form

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N\Theta_N(t)\,dt+dR_N^0.
\tag{FSC.1}
```

The item tested here is whether the finite service clock

```math
\boxed{
\int_0^{T_*}\Theta_N(t)\,dt<\infty
}
\tag{FSC.2}
```

is produced by the currently installed original-data, frequency, and cascade
estimates.

The test keeps the same physical object. The annular layers are not detached
packets; they are transported layers of the same original smooth solution.
The service rate is not a pressure-only, viscosity-only, or frequency-only
quantity. It is the pressure-viscosity-incompressibility-velocity service rate
that differentiates the same material record.

## 1. What fixed-threshold estimates prove

The installed threshold-spill collar estimate defines, for a fixed dyadic
threshold \(N\) and finite collar width \(M\),

```math
\Theta_N^\sharp(t)
=
\sum_{m=N-M}^{N+M}2^{3m}\|\Delta_m u(t)\|_2^2.
\tag{FSC.3}
```

For this fixed finite collar,

```math
\Theta_N^\sharp(t)
\le
C_{N,M}\|u(t)\|_2^2,
\tag{FSC.4}
```

so the energy inequality gives

```math
\Theta_N^\sharp\in L_t^\infty(0,T_*)\cap L_t^1(0,T_*).
\tag{FSC.5}
```

This is a real installed result. It says that after a threshold and a finite
collar have already been selected, the finite collar coefficient is admissible.
It is exactly the finite-amplitude entrance picture in dyadic form.

## 2. Why this is not the full material service clock

The full material service clock in `(FSC.1)` is not the fixed finite strip
coefficient `(FSC.3)`. It must cover the moving all-active-shell annular
stress-transfer density of the same transported history. In the rectified
annular formulation, the corresponding density contains

```math
\mathcal B_\phi^\sharp
=
\left(
|\nabla\cdot T^\sharp|\,|T^\sharp|
+
|U|\,|D_tT^\sharp|
+
|U|\,|T^\sharp|\,|\nabla U|
\right)|\nabla\phi|,
\tag{FSC.6}
```

with

```math
T^\sharp=-PI+2\nu S(U),
\qquad
D_t=\partial_t+U\cdot\nabla.
\tag{FSC.7}
```

Thus a sufficient all-scale service bound would be

```math
\int_0^{T_*}
\sum_j2^{\gamma j}
\|\Delta_j\mathcal B_\phi^\sharp(t)\|_{L_x^1}
\,dt<\infty,
\tag{FSC.8}
```

or an equivalent signed full-clock inequality on the same transported material
history.

The fixed-threshold result `(FSC.5)` does not imply `(FSC.8)`. It controls one
finite selected strip after the scheduler chooses it. The full service clock
requires uniform control of the actual moving pressure-stress-velocity density
that differentiates the annular stress-work and the material record.

## 3. Initial smoothness supplies entrance data, not clock finiteness

Smooth initial data gives, for every fixed depth \(K\),

```math
\sum_j2^{2Kj}\|\Delta_j u_0\|_2^2<\infty.
\tag{FSC.9}
```

The heat part damps high frequencies:

```math
\|\nabla^m\Delta_j e^{\nu t\Delta}u_0\|_2
\lesssim
2^{mj}e^{-c\nu2^{2j}t}\|\Delta_j u_0\|_2.
\tag{FSC.10}
```

So the initial spectrum and the linear viscous tail are finite at every fixed
continuation depth. Any later high-frequency service must be produced by the
same nonlinear pressure-viscosity-incompressibility-velocity evolution.

This yields the exact decomposition:

```math
\text{full service clock}
=
\text{finite entrance contribution}
+
\text{linear damped contribution}
+
\text{nonlinear same-material stress-transfer contribution}.
\tag{FSC.11}
```

The first two terms are controlled. The third is precisely the all-active-shell
full annular density `(FSC.8)`.

## 4. Relation to BKM and the material record

The standard high-order estimate has the same structure:

```math
{d\over dt}\|u(t)\|_{H^s}^2
\lesssim
\|\nabla u(t)\|_{L^\infty}\|u(t)\|_{H^s}^2.
\tag{FSC.12}
```

In material language, `(FSC.12)` is `(FSC.1)`: the record propagates once the
service clock is finite. Proving `(FSC.2)` from original smooth finite-energy
data is therefore continuation-strength. It is not obtained by restating the
material tower inequality.

The physical ontology matters because it prevents the wrong problems from
appearing. It proves that the center pulse is attached to the annular
stress/strain history and that the stress-time signal is generated by the same
NS packet. It does not by itself give a sign or summability theorem for the
positive rectified stress-transfer density.

## 5. Result

The finite same-material service clock is not discharged by the currently
installed inputs.

The exact proved statement is:

```math
\boxed{
\text{fixed-threshold finite-collar service is }L_t^1
\text{ from energy, but the all-scale moving material service clock remains open.}
}
\tag{FSC.13}
```

The remaining unsolved line is exactly the full annular density bridge or an
equivalent signed global terminal-tail inequality:

```math
\boxed{
\int_0^{T_*}\Theta_N(t)\,dt<\infty
\Longleftarrow
\text{control of the nonlinear same-material stress-transfer density.}
}
\tag{FSC.14}
```

So this item does not close the MPP. It prevents a false closure: fixed-collar
coefficient admissibility cannot be promoted to the full pressure-viscosity-
incompressibility-velocity material clock without proving the moving annular
stress-transfer estimate.