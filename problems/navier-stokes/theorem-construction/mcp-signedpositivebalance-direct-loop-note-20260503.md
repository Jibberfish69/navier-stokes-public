# SignedPositiveBalance.A direct loop note

## Target

Prove from original smooth data that the positive native active source on selected terminal bad windows is dominated by its negative part plus vanishing error:

```math
\int_{Bad_N(\eta)}(\mathfrak S_{N,loc}^{active})_+\,dt
\le C_{SPB}
\int_{Bad_N(\eta)}(\mathfrak S_{N,loc}^{active})_-\,dt+o_N(1).
```

## Attempt

Global signed Littlewood-Paley balance and unweighted dyadic exchange identities act before terminal localization, one-sided shell weights, cutoffs, and positive-part extraction. They provide signed cancellation for the global exchange, while the target compares positive and negative parts of a selected localized native source carrier.

The true weighted lifted remainder has principal strain form

```math
R_{j,k,\ell}^{lift}:=2^{2j}\langle C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle.
```

On a selected terminal packet, this contribution can be positive when the active high-shell packet aligns with expanding strain. Current original-data inputs provide no theorem forcing the matching negative part on the same bad windows.

Pressure, cutoff, and localization estimates route legal losses. They do not create positive/negative balance for legal interior source production.

Taking absolute values bypasses sign balance and returns to the active-square residual-tail / `ScaleCriticalTreeCarleson.A` branch.

## Result

`SignedPositiveBalance.A from OriginalSmoothData` remains open.

The exact obstruction is the lack of a negative-part dominance theorem for the selected native active source carrier after terminal localization and positive-part selection.

## Next target

Proceed to `TerminalSourceCoherence.A` and `LocalPressureStrainDeplete.A`.
