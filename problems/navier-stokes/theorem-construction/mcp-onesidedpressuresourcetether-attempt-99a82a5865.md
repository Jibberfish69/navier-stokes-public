# OneSidedPressureSourceTether.Attempt

## Status

Failed direct discharge.  This note tests whether pressure/eigenframe sustain can be tethered directly to the native one-sided positive source carrier.

## Target

The desired theorem is

```math
OneSidedPressureSourceTether.A:
\quad
PressureEigenframeSustain_{term}
\le
C\sum_{P\in\mathcal F_N}\int_{Q(P)}
|w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+dxdt
+Loss_{legal}+o_N(1),
```

with the reverse spending direction strong enough that depletion of the pressure/eigenframe channel pays the native carrier or forces it to vanish.

## Test

The installed pressure/eigenframe inputs are signed and near-band:

```math
TerminalPressureHessianNoSustain.A,
\qquad
OneSidedNearBandMaterialStrainBV.A.
```

They control pressure-Hessian / eigenframe sustain in a signed-current presentation.  The positive supplier needs the selected one-sided carrier

```math
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

The Leray projection and pressure Poisson identities act before positive-part extraction.  They do not yield a theorem-grade one-sided comparison after terminal packet selection.

## Result

The pressure tether route reduces to a new theorem:

```math
\boxed{SelectedPressurePositivePartComparison.A}
```

which would compare selected pressure/eigenframe sustain with the selected native positive source carrier after positive-part extraction.

## Verdict

The pressure/eigenframe route remains useful support.  It does not yet close the native source-weighted angular depletion.  The next alternate should avoid signed pressure support and attack the selected positive carrier through geometry or ancestry.