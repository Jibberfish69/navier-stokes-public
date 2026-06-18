# MPP HighCoefficientResponseResidual.A Attempt

Date: 2026-05-06

Status: direct residual proof partially discharged; live correction is to
enlarge the principal operator to a finite collar and isolate only the far-high
beat channel.

Depends on:

```text
mpp-full-linearized-response-adjoint-packet-attempt-20260506.md
mpp-full-linearized-response-adjoint-route-20260506.md
mpp-linearized-response-residual-pair-discharge-20260506.md
```

## 0. Target

The truncated full-linearized adjoint packet note left:

```math
\boxed{
HighCoefficientResponseResidual.A.
}
```

In the `u_{\le j-M}` truncation this residual is:

```math
R^{hi}
=
\mathbb P((u-u_{\le j-M})\cdot\nabla Z
+Z\cdot\nabla(u-u_{\le j-M})).
\tag{HCR.1}
```

The direct question is whether `(HCR.1)` is a legal `H^{-1}` residual paid by
ordinary dissipation, or whether it hides the same terminal response creation
that the adjoint route is trying to kill.

## 1. Corrected Split

The split at `j-M` is too low.  It makes the finite near-collar coefficient

```math
u_{j-M<q\le j+C}
```

look like an external source, although it is part of the actual linearized
response dynamics at the terminal scale.

Fix a collar width `C`.  Define:

```math
u^{col}_j:=P_{\le j+C}u,
\qquad
u^{far}_j:=P_{>j+C}u.
\tag{HCR.2}
```

The finite-collar principal operator is:

```math
L^{col}_{u,j}Z
=
\partial_t Z
+\mathbb P(u^{col}_j\cdot\nabla Z+Z\cdot\nabla u^{col}_j)
-\nu\Delta Z.
\tag{HCR.3}
```

Only

```math
R^{far}_j
=
\mathbb P(u^{far}_j\cdot\nabla Z+Z\cdot\nabla u^{far}_j)
\tag{HCR.4}
```

should remain as a high-coefficient residual.

## 2. Theorem `NearCollarResidualElimination.A`

### Statement

For any fixed collar `C`,

```math
\boxed{
u_{j-M<q\le j+C}\ \text{creates no response residual}
}
\tag{HCR.5}
```

provided the response adjoint is built for `L^{col}_{u,j}` rather than
`L^{lin,lo}_u`.

### Proof

The response equation is:

```math
\partial_t Z
+\mathbb P(u\cdot\nabla Z+Z\cdot\nabla u)
-\nu\Delta Z
=\Delta u.
\tag{HCR.6}
```

Subtract `(HCR.3)` from `(HCR.6)`.  The only coefficient term left on the
right side is `(HCR.4)`.  The entire finite band
`j-M<q\le j+C` lies in `u^{col}_j`, hence is included in the principal
operator.  Pairing with an adjoint packet for `(L^{col}_{u,j})^*` produces no
volume residual from that finite band.  Its cost has moved into the packet
calculus through the coefficient-good/stopped-tile budget.

Thus `(HCR.5)` is an identity-level theorem, not an estimate. `\square`

## 3. Coefficient Stopping For The Collar

The finite collar is not automatically harmless.  Since it reaches the terminal
scale, the coefficient budget

```math
\mathcal C^{col}_T
=
\int_{I_T}
\left[
r_T^2\|\nabla^2 u^{col}_j\|_{L^\infty(Q_T^*)}
+r_T\|\nabla(\nabla u^{col}_j)\|_{L^\infty(Q_T^*)}
\right]dt
\tag{HCR.7}
```

may be large.  This is not a residual failure; it is a packet-stopping event.
On good subtiles the affine heat packet proof applies.  On bad subtiles define
the backward stop by:

```math
\mathcal C^{col}_T(\sigma_T,t_+)=\varepsilon_C.
\tag{HCR.8}
```

The stopped endpoint at `\sigma_T` is a response parent unless the stopped
segment pays the coefficient charge.  Therefore the collar part belongs to:

```text
LinearizedCoeffStop.A for the finite-collar response mass.
```

It is not counted inside `HighCoefficientResponseResidual.A`.

## 4. Far-High Support Localization

### Theorem `FarHighVisibleResidualLocalization.A`

