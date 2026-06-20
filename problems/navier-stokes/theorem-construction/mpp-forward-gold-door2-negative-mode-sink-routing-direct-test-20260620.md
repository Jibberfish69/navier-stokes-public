# Door 2 Negative-Mode Sink Routing Direct Test

Date: 2026-06-20

## Status

Direct child test complete.  `NegativeModeSinkRouting.A` is not an independent
Door 2 supplier.  It is the Door 2 sign-changing version of the same signed
source-current saturation problem already exposed on Door 1.

The finite-chain part is paid by the existing donor-graph decomposition once
the signed mode identity is available on the same selected shadow.  The only
unpaid branch is the same infinite terminal Zeno donor chain / minimal-chain
residue branch.

## 1. Target under test

On the negative side of a mode test,

```math
\mathcal P_m^-(\kappa)
=
\{P:\psi_m(P)\le-\kappa\},
\qquad
0<\kappa<1,
\tag{NMS.1}
```

a positive signed mode contribution is carried by a negative source:

```math
[q_m(P)\psi_m(P)]_+
=
[-q_m(P)]_+|\psi_m(P)|
\qquad(P\in\mathcal P_m^-(\kappa)).
\tag{NMS.2}
```

The native positive carrier sees `[q_m(P)]_+`, so `(NMS.2)` is invisible unless
the negative source is routed to a retained positive partner, a legal exit, or a
donor/sink ledger.

The desired estimate is

```math
\sum_{P\in\mathcal P_m^-(\kappa)}
[q_m(P)\psi_m(P)]_+
\le
\operatorname{Sink}_{m,\kappa}
+\operatorname{Legal}_{m,\kappa}
+o_m(1),
\tag{NMS.3}
```

where the sink term is paid by retained signed partners or donor depletion.

## 2. The immediate countermodel

With one selected packet,

```math
\psi_m(P)=-1,
\qquad
q_m(P)=-A,
\qquad
A>0,
\tag{NMS.4}
```

the negative-mode contribution is

```math
[q_m(P)\psi_m(P)]_+=A,
\tag{NMS.5}
```

but the native positive carrier on that packet is

```math
[q_m(P)]_+=0.
\tag{NMS.6}
```

Thus `NegativeModeSinkRouting.A` cannot be proved by pointwise sign algebra.
It requires a signed-current accounting theorem.

## 3. Donor graph reduction

Assume the signed mode shadow identity has been installed on the same selected
packet family.  Each negative-mode sink contribution in `(NMS.2)` creates an
obligation to find the matching signed partner of that local pre-Cauchy current.

There are three cases.

1. The partner is retained on the same terminal ledger.  Then the sink is paid
   by the retained signed partner.

2. The partner exits through pressure, cutoff, collar, projection, lifting, or
   another declared legal spill.  Then the sink is paid by
   `Legal_{m,kappa}`.

3. The partner moves into another donor packet.  Then the obligation is pushed
   one edge backward in the donor graph.

For any finite donor chain, the obligations telescope and end in case 1 or
case 2.  This gives

```math
\sum_{\text{finite chains}}
[q_m(P)\psi_m(P)]_+
\le
\operatorname{RetainedPartner}_{m,\kappa}
+\operatorname{Legal}_{m,\kappa}
+o_m(1).
\tag{NMS.7}
```

So finite negative-mode sink routing is not a new obstruction.

## 4. The only surviving branch

The unproved case is an infinite donor chain accumulating at the terminal
time/scale:

```math
P_0\leftarrow P_1\leftarrow P_2\leftarrow\cdots.
\tag{NMS.8}
```

That branch is exactly the same object as the Door 1 terminal signed-saturation
obstruction, now weighted by the sign-changing mode test.  It is paid only by a
same-shadow minimal-chain projected residue identity, a no-free terminal Zeno
donor-chain theorem, or a source-square/no-waste reserve strong enough to
charge the infinite chain.

Thus

```math
\boxed{
\text{NegativeModeSinkRouting.A}
\Leftarrow
\text{ModeProjectedMinimalChainResidueIdentity.A}
+
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{NMS.9}
```

Equivalently, it is paid by the Door 1 `TerminalSignedSaturation.A` mechanism
after the mode test is admitted as a legal same-shadow signed test.

## Verdict

`NegativeModeSinkRouting.A` is not a separate Door 2 route.  Its finite donor
part is paid by the same donor-graph decomposition used for terminal signed
saturation.  Its infinite part is the same terminal Zeno donor-chain obstruction.

Therefore the Door 2 mode-sign split has no new sink endpoint.  The negative
mode side merges back into Door 1 through `TerminalSignedSaturation.A` /
`NoFreeTerminalZenoDonorChain.A` / `ModeProjectedMinimalChainResidueIdentity.A`.
