# Door 1 No Free Terminal Zeno Donor Chain

Date: 2026-06-18

Status: Door 1 reduction; `TerminalSignedSaturation.A` is reduced to the
infinite terminal Zeno donor-chain atom.  The atom is not discharged from
installed inputs.

2026-06-18 continuation: `mpp-forward-gold-door1-minimal-zeno-donor-chain-trace-dichotomy-attempt-20260618.md`
tests the atom directly.  The new sharpened pressure point is
`MinimalZenoTerminalTraceCompactness.A`; if terminal trace compactness fails,
the failure must become visible as either `MinimalChainProjectedResidueIdentity.A`
on the nonzero-flux side or `MinimalZenoProfileProduction.A` on the zero-flux
Door 2 side.

Role: continue the Door 1 proof after the finite signed-current accounting has
been reduced to explicit signed-payment, legal-loss, and donor-telescoping
hypotheses.

## Target

The enclosing Door 1 theorem is

```math
\boxed{
\text{TerminalSignedSaturation.A}
}
\tag{NZD.1}
```

equivalently

```math
\boxed{
\text{InternalDonorSinkDepletion.A}.
}
\tag{NZD.2}
```

The edgewise target is

```math
d\pi^+(e)
\le
d\pi^-(e^*)+d\mathcal D_{\mathrm{legal}}(e),
\qquad
\sum_e d\mathcal D_{\mathrm{legal}}(e)<\infty.
\tag{NZD.3}
```

Every selected positive terminal source edge must either keep its signed
counter-edge or pay a finite legal/donor cost.

## Checked source state

The governing prior no-free-sink surface is

```text
mcp-terminalzenorefillnofreesink-a_ind-0238bb3507.md
```

It agrees with the current Door 1 reduction:

```text
LocalDonorBalance.A,
EntranceLeafDecay.A,
legal exits,
and retained signed partners only after
ASAC.A + PositivePairWeightDefectCharge.A
with the packet-residual, no-incoming, and backward-uniqueness inputs.
```

Under those hypotheses the finite branches are paid.  Without the ASAC/sign
payment hypotheses, the retained signed-partner branch is still an active
same-witness signed-payment gate, not part of the terminal Zeno refill atom.

The post-ASAC donor/no-free-sink surface

```text
mpp-terminal-weighted-no-free-sink-after-asac-20260506.md
```

states the same implication:

```math
\begin{aligned}
&\text{ASAC.A}
+\text{ProjectedCutoffLedger.A}
+\text{LegalBoundaryLedger.A}\\
&\quad+
\text{LocalDonorBalance.A}
+\text{EntranceLeafDecay.A}
+\text{ZenoSourceResidueRigidity.A}\\
&\Longrightarrow
\text{TerminalWeightedNoFreeSink.A}.
\end{aligned}
\tag{NZD.4}
```

Thus finite donor depletion is removed from the blocker list only under the
displayed post-ASAC hypotheses.  If those inputs are absent, the blocker list
still contains the retained signed-partner payment gate.

## Donor graph decomposition

Build a directed graph:

```text
vertices = terminal active packets,
edges = signed source-current from donor to receiver.
```

For a selected positive terminal edge

```math
e=(D\to R),
\tag{NZD.5}
```

there are three cases.

### 1. Retained signed partner

The signed counter-edge `e^*` remains in the same terminal ledger.  Bare
antisymmetry gives the pair.  The one-sided mismatch is paid only under proved
`ASAC.A` with the residual/no-incoming/backward-uniqueness inputs and

```math
\text{PositivePairWeightDefectCharge.A}.
\tag{NZD.6}
```

Without those hypotheses, this is not a resolved finite graph case.

### 2. Legal exit

The counter-edge exits through pressure, cutoff, collar, projection, boundary,
off-family spill, or another declared legal channel.  This is paid by the legal
ledgers, including

```math
\text{ProjectedCutoffLedger.A}.
\tag{NZD.7}
```

### 3. Internal donor

The counter-edge moves into another internal donor packet.  Follow the donor
chain backward.  If the chain is finite or reaches a fixed preterminal entrance
surface, then

