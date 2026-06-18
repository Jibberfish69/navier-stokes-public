# MPP Retained Field Endpoint/Tower Reduction

## Status

Theorem-facing continuation of the retained Field branch after any selected
surface has already been legally sorted into the Field row.

This note proves the endpoint-side refinement:

```math
Pack+Part+\neg Field
\Longrightarrow
tower\text{-}blown
```

on a first retained terminal tail, with the pack gauge kept bounded.  Equally,
if the same family carries the finite transported-center tower package, the
retained Field exit is impossible.

This does not prove Navier--Stokes smoothness.  It removes one fake degree of
freedom: a retained Field failure cannot stay as vague source/receiver language.
It must become failure of the same-family tower/DTC analytic package, or else an
earlier `Pack` or `Part` exit.

## Setup

Work on a same-fluid terminal family `Q_t` on a first retained class-exit tail.
Assume:

```math
Pack_Q,
\qquad
Part_{N,Q},
\qquad
\Gamma_{\mathrm{pack},Q}\in L^\infty(I),
\tag{RFET.1}
```

and suppose a selected surface diagnostic has placed the failure in the Field
slot:

```math
\forall r>0:\neg Field_{N,r,Q}.
\tag{RFET.2}
```

The endpoint matrix gives the certificate map:

```math
\neg Field_{N,r,Q}\Longrightarrow Jump.
\tag{RFET.3}
```

The point is to test whether this `Jump` can be excluded without spending
`OFP.A` circularly.

## Lemma `RFET.A` (bounded tower kills retained Field exit)

Assume `(RFET.1)`.  If the one-rung-higher endpoint tower amplitude is bounded,

```math
\mathfrak A_{N+1,Q}\in L^\infty(I),
\tag{RFET.4}
```

then there is a positive scale `r_*>0` such that

```math
Field_{N,r_*,Q}
\tag{RFET.5}
```

holds on the terminal tail.

### Proof

This is the installed derived-face lemma
`mpp-pctp-hard-field-jump-absorption.md`, read on the retained branch.  `Part`
keeps the differentiated pressure-viscosity tower attached to the same PDE
packet.  The bounded pack gauge gives a positive physical radius from a fixed
label radius on the same-fluid family.  The bound
`\mathfrak A_{N+1,Q}\in L^\infty` controls the finite differences of
`U_0,\ldots,U_N` and the pressure/forcing readout used by the one-field
predicate.  Hence a uniform positive Field scale exists. `\square`

## Corollary `RFET.B` (retained Field exit is tower-blown)

On the retained branch `(RFET.1)`,

```math
\forall r>0:\neg Field_{N,r,Q}
\Longrightarrow
\mathfrak A_{N+1,Q}\notin L^\infty(I).
\tag{RFET.6}
```

Equivalently,

```math
Pack_Q+Part_{N,Q}+\Gamma_{\mathrm{pack},Q}\in L^\infty
+\neg Field
\Longrightarrow
tower\text{-}blown.
\tag{RFET.7}
```

### Proof

This is the contrapositive of `RFET.A`.  If the tower amplitude were bounded,
`RFET.A` supplies a positive Field scale, contradicting `(RFET.2)`.
`\square`

## Lemma `RFET.C` (DTC tower package kills retained Field exit)

Assume the same terminal family admits a finite transported-center cover

```math
Q_t\subset\bigcup_{\mathfrak p\in\mathscr P_Q}B(c_{\mathfrak p}(t),R_{\mathfrak p}/2),
\qquad
|\mathscr P_Q|<\infty,
\tag{RFET.8}
```

and each cover element carries `DTC.A_{\mathfrak p}` through depth at least
`N+3`, with the local pressure response on the same cover.  Then

```math
\mathfrak A_{N+1,Q}\in L^\infty(I).
\tag{RFET.9}
```

Consequently, under `(RFET.1)`, the retained Field exit `(RFET.2)` cannot occur.

### Proof

Apply `DTC-to-TowerBound` at tower depth `N+1`.  The theorem requires DTC depth
two rungs higher, hence `N+3`, because the forcing rung is

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

The finite same-family cover plus local pressure response gives
`\mathfrak A_{N+1,Q}\in L^\infty(I)`.  Then `RFET.A` gives a positive Field
scale, contradicting `(RFET.2)`. `\square`

## Theorem `RFET.D` (retained Field exit forces DTC/tower failure)

On a first retained terminal tail satisfying `(RFET.1)`,

```math
\forall r>0:\neg Field_{N,r,Q}
\Longrightarrow
\neg\left[
\begin{array}{c}
\text{finite same-family transported-center cover of }Q_t\\
\text{with }DTC.A\text{ through depth }N+3\\
\text{and the same-cover pressure readout}
\end{array}
\right].
\tag{RFET.10}
```

### Proof

If the bracketed DTC/tower package holds, `RFET.C` gives
`\mathfrak A_{N+1,Q}\in L^\infty(I)`, and `RFET.A` gives a positive Field
scale.  That contradicts the retained Field exit. `\square`

## Source-Pulse Family Consequence

For terminal source-pulse families, the geometric half of the DTC placement is
already installed:

```math
Pack\Longrightarrow SourcePulseDTCCover.A.
\tag{RFET.11}
```

Therefore, on a retained source-pulse branch,

```math
Pack+Part+\neg Field
\Longrightarrow
\text{failure of the analytic same-family DTC/tower cell,}
\tag{RFET.12}
```

not failure of finite cover geometry.  The live analytic cell is:

```math
\bigwedge_{\mathfrak p\in\mathscr P_Q}
DTC.A_{\mathfrak p}
\quad\text{through depth }N+3
\quad+\quad
\text{same-cover pressure readout}.
\tag{RFET.13}
```

## Relation To The Source/Receiver Pushdown

`mpp-retained-field-exit-source-receiver-reduction-20260515.md` analyzes the
same Field row from the propagation side:

```math
LCI.A+FCI.5f\Longrightarrow CSP.A\Longrightarrow OFP.A.
```

This note analyzes it from the endpoint side:

```math
\neg Field
\Longrightarrow
tower\text{-}blown
\Longrightarrow
\text{no same-family DTC tower package}.
```

The two readings are compatible.  The retained Field row can close only if the
propagation inputs `LCI.A+FCI.5f` are produced without assuming Field, or if the
endpoint tower/DTC package is produced without spending endpoint closure.

## Current Boundary

On the first retained CM-exit packet, after a surface has been legally sorted to
the retained Field row, the branch is now sharp in the CM contrapositive sense:

```math
\text{first retained CM exit}
\Longrightarrow
\neg Pack
\vee
\neg Part
\vee
\text{failure of the same-family DTC/tower analytic cell}.
\tag{RFET.14}
```

On source-pulse retained families, `Pack` already supplies the finite
same-family cover, so the remaining field-side primitive is not "find another
surface."  It is:

```math
\boxed{
\text{prove }DTC.A\text{ through depth }N+3\text{ with same-cover pressure readout,}
\text{ or prove the averaged globalization/readout route that supplies it.}
}
\tag{RFET.15}
```

Any proof using old pointwise `Field`, `OFP.A`, `End_NS`, `READ.COVER`, or
`DTC.Read` before this terminal package is produced would be circular.

The conditional retained ACT/KX route through this analytic cell is recorded in
`mpp-retained-field-actkx-license-and-conditional-closure-20260515.md`.  That
note closes the retained Field branch under a pre-endpoint `ACT.KX`/DTC package
and records why the H1-H6 retained replay cannot be promoted to an unconditional
original-data proof by spending `End_NS` upstream.
