# EigenDecorrel.A direct loop note

## Target

Prove from original smooth data that active terminal high-shell packet directions decorrelate from expanding eigendirections of the local low/intermediate strain:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}
[\langle S_{<j}^{loc}w_j,w_j\rangle]_+\,dxdt
\le o_N(1)+\text{legal losses}.
```

This would feed

```math
EigenDecorrel.A\Longrightarrow TerminalSourceCoherence.A\Longrightarrow PositiveSourceDepletion.A\Longrightarrow SourcePulseExclusion.A.
```

## Attempt

Incompressibility gives `tr S=0`, so the local strain has zero trace. This does not preclude a positive expanding eigendirection. A terminal active packet may align with that eigendirection on the selected bad window.

Global dyadic transport skew symmetry cancels signed transfer before one-sided weights, physical cutoffs, terminal packet selection, and positive-part extraction. The target is localized and one-sided, so that signed global cancellation does not imply positive-part depletion.

Pressure Poisson recovery gives elliptic response and routes pressure losses. It provides no sign rule for localized active strain production.

Same-fluid transport preserves legal labels and carrier fidelity. It gives no angular mixing rate or eigendirection decorrelation mechanism.

Beltrami/helical or vorticity-direction coherence would help if supplied. Current original-data inputs do not force terminal active packets into those coherent classes, and no bridge from such coherence to the exact weighted active source packet is installed.

## Result

`EigenDecorrel.A from OriginalSmoothData` remains open under installed inputs.

The exact obstruction is the absence of a theorem forcing active packet directions away from expanding strain eigendirections on terminal bad windows.

## Next target

Proceed to `SignedPositiveBalance.A from OriginalSmoothData`.