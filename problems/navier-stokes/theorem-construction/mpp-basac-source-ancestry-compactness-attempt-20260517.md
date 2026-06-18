# MPP BASACSourceAncestryCompactness.A Direct Attempt

Date: 2026-05-17

## Status

Direct attempt on the lower atom isolated by
`mpp-basac-noincoming-source-drain-attempt-20260517.md`.

Outcome: not closed from installed inputs. The theorem is the correct missing
compactness statement, but current `B_ASAC` data still allow diffuse terminal
Zeno source ancestry.

## Target

Prove:

```math
\boxed{
BASACSourceAncestryCompactness.A
}
```

Statement:

```text
In the produced B_ASAC terminal source-residue class, a nonzero terminal source
charge cannot be represented by a diffuse legal same-fluid parent cloud
invisible to every bounded earlier selected source family. It must contain a
fixed negative-time selected source parent or produce a legal/donor/ASAC exit.
```

This would prove `BASACNoIncomingSourceDrain.A`, then
`ZenoResidueLiouville_{B_ASAC}.A`.

## Attempt 1: compactness of Radon source measures

The terminal source residue is locally finite as a Radon measure. That gives
compactness after passing to the terminal limit, but it does not give
compactness of the pre-terminal ancestry tree.

The missing step is stronger:

```text
nonzero terminal mass
=> nonzero mass in finitely many earlier selected parents at a fixed negative
   heat-time scale.
```

Weak convergence alone does not provide that. The model

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has unit mass, no stable mass on any fixed interval `s<-a`, and converges to a
terminal atom. Local Radon compactness therefore keeps the terminal charge but
does not create an earlier selected parent.

## Attempt 2: bounded-overlap same-fluid selection

Bounded overlap prevents double-counting of selected terminal packets. It does
not prevent the parent mass from spreading over more and more legal same-fluid
ancestors as the terminal time is approached.

The May 5 source-drain correction already gives the abstract obstruction:

```math
\pi_P={1\over M}\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad M\to\infty.
```

For every bounded selector size `B`,

```math
\sup_{|\mathcal C|\le B}\pi_P(\mathcal C)\le {B\over M}\to0,
```

while the total parent mass is \(\pi_P(\mathsf{Pred}(P))=1\). `B_ASAC` adds
zero ASAC defect and removes named exits, but it does not add a
square/Carleson reserve that dominates this diffuse parent measure.

## Attempt 3: no finite or non-Zeno donor-refill exit

The `B_ASAC` class rules out finite parent trees and non-Zeno refill. That is
useful bookkeeping, but it leaves exactly the terminal Zeno case:

```text
infinitely many legal same-fluid refills,
time supports accumulating at zero,
no fixed earlier selected source slice,
positive terminal source atom.
```

Thus the clause identifies the survivor rather than ruling it out.

## Attempt 4: zero legal / ASAC exits

The equality class removes legal/projected/cutoff/boundary exits and zeroes out
the ASAC-paid defect measure. Those are exits from the selected branch. They do
not bound the cardinality, depth, or square density of the remaining legal
source-parent cloud.

The diffuse cloud can be entirely legal and have zero ASAC defect. Therefore
zero exits do not imply ancestry compactness.

## Exact Stop

The direct attempt leaves a quantitative tree/no-incoming theorem:

```math
\boxed{
BASACSourceTreeCarleson.A
}
```

Statement:

```text
The legal same-fluid source-parent cloud feeding a B_ASAC terminal charge obeys
a scale-critical Carleson or transported-cylinder no-flux bound strong enough
to turn diffuse terminal Zeno ancestry into either a compact earlier selected
parent or a legal/donor/ASAC charge.
```

Equivalently, prove:

```text
TransportedCylinderNoFlux_{B_ASAC}.A
```

for the source-residue tangent class.

## Verdict

`BASACSourceAncestryCompactness.A` is not a consequence of the current installed
inputs. It is the right theorem shape, but it needs the missing quantitative
tree/no-incoming estimate:

```math
\boxed{
BASACSourceTreeCarleson.A
}
```

This is the conservative next theorem-facing target. The alternative branch is
a transported-cylinder no-flux theorem for the same `B_ASAC` source-residue
tangent class.
