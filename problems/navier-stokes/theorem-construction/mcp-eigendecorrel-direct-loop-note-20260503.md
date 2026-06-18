# EigenDecorrel.A direct loop note

## Target

Prove from original smooth data that active terminal high-shell packet directions decorrelate from expanding eigendirections of the local low/intermediate strain:

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}
[\langle S_{<j}^{loc}w_j,w_j\rangle]_+\,dxdt
\le o_N(1)+\text{legal losses}.
```

Once supplied, this feeds

```math
EigenDecorrel.A\Longrightarrow TerminalSourceCoherence.A\Longrightarrow PositiveSourceDepletion.A\Longrightarrow SourcePulseExclusion.A.
```

## Attempt

Incompressibility gives `tr S=0`, so the local strain has zero trace. This does not preclude a positive expanding eigendirection. A terminal active packet may align with that eigendirection on the selected bad window.

Global dyadic transport skew symmetry cancels signed transfer before one-sided weights, physical cutoffs, terminal packet selection, and positive-part extraction. The target is localized and one-sided, so that signed global cancellation does not imply positive-part depletion.

Pressure Poisson recovery gives elliptic response and routes pressure losses. It provides no sign rule for localized active strain production.

Same-fluid transport preserves legal labels and carrier fidelity. It gives no angular mixing rate or eigendirection decorrelation mechanism.

Beltrami/helical or vorticity-direction coherence is a sufficient extra
structure only after a theorem produces that coherence on the selected terminal
active packets and bridges it to the exact weighted active source packet.
Current original-data inputs do neither.

## Result

`EigenDecorrel.A from OriginalSmoothData` remains open under installed inputs.

The exact obstruction is the absence of a theorem forcing active packet directions away from expanding strain eigendirections on terminal bad windows.

## Next target

Proceed to `SignedPositiveBalance.A from OriginalSmoothData`.