```math
\text{LocalDonorBalance.A}
+
\text{EntranceLeafDecay.A}
\tag{NZD.8}
```

telescopes the donor tree and pays the finite branch.

Thus:

```math
\boxed{
\text{TerminalDonorGraphDecomposition.A}
}
\tag{NZD.9}
```

is conditional at the current route resolution:

```math
\text{ASAC.A}
+\text{PositivePairWeightDefectCharge.A}
+\text{ProjectedCutoffLedger.A}
+\text{LegalBoundaryLedger.A}
+\text{LocalDonorBalance.A}
+\text{EntranceLeafDecay.A}
\Longrightarrow
\text{TerminalDonorGraphDecomposition.A}.
\tag{NZD.9a}
```

The finite graph cases leave the hard theorem only after these inputs are
actually supplied.

## Remaining atom

After `(NZD.6)`--`(NZD.8)` and the hypotheses in `(NZD.9a)` are supplied, the
only branch not paid is an infinite same-fluid donor chain accumulating at the
terminal time/scale:

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty,
\tag{NZD.10}
```

with inherited selected positive native source residue.

This is the current name:

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{NZD.11}
```

It is the Door 1 version of the older

```math
\text{TerminalZenoRefillNoFreeSink.A}_{ind}.
\tag{NZD.12}
```

## Exact implication

The Door 1 implication is:

```math
\boxed{
\text{TerminalDonorGraphDecomposition.A}
+
\text{NoFreeTerminalZenoDonorChain.A}
\Longrightarrow
\text{TerminalSignedSaturation.A}.
}
\tag{NZD.13}
```

Once `TerminalDonorGraphDecomposition.A` is supplied by the checked finite
edge-partition, legal ledgers, signed-payment hypotheses, and donor telescoping,
the live Door 1 blocker is `NoFreeTerminalZenoDonorChain.A`.  Before that
payment is supplied, the retained signed-partner gate remains a separate active
Door 1 burden.

## Internal forks of `NoFreeTerminalZenoDonorChain.A`

The older surface gives the noncircular ways to close the terminal Zeno chain.

### Source-control fork

```math
\boxed{
\text{LocalPositiveSourceCarleson.A}
}
\tag{NZD.14}
```

or equivalently at this route resolution

```math
\boxed{
\text{PositiveRemainderDepletion.A}.
}
\tag{NZD.15}
```

This pays the selected positive pre-Cauchy source on the same terminal family.

### Active-reserve fork

```math
\boxed{
\text{PositiveActiveCarlesonReserve.A}.
}
\tag{NZD.16}
```

This pays the selected source-current by an independent scale-critical active
reserve before the terminal refill branch needs rigidification.

### Rigid-Zeno fork

```math
\boxed{
\text{ZenoBoundedClass}_{B}\text{.A}
+
\text{ZenoResidueLiouville}_{B}\text{.A}.
}
\tag{NZD.17}
```

The compactness half is available as `ZenoCompactnessExtraction.A`, but the
installed inputs do not produce a rigid ancient class `B` strong enough for the
residue Liouville theorem.

## Door 1 / Door 2 merge

This is where Door 1 begins to touch Door 2.  Door 1's last unpaid donor branch
is an infinite terminal Zeno chain.  Door 2's production problem is to freeze
and rigidify a zero-flux Zeno profile.  Both now ask for a theorem that turns
Zeno ancestry into either a source-control budget or a rigid residue class.

The shared pressure point is:

```math
\boxed{
\text{terminal Zeno ancestry cannot carry nonzero selected native source
residue invisibly.}
}
\tag{NZD.18}
```

## Verdict

`TerminalSignedSaturation.A` is not proved outright.

The current Door 1 frontier is:

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{NZD.19}
```

Its internal forks are:

```math
\boxed{
\text{LocalPositiveSourceCarleson.A / PositiveRemainderDepletion.A}
}
\tag{NZD.20}
```

or

```math
\boxed{
\text{PositiveActiveCarlesonReserve.A}
}
\tag{NZD.21}
```

or

```math
\boxed{
\text{ZenoBoundedClass}_{B}\text{.A}
+
\text{ZenoResidueLiouville}_{B}\text{.A}.
}
\tag{NZD.22}
```
