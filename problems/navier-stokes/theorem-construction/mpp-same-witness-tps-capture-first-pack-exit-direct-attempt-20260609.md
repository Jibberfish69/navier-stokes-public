---
title: Same-Witness TPS Capture For First Pack Exit Direct Attempt
date: 2026-06-09
status: direct-attempt-open
loop_criticism_id: NS-LIVE-20260609-200
governing_program: "Exit(Q):=not Member(Q) through Pack_Q / Part_{N,Q} / Field_{N,r,Q}"
claim_boundary:
  logical_landing_node: SameWitnessTPSCaptureForFirstPackExit.A
  claim_status: not_proved
  edge_effect: "Tests the theorem atom exposed by NS-LIVE-20260609-199. The installed TPS and SG.4 surfaces work after a selector-good active-pair family and strip have already been chosen. They do not prove that the original smooth-data first Field-window support belongs to that family, and using positive active-pair thickness as the capture premise would assume the Pack-survival conclusion."
  downstream_consequence: "The TPS route cannot serve as the parent first-Pack-survival mechanism unless a separate same-witness terminal strip modulus is proved. The next theorem atom is SameWitnessTerminalStripModulusForFirstPackExit.A, or an equivalent non-alias theorem that prevents the original-data first Field-window support from being a zero-thickness terminal residue outside all selector-good active families. pdfs_final remains false."
evidence_refs:
  - problems/navier-stokes/theorem-construction/mpp-cfbundle-coercive-first-pack-survival-bridge-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-first-exit-nonalias-frontier-after-basac-density-failure-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-public-finality-source-time-cycle-pivot-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/tps-strong-bridge-sg-lemma-family.md
  - problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md
  - problems/navier-stokes/theorem-construction/mpp-no-genuine-exit-from-smooth-data-direct-attempt-20260525.md
---

# Direct Target

```text
SameWitnessTPSCaptureForFirstPackExit.A
```

Proposed statement:

```text
If original smooth data produce a first Field-window support terminal obstruction W_*,
then W_* is represented, on the same CM witness ledger, by a selector-good TPS
active-pair family to which SG.4 production applies.
```

If proved, the propagation would be:

```text
same first Field-window support W_*
=> W_* is captured by selector-good TPS active pairs
=> SG.4 / CF-bundle lower envelope applies to W_*
=> positive active-time thickness for W_*
=> OriginalSmoothDataPackSurvival.A.
```

# Source Check

The current TPS strong bridge has this shape:

```text
selector-good active-pair family + SG.4 production
=> good-pair renewal / barrier exclusion.
```

The selector-observability note sharpens the unresolved local burden: once the
one-sided defect budget is produced on a selector-good active-pair family,
`SG.4B` follows. The missing local theorem is selector calibration and
observability on that chosen family.

The public Clay first Pack wall has a different starting object:

```text
OriginalSmoothData => terminal Pack survival
```

or, equivalently, a theorem ruling out the first Pack Part/Field failure for the
same-solution terminal witness. The non-alias inventory says endpoint,
B_ASAC source residence, h/F, material/fixed readout, Pack.TTU,
minimal-bubble/cross-profile, and direct Clay bridge families have already
failed, cycled, or returned to this wall at installed-input resolution.

# Direct Attempt

Try to derive capture from the fact that `W_*` is a first Pack obstruction.

The best possible route would be:

```text
W_* is a same-solution first Pack terminal witness
=> W_* has a preterminal positive-scale active family
=> a selector-good active-pair subfamily survives
=> SG.4 production applies to that subfamily.
```

The first implication is exactly the missing content. A first Pack failure can
be a zero-radius or unpaid scale-critical terminal residue. In that case the
object under test is precisely the loss of positive terminal scale or
scale-critical tree control. It is not automatically a member of a
selector-good active-pair family with positive active-time thickness.

The TPS good-set machinery begins after selection. It can refine, expand, and
exclude shadowing for selected good pairs. It does not construct the original
CM Field-window support as one of those pairs. If the capture proof assumes a positive
active-pair strip, it has already assumed the Pack-survival fact it was meant
to prove.

# Falsification Model

The terminal strip model remains:

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

This model can carry finite local `L^1_s` mass while occupying vanishing
preterminal time thickness. A selector-good family can have strong expansion
away from that strip, and the first Field-window support can still be the unselected
terminal residue. The problem is not the quality of `SG.4` after selection; it
is the absence of a same-witness terminal strip modulus before selection.

# Result

`SameWitnessTPSCaptureForFirstPackExit.A` is not proved from the installed
TPS, SG.4, or first-exit inventory surfaces.

The next theorem atom is:

```text
SameWitnessTerminalStripModulusForFirstPackExit.A
```

or an equivalent non-alias theorem proving that the original-data first Pack
witness has positive preterminal active-time thickness on the same ledger. Such
a theorem would feed TPS capture, source-residence closure, or another Pack
survival mechanism. Without it, selected-good-family expansion remains support,
not Clay-facing Pack survival.

# New Live Criticism

`NS-LIVE-20260609-200`: same-witness TPS capture is not installed. The installed
TPS/SG.4 machinery applies after a selector-good active-pair family has been
chosen, while the first Pack obstruction from original smooth data may be a
zero-thickness terminal residue outside all such selected families. The next
direct theorem target is `SameWitnessTerminalStripModulusForFirstPackExit.A`,
or an equivalent non-alias theorem forcing positive active-time thickness for
the original-data first Field-window support. Keep `pdfs_final` false.
