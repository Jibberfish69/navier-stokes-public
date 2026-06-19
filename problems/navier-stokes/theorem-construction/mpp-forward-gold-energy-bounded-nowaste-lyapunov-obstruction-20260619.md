# MPP Forward-Gold Energy-Bounded No-Waste Lyapunov Obstruction

Date: 2026-06-19

## Status

Direct obstruction installed.  A strict no-waste Lyapunov theorem cannot be
proved by a functional whose available terminal drop is controlled only by the
ordinary shell energy.  Such a functional is too small on the heat-scale
source-balanced pulse.

This does not rule out every possible no-waste theorem.  It rules out the
energy-bounded shortcut.  A successful no-waste functional must carry
unweighted critical-action size, or must obtain that size through a real
coercive pressure/source cancellation theorem.

## 1. Pulse normalization

Use the residual-refill shell variables

```math
E_j(t)=2^{2j}\|u_j(t)\|_2^2,
\qquad
D_j(t)=2^{4j}\|u_j(t)\|_2^2 .
\tag{EBL.1}
```

Take a heat window

```math
I_j=(T-2^{-2j},T],
\tag{EBL.2}
```

and a source-balanced pulse

```math
D_j(t)=H_j{\bf 1}_{I_j}(t),
\qquad
H_j=2^{3j/2}.
\tag{EBL.3}
```

Then

```math
\int_{I_j}D_j(t)\,dt=2^{-j/2}\to0,
\tag{EBL.4}
```

while

```math
\int_{I_j}2^{-j}D_j(t)^2\,dt=1.
\tag{EBL.5}
```

The corresponding shell energy level is

```math
E_j(t)\simeq2^{-2j}D_j(t)=2^{-j/2}
\quad\text{on }I_j.
\tag{EBL.6}
```

So the packet has vanishing ordinary shell energy and order-one normalized
square bill.

## 2. Energy-bounded Lyapunov class

Consider any localized pressure-corrected or packet-corrected functional
\(L_j(t)\) satisfying the energy-size bound

```math
|L_j(t)|\le C E_j(t)+Legal_j(t)
\tag{EBL.7}
```

on the selected branch, with legal residue summable or already removed.

Then the total available drop on \(I_j\) is at most

```math
\operatorname{osc}_{I_j}L_j
\le
C\sup_{t\in I_j}E_j(t)+Legal(I_j)
\le
C2^{-j/2}+Legal(I_j).
\tag{EBL.8}
```

After legal losses are removed and \(j\to\infty\), this available drop tends to
zero.

## 3. Why strict square no-waste cannot follow

A strict no-waste Lyapunov payment for the residual source-balanced pulse would
need

```math
-{d\over dt}L_j(t)
\ge
c\,2^{-j}D_j(t)^2
-Legal_j(t)
\tag{EBL.9}
```

or the corresponding rescaled-time version.  Integrating over \(I_j\) gives

```math
L_j(T-2^{-2j})-L_j(T)
\ge
c\int_{I_j}2^{-j}D_j(t)^2\,dt
-Legal(I_j)
=
c-Legal(I_j).
\tag{EBL.10}
```

But `(EBL.8)` gives only \(o(1)+Legal(I_j)\).  For legal losses already removed,
`(EBL.9)` contradicts the pulse model.

Thus no energy-bounded functional can be the strict Lyapunov supplier for the
scale-critical square reserve.

## 4. Meaning for pressure correction

Pressure correction can improve visibility and cancel some boundary terms, but
as long as the corrected functional remains bounded by ordinary local energy,
the obstruction above applies.

To beat `(EBL.8)`, the correction must do one of two stronger things:

```math
\text{carry unweighted critical-action size itself,}
\tag{EBL.11}
```

or

```math
\text{prove a coercive identity converting pressure/convection/source flux into
critical square drop.}
\tag{EBL.12}
```

The first option is another form of
`UnweightedTerminalCriticalActionReserve.A`.  The second option is
`ProjectedLocalizedFluxCommutatorCoercivity.A` / `StrictRescaledNoWasteLyapunov.A`
with real coercivity, not merely an energy-bounded pressure correction.

## 5. Relation to existing Lyapunov tests

The quadratic Lyapunov test shows that ordinary localized energy has
sign-indefinite pressure/convection/cutoff flux in rescaled variables.

The nonlinear-corrector test shows that a packet-local cubic correction is not
a free fix: uncapped cubic corrections lose lower boundedness, while capped
corrections lose uniform cancellation.

This note adds the size obstruction.  Even if the sign problem were hidden by a
formal correction, any corrected functional bounded by \(E_j\) still has too
little drop to pay `(EBL.5)`.

## Verdict

The energy-bounded no-waste shortcut is exhausted:

```math
\boxed{
|L_j|\lesssim E_j+Legal
\quad\not\Rightarrow\quad
-L_j'\gtrsim 2^{-j}D_j^2-Legal.
}
\tag{EBL.13}
```

The strict no-waste route remains open only in a stronger form: an unweighted
critical-action functional, a genuine projected flux-commutator coercivity
theorem, residual LPAS/source-square, selected critical-strain Carleson, or
compact recurrent-profile rigidity.
