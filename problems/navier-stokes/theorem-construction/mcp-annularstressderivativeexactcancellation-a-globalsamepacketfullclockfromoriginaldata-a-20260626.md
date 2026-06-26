---
theorem_id: annularstressderivativeexactcancellation-a-20260626
status: exact-cancellation-installed; one-sided-flux-storage-remains-open
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Refines the tax-at-source annular stress-work calculation.  The pressure-time
  term and pressure-collar transport term are not independent positive clocks:
  when the acceleration-stress term is kept in the same transported packet, the
  pressure part is an exact time derivative of the pressure boundary flux.  The
  same statement holds for the full stress-work block: the pressure-time,
  cubic-collar, viscous-strain, and acceleration-stress coordinates are exactly
  the derivative of the signed annular Cauchy stress-work service.  This removes
  termwise S_2/S_5 positive control as a legitimate primary target.  The
  remaining open estimate is one-sided control or bounded-below storage for the
  full signed annular stress-work derivative before rectification.
parents:
  - problems/navier-stokes/theorem-construction/mcp-taxatsourcecubiccollarplsattempt-a-availableparticipationbudget-a-925289cb9e.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-direct-calculation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-density-termwise-control-audit-20260625.md
---

# Annular Stress Derivative Exact Cancellation

Date: 2026-06-26

## 0. Object

Work on one smooth preterminal transported annular packet.  Let

```math
D_tU=\nabla\cdot T,\qquad
T=-PI+2\nu S,\qquad
D_t\phi=0,\qquad
\nabla\cdot U=0 .
```

Write

```math
F_\phi(t)=\int U_iT_{ij}\partial_j\phi\,dx .
```

Since \(D_t\partial_j\phi=-(\partial_jU_k)\partial_k\phi\), direct
differentiation gives

```math
{d\over dt}F_\phi
=
\int (D_tU_i)T_{ij}\partial_j\phi\,dx
+\int U_i(D_tT_{ij})\partial_j\phi\,dx
-\int U_iT_{ij}(\partial_jU_k)\partial_k\phi\,dx .
\tag{ASD.1}
```

This is the same \(I_1+I_2+I_3\) block from the tax-at-source calculation.

## 1. Pressure cancellation

Let

```math
F_\phi^p(t):=-\int P\,U\cdot\nabla\phi\,dx
```

be the pressure part of \(F_\phi\).  Then

```math
{d\over dt}F_\phi^p
=
-\int (D_tP)U\cdot\nabla\phi\,dx
-\int P(D_tU)\cdot\nabla\phi\,dx
+\int P\,U_j(\partial_jU_k)\partial_k\phi\,dx .
\tag{ASD.2}
```

The pressure-time service and pressure-collar transport terms therefore satisfy

```math
-\int (D_tP)U\cdot\nabla\phi\,dx
+\int P\,U_j(\partial_jU_k)\partial_k\phi\,dx
=
{d\over dt}F_\phi^p
+\int P(D_tU)\cdot\nabla\phi\,dx .
\tag{ASD.3}
```

The remaining term in `(ASD.3)` cancels exactly with the pressure part of the
acceleration-stress term

```math
\int (D_tU)\cdot T\nabla\phi\,dx
=
-\int P(D_tU)\cdot\nabla\phi\,dx
+2\nu\int (D_tU)_iS_{ij}\partial_j\phi\,dx .
\tag{ASD.4}
```

Thus

```math
\boxed{
\text{pressure acceleration}
+\text{pressure time}
+\text{pressure collar transport}
=
{d\over dt}F_\phi^p
+2\nu\int (D_tU)_iS_{ij}\partial_j\phi\,dx .
}
\tag{ASD.5}
```

The pressure-time term is not a separate positive producer after the
same-packet derivative is kept intact.

## 2. Full stress derivative

The viscous part

```math
F_\phi^\nu(t):=2\nu\int U_iS_{ij}\partial_j\phi\,dx
```

has derivative

```math
{d\over dt}F_\phi^\nu
=
2\nu\int (D_tU_i)S_{ij}\partial_j\phi\,dx
+2\nu\int U_i(D_tS_{ij})\partial_j\phi\,dx
-2\nu\int U_iS_{ij}(\partial_jU_k)\partial_k\phi\,dx .
\tag{ASD.6}
```

Combining `(ASD.2)` and `(ASD.6)` gives back `(ASD.1)`:

```math
\boxed{
{d\over dt}F_\phi
=
{d\over dt}F_\phi^p
+{d\over dt}F_\phi^\nu .
}
\tag{ASD.7}
```

So the pressure-time, pressure-collar, cubic-collar, viscous-strain, and
acceleration-stress pieces are the derivative of one signed Cauchy stress-work
service on the same material annulus.

## 3. Consequence for the clock

The termwise positive density

```math
S_2+S_5
```

is an upper envelope obtained after breaking `(ASD.1)` into absolute values.
It is not the primitive same-packet clock.  The primitive clock is the signed
stress-work derivative

```math
{d\over dt}F_\phi .
```

Therefore the tax-at-source target should be stated as a one-sided signed
stress-work theorem:

```math
dX_{\phi,N}
+c_N\left[{d\over dt}F_{\phi,N}\right]_+dt
\le
\varepsilon dD_N^{vis}
+\varepsilon dD_N^{rad}
+dR_N^{legal},
\tag{ASD.8}
```

or as an equivalent bounded-below storage inequality for the full oriented
annular stress-work derivative.  Asking for termwise absolute control of
\(S_2+S_5\) before `(ASD.1)` is recombined is a stronger overcount and returns
to the already rejected \(D^{5/4}\) route.

## 4. Remaining obstruction

The exact cancellation above does not by itself prove finite positive action.
Taking \(X_{\phi,N}=-F_{\phi,N}\) would give the correct derivative sign for
one orientation, but it is useful only when the corresponding annular
stress-work flux is bounded above on the terminal family.  That bound is not
provided by the raw energy identity, because pressure appears as boundary
traction and can remain scale-critical on shrinking annuli.

Thus the current live theorem is sharpened to:

```math
\boxed{
\text{prove a bounded-below oriented storage for the full signed annular}
\quad {dF_\phi\over dt}\quad
\text{block, or prove its positive part has finite same-material action.}
}
\tag{ASD.9}
```

This is narrower than termwise pressure-time/cubic-collar control and preserves
the full pressure-viscosity-incompressibility-velocity participation law.
