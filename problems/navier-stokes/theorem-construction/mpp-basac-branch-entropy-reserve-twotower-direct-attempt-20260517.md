# MPP BASAC Branch-Entropy Reserve / Two-Tower Donor-Depletion Direct Attempt

Date: 2026-05-17

## Status

Failed unconditional discharge from installed route inputs.

## Target

Prove a branch-complexity reserve strong enough to price diffuse legal same-fluid parent clouds:

```math
ScaleNormalizedBranchEntropyReserve.A
```

or the stronger donor form

```math
TwoTowerDonorDepletion.A.
```

A successful theorem would imply

```math
DiffuseParentCharge.A
\Longrightarrow
BASACSourceAncestryCompactness.A
\Longrightarrow
BASACTimeFaceAntiAtom.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A.
```

## Diffuse parent test

Let a terminal source child receive legal same-fluid parent contributions from `M` predecessor packets:

```math
\pi_P={1\over M}\sum_{\alpha=1}^{M}\delta_{P^-_\alpha}.
```

The positive child-feeding source is normalized by the exact mass identity:

```math
\pi_P(\mathsf{Pred}(P))=1.
```

Every bounded selector captures at most

```math
\sup_{|\mathcal C|\le B}\pi_P(\mathcal C)\le {B\over M}\to0.
```

Thus bounded parent concentration fails.

## Entropy-reserve attempt

The branch entropy is bounded by

```math
H(\pi_P)\le\log M,
```

with equality for the uniform `M`-child split.

The installed route ledgers are energy, local energy, pressure/cutoff losses, source-localization losses, residual-square controls, donor-balance ledgers, and ASAC-paid angular defect controls. None carries `H(\pi_P)` with a positive coefficient.

For diffuse amplitudes of size `M^{-1}`, quadratic ledgers scale as

```math
\sum_{\alpha=1}^{M}M^{-2}=M^{-1},
```

while the positive source sum is
```math
\sum_{\alpha=1}^{M}M^{-1}=1.
```
Thus residual-square and donor-energy costs decrease under legal diffuse splitting.

## Two-tower donor-depletion attempt

A two-tower theorem requires a fixed scale-normalized spend for each legal source-parent edge, or a convex reserve whose total grows with branch complexity.

Current donor-balance inputs telescope finite trees and pay finite/non-Zeno exits. Terminal Zeno diffusion can split source mass across arbitrarily many legal parents while making the quadratic cost per edge small. The installed balance laws track total energy and legal exits; they do not assign a fixed spend to every legal same-fluid parent edge.

## Bounded-overlap and ASAC checks

Bounded overlap controls how many selected child packets cover a spacetime point. It does not bound the incoming legal parent count for one child packet.

Zero ASAC defect removes the active-alignment / pair-weight leakage branch. It gives no branch-entropy reserve for legal same-fluid parent diffusion.

## Result

`ScaleNormalizedBranchEntropyReserve.A / TwoTowerDonorDepletion.A` remains open from installed route inputs.

The exact obstruction is:

```math
\boxed{
\sum_{\alpha=1}^M M^{-1}=1
\quad\text{while}\quad
\sum_{\alpha=1}^M M^{-2}=M^{-1}.
}
```

## Consequence

The remaining route entrance is a stronger produced rigid subclass of `B_ASAC` with an intrinsic time-face anti-atom or residue Liouville theorem.
