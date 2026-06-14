# Carrier Low-Mode Export Reopen Blocked By Amplitude

## Reopen target

The target was to reopen

```math
carrier\ low\text{-}mode\ export
\Rightarrow HFG
\Rightarrow Pack+Part+Field+\mathfrak A_{N,Q}
\Rightarrow H1+H2+H6+ORIGIN.Retain
\Rightarrow LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

## Precondition failure

The reopen step requires one of:

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_\infty\le c\nu2^{2j},
```

or a readout-preserving normalization that gives the same bound with lower-order readout defect.

The direct coefficient theorem failed by fixed-shell amplitude scaling. The normalization theorem also failed: exact readout preservation leaves amplitude unchanged, while amplitude clipping creates a same-order readout defect.

## Result

The carrier route cannot currently reopen unconditional HFG. The strongest valid statement remains the dynamic-threshold carrier export:

```math
2^{2j}\ge C_{LM}\nu^{-1}\|X\|_{H_D^s}
\quad\Longrightarrow\quad
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_\infty\le c\nu2^{2j}.
```

This is insufficient for unconditional all-shell HFG unless the finite low-threshold block is controlled by a separate amplitude theorem.

## Next hard mathematical target

The next route must supply one of:

```math
\sup_{t<T}\|X(t)\|_{H_D^s}<\infty
```

with a uniform threshold and finite low-shell control,

or a weighted carrier theorem that controls the coefficient-bearing term directly,

or a different mechanism for HFG not routed through strict low-mode coefficient suppression.