Let the terminal readout be shell `j`.  In the dyadic expansion of `(HCR.4)`,
every output-visible term at shell `j` containing a far coefficient
`u_q`, `q>j+C`, must also contain response frequency `Z_\ell` with

```math
|\ell-q|\le C_{beat},
\tag{HCR.9}
```

plus only Schwartz-cutoff remainders satisfying, for every `A>0`,
`||R_{j,q,\ell}||_2 <= C_A 2^{-A(|q-j|+|\ell-q|)}
||u_q||_{L^\infty}||\nabla Z_\ell||_2`.

### Proof

Consider:

```math
P_j(u_q\cdot\nabla Z_\ell),
\qquad
P_j(Z_\ell\cdot\nabla u_q).
```

With smooth Littlewood-Paley cutoffs, the product has Fourier support in the
Minkowski sum of annuli
`c_{LP}2^q\le|\xi|\le C_{LP}2^q` and
`c_{LP}2^\ell\le|\xi|\le C_{LP}2^\ell`. If
`q>j+C` and `\ell\le q-K` for `K` larger than the cutoff overlap constant, the
sum is contained in an annulus

```math
c'_LP2^q\le |\xi|\le C'_LP2^q
```

with constants depending only on the cutoff system, hence disjoint from shell
`j`.  Thus the projection `P_j` vanishes.  Symmetrically, if
`\ell\ge q+K`, the output is contained in an annulus

```math
c'_LP2^\ell\le |\xi|\le C'_LP2^\ell,
```

again disjoint from shell `j`. The only output-visible region is
`|\ell-q|\le C_{beat}`, where `C_{beat}` is fixed by the cutoff overlap.
`\square`

## 5. Consequence

The direct residual splits as:

```math
R^{hi}
=
R^{near-col}
+R^{far-beat}.
\tag{HCR.10}
```

where:

```text
R^{near-col} is eliminated by using L^{col}_{u,j};
R^{far-beat} is only the high-high-to-low beat channel
|\ell-q|\le C_{beat}, q>j+C.
```

Therefore the honest direct reduction is:

```math
\boxed{
FiniteCollarLinearizedAdjointPacket.A
+LinearizedCoeffStop.A
+FarHighBeatNoReturn.A
\Longrightarrow
HighCoefficientResponseResidual.A.
}
\tag{HCR.11}
```

The first two items are packet-calculus items.  The only remaining analytic
content is:

```math
\boxed{
FarHighBeatNoReturn.A.
}
\tag{HCR.12}
```

## 6. Why The Naive Direct Proof Fails

A raw estimate of `(HCR.4)` gives products containing:

```math
u_q\cdot\nabla Z_q,
\qquad
Z_q\cdot\nabla u_q,
\qquad q\gg j.
\tag{HCR.13}
```

Even after pairing in `H^{-1}` against a shell-`j` adjoint packet, this is not
paid by the ordinary dissipation tail of `u` alone.  It also contains the
unknown high response field `Z_q`.  Spending a raw `Z` norm would reintroduce a
response-height assumption and undo the full-linearized adjoint gain.

Thus `HighCoefficientResponseResidual.A` is not a one-line scale-gap theorem.
The scale gap kills low-high and high-low far terms, but the high-high beat
survives.

## 7. Corrected Route

The strongest corrected route is:

```text
1. Build the response adjoint for the finite-collar operator L^{col}_{u,j}.
2. Use coefficient-good/stopped packet calculus for that collar.
3. Reduce discarded coefficients to the far-high beat channel.
4. Kill the far-high beat by a no-return theorem, or remove it entirely by
   upgrading from finite-collar packets to full-coefficient packets.
```

This gives two next theorem targets:

```text
FiniteCollarLinearizedAdjointPacket.A
FarHighBeatNoReturn.A
```

and one stronger route mutation:

```text
FullCoefficientLinearizedAdjointKernel.A:
build the adjoint packet/lower-frame calculus for the full L_u^*,
so no coefficient residual remains at all.
```

## 8. Verdict

Proved:

```text
NearCollarResidualElimination.A
FarHighVisibleResidualLocalization.A
```

Not proved:

```text
FarHighBeatNoReturn.A
HighCoefficientResponseResidual.A
```

The live correction is to stop calling the finite near-collar a residual.  It
belongs in the principal operator.  The remaining coefficient obstruction is
precisely the far-high beat channel, or else the need for a full-coefficient
linearized adjoint kernel theorem.
