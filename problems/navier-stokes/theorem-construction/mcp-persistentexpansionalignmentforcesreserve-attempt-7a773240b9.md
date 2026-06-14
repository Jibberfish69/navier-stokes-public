# PersistentExpansionAlignmentForcesReserve.Attempt

## Status

Failed direct discharge.  This note tests the dynamic persistent-alignment route after source-weighted eigenframe mixing.

## Target

The desired theorem is

```math
PersistentExpansionAlignmentForcesReserve.A:
\quad
\text{persistent source-weighted alignment with expanding strain}
\Longrightarrow
ActiveShellAmplitudeGain.A
\vee TerminalSourceReverseHolder.A
\vee BASACNoIncomingSourceDrain.A
\vee Loss_{legal}.
```

## Test

On smooth preterminal windows, positive vorticity stretching gives instantaneous growth of the active square amplitude.  Over a time interval with genuine heat-time length, this would create amplitude gain or drain expenditure.

The terminal source-wall obstruction is precisely the zero-thickness case.  The selected source can concentrate on a shrinking layer near the terminal time.  Then instantaneous stretching can remain large while integrated amplitude gain, temporal residence, and drain charge vanish in the limit.

The shell balance has the form

```math
E_j' + c\nu D_j \le F_j.
```

A source-balanced pulse can maintain the selected active amplitude over a short terminal interval when `F_j` balances viscous damping.  Excluding this requires one of the exits already listed: time-thickness, no-incoming source-drain, or active-shell amplitude gain.

## Result

The dynamic theorem reduces to the same missing anti-atom statement:

```math
\boxed{TerminalLayerTimeThickness.A}
```

or the already named equivalent forms:

```math
TerminalSourceReverseHolder.A,
\quad
ActiveShellAmplitudeGain.A,
\quad
BASACNoIncomingSourceDrain.A.
```

## Verdict

Persistent alignment alone does not force a reserve from installed inputs.  The zero-thickness terminal layer remains the blocking model.
