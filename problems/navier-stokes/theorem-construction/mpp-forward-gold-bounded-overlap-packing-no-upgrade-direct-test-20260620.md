# MPP Forward-Gold Bounded-Overlap Packing No-Upgrade Direct Test

Date: 2026-06-20

## Status

Direct packing/density upgrade test complete.  Bounded overlap, finite physical
participation, and ordinary parabolic packing do not upgrade the weighted
physical terminal ledger to the unweighted normalized heat-scale reserve.

The exact result is useful because it separates the already-closed
positive-radius case from the live heat-scale case.  If the selected packet
radii have a positive lower bound, the participation throttle kills a terminal
time-face atom.  If the selected packet radii shrink to zero, bounded overlap
still permits infinitely many order-one normalized packets at finite physical
cost.

## 1. The attempted upgrade

The surviving heat-scale branch has selected packets

```math
Q_j
=
B_{r_j}(x_j)\times(t_j-r_j^2,t_j],
\qquad
r_j\downarrow0.
\tag{BOP.1}
```

On each packet the normalized critical action is

```math
A_j
:=
\int_{-1}^{0}\int_{B_R}
\left(
|v_j|^3+|q_j|^{3/2}+|S(v_j)|^{5/2}
\right)\,dy\,ds.
\tag{BOP.2}
```

The forward-gold anti-atom needs an unweighted terminal reserve,

```math
\sum_j A_j<\infty
\quad\text{or at least}\quad
A_j\to0
\text{ on terminal tails.}
\tag{BOP.3}
```

The physical ledgers supply weighted versions.  For material stress work or
dissipation the weight is one radius:

```math
\sum_j r_j A_j<\infty.
\tag{BOP.4}
```

For normalized CKN cubic-pressure charge the physical weight is two radii:

```math
\sum_j r_j^2 C_j<\infty.
\tag{BOP.5}
```

The attempted packing upgrade is the implication

```math
\text{bounded overlap}
+
\text{weighted physical control}
\Longrightarrow
\text{unweighted normalized control.}
\tag{BOP.6}
```

This implication is false.

## 2. Positive radius is the easy case

If the packet radii have a positive lower bound,

```math
r_j\ge r_0>0,
\tag{BOP.7}
```

then the weighted material-stress bound immediately gives the unweighted bound:

```math
\sum_j A_j
\le
r_0^{-1}\sum_j r_jA_j.
\tag{BOP.8}
```

Similarly, the CKN physical bound gives

```math
\sum_j C_j
\le
r_0^{-2}\sum_j r_j^2C_j.
\tag{BOP.9}
```

This is the exact mathematical version of the fixed-radius participation
throttle: with a legal positive radius, the transfer rate cannot hide inside an
arbitrarily short terminal time interval without being paid by the same
physical ledger.

So the positive-radius branch is not the live obstruction.

## 3. Heat-scale radii destroy the upgrade

Take a dyadic heat-scale terminal stack

```math
r_j=2^{-j},
\qquad
Q_j
=
B_{r_j}(0)\times(T-r_j^2,T-r_{j+1}^2],
\qquad
j\ge1.
\tag{BOP.10}
```

The time intervals in `(BOP.10)` are disjoint, so the parabolic overlap
constant is one.  The spatial balls are nested, but no spacetime point belongs
to more than one \(Q_j\).

Set

```math
A_j=1
\qquad
\text{for every }j.
\tag{BOP.11}
```

Then the unweighted terminal reserve fails:

```math
\sum_jA_j=\infty.
\tag{BOP.12}
```

But the material-stress/dissipation physical ledger is finite:

```math
\sum_jr_jA_j
=
\sum_j2^{-j}
<\infty.
\tag{BOP.13}
```

The same example defeats the CKN physical ledger.  If \(C_j=1\), then

```math
\sum_jC_j=\infty,
\qquad
\sum_jr_j^2C_j
=
\sum_j2^{-2j}
<\infty.
\tag{BOP.14}
```

Thus bounded overlap and finite physical cost are compatible with infinitely
many order-one normalized heat-scale packets.

## 4. Why geometric packing cannot repair the weight

A parabolic cylinder has volume

```math
|Q_j|\simeq r_j^5.
\tag{BOP.15}
```

Finite overlap controls sums of physical integrals over the cylinders.  It
does not change the scaling relation between a physical integral and its
normalized charge.

For material stress work, dissipation, or packet energy depletion,

```math
\text{physical packet cost}
=
r_j\,
\text{normalized packet cost}.
\tag{BOP.16}
```

For CKN cubic-pressure charge,

```math
\text{physical packet cost}
=
r_j^2\,
\text{normalized CKN charge}.
\tag{BOP.17}
```

The missing implication would require a geometric theorem that removes
\(r_j\) or \(r_j^2\) from `(BOP.16)`-`(BOP.17)`.  Bounded overlap does not do
that.  It can prevent double-counting of the physical ledger, but it cannot
turn a summable weight sequence into a nonsummable unweighted one.

## 5. Exact consequence for the participation idea

The participation law is still the right ontology: a packet cannot receive,
retain, or shed energy outside the same pressure-viscosity-incompressibility
neighbor relation.

The exact calculus is:

```math
\text{positive radius}
\Longrightarrow
\text{weighted and unweighted ledgers are comparable,}
\tag{BOP.18}
```

while

```math
r_j\downarrow0
\Longrightarrow
\text{physical participation is discounted relative to normalized action.}
\tag{BOP.19}
```

So the forward-gold branch cannot be closed by saying that every annulus must
participate, or by adding bounded overlap to that statement.  The participating
annuli can all participate lawfully while their physical costs form a summable
Zeno series.

## 6. What would be strong enough

A valid upgrade must add one genuinely unweighted terminal hypothesis or prove
one from Navier-Stokes:

```math
\sum_j A_j<\infty,
\tag{BOP.20}
```

or

```math
\sum_j C_j<\infty,
\tag{BOP.21}
```

or a same-carrier source-square / critical-strain / strict no-waste theorem
that implies one of those bounds.

Equivalently, the branch needs one of:

```math
\begin{gathered}
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{UnweightedMaterialStressWorkCarleson.A},\\
\text{SelectedCriticalStrainCarleson.A},\\
\text{NormalizedCKNCarleson.A},\\
\text{SourceSquareReserve.A},\\
\text{NoFreeInfiniteMaterialZenoStressChain.A}.
\end{gathered}
\tag{BOP.22}
```

## Verdict

The bounded-overlap/packing route closes as a no-upgrade result:

```math
\boxed{
\text{bounded overlap}
+
\text{finite physical participation}
\not\Longrightarrow
\text{unweighted terminal critical-action reserve}.
}
\tag{BOP.23}
```

This does not solve the Navier-Stokes MPP.  It removes one more possible
shortcut and leaves the live gold obstruction unchanged but cleaner: the proof
must produce a genuinely unweighted terminal reserve, or route the retained
heat-scale pulse into the CM Part/Field witness machinery.
