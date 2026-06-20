# Door 2 Mode-Sign Coherent Shadow Localization Direct Test

Date: 2026-06-20

## Status

Direct child test complete.  `ModeSignCoherentShadowLocalization.A` is not
installed from the current Door 2 inputs.

The useful result is a sharper reduction.  A finite smooth mode test can be
partitioned into positive, negative, and nodal regions, but this partition does
not by itself identify a signed mode readout with the scalar positive native
source carrier.  Two additional payments are required: source mass in the nodal
zone must be evacuated or charged, and source on the negative side of the mode
test must keep its signed partner or be charged as a sink/donor defect.

## 1. Target under test

Let the localized signed pre-Cauchy source on a selected packet shadow be

```math
q_m(P)
:=
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,dxdt.
\tag{MSL.1}
```

Let the packet realization of a Door 2 dual modulation mode be

```math
\psi_m(P),
\qquad
|\psi_m(P)|\le 1.
\tag{MSL.2}
```

The signed mode shadow is

```math
S_m(\psi)
:=
\sum_{P\in\mathcal F_m^{sel}} q_m(P)\psi_m(P).
\tag{MSL.3}
```

The scalar native positive carrier is

```math
M_m^+
:=
\sum_{P\in\mathcal F_m^{sel}} [q_m(P)]_+.
\tag{MSL.4}
```

`ModeSignCoherentShadowLocalization.A` asks for a bounded-overlap selected
subshadow on which a positive value of `S_m(\psi)` forces a positive contribution
to `M_m^+`, up to legal terms.

## 2. What the sign partition gives

Fix `0<kappa<1`.  Decompose the selected packet family into

```math
\mathcal P_m^+(\kappa)
=
\{P:\psi_m(P)\ge\kappa\},
\tag{MSL.5}
```

```math
\mathcal P_m^-(\kappa)
=
\{P:\psi_m(P)\le-\kappa\},
\tag{MSL.6}
```

and

```math
\mathcal P_m^0(\kappa)
=
\{P:|\psi_m(P)|<\kappa\}.
\tag{MSL.7}
```

Then the signed mode shadow splits exactly:

```math
S_m(\psi)
=
S_m^+(\kappa)+S_m^-(\kappa)+S_m^0(\kappa),
\tag{MSL.8}
```

where each term is the sum of `q_m(P)psi_m(P)` over the corresponding family.

On the positive-sign region,

```math
\sum_{P\in\mathcal P_m^+(\kappa)} [q_m(P)]_+
\ge
\sum_{P\in\mathcal P_m^+(\kappa)} [q_m(P)\psi_m(P)]_+.
\tag{MSL.9}
```

This is the only automatic positive-carrier readout.

## 3. Why the automatic readout is insufficient

The negative-sign region can produce a positive signed mode readout from a
negative local source:

```math
\psi_m(P)=-1,
\qquad
q_m(P)=-A,
\qquad
A>0.
\tag{MSL.10}
```

Then

```math
q_m(P)\psi_m(P)=A,
\tag{MSL.11}
```

while

```math
[q_m(P)]_+=0.
\tag{MSL.12}
```

Thus the positive part of the mode projection is not controlled by the scalar
positive native carrier unless negative-test source is routed to a retained
signed partner, a sink ledger, a donor ledger, or a legal exit.

The nodal region creates a second independent failure.  For any sequence
`epsilon_m -> 0`, take selected packet source supported where

```math
|\psi_m(P)|\le\epsilon_m.
\tag{MSL.13}
```

The scalar carrier

```math
\sum_P [q_m(P)]_+
\tag{MSL.14}
```

can remain positive while the mode shadow contribution obeys

```math
|S_m^0(\kappa)|
\le
\kappa\sum_{P\in\mathcal P_m^0(\kappa)} |q_m(P)|.
\tag{MSL.15}
```

For the source-mode readout direction, this means the mode test can lose source
visibility near its nodal set.  A bounded geometric sign partition does not
prevent terminal source from concentrating in the nodal tube.

## 4. Conditional theorem

`ModeSignCoherentShadowLocalization.A` follows from the following three inputs.

First, a bounded sign partition:

```math
\mathcal F_m^{sel}
=
\mathcal P_m^+(\kappa)
\cup
\mathcal P_m^-(\kappa)
\cup
\mathcal P_m^0(\kappa),
\tag{MSL.16}
```

with bounded overlap, same-fluid packet ancestry, and legal compatibility with
the selected source shadow.

Second, nodal-zone source evacuation:

```math
\sum_{P\in\mathcal P_m^0(\kappa)} |q_m(P)|
\le
\operatorname{Legal}_{m,\kappa}
 + o_m(1).
\tag{MSL.17}
```

Third, negative-mode sink routing:

```math
\sum_{P\in\mathcal P_m^-(\kappa)} [q_m(P)\psi_m(P)]_+
\le
\operatorname{Sink}_{m,\kappa}
+\operatorname{Legal}_{m,\kappa}
+o_m(1),
\tag{MSL.18}
```

where `Sink_{m,kappa}` is paid by retained signed partners, donor depletion, or
the same minimal-chain projected residue identity used on Door 1.

Under `(MSL.16)`--`(MSL.18)`,

```math
[S_m(\psi)]_+
\le
M_m^+
+\operatorname{Sink}_{m,\kappa}
+2\operatorname{Legal}_{m,\kappa}
+o_m(1).
\tag{MSL.19}
```

So the mode-sign localization theorem is conditionally true after the nodal
and negative-side defects are paid.

## 5. Current input gap

The current Door 2 inputs do not prove `(MSL.17)` or `(MSL.18)`.

Finite local source mass allows terminal concentration on the nodal zone of a
sign-changing mode test.  Smoothness or finite dimensionality of the test
controls the geometry of the nodal set, but it does not by itself give absolute
continuity of the selected source measure with respect to distance from that
set.

Likewise, the negative-mode sink in `(MSL.18)` is the same signed-current
mismatch already exposed on Door 1.  It is paid only after the same-shadow
signed saturation or minimal-chain projected residue identity is available.

Thus the exact reduction is

```math
\boxed{
\text{ModeSignCoherentShadowLocalization.A}
\Leftarrow
\text{BoundedModeSignPartition.A}
+
\text{NodalZoneSourceEvacuation.A}
+
\text{NegativeModeSinkRouting.A}.
}
\tag{MSL.20}
```

The first input is formal once a fixed finite smooth mode atlas and bounded
packet overlap are installed.  The live mathematical gaps are
`NodalZoneSourceEvacuation.A` and `NegativeModeSinkRouting.A`.

## Verdict

`ModeSignCoherentShadowLocalization.A` is not a free consequence of finite mode
tests.  It splits into a mostly geometric bounded-sign partition plus two real
source-accounting requirements: nodal-zone source evacuation and negative-mode
sink routing.

This means the Door 2 source-mode readout does not yet close.  Its sign-changing
mode tests add a genuine nodal/sink visibility problem on top of the Door 1
same-shadow signed-current identity.
