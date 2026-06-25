# AvailableParticipationBudgetConstructionAttempt.A

Status: failed as a complete proof from installed inputs.  The corrected framing is retained: the route is not disproved.  The attempted construction below tests whether the finite initial smooth-state participation endowment already gives the required quantitative tax budget.

## Target

Construct a present-time budget

```math
\mathcal B_N(t)
```

on the original transported material history such that

```math
\mathcal B_N(0)\le C_N(u_0),
\qquad
\inf_{t<T^*}\mathcal B_N(t)>-C_N(u_0),
```

and

```math
\mathcal B_N(t_1)-\mathcal B_N(t_2)
\ge
c_N\Omega_N^{PLS}([t_1,t_2])
-R_N^{legal}([t_1,t_2]),
\qquad
R_N^{legal}([0,T^*])<\infty .
\tag{BUD.1}
```

Equivalently,

```math
d\mathcal B_N+c_Nd\Omega_N^{PLS}\le dR_N^{legal}.
\tag{BUD.2}
```

The budget is intended to represent finite initial smooth-state available participation, not viscosity alone and not a future-action definition.

## What initial smoothness gives

For every fixed depth \(s\), smooth data gives a finite initial Sobolev/Littlewood--Paley tail:

```math
\sum_j2^{2sj}\|\Delta_ju_0\|_2^2<\infty .
```

The linear viscous part also gives finite high-frequency heat bills:

```math
\|\nabla^m\Delta_j e^{\nu t\Delta}u_0\|_2
\lesssim 2^{mj}e^{-c\nu2^{2j}t}\|\Delta_ju_0\|_2.
```

Thus the entrance spectrum and the purely linear viscous tail are paid by the initial smooth-state endowment.

## Where the construction must pay nonlinear full PLS action

The full PLS annular stress-transfer density contains nonlinear same-material terms.  In the gauge-reduced annular flux notation,

```math
F_\phi^\sharp(t)=\int U_iT^\sharp_{ij}\partial_j\phi\,dx,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
D_t\phi=0,
```

its differentiated density contains terms of the form

```math
|\nabla\cdot T^\sharp|\,|T^\sharp|\,|\nabla\phi|,
\quad
|U|\,|\nabla(-\Delta)^{-1}\mathcal E_P|\,|\nabla\phi|,
\quad
|U|\,|\nabla U|^2|\nabla\phi|,
\quad
|U|\,|T^\sharp|\,|\nabla U|\,|\nabla\phi|,
```

plus collar-Hessian and lower commutator terms.  This is the same pressure-viscosity-incompressibility-velocity material transaction; it is not an external source.

The simplest nonlinear obstruction is the cubic collar term:

```math
\int |U|\,|\nabla U|^2|\nabla\phi|\,dx.
```

Energy gives

```math
U\in L^\infty_tL^2_x,
\qquad
\nabla U\in L^2_{t,x},
```

but this does not control the time integral of the cubic term.  The sharpened strain estimate reaches a superlinear dissipation clock:

```math
\int |U|\,|\nabla U|^2dx
\lesssim E_0^{1/4}D(t)^{5/4},
\qquad
D(t)=\|\nabla u(t)\|_2^2.
```

The energy inequality supplies only

```math
\int_0^{T^*}D(t)dt<\infty,
```

not

```math
\int_0^{T^*}D(t)^{5/4}dt<\infty.
```

The pressure-time service term similarly returns to the full pressure/strain/stress material clock through the elliptic pressure equation and its material time derivative.

## Candidate budget tested

A natural candidate is

```math
\mathcal B_N(t)=\text{initial smooth-state reserve remaining after paid entrance and linear heat bills up to time }t.
```

This pays:

1. initial high-frequency amplitude;
2. linear viscous heat decay;
3. fixed-depth entrance of the material packet.

It does not pay the nonlinear full PLS annular density unless one already has a bound on the cubic collar and pressure-time service clocks.  Adding those clocks to the spending ledger gives the desired inequality only if their total future charge is finite.  That is exactly the target, so this addition is circular.

## Exact result

The construction proves the conditional statement

```math
\mathcal B_N(0)<\infty
+
\int_0^{T^*}\mathcal K_N^{nonlinear}(t)dt<\infty
\Longrightarrow
\int_0^{T^*}d\Omega_N^{PLS}<\infty,
```

where \(\mathcal K_N^{nonlinear}\) is the same nonlinear pressure/strain/stress-transfer clock appearing in the full PLS density.

It does not prove

```math
OriginalSmoothData\Longrightarrow
\int_0^{T^*}\mathcal K_N^{nonlinear}(t)dt<\infty.
```

## Verdict

The finite initial smooth-state participation budget is the correct target, but the current construction does not close the theorem.  Smooth initial data pays entrance and linear-viscous pieces; the remaining nonlinear same-material PLS transfer contains cubic collar and pressure-time service terms that are not controlled by the present installed budgets.

The noncircular missing theorem is:

```math
\boxed{
\text{finite initial smooth-state participation endowment controls the nonlinear same-material pressure/strain/stress-transfer clock.}
}
```

Equivalently, prove a bounded-below present-time budget whose drop controls the cubic collar, pressure-time elliptic service, annular stress-work variation, metric/collar motion, and viscous/tower loss together as \(d\Omega_N^{PLS}\).