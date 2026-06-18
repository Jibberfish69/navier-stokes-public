# `ScaleNormalizedParentInverse.A` direct attempt

## Status

Failed direct attempt. The target reduces to the scale-critical tree Carleson reserve.

## Target

For every localized positive source-parent measure `\pi_P`, prove either bounded
parent concentration or a globally summable charge for diffuse legal parentage.
The diffuse branch is not a consequence of shell banding or raw energy.  It is
the finite scale-normalized donor-reserve estimate

```math
\pi_P(\mathsf{Pred}(P)\setminus\mathcal C(P))
\le Charge_P+Reserve_P+o(1).
```

## Attempt

Finite dyadic banding controls shell type and triad class. It leaves physical packet multiplicity and phase multiplicity unrestricted. Thus the legal diffuse model

```math
\pi_P={1\over M}\sum_{\alpha=1}^{M}\delta_{P^-_\alpha},
\qquad M\to\infty,
```

is compatible with current shell geometry. Every bounded selector captures at most `B/M` of the mass.

Raw orthogonality controls unweighted donor energy. The source-parent charge is scale-normalized and one-sided. Donor amplitudes can be spread across many legal parents so that the raw quadratic cost is \(\sum_{\alpha=1}^M M^{-2}=M^{-1}\), while normalized child-feeding mass is \(\sum_{\alpha=1}^M M^{-1}=1\).

Same-fluid transport preserves legality after a parent edge has been selected. It supplies fidelity, while the target needs an inverse selection theorem or a donor entropy charge.

Pressure and cutoff routing allocate boundary and projection losses. They do not price legal interior positive parent diffusion.

## Result

The missing estimate is exactly

```math
ScaleCriticalTreeCarleson.A.
```

Equivalently,

```math
ScaleNormalizedParentInverse.A
\equiv_{route}
ScaleCriticalTreeCarleson.A.
```

No proof follows from the current original-data ledgers alone.

## Next target

Proceed to `RefillTreeWellFounded.A`, splitting the solved non-Zeno branch from the open terminal-Zeno branch.
