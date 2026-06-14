# MPP LocalizedSkewCurrent.A Concrete Packet Current Statement

## Status

This note installs the concrete packet-current object for the signed
source-current route. It is a theorem interface, not a discharge.

The governing correction is:

```math
\boxed{
\text{the antisymmetric current identity is theorem-grade only after the
symmetric/localized remainder is paid in a legal ledger.}
}
```

Thus the note separates:

```math
BareDyadicSkewCurrent.0
```

from the missing terminal localization theorem:

```math
TerminalSkewLocalizationLedger.A.
```

## Packet Objects

Let a terminal packet be

```math
P=(j,\alpha),
```

where `j` is dyadic scale and `\alpha` indexes a same-fluid heat tube

```math
Q_P
=
\{(x,t): |x-X_P(t)|\le C_P2^{-j},\ t\in I_P,\ c_I2^{-2j}\le |I_P|\le C_I2^{-2j}\}.
```

Let

```math
U_P=\Pi_Pu
```

where `\Pi_P` means: localize to `Q_P`, project to shell `j`, and apply the
localized Leray projection / pressure normalization used by the source-wall
packet ledger.

Define packet energy and dissipation:

```math
E_P(t)=\frac12\|U_P(t)\|_2^2,
```

```math
D_P(t)=\nu\|\nabla U_P(t)\|_2^2.
```

The localized packet equation is

```math
\partial_tU_P-\nu\Delta U_P
=
-\Pi_P\mathbb P\nabla\cdot(u\otimes u)+Err_P.
```

Pairing with `U_P` gives

```math
\frac{d}{dt}E_P+D_P
=
-\langle \Pi_P\mathbb P\nabla\cdot(u\otimes u),U_P\rangle
+L_P^{raw}.
```

Here `L_P^{raw}` contains cutoff motion, pressure normalization, packet
projection error, off-packet leakage, and all terms not in the displayed
localized nonlinear source.

## Triadic Transfer

Decompose the packetized field as

```math
u=\sum_Q U_Q
```

inside the bounded-overlap same-fluid terminal packet family, with the
outside-family pieces kept in the raw ledger.

For packets `P,Q,R`, define the raw transfer into `P` from `Q`, mediated by
`R`:

```math
T_R(Q\to P)
:=
-\left\langle
\Pi_P\mathbb P\nabla\cdot(U_R\otimes U_Q),
U_P
\right\rangle.
```

Define the antisymmetric and symmetric parts:

```math
J_R(Q\to P)
:=
\frac12\left(T_R(Q\to P)-T_R(P\to Q)\right),
```

```math
S_R(Q,P)
:=
\frac12\left(T_R(Q\to P)+T_R(P\to Q)\right).
```

Then

```math
J_R(Q\to P)=-J_R(P\to Q),
```

but `S_R(Q,P)` is not automatically legal on the localized terminal packet
surface.

Set

```math
J(Q\to P)=\sum_RJ_R(Q\to P).
```

## Corrected Packet Identity

The source identity becomes

```math
\frac{d}{dt}E_P+D_P
=
\sum_QJ(Q\to P)+L_P^{skew},
```

where

```math
L_P^{skew}
=
L_P^{raw}
+
\sum_{Q,R}S_R(Q,P)
+
L_P^{outside}
+
L_P^{weight/cutoff}.
```

The extra ledger terms are exactly the terms created by:

- terminal packet cutoff and collar truncation;
- localized Leray projection and pressure normalization;
- lifted commutator replacement of the bare dyadic exchange;
- one-sided source-wall tail weights;
- off-family or outside-window signed partners;
- selected positive terminal source edges whose signed counter-edge is not in
  the usable same-fluid terminal family.

## Theorem Interface

The concrete form of `LocalizedSkewCurrent.A` is:

```math
\boxed{
\frac{d}{dt}E_P+D_P
=
\sum_QJ(Q\to P)+L_P,
\qquad
J(Q\to P)=-J(P\to Q),
}
```

with the legal ledger estimate

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int |L_P|\,dt
\le
o_N(1)+Loss_{legal}.
}
```

This theorem is supplied by:

```math
\boxed{
BareDyadicSkewCurrent.0
+
TerminalSkewLocalizationLedger.A
\Longrightarrow
LocalizedSkewCurrent.A.
}
```

The exact missing localization theorem is:

```math
\boxed{
TerminalSkewLocalizationLedger.A:
\text{every symmetric/localized defect and every missing signed partner is
kept inside the same saturated terminal ledger or paid by installed legal
loss.}
}
```

Equivalently:

```math
\boxed{
TerminalSignedSaturation.A:
\text{the counter-edge of every selected positive terminal source edge either
belongs to the same saturated same-fluid terminal ledger or is legally priced.}
}
```

## Danger If This Step Is Skipped

The formal current

```math
J_R(Q\to P)=\frac12(T_R(Q\to P)-T_R(P\to Q))
```

is always antisymmetric by definition. That alone does not prove the localized
packet energy identity, because the symmetric term

```math
S_R(Q,P)=\frac12(T_R(Q\to P)+T_R(P\to Q))
```

may still carry terminal positive source mass.

So the current route is honest only in the following order:

```math
TerminalSkewLocalizationLedger.A
\Longrightarrow
LocalizedSkewCurrent.A
\Longrightarrow
CycleHeatAction.A\ \text{can be applied to the localized signed current.}
```
