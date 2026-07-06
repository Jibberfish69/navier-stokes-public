---
theorem_id: forward-gold-rigorous-quartic-far-strain-lemma-20260705
status: pde-tier-proof-of-quartic-far-strain-decay-upgrades-dilute-crowd-note-codex-gate-requested
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant goal / item 4a upgraded to PDE tier
authorship: >-
  Proof: Claude (Fable), 2026-07-05, in the duality/cancellation style
  of Codex's impulse-energy lower bound (same date). Physical story
  Thomas Birnie (no vorticity monopoles = participation's neutrality).
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dilute-crowd-monopole-vanishing-quartic-quiet-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-custody-impulse-energy-lower-bound-20260705.md
  - problems/navier-stokes/external-paper/eviction-production-filament-pair-notes-draft-20260705.md
completion_truth: >-
  PDE-tier lemma with full proof, upgrading the dilute-crowd note's
  multipole heuristic to a theorem. STATEMENT: let omega be an
  integrable vorticity field (each component the divergence of a
  compactly supported field, i.e. genuinely a curl), supported in
  B(x0, L), and u its Biot-Savart velocity. Then for |x - x0| = R >=
  2L: |grad u(x)| <= C L ||omega||_{L1} / R^4, with C universal.
  PROOF: (1) the total vorticity integral vanishes identically for
  compactly supported solenoidal fields - each component integrates a
  divergence; (2) the gradient kernel K2 of Biot-Savart obeys
  |K2(z)| <= C/|z|^3 and |grad K2(z)| <= C/|z|^4; (3) subtract the
  constant K2(x - x0) times the (vanishing) total vorticity from the
  convolution: grad u(x) = integral of [K2(x-y) - K2(x-x0)] omega(y)
  dy; (4) the mean value theorem on the kernel difference gives
  |K2(x-y) - K2(x-x0)| <= C |y - x0| / R^4 <= C L / R^4 on the
  support, for R >= 2L; (5) integrate. CONSEQUENCE: the dilute-crowd
  decision (quartic quiet, absolutely convergent interference sums,
  orientation-independent, nearest-neighbor dominated) now rests on a
  proved inequality with explicit constant structure (L times L1
  vorticity mass), valid for arbitrary debris and structure shapes -
  no filament model, no multipole formalism. The external paper's
  Proposition 3 is upgraded to this form. Codex gate requested on the
  kernel-difference constant chain and on the L1-vorticity hypothesis
  (whether the program's admissible families all carry finite L1
  vorticity per structure - filament-model structures do after core
  smoothing; state the smoothing convention). No closure claimed.
---

# Rigorous quartic far-strain decay

## Statement

Divergence-free omega supported in B(x0, L), integrable; u the
Biot-Savart field. For R = |x - x0| >= 2L:

|grad u(x)| <= C L ||omega||_{L1} / R^4.

## Proof

Total vorticity vanishes: each component of a compactly supported
curl integrates to zero. Write grad u as convolution with the
gradient Biot-Savart kernel K2, |grad K2(z)| <= C/|z|^4. Insert the
vanishing total: grad u(x) = int [K2(x - y) - K2(x - x0)] omega(y) dy.
Mean value theorem along the segment (all points at distance >= R/2
from the support for R >= 2L): the bracket is bounded by
C |y - x0| / R^4 <= C L / R^4. Integrate against |omega|.

## Consequences

Item 4a's decision is now theorem-backed at PDE tier: far strain of
any compact structure decays quartically with constant L times its
L1 vorticity mass; crowd interference sums converge absolutely with
no orientation assumption; nearest neighbors dominate. The paper's
Proposition 3 upgrades from multipole language to this lemma.
