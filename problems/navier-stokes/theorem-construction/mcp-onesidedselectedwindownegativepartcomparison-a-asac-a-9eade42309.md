# OneSidedSelectedWindowNegativePartComparison.A attempt

## Status

Failed unconditional discharge from installed inputs.  The one-sided comparison is advanced past the old pair-weight obstruction by ASAC, but the remaining no-free-sink branch is the terminal Zeno source-refill atom.

## Target

Install a same-window comparison saying every selected positive source edge has a same-ledger negative partner or a legal payment:

```math
\sum_{e\in\mathcal E_N}\int [J_e]_{+,sel}\,dt
\le
C\sum_{e\in\mathcal E_N}\int [J_{e^*}]_{-,sel}\,dt
+Drain_{parent}+Loss_{legal}+o_N(1).
```

The exact downstream claim is: a theorem excluding the terminal Zeno
source-refill atom gives the negative-part comparison needed to turn signed
cancellation into positive-source depletion.

## Installed post-ASAC correction

Raw paired skewness gives

```math
J_{e^*}=-J_e.
```

Terminal weights create a defect

```math
(W_P-W_{P^-})J_e.
```

The absolute flattening target is stronger than the positive source consumer needs.  The needed one-sided positive pair-weight defect is

```math
\sum_e\int (W_P-W_{P^-})_+[J_e]_+dt.
```

The ASAC surface pays this object:

```math
ASAC.A\Longrightarrow PositivePairWeightDefectCharge.A.
```

Thus the pair-weight mismatch is no longer the live obstruction for the positive branch.

## Remaining branch

After ASAC, projected-cutoff and boundary ledgers, and finite donor/refill telescoping, the remaining bad case is an internal legal same-fluid donor sink feeding the terminal receiver.  This is exactly

```math
TerminalWeightedNoFreeSink.A.
```

The installed reduction is

```math
ASAC.A
+ProjectedCutoffLedger.A
+LegalBoundaryLedger.A
+LocalDonorBalance.A
+EntranceLeafDecay.A
+ZenoSourceResidueRigidity.A
\Longrightarrow
TerminalWeightedNoFreeSink.A.
```

Therefore the requested one-sided comparison follows conditionally from ZenoSourceResidueRigidity.A.

## Obstruction

The unconditional proof of the comparison requires exclusion of a terminal
source-refill branch with no earlier negative partner and no finite donor
depletion.  That is the Zeno branch.  Current inputs reduce it to

```math
TemporalNonAtomicSource.A
```

by a non-Carleson mechanism, or to a direct source reserve.

## Verdict

The one-sided selected-window negative-part comparison closes conditionally:

```math
ASAC.A+legal\ ledgers+donor\ ledgers+ZenoSourceResidueRigidity.A
\Longrightarrow
OneSidedSelectedWindowNegativePartComparison.A.
```

The unconditional installation fails from current materials.  The remaining route is active-square / scale-critical tree Carleson reserve, or a new non-Carleson temporal anti-concentration theorem for the Zeno source residue.
