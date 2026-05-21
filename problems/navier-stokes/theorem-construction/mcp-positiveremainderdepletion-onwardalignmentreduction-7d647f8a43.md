# PositiveRemainderDepletion.OnwardAlignmentReduction

## Status

Continuation attempt from `PositiveRemainderDepletion.A`.  The proof branch was pushed through the decorrelation exit of the native trilinear no-hidden split.  The result is a sharper open atom rather than a discharge.

## Current target

The positive localized pre-Cauchy remainder contains the native active strain/source carrier

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+.
```

Writing

```math
w_j=|w_j|e_j,
\qquad |e_j|=1,
```

gives

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

Thus the local positive remainder can close through the decorrelation estimate

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+
\,dxdt
\le
C\rho_{inst,N}(\mathcal F_N)+o_N(1).
}
\tag{ARD.1}
```

This is `AlignmentDecorrel.A`, equivalently the concrete packet face of `PositiveStrainDecorrelation.A`.

## Attempted proof

### 1. Trace-free strain

Incompressibility gives

```math
\operatorname{tr}S=0.
```

A trace-free symmetric matrix in dimension three can have expanding eigendirections.  A terminal high packet may align with one of them.  This input leaves `(ARD.1)` open.

### 2. Signed dyadic exchange

The dyadic nonlinear exchange has signed cancellation before the terminal operations.  The target `(ARD.1)` is taken after one-sided weights, cutoffs, same-fluid packet selection, and positive-part extraction.  Signed cancellation therefore needs a selected-window negative-part comparison.  That comparison is absent.

### 3. Pressure and elliptic recovery

Pressure recovery controls the elliptic response and legal cutoff ledgers.  The interior stretching carrier

```math
\omega\cdot S\omega
```

and its shell-localized packet form remain sign-indefinite.  Pressure recovery supplies no depletion theorem for the selected positive part.

### 4. Same-fluid transport

Same-fluid transport keeps the selected carrier coherent.  It supplies no angular mixing rate for `e_j` relative to the expanding eigenspaces of `S_{<j}^{loc}`.

### 5. Coherence routes

Vorticity-direction coherence, Beltrami/helical depletion, anti-Beltrami Carleson control, and pressure-strain depletion are valid possible suppliers.  Each needs a terminal coherence theorem on the same selected active windows.  No such theorem is installed by original smooth data in the native positive source topology.

## Exact smaller atom

The continuation reduces the positive remainder branch to:

```math
\boxed{
TerminalAngularMixing.A:
\quad
\text{same-fluid terminal active directions cannot keep positive alignment with expanding localized strain eigendirections without paying legal drain, parent mass, or loss.}
}
```

Equivalent names already present in the route are:

```math
AlignmentDecorrel.A,
\quad
PositiveStrainDecorrelation.A,
\quad
EigenDecorrel.A,
\quad
SignedPositiveBalance.A,
\quad
TerminalSourceCoherence.A.
```

## Conditional chain

A proof of this atom would give

```math
TerminalAngularMixing.A
\Longrightarrow
AlignmentDecorrel.A
\Longrightarrow
PositiveStrainDecorrelation.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SameFluidSourceResidence.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Verdict

The branch remains open.  The smallest visible analytic atom is terminal angular mixing / alignment decorrelation for the native positive active source carrier.