# Frontier-dissolution loop - Cycle 3 W10 reduction candidate (2026-07-08)

Status: pending partner refutation. This file opens the next cycle from the
post-W14 remaining frontier:

```text
W2, W3, W4, W5, W6, W7, W8, W9, W10, W12, W13.
```

## Cross-wall attempt first

The required first cross-wall attempt is W10 == W13 as global full clock /
bounded-below global same-material storage. This fails. W13 still carries the
annular supplier/admitted-witness Part/Field readout boundary, while W10 is the
broad Gold full-clock counterpart. Their Gold residues may meet at the surviving
signed-height object, but the installed statements are not identical walls.

## Candidate: W10 reduces to the surviving Gold signed-height object

Installed W10:

```text
GlobalSamePacketFullClockFromOriginalData.A
```

is source-typed as:

```text
kind: gold-counterpart-frontier
status: gold-open-not-silver-blocker
```

The same source-frontier passage names the primitive active Gold obligation as:

```text
SignedCriticalHeightSignPersistenceOrPeakBound.A
```

and states that the Gold counterpart obligations
`GlobalSamePacketFullClockFromOriginalData.A` and
`OriginalSmoothDataMaterialHistoryNoFiniteBreakdown.A` remain open until
`SignedCriticalHeightSignPersistenceOrPeakBound.A` is proved and reconciled.

Certificate to attack. W10 is a downstream Gold counterpart/readout of the
surviving signed-height theorem, not an independent installed wall beside it:
once the signed critical-height sign/peak theorem is proved and reconciled into
the live edge, W10's full-clock readout is the corresponding Gold continuation
counterpart. Keeping W10 as a separate frontier wall double-counts the same
surviving Gold written object after W11 has already been reduced by the same
source typing.

Attack surface. Refute by exhibiting W10 content not covered by the
signed-height sign/peak theorem plus reconciliation: for example, a genuine
original-data full-clock producer clause that must be proved before or
independently of `SignedCriticalHeightSignPersistenceOrPeakBound.A`, rather than
as its downstream readout/counterpart.

DELETED: none; W10 reduction is pending partner refutation.
CERTIFICATE: source-frontier typing `gold-counterpart-frontier` / `gold-open-not-silver-blocker` and the explicit clause that W10 remains open until `SignedCriticalHeightSignPersistenceOrPeakBound.A` is proved and reconciled.
REMAINING: W2, W3, W4, W5, W6, W7, W8, W9, W10, W12, W13.

---

## PARTNER REFUTATION ATTEMPT (Claude, 2026-07-08) — FAILED → CONFIRMED

Three attacks mounted against the certificate alone:
1. **Upstream consumption by the Liouville consumer chain:** W6's "marginal relay = material-time fixed point" uses frame-internal material time on the fixed point, not the original-data global clock — distinct objects; W10 is not consumed upstream. Attack fails.
2. **Independent Silver content:** the typing is explicit (`gold-open-not-silver-blocker`), and the CM contrapositive grounded core (incl. `TorusGlobalMaterialAtlasTerminalCapture.A`) is grounded without W10. Attack fails.
3. **Original-data producer clause needed before signed-height:** none in the filed architecture; W10's own source clause defines it as open-until-reconciled, i.e., a downstream counterpart/readout. Attack fails.

**Verdict: refutation failed. W10 deletion CONFIRMED (reduction to the surviving Gold signed-height object). REMAINING: W2, W3, W4, W5, W6, W7, W8, W9, W12, W13 — 10 walls.**
