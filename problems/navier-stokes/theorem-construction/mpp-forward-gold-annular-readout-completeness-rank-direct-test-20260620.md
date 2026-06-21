---
theorem_id: forward-gold-annular-readout-completeness-rank-direct-test-20260620
status: direct-test-complete-not-installed
logical_landing_node: annular_readout_completeness_and_rank
edge_effect: "Tests the two algebraic/PDE inputs isolated by CompleteAnnularNoEscapeReadout.A: AnnularReadoutCompleteness.A and UniformAnnularReadoutRank.A. Current annular, stress-current, pressure, source-trace, and compactness inputs do not prove either one. A possible noncircular route would require a defect-free linearized renormalized NS tangent equation, full Cauchy/legal trace capture, and uniform Carleman/unique-continuation constants on the compact quotient class. Those inputs are not installed and overlap the strict no-waste/profile-production wall."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-annular-noescape-readout-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-null-tangent-evacuation-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-active-tangent-observability-reduction-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-door2-gauge-production-nested-closeout-20260620.md
downstream_consequence: "Do not treat legal readout abundance as complete no-escape. The missing theorem is exact observability for quotient tangents: the combined source/legal annular traces must have zero common kernel and uniform lower rank. Without defect-free tangent equations plus full trace capture and uniform unique continuation, this branch returns to StrictRescaledNoWasteLyapunov.A / UnweightedTerminalCriticalActionReserve.A or MinimalZenoProfileProduction.A."
---

# MPP Forward-Gold Annular Readout Completeness / Rank Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `AnnularReadoutCompleteness.A` and
`UniformAnnularReadoutRank.A` are not installed by the current inputs.

These are the two real mathematical clauses underneath
`CompleteAnnularNoEscapeReadout.A`.

## 1. The combined readout operator

For a selected terminal profile \(U\), let

```math
E_U=\mathcal N_U^\perp
\tag{ARC.1}
```

be the quotient tangent space.  Let

```math
\mathcal B_U:E_U\to\mathcal Y_U
\tag{ARC.2}
```

collect the selected source trace and every admitted legal annular readout:

```math
\mathcal B_Ua
=
\left(
\Gamma_Ua,\,
\Lambda_U^{press}a,\,
\Lambda_U^{collar}a,\,
\Lambda_U^{cutoff}a,\,
\Lambda_U^{endpoint}a,\,
\Lambda_U^{stress}a,\,
\Lambda_U^{diss}a,\,
\Lambda_U^{spill}a
\right).
\tag{ARC.3}
```

The two required inputs are:

```math
\boxed{
\ker\mathcal B_U=\{0\}
}
\tag{ARC.4}
```

and

```math
\boxed{
\inf_U\sigma_{\min}(\mathcal B_U|_{E_U})>0.
}
\tag{ARC.5}
```

`(ARC.4)` is `AnnularReadoutCompleteness.A`.  `(ARC.5)` is
`UniformAnnularReadoutRank.A`.

Together they imply:

```math
\|a\|_{E_U}
\le
C\|\mathcal B_Ua\|_{\mathcal Y_U}.
\tag{ARC.6}
```

This is the core of complete no-escape.

## 2. Why many readouts do not imply completeness

The current package identifies several readout maps.  It does not prove that
their common kernel is zero.

The finite-dimensional obstruction is:

```math
E_U=\mathbb R^4,
\qquad
\mathcal B_U(a_1,a_2,a_3,a_4)=(a_1,a_2,a_3).
\tag{ARC.7}
```

Then

```math
\ker\mathcal B_U=\operatorname{span}\{(0,0,0,1)\}.
\tag{ARC.8}
```

There can be source trace, pressure trace, and stress trace, all nontrivial,
while a quotient tangent remains invisible to all of them.

So "there are many legal traces" is weaker than `(ARC.4)`.

## 3. Why pointwise completeness does not imply uniform rank

