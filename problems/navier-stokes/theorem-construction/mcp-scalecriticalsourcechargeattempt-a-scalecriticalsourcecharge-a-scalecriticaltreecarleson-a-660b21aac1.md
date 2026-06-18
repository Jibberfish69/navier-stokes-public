# ScaleCriticalSourceCharge.A / ScaleCriticalTreeCarleson.A Attempt

## Target

Prove a scale-critical source charge strong enough to rule out terminal time-face concentration. A sufficient exact form is a Carleson/source-square estimate on heat windows:

```math
\mu_m^{src,+}(Q_r(z))\le C r^\alpha
```

with terminal uniformity strong enough to imply

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])\to0
```

uniformly as `\varepsilon\downarrow0`.

## Direct attempt

A scale-critical source charge closes `TerminalTimeFaceAntiAtom.A` by pricing concentration at every shrinking terminal scale.

However, the current route record says the attempted source-charge routes return to unproved parents:

```text
HeatScaleSquareSource.A returns to ActiveShellSourceNormalize.A.
Parent inverse/source charge control returns to ScaleCriticalTreeCarleson.A.
```

The installed data do not yet supply a Carleson source measure for the selected positive source marginal.

The terminal layer

```math
\frac{a}{\tau_m}1_{(-\tau_m,0]}
```

has no contradiction with finite `L^1_s` mass and can concentrate inside terminal heat windows unless the scale-critical charge is already present.

## Verdict

`ScaleCriticalSourceCharge.A / ScaleCriticalTreeCarleson.A` is not proved from installed inputs.

It is a sufficient but still missing gold theorem.

## Exact reduction

To prove it, one must install a source-square/Carleson tree charge for the selected positive source after all terminal operations: localization, cutoff, projection, positive-part extraction, and selector choice.

Claimed status:

```text
failed; source-charge theorem remains uninstalled.
```
