# MPP ScaleNormalizedTerminalChargeTimeAC.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

This pass attacks the child isolated by
`mpp-terminal-source-first-appearance-time-spread-direct-attempt-20260609.md`:

```math
ScaleNormalizedTerminalChargeTimeAC.A
```

or equivalently

```math
FirstBirthChargeTimeModulus.A.
```

The desired statement is that any charge ledger receiving a minimal retained
terminal source birth has a terminal time modulus in the same scale-normalized
packet topology:

```math
Charge_m(B_R\times[-\varepsilon,0])
\le \eta_R(\varepsilon)+o_m(1),
\qquad \eta_R(\varepsilon)\downarrow0.
```

## Direct raw-measure test

The installed ledgers give finite raw charge or finite raw dissipation on
bounded-overlap terminal windows. That is not the target.

For a shrinking terminal family, the Pack-survival quantity contains the
parabolic normalization hidden in the active packet density. The needed upper
bound has the form

```math
\sum_\alpha NormalizedCharge(Q_\alpha)\le C,
```

not merely

```math
\sum_\alpha Charge(Q_\alpha)\le C.
```

Finite raw charge permits concentration:

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

Thus raw charge absolute continuity in physical time does not give a uniform
scale-normalized terminal modulus after blow-up.

## CKN / dissipation charge test

Taking the receiving charge to be the CKN dissipation measure does not close
the target.

The adjacent direct attempt `SelectedSourceDissipationTether.A` isolates the two
missing inputs:

```math
SourceToDissipationTether.A
```

and

```math
NoTerminalDissipationAtom_{B_ASAC}.A.
```

The source-to-dissipation tether fails by a square-source remainder unless an
active reserve is added. The no-terminal-dissipation-atom theorem is stronger
than finite dissipation, because bounded `L^1` densities can converge to a time
atom.

So the CKN route returns to the same need for uniform integrability,
reverse-Holder, or Carleson strength.

## Scale-normalized Carleson test

The existing `nu_SCF` notes state the exact missing upgrade:

```math
ScaleNormalizedCarlesonUpperEstimate_{\nu_{SCF}}.A.
```

For separated terminal same-fluid windows `Q_\alpha`, prove

```math
\sum_\alpha NormalizedSCF(Q_\alpha)\le C.
```

This would give the required time modulus for the receiving charge ledger. The
checked attempt fails because the raw carrier

```math
\nu_{SCF}=|\nabla u|^2\,dxdt+\sum_\chi |p_\chi^{loc}|^{3/2}\,dxdt
```

has finite raw mass but no installed scale-normalized Carleson upper estimate.
The parabolic weights can blow up on arbitrarily shrinking terminal windows.

## Result

`ScaleNormalizedTerminalChargeTimeAC.A` is not proved.

The direct attempt reduces it to the already isolated analytic atoms:

```math
ScaleNormalizedCarlesonUpperEstimate_{\nu_{SCF}}.A,
```

```math
ActiveShellAmplitudeGain.A,
```

or

```math
HeatScaleSquareSource.A.
```

The smallest current non-alias next target is:

```math
\boxed{
ActiveShellAmplitudeGain.A / HeatScaleSquareSource.A
}
```

because finite raw charge, ordinary time absolute continuity, CKN dissipation,
and source-to-dissipation tethering all fail without that scale-normalized
active-window control.

## New live criticism

`NS-LIVE-20260609-099`: `ScaleNormalizedTerminalChargeTimeAC.A` is not installed.
The receiving charge ledger has finite raw mass but lacks the scale-normalized
Carleson/time modulus needed on shrinking terminal heat windows. The next pass
must attack `ActiveShellAmplitudeGain.A / HeatScaleSquareSource.A` or an
equivalent scale-normalized Carleson upper estimate before any source-time
spread, Pack-survival, or PDF-finality claim can be made.
