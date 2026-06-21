# MPP SourceWeightedTerminalAngularDepletion Solve Route

Date: 2026-05-17

Status: route choice and first obstruction test, not a discharge.

## Target

The sharpened primitive under `PositiveRemainderDepletion.A` is

```text
SourceWeightedTerminalAngularDepletion.A
```

for the native positive active carrier

```math
|w_j|^2 [e_j \cdot S_{<j}^{loc} e_j]_+.
```

The known conditional proof is:

```text
ASAC.A
+ ProjectedCutoffLedger.A
+ LegalBoundaryLedger.A
+ LocalDonorBalance.A
+ EntranceLeafDecay.A
+ ZenoSourceResidueRigidity.A
=> TerminalAngularMixing.A / AlignmentDecorrel.A
=> SourceWeightedTerminalAngularDepletion.A
=> PositiveRemainderDepletion.A.
```

Thus the live unpaid part is not the whole angular estimate. ASAC, legal
pieces, and finite/non-Zeno donor refill are already accounted for. The unpaid
part is the selected terminal no-free-sink Zeno branch.

## Route I Would Take

Do not try to prove another first-moment-to-square upgrade. The active-square,
Bellman, and amplitude-gain routes all return to the same missing reserve.

Do not try to extract super-`L^1_t` temporal residence directly from the current
`L^1_t` source ledger. The terminal atom model survives that information.

Instead, use the extra information carried by a failure of
`SourceWeightedTerminalAngularDepletion.A` after ASAC has already paid its
defect. A counterexample must be a terminal source-residue object with:

```text
same-fluid carrier fidelity,
no earlier selected source slice,
zero heat-time terminal support,
source-weighted positive angular alignment,
ASAC defect saturation,
no finite donor/refill exit,
no legal/cutoff/boundary exit.
```

That is a much narrower object than the generic ancient local suitable
source-residue class produced by the older Zeno compactness attempts.

## New Theorem Pair

The route is split into exactly two new lemmas.

### 1. TerminalNoFreeSinkEqualityClassProduction.A

If `SourceWeightedTerminalAngularDepletion.A` fails after the installed ASAC,
legal, cutoff, boundary, donor-balance, and entrance-decay payments are removed,
then the normalized terminal source-residue extraction belongs to an explicit
equality class

```text
B_ASAC
```

defined by the retained source-weighted angular carrier plus zero ASAC defect
and zero terminal no-free-sink escape.

This is a production theorem. It is not enough to name `B_ASAC`; the failure
sequence has to force membership in it.

### 2. ZenoResidueLiouville_B_ASAC.A

No nonzero ancient local suitable source-residue object lies in `B_ASAC`.

Equivalently, the simultaneous conditions

```text
positive terminal stretching,
source-weighted angular alignment,
ASAC saturation,
same-fluid terminal support,
no earlier source slice,
no legal/donor/refill escape
```

are incompatible with a nonzero residue.

Together these two lemmas give `ZenoSourceResidueRigidity.A` on the only branch
left by the conditional angular proof, hence close
`SourceWeightedTerminalAngularDepletion.A` and then `PositiveRemainderDepletion.A`.

## Why This Is The Right Pressure Point

The five May 17 completion attempts show that the other entrances are not lower
theorems from installed inputs:

```text
LPSC -> PRD,
Square -> ActiveShellSourceNormalize.A,
ASAG -> active-square reserve,
Zeno temporal anti-concentration -> TerminalSourceReverseHolder.A / L^p_t.
```

The equality-rigidity route is different because it uses information available
only after the post-ASAC reduction: failure of the source-weighted angular
estimate must saturate the same signed/one-sided alignment machinery that ASAC
already pays.

## First Obstruction Test

The follow-up
`mpp-asac-defect-measure-equality-class-production-20260517.md` installs the
first obstruction test:

```text
ASACDefectMeasure.A
```

It proves the equivalent compactness statement saying that post-ASAC failure
forces zero ASAC defect in the terminal residue, and it produces the explicit
terminal equality class:

```text
TerminalNoFreeSinkEqualityClassProduction.A.
```

The route now stops at the actual residue rigidity theorem:

```text
ZenoResidueLiouville_{B_ASAC}.A.
```

The bounded direct attempt
`mpp-zenoresidue-liouville-basac-direct-attempt-20260517.md` does not prove
that theorem from the installed inputs. It leaves the same exact burden, with
two sufficient proof interfaces:

```text
TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A
```

or

```text
B_ASAC.NoIncomingLicense.A + B_ASAC.AnisotropicBackwardUniqueness.A.
```

Equivalently, prove a non-Carleson temporal anti-concentration theorem such as
`TerminalSourceReverseHolder.A` / `UniformTemporalSourceIntegrability_p.A`, or
prove a class-specific no-incoming/backward-uniqueness theorem for `B_ASAC`.
Without that Liouville input, the equality-rigidity route does not close
`SourceWeightedTerminalAngularDepletion.A`; the surviving residue is only
CM-usable through the installed Part/Field sorting diagnostics.
