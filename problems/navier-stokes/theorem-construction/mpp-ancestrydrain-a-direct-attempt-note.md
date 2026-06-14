# MPP AncestryDrain.A Direct Attempt Note

## Status

Direct attempt on the drain side of the ancestry closure:

```math
\boxed{
AncestryDrain.A.
}
```

This note assumes the parent-measure layer has already produced a lawful
same-fluid source ancestry chain and tests whether installed finite reserves
force that chain to terminate.

## Target

Given a chain

```math
\cdots \to P^{-2}\to P^{-1}\to P^0
```

of legal same-fluid source-balanced pulse packets with comparable normalized
source/mix mass, prove that each step spends a positive amount of a finite
reserve or strictly decreases a bounded terminal rank:

```math
Reserve(P^{-m}\to P^{-m+1})\ge c_0>0,
```

or

```math
\mathcal R(P^{-m})\le \mathcal R(P^{-m+1})-\delta.
```

Then an infinite unpaid ancestry chain is impossible.

## Installed Reserve Test

The installed finite ledgers include raw energy dissipation, pressure/cutoff
ledgers, mixed-boundary ledgers, and already-separated active-square reserves.
They do not currently assign a positive cost to every legal parent step.

The local energy inequality gives a one-sided balance on each packet, but a
source-balanced parent step is exactly the case where the child source is
recreated by the predecessor rather than paid by a visible drop of local
energy.  Iterating the balance backward telescopes only if a fixed entrance
scale/time is reached or if each step has an installed quantized cost.  Neither
is supplied by the current terminal shrinking schedule.

## Rank Functional Test

A drain theorem could also use a bounded rank:

```math
\mathcal R(P)
```

measuring scale, source generation, material separation, or active coefficient
complexity.  The installed route does not contain such a monotone rank.  The
scale can shrink along the terminal schedule, the same-fluid labels can move
with transport, and the source residue can be comparable after each rescaling.

Thus there is no installed function that must strictly decrease on every legal
parent edge.

## Verdict

`AncestryDrain.A` is not installed by current finite reserves, local energy,
same-fluid transport, or shell scheduler data.

The exact replacement theorem is:

```math
\boxed{
BackwardDrainFunctional.A:
\quad
\text{construct a bounded ancestry rank or finite reserve that decreases/spends
on every legal source-parent edge.}
}
```

The two-tower donor-depletion formalization
`mpp-two-tower-donor-depletion-formalization-note.md` gives one precise
sufficient way to construct such a reserve:

```math
\boxed{
TwoTowerDonorDepletion.A
\Longrightarrow
BackwardDrainFunctional.A.
}
```

That note also records why the usual tower-flux identity is not enough: it does
not produce a finite scale-normalized donor reserve for every positive
source-parent edge.

The local tower-balance identity itself is no longer open.  The note
`mpp-two-tower-donor-balance-modulo-refill-note.md` proves the donor balance
modulo refill:

```math
\pi(P^-\to \mathrm{child}(P^-))
\le C_{drain}
\Delta E(P^-)+\pi(\mathrm{parent}(P^-)\to P^-)+\ell(P^-).
```

Thus the drain-side problem is sharpened to `RefillTreeWellFounded.A`: prove
that the refill ancestry cannot continue forever without reaching controlled
leaves or spending a finite scale-normalized reserve.

Without this new functional, the drain branch remains conditional.

The direct audit `mpp-backward-drain-functional-direct-audit-note.md` records
that no current route object supplies the needed bounded monotone ancestry rank
or quantized edge reserve.
