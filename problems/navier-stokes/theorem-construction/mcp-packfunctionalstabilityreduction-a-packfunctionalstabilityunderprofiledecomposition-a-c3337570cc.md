# Pack Functional Stability Under Profile Decomposition Reduction

## Target

Study the stability of the Pack functional under terminal profile decomposition.

Desired statement:

```text
PackFunctionalStabilityUnderProfileDecomposition.A:
The selected positive Pack functional is stable under terminal profile decompositions, so selector drift and profile splitting cannot create a new Pack-illegal terminal object outside the audited families.
```

## Pack functional issue

The live Pack-side quantity is not a signed quadratic form alone. It is a selected positive, scale-normalized, terminal-window object.

Schematic form:

```text
P(u_m) = selected positive part of a local low-high / source / tree-Carleson expression.
```

Under a profile decomposition

```text
u_m = sum_alpha U_alpha^m + r_A^m,
```

one would need an expansion of the form:

```text
P(u_m) = sum_alpha P(U_alpha^m) + negligible cross terms + negligible remainder.
```

This is stronger than ordinary energy orthogonality.

## Failure point

Ordinary profile orthogonality controls signed or unweighted quantities. It does not automatically control the selected positive part after:

```text
terminal window selection,
local cutoff,
pressure/Leray projection,
scale normalization,
positive-part extraction,
same-witness selector choice.
```

A selector can follow a near-resonant cross-profile interaction or terminal window artifact. Therefore Pack functional stability is not obtained from standard profile decomposition alone.

## Reduction

The stability theorem reduces to:

```text
PositivePackDefectOrthogonality.A
```

or an equivalent theorem:

```text
SelectedPackPositivePartDecoupling.A,
CrossProfileTerminalSourceAtomExclusion.A,
OneProfilePackDefectLocalization.A.
```

Exact needed statement:

```text
Every nonzero terminal selected positive Pack defect either belongs to one genuine profile, reduces to the endpoint-strip boundary class-exit case, or has vanishing cross-profile contribution.
```

## Verdict

`PackFunctionalStabilityUnderProfileDecomposition.A` is not independently proved.

It is a structural reduction to `PositivePackDefectOrthogonality.A`.

## Route consequence

Selector drift is handled only after the positive Pack defect is shown to decouple, vanish, reduce to endpoint strip, or belong to one profile. The next and exact theorem is `PositivePackDefectOrthogonality.A`.