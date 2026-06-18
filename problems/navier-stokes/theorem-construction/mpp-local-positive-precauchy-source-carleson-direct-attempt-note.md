# MPP Local Positive Pre-Cauchy Source Carleson Direct Attempt Note

## Status

Direct attempt on the concrete analytic estimate isolated by
`mpp-scalecritical-tree-carleson-equivalence-note.md`:

```math
\boxed{
\text{localized positive pre-Cauchy source Carleson estimate.}
}
```

This is the Carleson / donor-reserve side of the remaining Zeno refill branch.

## Target

For every bounded-overlap same-fluid terminal family `\mathcal F_N` selected by
the `Jump_avg` / source-pulse branch, prove:

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\le
o_N(1)
+\text{summable legal losses}.
}
\tag{LPCS.1}
```

The source is kept pre-Cauchy so that parent co-location and same-fluid edge
structure are not erased before the estimate is applied.

## Attempt 1: Direct Cauchy / Young

Applying Cauchy--Schwarz or Young to the localized nonlinear source gives a
positive envelope with a constant `C_CY` depending only on the fixed cutoff and
dyadic overlap:

```math
\left|\mathcal N_{preCauchy}^{loc}\right|
\le
C_{CY}\left(
\mathsf{ActiveSquare}
+\mathsf{LowerCoeff}\cdot\mathsf{Energy}
\right)
```

This is useful for downstream routing, but it does not prove `(LPCS.1)`.  The
active-square term is exactly the scale-critical measure that the branch is
trying to control.  Taking absolute values also erases the signed parent-child
structure needed for the ancestry route.

Thus direct Cauchy/Young returns to `ActiveSquareCarleson.A`.

## Attempt 2: Global Trilinear Cancellation

Before localization and positive-part extraction, the Euler transport
nonlinearity has global skew symmetry:

```math
\int_{\mathbb T^3}(u\cdot\nabla u)\cdot u\,dx=0.
```

Dyadic shell transfers also cancel in pairs when summed over all shells with
compatible weights.  But `(LPCS.1)` is not the signed global sum.  It is the
positive part on selected localized terminal packets after active weights,
cutoffs, and same-fluid restrictions.

The positive part can align with the active strain direction on the selected
bad windows.  Global cancellation does not prevent positive localized
production unless one proves a sign-depletion or cancellation-recovery theorem
for those same selected packets.

Thus skew symmetry alone does not prove `(LPCS.1)`.

## Attempt 3: Pressure / Cutoff Routing

Pressure, cutoff, commutator, and localization terms can be placed into the
legal-loss ledger once separated.  That is already used by the source-supplier
and receiver packets.

But after those legal losses are removed, the main localized positive nonlinear
source remains:

```math
\left[\mathcal N_{preCauchy}^{main}(u;P)\right]_+.
```

Pressure Poisson recovery supplies elliptic bounds, not a sign for this
positive part.  Cutoff estimates price boundary leakage, not legal interior
source-parent production.

Thus pressure/cutoff routing does not prove `(LPCS.1)`.

## Attempt 4: Reverse-Holder / Parent Concentration

If the positive source-parent measure satisfied a reverse-Holder or inverse
Littlewood-Paley concentration theorem, then `(LPCS.1)` could be proved by
selecting boundedly many parents and charging the rest to a finite reserve.

The Fourier diffuse-parent countermodel
`mpp-parent-concentration-or-diffuse-charge-fourier-countermodel-note.md`
shows that such concentration is not a bookkeeping consequence of finite
frequency banding or same-fluid transport.  Legal positive parent mass may be
spread over arbitrarily many predecessor packets while raw quadratic donor cost
remains too small.

Thus reverse-Holder concentration is a genuine new theorem, not installed.

## Attempt 5: First-Moment Dissipation

Original smooth data gives finite energy and first-moment dissipation:

```math
\int_0^{T_\ast}\sum_j D_j(t)\,dt<\infty.
```

The target `(LPCS.1)` is scale-critical on terminal heat-scale windows.  A short
active pulse can keep first moment finite while the positive source carrier has
normalized mass bounded below by `c_0>0` on the selected window.  This is the same
first-moment versus square-density obstruction recorded in the active-square
residual-tail audit.

Thus first-moment dissipation does not prove `(LPCS.1)`.

## Verdict

The direct estimate `(LPCS.1)` is not installed by:

```math
\text{Cauchy/Young envelopes},
\quad
\text{global trilinear skew symmetry},
\quad
\text{pressure/cutoff routing},
\quad
\text{finite dyadic banding},
\quad
\text{same-fluid transport},
\quad
\text{first-moment dissipation}.
```

The exact theorem still needed on the Carleson side is one of:

```math
\boxed{
PositiveSourceDepletion.A:
\quad
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\to0;
}
```

The conditional depletion bridge is recorded in
`mpp-positive-source-depletion-coherence-bridge-note.md`:

```math
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A.
```

or

```math
\boxed{
ReverseHolderParentConcentration.A:
\quad
\text{localized positive source-parent measures cannot remain diffuse at
scale-critical strength without a finite donor reserve.}
}
```

The reverse-Holder branch is directly audited in
`mpp-reverseholder-parent-concentration-direct-attempt-note.md`; current finite
banding, raw orthogonality, and same-fluid transport do not install it.

At the current route resolution, both are equivalent presentations of the same
source-pulse wall:

```math
\boxed{
PositiveSourceDepletion.A
\equiv_{\mathrm{route}}
ScaleCriticalTreeCarleson.A
\equiv_{\mathrm{route}}
SourcePulseExclusion.A.
}
```
