---
ns_viewer:
  theorem_id: cross-profile-monotone-ancestry-rank-terminal-support-direct-attempt-20260609
  status: failed-reduced-to-cross-profile-minimal-bad-ancestry-rigidity
  proof_role: direct_attempt_and_rank_support_exhaustion
  logical_landing_node: cross_profile_monotone_ancestry_rank
  edge_effect: "Tests whether a cross-profile monotone ancestry rank or terminal-support exclusion can forbid uncharged terminal Zeno accumulation. The pass shows scale rank, heat-time depth, raw energy, ASAC defect, label entropy, finite donor balance, and terminal-support exclusion do not close the branch; the remaining structural target is minimal-bad ancestry rigidity, not compactness alone."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cross-profile-zeno-source-residue-rigidity-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-zeno-ancestry-quantization-direct-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-temporal-nonatomic-source-noncarleson-frontier-20260516.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-time-face-anti-atom-hard-obstruction-certificate-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-minimal-bad-ancestry-compactness-direct-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-minimal-bad-residue-rigidity-reentry-20260609.md
  downstream_consequence: "CrossProfileMonotoneAncestryRank.A and CrossProfileTerminalSupportExclusion.A are not proved from installed inputs. The next target is CrossProfileMinimalBadAncestryRigidity.A: extract the canonical minimal bad cross-profile ancestry object and prove a new rigidity property strong enough to contradict the terminal positive source-residue atom."
---

# MPP CrossProfileMonotoneAncestryRank / TerminalSupportExclusion Direct Attempt

Date: 2026-06-09

Status: active-completion direct attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

The active target was:

```text
CrossProfileMonotoneAncestryRank.A
```

or equivalently:

```text
CrossProfileTerminalSupportExclusion.A.
```

The first theorem would produce a well-founded rank on legal cross-profile
source-refill ancestry that strictly decreases along uncharged terminal refill
edges. The second would prove that the extracted positive source-residue
measure cannot live only on the terminal time slice.

Either result would close the terminal Zeno branch left by
`CrossProfileZenoSourceResidueRigidity.A`.

## Rank Tests

### Scale rank

A Zeno ancestry has:

```math
r_k\downarrow0.
```

This orders the packets, but it does not give a quantized decrement. A chain
can shrink through infinitely many heat scales with no fixed integer resource
spent at each edge.

### Heat-time depth

The Zeno condition is:

```math
\sum_k r_k^2<\infty.
```

So heat-time depth is the wrong resource. An infinite ancestry can fit inside a
finite terminal time collar.

### Raw energy and dissipation

Raw energy and local dissipation are finite, but normalized source mass can sit
on shrinking packets. The installed local donor-balance identity telescopes
finite truncations and leaves the unpaid source at terminal leaves. It does not
give a fixed positive spend for every uncharged edge.

### ASAC defect

The surviving branch has zero ASAC defect. That channel has already been paid
or removed, so it cannot be the monotone rank for the remaining terminal atom.

### Same-fluid label entropy

Same-fluidity gives carrier fidelity. It does not give a finite label alphabet.
A legal same-fluid carrier can have diffuse parent clouds and many descendants
while preserving the same carrier identity.

## Terminal-Support Test

The desired support theorem is:

```math
\mu_\ast^{src}(B_R\times\{0\})=0.
```

The installed ledgers give finite `L^1_s` source mass and no-earlier selected
source support. They still allow the terminal concentration model:

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
\qquad
g_m(s)\,ds \rightharpoonup \delta_0.
```

This is exactly the hard terminal time-face anti-atom obstruction. Excluding it
requires a super-`L^1` temporal estimate, a source-Carleson reserve, a trace
absolute-continuity theorem, or another genuinely new terminal time-thickness
mechanism. None is installed by rank/support bookkeeping alone.

## Minimal-Bad Compactness Boundary

Minimal-bad ancestry compactness is available only as obstruction placement.
It extracts:

```text
B_ASAC^{closed,min}
```

or the cross-profile analogue: a canonical zero-radius terminal source-residue
object with paid legal exits, finite donor trees telescoped, no temporal spread,
no parent-charge quantum, no branch entropy drop, no produced rigid ancient
class, and no source-Carleson reserve.

Compactness alone does not contradict this object. The missing ingredient is
not minimality; it is rigidity.

## Result

`CrossProfileMonotoneAncestryRank.A` is not proved from installed inputs.

`CrossProfileTerminalSupportExclusion.A` is not proved from installed inputs.

The next honest structural target is:

```text
CrossProfileMinimalBadAncestryRigidity.A:
the canonical minimal bad cross-profile terminal ancestry object has an
additional rigidity property strong enough to forbid the native positive
terminal source-residue atom.
```

A successful theorem must add something not produced by compactness alone:
Type I control, finite global ancient energy, critical smallness, bounded
ancient vorticity/strain, self-similarity, symmetry, source-cancellation that
controls the native positive measure, temporal spread, spatial exhaustion, or a
new invariant of the minimal object.

## New Live Criticism

`NS-LIVE-20260609-175`: the cross-profile monotone-rank / terminal-support
target does not close from installed inputs. Scale rank has no quantized
decrement, heat-time depth is summable on Zeno chains, raw energy and donor
balance leave terminal leaves unpaid, zero ASAC defect cannot fund the survivor,
same-fluid label entropy has no finite alphabet, and terminal-support exclusion
is the same hard time-face anti-atom obstruction. Minimal-bad compactness only
places the canonical obstruction. The active loop must prove
`CrossProfileMinimalBadAncestryRigidity.A` or another genuinely new production
theorem before the Zeno branch can feed the CMI final gate.
