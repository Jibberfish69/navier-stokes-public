# MPP SourceParent.Measure Formal Definition Note

## Status

Definition note for the ancestry route around the live source-pulse wall:

```math
\boxed{
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

This is the formal version of the old tower-transfer intuition: a child active
pulse cannot blow up for free.  It must either spend a finite reserve or have a
lawful same-fluid parent packet that fed it.

## Pulse Packets

A localized source-residue pulse packet is

```math
P=(Q_P^\Phi,j_P,I_P,\mu_P^{src},\mu_P^{mix},\gamma_P,\mathfrak F_P),
```

where:

- `Q_P^\Phi` is a same-fluid heat-scale cylinder;
- `j_P` is the active shell, with `c_r2^{-j_P}\le r_P\le C_r2^{-j_P}`;
- `I_P` is a time interval with `c_Ir_P^2\le |I_P|\le C_Ir_P^2`;
- `\mu_P^{src}` is the localized active nonlinear source-residue measure;
- `\mu_P^{mix}` is the localized mixed bilinear / active-square measure;
- `\gamma_P\ge\eta` is the inherited bad active coefficient;
- `\mathfrak F_P` is the same-fluid label family and endpoint fibre.

The packet is source-balanced when the active source mass is not paid by the
installed finite ledgers:

```math
\mu_P^{src,+}(P)
\not\le
Charge_P+Reserve_P+o(1).
```

## Predecessor Region

The admissible predecessor region of a child pulse `P` is

```math
\mathsf{Pred}(P),
```

the collection of same-fluid packets `P^-` satisfying:

1. **backward parabolic location**

```math
I_{P^-}\subset[t_P-Cr_P^2,t_P-c r_P^2],
```

up to the licensed heat-scale ancestry constants;

2. **scale compatibility**

```math
j_{P^-}\in[j_P-M,j_P+M]
\quad\text{or in an explicitly licensed lower-feed band};
```

3. **same-fluid fidelity**

```math
\mathfrak F_{P^-}=\mathfrak F_P
```

after allowed same-fluid refinement;

4. **endpoint-fibre constancy**

the predecessor and child remain in the same source-pulse / `Jump_avg`
endpoint fibre until a charge alternative fires.

## Parent Measure

A source-parent measure for a child `P` is a positive finite measure

```math
d\pi_P(P^-)
\quad\text{on}\quad
\mathsf{Pred}(P).
```

Equivalently, globally it is a positive directed edge measure

```math
d\Pi(P^-\to P)
```

on the graph of source-residue pulse packets.

## Axioms

`SourceParent.Measure` is the theorem asserting that every source-balanced
localized bad pulse `P` admits such a measure satisfying the following axioms.

### SP.1 Source recovery

The parent measure recovers the child source mass:

```math
\int_{\mathsf{Pred}(P)} d\pi_P(P^-)
\ge
c_0\,\mu_P^{src,+}(P)
-
Charge_P
-
Reserve_P
-
o(1).
```

Thus if `P` is genuinely uncharged and source-balanced, then

```math
\pi_P(\mathsf{Pred}(P))\ge c_P\mu_P^{src,+}(P)>0.
```

### SP.2 Parent lower density

There is a finite-complexity subcollection

```math
\mathcal C(P)\subset\mathsf{Pred}(P)
```

with cardinality bounded by a route constant `B`, such that

```math
\pi_P(\mathcal C(P))
\ge
c_1\,\pi_P(\mathsf{Pred}(P)).
```

Consequently at least one predecessor `P^-` satisfies

```math
\mu_{P^-}^{src}(P^-)+\mu_{P^-}^{mix}(P^-)
\ge
c_2\,
\bigl(\mu_P^{src}(P)+\mu_P^{mix}(P)\bigr)
```

after the licensed normalization loss.

### SP.3 Same-fluid edge fidelity

Every positive edge in the support of `\pi_P` preserves:

```math
\text{same labels},
\qquad
\text{same material family},
\qquad
\text{same endpoint fibre},
\qquad
\text{same proof direction}.
```

Edges violating any of these are illegal carrier changes and cannot be used in
the ancestry chain.

### SP.4 Summable loss

Along an iterated parent chain

```math
\cdots \to P^{-2}\to P^{-1}\to P^0,
```

the normalization loss factors `\ell_m` satisfy

```math
\prod_{m=1}^{K}\ell_m\ge c_\infty>0
```

for every finite `K`, or else the lost mass is charged to a finite installed
reserve:

```math
\sum_m Loss_m\le Reserve_{\mathrm{finite}}.
```

This prevents the parent relation from splitting a child pulse into infinitely
many negligible ancestors with no comparable predecessor.

### SP.5 Charge alternative

If any axiom above fails for `P`, the failure is not silent.  It must land in a
named finite charge:

```math
EnergyDrain,
\quad
MixedBoundary,
\quad
PressureCutoffLedger,
\quad
ActiveSquareReserve,
\quad
SourceLocalizationLoss.
```

Thus a source-balanced child has either a legal parent or pays a finite reserve.

## One-Step Theorem

With these definitions the correct one-step theorem is:

```math
\boxed{
SourceParent.Measure:
\quad
P\text{ source-balanced}
\Longrightarrow
\bigl[
P\text{ pays finite charge}
\ \vee\
\exists P^-\in\mathsf{Pred}(P)
\text{ with comparable normalized source/mix mass}
\bigr].
}
```

## Ancestry Consequence

If `MSC.Localize^{src}` supplies a first child pulse and
`SourceParent.Measure` is installed, then either:

1. infinitely many children pay finite charge, contradicting finite reserve; or
2. there is an infinite same-fluid source-balanced ancestry chain.

The remaining terminal theorem is then:

```math
\boxed{
AncestryDrain.A
\quad\text{or}\quad
AncestryCompactBound.A+SourceResidueLiouville.A.
}
```

The drain side is directly audited in
`mpp-ancestrydrain-a-direct-attempt-note.md`; it reduces to a new
`BackwardDrainFunctional.A`.  The compactness side is directly audited in
`mpp-ancestrycompactbound-liouville-direct-attempt-note.md`; it reduces to
`BoundedAncestryClass.A+SourceResidueLiouville.A`.

The two conditional closure packages are assembled in
`mpp-sourcepulse-ancestry-route-conditional-closure-note.md`.

Together:

```math
MSC.Localize^{src}
+
SourceParent.Measure
+
\bigl(
AncestryDrain.A
\vee
AncestryCompactBound.A+SourceResidueLiouville.A
\bigr)
\Longrightarrow
SourcePulseExclusion.A.
```

This is the precise theorem-facing replacement for the informal claim that one
tower must drain so another can blow up.

The localized-core bypass in
`mpp-sourcepulse-localized-core-bypass-of-msclocalize-note.md` removes
`MSC.Localize^{src}` as a blocker when the ancestry route starts from failure
of `SourcePulseExclusion.A` itself.  The first child pulse is then supplied by
the localized core definition.

The one-step parent theorem is split in
`mpp-sourceparent-edge-disintegration-and-antidiffuse-split-note.md`:
localized pre-Cauchy edge disintegration supplies source recovery and
same-fluid edge fidelity, while the remaining theorem is
`AntiDiffuseParent.A`.

The direct anti-diffuse attempt
`mpp-antidiffuseparent-a-direct-attempt-note.md` records that this is not
installed and sharpens the target to
`ParentConcentrationOrDiffuseCharge.A`.
The follow-up split audit
`mpp-parent-concentration-or-diffuse-charge-direct-audit-note.md` records that
neither bounded parent concentration nor diffuse-parent charge is installed.
