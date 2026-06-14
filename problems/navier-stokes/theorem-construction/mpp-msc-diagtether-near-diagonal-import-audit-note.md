# MPP MSC.DiagTether Near-Diagonal Import Audit Note

## Status

Bounded import audit for the next compactness-route target:

```math
MSC.DiagTether:
\quad
\neg MSC.BadAC
\Longrightarrow
\text{nonzero near-diagonal same-fluid local carrier}.
```

The attempted shortcut is to import the repo's existing high-high
near-diagonal reductions.  That shortcut fails.  Those lemmas are
frequency-support reductions for nonlinear interaction packets; `MSC.DiagTether`
is a spatial co-location theorem for a positive double-space carrier.

## Candidate Imports

The relevant installed near-diagonal notes include:

```text
scale-high-high-near-diagonal-reduction-lemma.md
gradient-high-high-near-diagonal-reduction-lemma.md
near-diagonal-tail-square-reserve-absorption.md
mixed-shell-bilinear-dissipation-identity.md
```

They prove statements of the following type:

```math
\Delta_j(\Delta_k u\cdot\nabla\widetilde\Delta_k u)=0
\quad\text{unless}\quad |k-j|\le M,
```

or estimates reducing a genuine high-high nonlinear packet to a finite dyadic
collar such as

```math
\sum_{|k-j|\le M}
2^j
\|\Delta_k u\|_2
\|\widetilde\Delta_k u\|_2
\|\Delta_j u\|_2.
```

This is a near-diagonal statement in **frequency indices**.

## Target Carrier Is Different

The `MSC.DiagTether` target starts from the positive mixed-shell product

```math
D_j(t)D_\ell(t)
=
\iint_{\mathbb T^3\times\mathbb T^3}
d_j(x,t)d_\ell(y,t)\,dx\,dy,
```

where

```math
d_j(x,t)=2^{4j}|\Delta_j u(x,t)|^2.
```

To produce a physical blow-up cylinder, the route needs a lower bound on the
near-spatial-diagonal portion

```math
\iint_{|x-y|\le C_{diag}2^{-j}}
d_j(x,t)d_\ell(y,t)\,dx\,dy.
```

This is a near-diagonal statement in **physical space** and same-fluid labels.

## Why The Import Fails

Frequency near-diagonality says that certain products can survive a Littlewood-
Paley projection only when the shell indices are comparable.  It does not say
that the physical supports of two positive shell energy densities overlap.

The positive product carrier can be large because `d_j` and `d_\ell` have large
total mass while being spread through many heat-scale cells, or even while their
dominant portions sit in separated cell families.  The identity

```math
D_jD_\ell=\iint d_j(x)d_\ell(y)\,dx\,dy
```

counts all pairs `(x,y)`, not only co-located pairs.  No installed
frequency-support lemma converts that all-pairs mass into near-diagonal
same-fluid mass.

The tail-square near-diagonal reserve is also not a proof of `MSC.DiagTether`.
It estimates a diagonal-band frequency sum by global energy and dissipation; it
does not produce a lower bound for a spatial near-diagonal carrier on the
bad-set measure.

## Correct Import Boundary

The existing near-diagonal reductions may be used only after a local physical
carrier has already been selected.  They can simplify local nonlinear
interaction packets inside that cylinder.  They cannot be used to select the
cylinder from the global positive product measure.

The missing theorem remains:

```math
\boxed{
MSC.DiagTether:
\neg MSC.BadAC
\Longrightarrow
\text{nonzero near-diagonal same-fluid local carrier}.
}
```

For the source-no-pulse route, the actually useful version is stronger:

```math
\boxed{
MSC.DiagTether^{src}:
\neg MSC.BadAC
\Longrightarrow
\text{nonzero near-diagonal same-fluid source-residue carrier}.
}
```

## Verdict

No installed high-high near-diagonal lemma discharges `MSC.DiagTether`.

The compactness/ancestry branch remains blocked at the carrier selection layer
before `SourceParent.A`, `Ancestral.NoPulse`, or `Ancient.NoPulse^{src}` can
act.

The follow-up direct attempt
`mpp-msc-diagtether-direct-attempt-note.md` sharpens this verdict: the installed
global shell product itself has erased physical co-location.  The next viable
carrier theorem is not another frequency near-diagonal import, but either
`DiagDom.A` for a local diagonal mixed-shell carrier or `LocalSource.NoPulse.A`
for the pre-Cauchy same-fluid source packet.
