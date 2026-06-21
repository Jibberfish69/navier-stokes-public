# TerminalAmplitudeGain.A no-Field hard obstruction

## Status

Failed direct discharge and loop stop-condition note.  The target

```math
TerminalAmplitudeGain.A
```

cannot be proved from the currently installed inputs without a Field/high-tail modulus or another genuinely new active-square/source-Carleson mechanism.  All available arguments reduce to `LocalPositiveSourceCarleson.A` / `ScaleCriticalTreeCarleson.A`.

## Target

For a terminal packet `P` with radius `r_P=2^{-j_P}`, define

```math
a_P(t):=\frac{\|U_P(t)\|_2}{\nu r_P^{1/2}}.
```

The desired amplitude theorem is

```math
\boxed{
\sup_{P:j_P\ge N}a_P(t)\to0.
}
```

This estimate implies the conditional cycle-current estimate and hence local
positive source control.

## Scaling obstruction

Finite energy alone allows scale-critical terminal packets.  A packet with

```math
\|U_P\|_2=K r_P^{1/2}
```

has dimensionless amplitude `a_P=K/\nu`, while its energy is

```math
\|U_P\|_2^2=K^2r_P\to0
```

as `r_P\to0`.  Thus small high-frequency energy tail does not force terminal amplitude gain.

On one heat-time interval, nonlinear transfer scales cubically while heat dissipation scales quadratically.  A short terminal pulse can keep first-moment dissipation small while keeping scale-critical square density or packet amplitude non-small.

## Envelope obstruction

A first-crossing proof needs an envelope inequality

```math
D_s^+A_N
\le
-cA_N+C A_N^2+o_N(1),
\qquad
A_N:=\sup_{P:j_P\ge N}a_P.
```

After gauging out linear strain, the missing step is the high-high remainder estimate

```math
\|R_P\|_{packet}
\le C A_N^2+o_N(1)+Loss_{legal}.
```

This estimate is exactly the local positive source control on terminal packets.  It is not produced by finite energy, first-moment dissipation, Pack deformation control, or finite-depth Part participation.

## FieldTail conditional closure

If one assumes a high-tail Field modulus `FieldTail_N`, then the high-high remainder estimate follows and the amplitude theorem is valid:

```math
FieldTail_N+Part_{N,Q} plus Field-window evidence
\Longrightarrow TerminalAmplitudeGain.A.
```

But `FieldTail_N` is the Field/readout side of CM membership.  Using it as input makes the source-wall proof dependent on the very high-frequency field coherence that the wall is meant to supply.

## Relation to previous attempts

The same obstruction appeared in the recent attempts:

```math
ParabolicCubicNormalForm.A
\rightsquigarrow ActiveTreeCoefficientCarleson.A,
```

```math
ActiveTreeCoefficientCarleson.A
\rightsquigarrow\text{bad-set active-square uniform integrability},
```

```math
SquareReserveEvolution.A
\rightsquigarrow LocalPositiveSourceCarleson.A,
```

```math
RetainedFaceAmplitudeGain.A
\rightsquigarrow FieldTail_N.
```

All routes require the same missing high-tail/source-Carleson mechanism.

## Conclusion

The direct no-Field theorem

```math
OriginalSmoothData\Longrightarrow TerminalAmplitudeGain.A
```

is not proved by the current inputs.  The live mathematical root remains

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
LocalPositiveSourceCarleson.A,
```

or a genuinely new rigid terminal-Zeno theorem.

## Stop condition

The same blocker has now reappeared across the direct Carleson, square reserve,
cubic normal form, coefficient, retained-face amplitude, and Zeno routes.  The
installed inputs contain no mechanism that changes this obstruction.  A further
reformulation of the same reserve is therefore not a proof step; the remaining
mathematical burden is a genuinely new source-control principle or rigid
terminal-Zeno theorem.
