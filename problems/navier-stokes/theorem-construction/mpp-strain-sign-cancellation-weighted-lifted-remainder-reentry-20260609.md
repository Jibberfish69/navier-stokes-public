# MPP StrainSignCancellationForWeightedLiftedRemainder.A Reentry

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality.

## Target

The signed route under native-source temporal thickness is:

```text
StrainSignCancellationForWeightedLiftedRemainder.A.
```

It would show that the true weighted lifted shell-flux remainder cancels before
the proof falls back to a positive active-square carrier.

The live terminal record is:

```text
G_N^{lift,sigma}
= sum W_{j,ell}^{sigma} R_{j,k,ell}^{lift},
```

not the bare separated commutator.

## Direct attempt

The principal lifted term has strain form:

```text
R_{j,k,ell}^{lift}
:= 2^{2j}<C_j(nabla a_k, Delta_j u), Delta_j u>.
```

The unweighted dyadic exchange cancels paired shell exchange before the
terminal operations. The live proof has already applied:

```text
one-sided shell weights,
terminal active-window selection,
same-fluid packet localization,
cutoffs/projectors,
lifted remainders,
and positive-part extraction.
```

After those operations the cancellation leaves an order-size weighted defect.
That defect is a real source term, not a bookkeeping error.

## Failed closures

Incompressibility gives trace-free strain. It does not forbid expanding
eigendirections.

Pressure recovery pays elliptic/cutoff ledgers. It does not give a sign law for
the interior strain readout.

Same-fluid transport preserves packet identity. It does not force angular
mixing between the active shell direction and the low/intermediate strain
eigenframe.

Bare Fourier support removes the wrong separated commutator; it does not touch
the lifted weighted remainder after the packet reductions.

No installed structural identity rewrites `G_N^{lift,sigma}` as a nonpositive
term or exact divergence on the selected terminal packet family.

## Result

`StrainSignCancellationForWeightedLiftedRemainder.A` is not proved from current
inputs.

The next signed theorem is:

```text
ActiveEigendirectionDecorrel.A
```

or an equivalent theorem forcing selected terminal high-shell packets to spend
vanishing weighted time aligned with expanding low-strain eigendirections.

If that signed route fails, the fallback is:

```text
ActiveSquareResidualTail.A
```

which is the positive-carrier route and must be proved directly rather than
smuggled in through a broken cancellation identity.
