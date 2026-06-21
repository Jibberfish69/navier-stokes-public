# MPP SourceReserveBirthCharge.A Direct Attempt

## Authority Cap - Superseded By CM Face Consumption

This direct attempt is retained as positive visibility / source-reserve proof-search evidence. Current CM authority is `mpp-source-reserve-birth-cm-face-consumption-20260525.md`: the scalar-pulse or signed-pair fail branch is consumed as Part/Field witness support for `Exit(Q):=not Member(Q)`. The unproved no-free-sink or active-height language here blocks only the positive-forward route.

Date: 2026-05-25

Status: Field-window support direct proof attempt; sharpens the first unproved atom and
does not certify Clay closure.

## Target

The Field-window support theorem needed for the Clay-closing route is:

```text
OriginalSmoothData => ScaleCriticalTreeCarleson.A.
```

After the no-genuine-exit reduction, this is the first concrete wall for
preventing `GenuineCMExit(T_*)` from original smooth data.

This note attacks that wall through the narrow source-reserve birth theorem:

```text
SourceReserveBirthCharge.A.
```

## Statement Tested

Let `W` be a first terminal same-fluid window where the donor-refill reserve
surplus is born, and write

```text
R_N(W) =
int_W sum_{k>N} 2^k (sum_{ell>k+4} D_ell(t))^2 dt.
```

The theorem needed is:

```text
SourceReserveBirthCharge.A:

[R_N(W) - (1-delta) R_N(Past(W)) - Loss_legal(W)]_+
<= Charge_N^native(W) + o_N(1),
```

where the native charge must land on the same retained terminal ledger as one
of:

1. Pack gain / legal packing payment;
2. Part participation failure;
3. licensed Field source charge;
4. terminal Zeno residue already sorted as Part/Field exit.

The charge cannot be a free new positive source budget.  It must either be
paid by installed same-ledger structure or become a Pack/that Part/Field failure
witness.

## Proof Attempt

Assume a retained positive-scale Pack candidate and suppose
`ScaleCriticalTreeCarleson.A` fails.  Choose a minimal terminal window `W`
where the surplus first appears:

```text
R_N(W) > (1-delta)R_N(Past(W)) + Loss_legal(W) + eta.
```

Decompose the reserve into:

```text
inherited past reserve
+ first-created native reserve
+ child residual reserve
+ legal loss reserve.
```

The inherited term is not new at `W`, so minimality and
`PastWindowReserveSeparation.A` can only leave the contracted piece
`(1-delta)R_N(Past(W))` plus legal losses.  The child residual term is the
normalized-adjoint / weighted residual already isolated by the reserve-chain
audits.  Legal, boundary, cutoff, and non-selected terms belong to
`Loss_legal(W)`.

Thus every remaining surplus is first-created native reserve:

```text
first-created native reserve >= c eta.
```

At this point the proof needs a real source-charge theorem.  The installed
ledgers do not prove payment of this first-created native reserve.  The scalar
short-pulse obstruction from the earlier reserve audits still
survives: first moment can go to zero while the scale-critical square reserve is
bounded below by `c_0>0`.

Therefore the direct proof does not close `SourceReserveBirthCharge.A` from the
current installed inputs.

## What The Attempt Proves

It proves the exact reduction:

```text
OriginalSmoothData=>ScaleCriticalTreeCarleson.A
reduces, after installed parent/past/residual/legal ledgers, to proving that
the first-created positive-scale native source-reserve surplus is paid or
becomes a Pack/that Part/Field failure witness.
```

Equivalently:

```text
Pack_Q
+ installed parent/past/residual/legal ledgers
+ SourceReserveBirthCharge.A
=> ScaleCriticalTreeCarleson.A.
```

The zero-scale terminal residue case is no longer a Pack-only exit.  It must be
typed without spending `not Pack_Q` as CM exit:

```text
terminal zero-radius donor ancestry with a pointwise original-NS record
=> not Part_{N,Q} / (Part, Dead);

terminal zero-radius donor ancestry with no original participation record
=> true not Pack_Q.
```

So the only surviving Pack no-exit subcase is retained positive-scale native
source-reserve birth.

## First Unproved Subclaim

The first unproved mathematical subclaim is:

```text
RetainedPositiveScaleNativeReserveBirthCharge.A:
every retained positive-scale first-created native donor-square reserve surplus
is either paid by same-ledger source geometry or forces Pack/that Part/Field failure.
```

Current equivalent entrances are:

```text
PositiveRemainderDepletion.A,
SourceWeightedTerminalAngularDepletion.A,
TerminalSourceReverseHolder.A,
UniformTemporalSourceIntegrability_p.A,
PositiveActiveCarlesonReserve.A,
or a rigid Zeno residue class plus residue Liouville theorem.
```

None is installed unconditionally from original smooth data.

## Referee Verdict

This is real progress in the proof search because it removes the ambiguity
around the Pack wall.  The open theorem is no longer "some source-wall thing."
It is the retained positive-scale first-created native reserve surplus.

It is not a Clay-ready proof.  Calling the MPP solved here is circular:
the missing charge theorem is exactly the analytic content needed to prevent
the first Pack exit from original smooth data.