Even if every individual profile has no common kernel, the terminal sequence
needs a uniform margin.  Let

```math
\mathcal B_n(a_1,a_2,a_3)
=
(a_1,a_2,n^{-1}a_3).
\tag{ARC.9}
```

Then

```math
\ker\mathcal B_n=\{0\}
\tag{ARC.10}
```

for every \(n\), but

```math
\sigma_{\min}(\mathcal B_n)=n^{-1}\to0.
\tag{ARC.11}
```

Thus `(ARC.4)` alone is not enough for a forward-gold estimate.  The terminal
class also needs a compactness/gauge theorem preventing readout rank collapse.

## 4. What would prove completeness

A noncircular PDE route would have to prove that every quotient tangent is a
defect-free solution of the linearized renormalized Navier--Stokes equation:

```math
\mathcal L_U Z_a=0
\tag{ARC.12}
```

on the annular region, modulo stabilizers already quotiented out.

Then it would have to prove that `(ARC.3)` contains enough Cauchy/legal data
for unique continuation:

```math
\mathcal B_Ua=0
\Longrightarrow
Z_a=0
\quad\text{on the annulus}.
\tag{ARC.13}
```

Finally, because the proof needs a uniform estimate rather than pointwise
uniqueness, it would need compactness and uniform Carleman/observability
constants:

```math
\|Z_a\|_{\mathcal X}
\le
C_{UC}
\|\mathcal B_Ua\|_{\mathcal Y_U},
\qquad
\sup_U C_{UC}<\infty.
\tag{ARC.14}
```

The sufficient package is:

```math
\boxed{
\begin{gathered}
\text{DefectFreeLinearizedRenormalizedNSTangent.A}
\\
+
\text{FullAnnularCauchyLegalTraceCapture.A}
\\
+
\text{UniformCarlemanObservabilityOnSelectedClass.A}
\\
+
\text{StableQuotientGaugeAndStabilizer.A}
\\
\Longrightarrow
\text{AnnularReadoutCompleteness.A}
+
\text{UniformAnnularReadoutRank.A}.
\end{gathered}
}
\tag{ARC.15}
```

## 5. Why this is not currently installed

The current Zeno/source-null branch does not yet provide `(ARC.12)`.  A source
null tangent can still carry residual time-dependence, selector drift, defect
measure, pressure/cutoff residue, or source-residue motion.  Those are exactly
the objects `StrictRescaledNoWasteLyapunov.A` or
`MinimalZenoProfileProduction.A` are meant to evacuate.

The current annular package also does not prove `(ARC.13)`.  Pressure conormal
traces, stress flux, collar terms, and selected source traces are each legal
readouts, but no installed theorem says their vanishing is full Cauchy data for
the tangent equation.

The current compactness package does not prove `(ARC.14)`.  Degenerating gauge,
stabilizer jumps, necking annuli, or selector switching can make the lower
singular value tend to zero even when each individual profile is pointwise
observable.

## 6. Exact reduction

At current input strength:

```math
\boxed{
\text{CompleteAnnularNoEscapeReadout.A}
\Leftarrow
\text{AnnularReadoutCompleteness.A}
+
\text{UniformAnnularReadoutRank.A}
+
\text{SameGaugeLegalTraceCompatibility.A}.
}
\tag{ARC.16}
```

The first two clauses reduce further to `(ARC.15)`.

Current inputs do not install `(ARC.15)`.  Without it, the source-null tangent
branch remains:

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A / UnweightedTerminalCriticalActionReserve.A}
\quad\text{or}\quad
\text{MinimalZenoProfileProduction.A}.
}
\tag{ARC.17}
```

## Verdict

The no-escape route is mathematically sharp but not closed.  It is an
observability theorem for the linearized renormalized terminal profile, with
uniform constants on the selected quotient class.

That is a genuine possible route, but it is not supplied by the current
stress-current, annular geometry, or source-trace visibility package.
