# MPP SourcePulse Two-Tower Zeno Refinement

## Status

Theorem-facing reduction for the ancestry side of

```math
OriginalSmoothData => SourcePulseExclusion.A.
```

This note does not close `SourcePulseExclusion.A`.  It removes the remaining
coarse donor-depletion wording from the live attack and proves that the
two-tower route has only one real terminal branch left: Zeno source-refill.

## Inputs Already Installed

The source-pulse ancestry route now has these installed pieces:

```math
LocalDonorBalance.A
```

from `mpp-two-tower-donor-balance-modulo-refill-note.md`, and

```math
EntranceLeafDecay.A
```

from `mpp-entrance-leaf-decay-nonzeno-proof-note.md`.

The first says that a donor tower feeds a child only by donor drain, legal loss,
or refill from its own parents.  The second says that any refill branch reaching
a fixed preterminal entrance surface has vanishing high-frequency leaf energy
as the terminal threshold goes to infinity.

## Lemma `SPTZ.A` (Non-Zeno Refill Is Discharged)

Let `T_N(P^0)` be a legal source-refill tree rooted at a terminal source-pulse
child packet.  If every infinite branch of `T_N(P^0)` has parabolic time length

```math
\sum_m r_m^2=\infty,
```

or if every finite truncation reaches a fixed preterminal entrance surface,
then the tree cannot carry the source-pulse lower bound.

### Proof

Apply `LocalDonorBalance.A` to a finite truncation.  Interior refill terms
telescope, leaving boundary leaf energy plus legal losses.  On a non-Zeno
branch the backward heat-time sum reaches a fixed preterminal entrance surface.
`EntranceLeafDecay.A` makes the unpaid boundary leaf energy
`\mathrm{Leaf}_N=o_N(1)`.  The legal losses are charged to the source-parent
packet.  If the source-pulse child carries normalized lower mass
`m_{\mathrm{src}}>0`, the contradiction uses the explicit threshold

```math
\mathrm{Leaf}_N\le \frac12 m_{\mathrm{src}}.
```

Above that threshold, donor-balance accounting cannot produce the fixed child
mass. `\square`

## Lemma `SPTZ.B` (Failure Forces Terminal Zeno)

If the two-tower ancestry route still fails after the installed local balance
and entrance decay, then there is a legal same-fluid source-refill branch

```math
\cdots -> P^{-2} -> P^{-1} -> P^0
```

with heat scales `r_m downarrow 0` and

```math
\sum_m r_m^2<\infty,
```

carrying nonzero inherited localized positive pre-Cauchy source mass.

### Proof

By `SPTZ.A`, every non-Zeno branch is paid.  A remaining counterexample cannot
be finite, because finite-tree donor balance telescopes to entrance leaves and
legal losses.  It therefore contains an infinite terminal branch.  The branch
cannot have divergent heat-time length, again by `SPTZ.A`.  Hence its heat-time
length is summable and its radii shrink to the terminal endpoint.  Passing to
the charged child branch preserves the normalized source-pulse lower mass, so
the terminal Zeno branch inherits nonzero localized positive pre-Cauchy source
mass. `\square`

## Closing Package `SPTZ.C`

The exact conditional closure is:

```math
LocalDonorBalance.A
+
EntranceLeafDecay.A
+
[
  LocalPositiveSourceCarleson.A
  \vee
  (ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A)
]
=> SourcePulseExclusion.A.
```

### Proof

Assume `not SourcePulseExclusion.A` and pass to the localized source-pulse core.
The ancestry route gives a legal source-refill tree rooted at a selected child
pulse.  `LocalDonorBalance.A` and `EntranceLeafDecay.A` remove every finite or
non-Zeno tree by `SPTZ.A`, so `SPTZ.B` gives a terminal Zeno branch with
nonzero inherited source mass.

If `LocalPositiveSourceCarleson.A` holds, the selected Zeno branch is a
bounded-overlap same-fluid terminal family, and its inherited positive
pre-Cauchy source mass is bounded by `o_N(1)` plus legal losses.  This
contradicts the source-pulse lower bound.

If `ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A` holds, compactness places the
same Zeno branch in the named rigid class `B`, and the Liouville theorem forces
the inherited source residue to vanish.  This also contradicts the source-pulse
lower bound.

Thus either package rules out the only branch left by donor-balance
telescoping, proving `SourcePulseExclusion.A`. `\square`

## Consequence For The Live Frontier

`TwoTowerDonorDepletion.A` should no longer be treated as the sharp selected
next attack.  The donor-balance half and the non-Zeno entrance half are already
accounted for.  The active ancestry-side burden is the terminal Zeno closing
package:

```math
LocalPositiveSourceCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

Both remain supplier-side work for `SourcePulseExclusion.A`; neither is a new
Pack, Part, or Field face unless its failure is separately sorted by the
installed CM diagnostics.
