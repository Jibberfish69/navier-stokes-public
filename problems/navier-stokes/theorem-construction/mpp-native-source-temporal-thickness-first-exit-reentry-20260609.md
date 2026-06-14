# MPP NativeSourceTemporalThicknessFromFirstExit.A Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality.

## Target

The theorem under the first-exit Pack wall is:

```text
NativeSourceTemporalThicknessFromFirstExit.A
```

It asks for a terminal strip modulus, or a uniform super-`L^1_t` residence
bound, for the selected `B_ASAC` native positive source carrier:

```text
[<S_<j^loc w_j,w_j>]_+ dxdt.
```

Such a theorem would prove `BASACTimeFaceAntiAtom.A`, then
`ZenoResidueLiouville_{B_ASAC}.A`, then the retained reserve-birth supplier
needed for `OriginalSmoothDataPackSurvival.A`.

## Active-square entrance

A source-Carleson / active-square estimate would prove temporal thickness.
The checked active-square route reduces this to:

```text
NonlinearShellFluxSourceControl.A
```

or equivalently:

```text
ActiveShellSourceNormalize.A,
ActiveSquareUpperTailCarleson.A,
SquareSourceEstimate.A,
or terminal active-shell amplitude decay.
```

The direct active-square route does not close from finite energy, finite
dissipation, or fixed-shell preterminal smoothness. A terminal source can keep
a moving active shell alive on its heat-scale window. The scalar shell law

```text
E_j'(t)+c nu 2^{2j} E_j(t) <= F_j(t)
```

shows the issue: the proof must use sign or geometry inside `F_j`, not just
the existence of viscous damping.

## Signed/eigendirection entrance

The non-circular route is to use the sign of the Navier-Stokes source, rather
than taking absolute values. After localization, weights, lifted packet
reduction, and terminal positive-part extraction, the true object is the
weighted lifted remainder:

```text
G_N^{lift,sigma}
= sum W_{j,ell}^{sigma} R_{j,k,ell}^{lift}.
```

Its displayed principal atom is a strain readout:

```text
R_{j,k,ell}^{lift,prin}
:= 2^{2j}<C_j(nabla a_k, Delta_j u), Delta_j u>.
```

To obtain temporal thickness one needs a theorem that this selected positive
part cannot stay positive on the terminal active packets:

```text
PositiveStrainDecorrelationOnTerminalPackets.A
```

equivalently:

```text
StrainSignCancellationForWeightedLiftedRemainder.A.
```

## Direct tests

Incompressibility gives `tr S = 0`, not nonpositive strain. A trace-free strain
can have expanding eigendirections, and selected terminal packets can align
with them.

Bare dyadic exchange cancels before terminal selection, one-sided weights,
cutoffs, lifted remainders, and positive-part extraction. It does not control
the positive part on the selected terminal family.

Pressure recovery enforces incompressibility and pays elliptic/cutoff ledgers.
It does not make the interior source carrier

```text
[<S_<j^loc w_j,w_j>]_+
```

nonpositive.

Same-fluid transport preserves carrier labels. It does not supply angular
mixing or eigendirection decorrelation of `w_j` relative to `S_<j^loc`.

## Result

`NativeSourceTemporalThicknessFromFirstExit.A` is not proved from the installed
inputs.

The next theorem target is:

```text
StrainSignCancellationForWeightedLiftedRemainder.A
```

or an equivalent active-packet eigendirection decorrelation theorem. If this
signed route fails, the only remaining positive route is the direct
`ActiveSquareResidualTail.A` / active-square Carleson theorem, which is the
same source-control burden in positive form.

The loop must continue at the weighted lifted remainder. It may not treat
native-source temporal thickness as closed from original smooth data, local
energy, Pack-first minimality, or soft velocity integrability.
