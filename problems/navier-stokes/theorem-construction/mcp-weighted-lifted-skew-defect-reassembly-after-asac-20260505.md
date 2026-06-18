# WeightedLiftedSkewDefectLegal.A reassembly after ASAC

## Status

Failed as an unconditional theorem.  The open factors are now exact.

## Inputs from the continuation loop

`ProjectedCutoffLedger.A` is locally discharged on the projected affine packet branch.  Pressure gradients vanish against projected solenoidal packets, projection commutators are legal residuals, and cutoff commutators are absorbed through the transported packet-factor ledger.

The absolute `PairWeightFlattening.A` target remains open, but it is no longer
the right post-ASAC positive-source consumer.  The weighted pair defect

```math
(W_P-W_{P'})J_e
```

has full terminal shell-scale size on legal separated source-current edges.  Absolute-value control returns to

```math
ScaleCriticalTreeCarleson.A.
```

The one-sided positive receiver defect needed by the live consumer is now
charged in `mpp-one-sided-pair-weight-defect-after-asac-20260506.md`:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

`LiftedSkewCommutator.A` no longer remains open for the active-alignment
reason isolated in this note.  The lifted commutator contains the active
strain-alignment carrier

```math
2^{2j}\sum_P\langle S_k(x_P,t)e_P,e_P\rangle |c_P(t)|^2.
```

That carrier is now routed by the parent-drain ASAC assembly:

```math
TPNI.A+PacketNormalForm.A+SourceTether.A+LimitPass.A
\Longrightarrow ActiveStrainAlignmentCost.A.
```

The relevant theorem-facing file is
`mpp-asac-parent-drain-assembly-20260506.md`.  Thus this branch should now
consume `ASAC.A` instead of listing `TPNI.A` as an unresolved live subgate.

`TerminalSignedSaturation.A` remains the parallel source-wall target.  Its exact content must attach to each selected positive terminal source edge either a signed counter-edge at the same normalization or a legal cost measure:

```math
d\pi^+(e)\le d\pi^-(e^*)+d\mathcal D_{\mathrm{legal}}(e),
\qquad
\sum_e d\mathcal D_{\mathrm{legal}}(e)<\infty.
```

That edgewise alternative, not generic signed cancellation, is what recovers or prices the missing terminal counter-edge.

## Assembly verdict

The desired theorem is

```math
Source_P^{loc}
=
\sum_{P'}J(P'\to P)+L_P^{w/lift},
\qquad
J(P\to P')=-J(P'\to P),
```

with legal summability of `L_P^{w/lift}`.

The legal bookkeeping terms are handled.  The active strain-alignment term and
the positive receiver-side pair-weight defect are handled by `ASAC.A`.  The
principal source-wall term still live after ASAC is:

```math
\boxed{
TerminalSignedSaturation.A.
}
```

A pre-one-sided-update sufficient package was

```math
\boxed{
TerminalWeightCoherence.A
+ActiveStrainAlignmentCost.A
+TerminalSignedSaturation.A
+ProjectedCutoffLedger.A
\Longrightarrow
WeightedLiftedSkewDefectLegal.A.
}
```

After the 2026-05-06 parent-drain and one-sided pair-defect updates, this
should be replaced by

```math
\boxed{
PositivePairWeightDefectCharge.A
+TerminalSignedSaturation.A
+ProjectedCutoffLedger.A
\Longrightarrow
TerminalPositiveSkewLedger.A.
}
```

## Consequence

```math
\boxed{WeightedLiftedSkewDefectLegal.A\text{ remains open.}}
```

The signed-current branch still lacks the terminal signed-partner side:

```math
TerminalSignedSaturation.A
```

or the equivalent internal donor-sink depletion theorem.

## Claimed status

Failed unconditional reassembly.  After the ASAC and one-sided pair-defect
updates, this note isolates the remaining mathematical split as terminal
signed-partner saturation versus internal donor-sink depletion.
