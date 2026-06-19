# MPP Forward-Gold Normalized CKN Carleson Packing Direct Test

Date: 2026-06-19

## Status

Direct test of the remaining shortcut after the CKN heat-scale calculation:
can bounded overlap, Vitali extraction, or ordinary finite \(L^3\)/pressure
mass upgrade CKN visibility into the unweighted normalized-charge Carleson
reserve?

No.  Packing controls the physical cubic measure

```math
\mu_{CKN}(Q)
:=
\int_Q(|u|^3+|p|^{3/2})\,dxdt.
\tag{NCP.1}
```

It gives a weighted sum of normalized charges:

```math
\sum_P r_P^2\,\mathcal C(Q(P))
\le C.
\tag{NCP.2}
```

The needed heat-scale anti-atom is the unweighted sum

```math
\sum_P\mathcal C(Q(P))\le C
\tag{NCP.3}
```

or terminal-tail decay of that sum.  The factor \(r_P^2\) cannot be removed by
same-scale bounded overlap or a covering lemma.

## 1. What bounded overlap actually gives

For a selected family \(\mathcal F\) with bounded overlap in physical
spacetime,

```math
\sum_{P\in\mathcal F}
\int_{Q(P)}
\left(|u|^3+|p|^{3/2}\right)
\le
C_{\rm ov}
\int_{\cup Q(P)}
\left(|u|^3+|p|^{3/2}\right).
\tag{NCP.4}
```

Since

```math
\int_{Q(P)}
\left(|u|^3+|p|^{3/2}\right)
=
r_P^2\mathcal C(Q(P)),
\tag{NCP.5}
```

bounded overlap gives `(NCP.2)`, not `(NCP.3)`.

This is enough to control physical cubic mass.  It is not enough to count
scale-normalized critical packets.

## 2. One packet per scale defeats unweighted summability

Let

```math
r_j=2^{-j},
\qquad
c_0\le \mathcal C(Q_j)\le C_0,
\tag{NCP.6}
```

with one terminal heat-scale packet at each dyadic scale.

Then

```math
\sum_j r_j^2\mathcal C(Q_j)
\le
C_0\sum_j2^{-2j}
<\infty,
\tag{NCP.7}
```

but

```math
\sum_j\mathcal C(Q_j)
\ge
c_0\sum_j1
=\infty.
\tag{NCP.8}
```

This counterexample is not claiming a constructed Navier-Stokes blowup.  It
shows the exact logical gap: finite physical CKN mass plus scale separation
does not imply unweighted normalized CKN Carleson control.

Same-scale bounded overlap is irrelevant to this gap, because the example has
only one active packet per scale.

## 3. Vitali covering does not add the missing factor

A Vitali or Besicovitch selection can produce a disjoint or bounded-overlap
subfamily.  That improves double counting of the physical measure.  It does not
change the density being summed.

For a finite measure \(\mu_{CKN}\), the selected cylinders obey

```math
\sum_j\mu_{CKN}(Q_j)<\infty.
\tag{NCP.9}
```

But normalized CKN charge is

```math
{\mu_{CKN}(Q_j)\over r_j^2}.
\tag{NCP.10}
```

A covering lemma does not turn finite \(\sum_j\mu_{CKN}(Q_j)\) into finite
\(\sum_j\mu_{CKN}(Q_j)/r_j^2\).  That would be a density-square or Carleson
theorem, not a packing theorem.

## 4. CKN partial regularity is consistent with a terminal point

The CKN singular-set conclusion is a size theorem for the singular set.  A
single terminal point can have zero parabolic one-dimensional measure.  Covering
that point by one cylinder of radius \(r\) has parabolic one-dimensional cost
of order \(r\), which tends to zero.

So CKN partial regularity is compatible with the endpoint object under
discussion:

```math
\text{one terminal Zeno point}
\quad\text{with}\quad
\limsup_{r\downarrow0}\mathcal C(Q_r)\ge\varepsilon_{CKN}.
\tag{NCP.11}
```

It detects the point.  It does not forbid the point.

## 5. Relation to the packet-tree scalar reserve

The earlier finite-pricing note proves that the packet/operator part of the
source-Carleson route is not the live obstruction.  It reduces the problem to
the scalar reserve

```math
\int
\sum_{k>N}
2^k
\left(
\sum_{\ell>k+4}D_\ell(t)
\right)^2dt
\le
o_N(1)+\text{legal losses}.
\tag{NCP.12}
```

The present CKN calculation is the physical-space version of the same gap.
Finite physical cubic mass is a first-moment statement.  The normalized
Carleson reserve asks for a scale-density statement.  The missing factor is
exactly what `(NCP.12)` was designed to provide.

Thus the two languages agree:

```math
\boxed{
\text{unweighted normalized CKN Carleson}
\quad\text{and}\quad
\text{ScaleCriticalTreeCarleson.A}
\text{ are the same missing reserve at this route resolution.}
}
\tag{NCP.13}
```

## Verdict

The bounded-overlap/packing route does not close the final heat-scale packet.

It proves only:

```math
\boxed{
\sum_P r_P^2\mathcal C(Q(P))<\infty.
}
\tag{NCP.14}
```

The forward-gold route needs:

```math
\boxed{
\sum_P \mathcal C(Q(P))<\infty
\quad\text{or terminal-tail decay.}
}
\tag{NCP.15}
```

The difference is exactly the heat-scale source-square / scale-critical tree
Carleson wall.
