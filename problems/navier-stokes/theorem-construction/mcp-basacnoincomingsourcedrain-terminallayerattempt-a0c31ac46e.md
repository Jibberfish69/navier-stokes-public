# BASACNoIncomingSourceDrain.TerminalLayerAttempt

## Status

Failed direct discharge.  This note tests whether a zero-thickness terminal `B_ASAC` source atom must create chargeable incoming source-drain.

## Target

The desired theorem is

```math
BASACNoIncomingSourceDrain.A:
\quad
\mu_*^{src}(B_R\times\{0\})>0
\Longrightarrow
Drain_{parent}+Loss_{legal}>0
```

on the selected same-fluid terminal packet family.

A transported-cylinder form would be

```math
TransportedCylinderSourceDrain.A:
\quad
\int_{\partial_{par}C_{tr}}J_{src}\cdot n_{tr}
\le Drain_{parent}+Loss_{legal}+o(1).
```

## Test

Local donor balance and entrance leaf decay pay finite and non-Zeno refill trees.  The remaining case is terminal Zeno refill.

A terminal source atom can be supported on the final time face of every transported cylinder.  It can have no fixed earlier incoming source pulse and no chargeable spatial boundary flux.  The incoming mechanism is then a terminal time-face concentration rather than a transported side-boundary inflow.

Thus transported-cylinder source-drain does not eliminate the atom without a time-face anti-atom theorem.

## Result

The branch reduces to

```math
\boxed{TerminalTimeFaceNoSourceAtom.A}
```

or equivalently

```math
TerminalSourceReverseHolder.A.
```

## Verdict

No-incoming source-drain remains open.  It fails exactly at zero-thickness terminal time-face concentration.