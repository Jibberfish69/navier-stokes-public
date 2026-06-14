# MPP One-Sided Pair-Weight Defect After ASAC

Date: 2026-05-06

Status: theorem-facing improvement; replaces the over-strong absolute
`PairWeightFlattening.A` target on the positive terminal source consumer.

Purpose: avoid proving an unnecessary absolute pair-weight flattening theorem.
The terminal source wall consumes the positive selected source.  For that
one-sided consumer, the positive pair-weight mismatch is an ASAC-typed active
alignment cost, while the negative mismatch helps the signed counter-edge.

## 0. Why the old target was too strong

`PairWeightFlattening.A` asks for:

```math
\sum_{e=(P,P')}
\int |W_P-W_{P'}|\,|J_e|\,dt
\le o_N(1)+Loss_{legal}.
\tag{PW.1}
```

This is an absolute total-variation estimate.  It is not what the positive
terminal source consumer needs.  The live source wall only needs to control:

```math
\sum_{P\in \mathcal F_N}
\int [W_P\,\operatorname{div}J(P)]_+\,dt.
\tag{PW.2}
```

Trying to prove `(PW.1)` discards the sign structure and returns to the
scale-critical source wall.  The correct post-ASAC object is one-sided.

## 1. Edge-pair algebra

Let `e=(P'\to P)` be a signed source-current edge with bare skew partner
`e^*=(P\to P')`.  Write:

```math
J_{e^*}=-J_e
```

before terminal weights, lifting, and legal residuals.  The weighted paired
contribution to the selected receiver is:

```math
W_PJ_e+W_{P'}J_{e^*}
=(W_P-W_{P'})J_e.
\tag{PW.3}
```

For the positive terminal source consumer, split:

```math
\big[(W_P-W_{P'})J_e\big]_+
\le
(W_P-W_{P'})_+[J_e]_+
+(W_{P'}-W_P)_+[-J_e]_+.
\tag{PW.4}
```

The second term is not a loss for the selected receiver.  It means the signed
partner carries the larger weight.  Once terminal signed saturation keeps that
partner in the usable ledger, it cancels or dominates the receiver-side
positive contribution.

Thus only the first term in `(PW.4)` is a genuine positive weight-defect
charge:

```math
\mathfrak D_+^{pair}
:=
\sum_e
\int
(W_P-W_{P'})_+[J_e]_+\,dt.
\tag{PW.5}
```

## 2. Identification with active alignment

On the lifted near-band / source-current normal form, the principal part of
`J_e` is the packet-local strain-production carrier:

```math
J_e^{prin}
:=
2^{2j}
\langle S_k(x_P,t)e_P,e_P\rangle |c_P(t)|^2,
\tag{PW.6}
```

with `k<j` in the legal lower-strain band and `P` the selected active high
packet.  The positive part of `(PW.6)` is exactly the active alignment term
priced by `ASAC.A` after packet normal form, source tether, and terminal limit
pass.

The factor `(W_P-W_{P'})_+` is a terminal source-wall weight.  It is bounded by
the receiver-side source weight already present in the ASAC carrier, up to the
fixed finite-collar constants:

```math
0\le (W_P-W_{P'})_+\le C_{LP}W_P.
\tag{PW.7}
```

Therefore `ASAC.A` gives:

```math
\boxed{
\mathfrak D_+^{pair}
\le
\mathrm{Legal}_{N,Q}^{ASAC}(W)+o_N(1).
}
\tag{PPWD}
```

Projected/cutoff/lifted residuals are handled by the existing
`ProjectedCutoffLedger.A` and legal collar ledgers.

This proves the new theorem:

```text
PositivePairWeightDefectCharge.A.
```

## 3. Positive terminal skew ledger

Define:

```text
TerminalPositiveSkewLedger.A
```

to mean that every selected positive terminal source-current contribution is
either:

```text
paired inside the same signed terminal ledger,
```

or:

```text
paid by ASAC, projected/cutoff legal loss, boundary/off-family loss, heat
action, donor depletion, or terminal Zeno residue exclusion.
```

Then:

```math
\boxed{
\begin{aligned}
&PositivePairWeightDefectCharge.A\\
&\quad+
TerminalSignedSaturation.A\\
&\quad+
ProjectedCutoffLedger.A\\
&\Longrightarrow TerminalPositiveSkewLedger.A.
\end{aligned}
}
\tag{TPSL}
```

Proof.  Pair each selected positive edge with its bare signed counter-edge.
If the counter-edge remains in the terminal ledger, use `(PW.3)` and `(PW.4)`.
The negative mismatch has the larger partner weight and is favorable.  The
positive mismatch is paid by `PositivePairWeightDefectCharge.A`.  If the
counter-edge exits the usable ledger, apply `TerminalSignedSaturation.A` to
route it to legal boundary/off-family/heat/residual loss.  Projected and
cutoff errors are paid by `ProjectedCutoffLedger.A`.  What remains is exactly
the positive terminal skew ledger.

## 4. Consequence for the post-ASAC frontier

The old branch said:

```text
PairWeightFlattening.A + ASAC.A + TerminalSignedSaturation.A
```

but `PairWeightFlattening.A` was an absolute estimate and too strong.  The
sharper branch is:

```text
PositivePairWeightDefectCharge.A + TerminalSignedSaturation.A.
```

The first term is now discharged by ASAC:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

Therefore the remaining signed-current primitive is no longer pair-weight
coherence.  It is:

```text
TerminalSignedSaturation.A / TerminalWeightedNoFreeSink.A.
```

If donor depletion supplies the internal-sink pricing, the closure reads:

```math
\boxed{
ASAC.A
+TerminalSignedSaturation.A
+TwoTowerDonorDepletion.A
+ProjectedCutoffLedger.A
\Longrightarrow
TerminalWeightedNoFreeSink.A.
}
\tag{TWNFS-ASAC}
```

## 5. Verdict

The post-ASAC edge has shrunk again.

Discharged:

```text
absolute pair-weight mismatch on the positive consumer, after replacing it by
the correct one-sided defect.
```

Still open:

```text
terminal signed-partner saturation / internal donor-sink depletion.
```

The exact remaining primitive is:

```text
TerminalSignedSaturation.A
```

or equivalently a donor theorem strong enough to prove the no-free-sink
pricing for legal internal same-fluid donor sinks.
