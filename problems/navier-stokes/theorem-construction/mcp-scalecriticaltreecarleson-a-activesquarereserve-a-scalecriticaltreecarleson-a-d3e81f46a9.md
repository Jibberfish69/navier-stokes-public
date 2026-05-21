# ScaleCriticalTreeCarleson.A / ActiveSquareReserve.A failed attempt

## Status

Failed discharge from installed inputs.  This is the terminal source-reserve form of the same hard atom reached by the positive-remainder, angular, Zeno, and one-sided-comparison routes.

## Target

Prove the scale-critical tree Carleson reserve

```math
ScaleCriticalTreeCarleson.A:
\quad
\int_I\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt
\le o_N(1)+Loss_{legal}.
```

In localized source language this is equivalent to a local positive source Carleson estimate for the native pre-Cauchy source.

## Valid conditional entrances

The reserve follows from any one of:

```math
SquareSourceEstimate.A,
\qquad
ActiveShellAmplitudeGain.A,
\qquad
LocalPositiveSourceCarleson.A,
\qquad
PositiveRemainderDepletion.A,
\qquad
ZenoSourceResidueRigidity.A.
```

Each entrance is a source-reserve theorem rather than an installed consequence of the current first-moment ledgers.

## Bellman test

A tree-Bellman proof would need a functional `\mathcal B_N(t)` satisfying

```math
\sum_{k>N}2^kT_k(t)^2
\le
-{d\over dt}\mathcal B_N(t)
+\theta\sum_{k>N}D_k(t)+Loss_{legal}(t),
\qquad
T_k(t)=\sum_{\ell>k+4}D_\ell(t),
```

with endpoint values controlled by original smooth tails and legal losses.

The installed energy component pays only first-moment dissipation.  Any controlled endpoint reserve built from installed tails also pays only first-moment or cumulative-tail quantities.  A component whose derivative pays `2^kT_k^2` already contains the desired active-window Carleson reserve, making the proof circular.

## Scalar ledger obstruction

Let `I_m` be disjoint intervals accumulating at the terminal time.  Set

```math
A_m=2^{-2m},
\qquad
h_m=2^mA_m^2=2^{-3m},
```

and place a pulse

```math
D_{m+5}(t)=A_m/h_m
\quad\text{on }I_m,
\qquad |I_m|=h_m.
```

Then

```math
\int\sum_{\ell>N}D_\ell(t)dt
=\sum_{m>N-5}A_m\to0,
```

while the scale-critical square contribution at `k=m` is

```math
\int_{I_m}2^m
\left(\sum_{\ell>m+4}D_\ell(t)\right)^2dt
\ge
2^m(A_m/h_m)^2h_m=1.
```

Thus finite first-moment tail control and terminal-window accumulation do not imply the scale-critical active-square reserve.

## Verdict

`ScaleCriticalTreeCarleson.A` is not installed from current inputs.  The final hard atom is unchanged:

```math
\boxed{
\text{produce a genuinely new native source-reserve theorem: }
PositiveRemainderDepletion.A,
LocalPositiveSourceCarleson.A,
SquareSourceEstimate.A,
ActiveShellAmplitudeGain.A,
\text{or non-Carleson Zeno temporal anti-concentration.}
}
```

This completes the present loop: every tested route either closes conditionally from the same source-reserve supplier or returns to this scale-critical reserve.