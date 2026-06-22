---
theorem_id: forward-gold-harmonic-pressure-memory-trace-lp-coercivity-direct-attempt-20260621
status: direct-attempt-fails-without-annular-pressure-service-lp-bound
logical_landing_node: harmonic_pressure_memory_trace_lp_coercivity_direct_attempt
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-endpoint-trace-lp-producer-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-collar-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-pressure-trace-defect-reduction-20260621.md
---

# Harmonic Pressure-Memory Trace Lp Coercivity Direct Attempt

Date: 2026-06-21

## 0. Target

The needed gold-only pressure-memory subline is

```math
\boxed{
\sup_m\|[H_m^{p,H}]_+\|_{L_s^p(-1,0)}<\infty
\quad\text{for some }p>1,
}
\tag{HPT.1}
```

where

```math
H_m^{p,H}(s)=\int Q_m^H(s,y) V_m(s,y)\cdot\nabla(\eta_m^2)(y)\,dy.
\tag{HPT.2}
```

After Galilean quotient, the intended retained term is

```math
\int Q_m^H U_m\cdot\nabla(\eta_m^2)\,dy
```

plus affine-pressure and mean-mode gauge records.

## 1. Harmonic pressure estimates reduce to annular data

For each fixed time, \(Q_m^H\) is harmonic on the retained interior.  Standard harmonic estimates give, for an inner collar/core pair,

```math
\|Q_m^H(s)\|_{L_y^{3/2}(collar)}
\le
C\|Q_m^H(s)\|_{L_y^{3/2}(annulus)}
```

or the corresponding oscillation estimate after pressure-gauge subtraction.

Thus

```math
|H_m^{p,H}(s)|
\le
C\|Q_m^H(s)\|_{L_y^{3/2}(annulus)}
\|U_m(s)\|_{L_y^3(collar)}
+R_{gauge/legal}(s).
\tag{HPT.3}
```

If

```math
Q_m^H\in L_s^aL_y^{3/2}(annulus),
\qquad
U_m\in L_s^bL_y^3(collar),
\qquad
{1\over p}={1\over a}+{1\over b}<1,
\tag{HPT.4}
```

then `(HPT.1)` follows.

Under gauge-fixed local energy-dissipation, the velocity factor can be placed in a finite exponent, for example

```math
U_m\in L_{s,y}^{10/3}
```

and hence in a compatible `L_s^bL_y^3` space on the bounded collar.  The unresolved factor is the harmonic pressure annular service:

```math
\boxed{
Q_m^H\in L_s^aL_y^{3/2}(annulus)\quad\text{with }a\text{ large enough to make }p>1.
}
\tag{HPT.5}
```

## 2. Current pressure routing is measure-level, not Lp-level

The installed harmonic-pressure routing note proves that

```math
Q_m^H V_m\cdot\nabla\chi_m
```

is supported on the collar and is routed as legal/collar payment, selector/collar drift, or terminal trace atom.  That is a finite-measure or endpoint-routing statement.

The Hardy producer requires the stronger endpoint integrability

```math
[Q_m^H U_m\cdot\nabla\chi_m]_+\in L_s^p,\qquad p>1.
```

A finite measure bound permits the pulse

```math
a_m(s)=a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
```

which has bounded `L_s^1` mass and unbounded `L_s^p` norm for every `p>1`.  Therefore current pressure routing does not produce `(HPT.1)`.

## 3. Local pressure cannot supply the missing bound

The local pressure part is already controlled by Calderon-Zygmund from the retained velocity product.  The harmonic memory is the part excluded from that local solve.  It depends on annular/exterior pressure service and pressure gauge choices.

Consequently, an estimate of the form

```math
\|Q_m^H\|_{L_s^aL_y^{3/2}(annulus)}\le C A_{4B}+R_{legal}
```

is a new pressure-service theorem, not a consequence of the local Calderon-Zygmund line.

## 4. Exact coercivity theorem needed

The valid gold-only theorem is:

```math
\boxed{
\texttt{AnnularHarmonicPressureServiceLp.A}}
```

with statement:

```math
\sup_m\|Q_m^H-\Pi_{aff}Q_m^H\|_{L_s^aL_y^{3/2}(annulus)}<\infty
```

for some exponent `a` compatible with the velocity trace exponent and `p>1`, where \(\Pi_{aff}\) removes the affine pressure gauge paired with the Galilean mode.

Then `(HPT.3)` gives

```math
\sup_m\|[H_m^{p,H}]_+\|_{L_s^p}<\infty
```

for some `p>1`.

## 5. Result

`HarmonicPressureMemoryTraceLpCoercivity.A` is not produced by the current four-body/harmonic-pressure routing notes.

The exact failed implication is:

```math
\text{finite collar pressure-memory measure}
\quad\not\Rightarrow\quad
\text{uniform }L_s^p\text{ collar pressure-memory trace for any }p>1.
```

The gold-only frontier is sharpened to a named pressure-service producer:

```math
\boxed{
\texttt{AnnularHarmonicPressureServiceLp.A}
\Longrightarrow
\texttt{HarmonicPressureMemoryTraceLpCoercivity.A}.
}
```

Without `AnnularHarmonicPressureServiceLp.A`, the terminal Hardy/no-jump route remains open on the harmonic pressure-memory trace.