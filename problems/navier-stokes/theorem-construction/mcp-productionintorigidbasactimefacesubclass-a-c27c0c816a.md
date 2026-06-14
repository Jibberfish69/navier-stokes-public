# ProductionIntoRigidBASACTimeFaceSubclass.A — localized energy-trace route

## Status

Production theorem written and tested by a new mechanism.  The route gives a useful conditional proof package, then stops at an uninstalled trace anti-jump theorem.

## Production theorem

Let `B_ASAC` be the produced terminal source-residue class with same-fluid terminal carrier, zero ASAC defect, legal exits removed, finite donor trees telescoped, no fixed preterminal entrance leaf, no earlier selected source slice, locally finite native positive source mass, and terminal Zeno support.

Define the rigid time-face subclass `B_ASAC^{TA}` by adding

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad \forall R<\infty.
```

The production theorem is

```math
\boxed{
ProductionIntoRigidBASACTimeFaceSubclass.A:
B_{ASAC}\Longrightarrow B_{ASAC}^{TA}.
}
```

Together with the already valid time-face subclass Liouville theorem, this would give

```math
ProductionIntoRigidBASACTimeFaceSubclass.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A.
```

## New proof mechanism: trace-jump exclusion

Try to prove the production theorem by converting a terminal source atom into a positive jump in a localized energy/source-balance trace.

For a transported terminal cutoff `\phi_R`, write the localized balance as

```math
{d\over ds}E_R(s)+D_R(s)
=F_R^{src,+}(s)-F_R^{paid}(s)+Flux_R(s),
```

where `F_R^{paid}` consists of ASAC-paid, legal, projected, cutoff, boundary, and finite donor payments already removed in `B_ASAC`.

A terminal atom

```math
\mu_*^{src}(B_R\times\{0\})>0
```

would then force a positive terminal jump in the distributional primitive of the remaining balance unless compensated by one of the removed escape channels.

This gives the conditional package

```math
SourceAtomToTraceJump.A
+
BASACLocalEnergyTraceNoPositiveJump.A
\Longrightarrow
ProductionIntoRigidBASACTimeFaceSubclass.A.
```

## Test of the trace anti-jump theorem

The installed inputs give finite local `L^1_s` source mass and weak/local energy compactness.  They do not give a strong one-sided continuity theorem for the localized quadratic energy/source-balance trace after terminal rescaling.

Weak `L^2` time continuity controls linear pairings with test functions.  The localized trace here is quadratic and can lose mass under concentration.  Local energy inequality gives one-sided balance information, while the positive terminal source atom can be absorbed as a terminal bounded-variation jump in the balance primitive.

The model source marginal

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

has finite `L^1_s` mass and converges to a terminal atom.  At the balance level it corresponds to a primitive that changes over a vanishing terminal interval and converges to a jump at `s=0`.  This is compatible with finite variation and with the present `B_ASAC` clauses.

Zero ASAC defect and removed legal exits classify the paid channels.  They do not supply strong terminal trace continuity for the remaining native source-balance primitive.

## Verdict

The new proof route reduces the production theorem to a sharper trace theorem:

```math
\boxed{
BASACLocalEnergyTraceNoPositiveJump.A.
}
```

Statement: in the produced `B_ASAC` class, the localized native source-balance primitive has no positive terminal jump after ASAC/legal/donor payments are removed.

This theorem is not installed by current inputs.  Therefore

```math
ProductionIntoRigidBASACTimeFaceSubclass.A
```

remains open, with the new candidate proof path:

```math
SourceAtomToTraceJump.A
+BASACLocalEnergyTraceNoPositiveJump.A
\Longrightarrow
ProductionIntoRigidBASACTimeFaceSubclass.A.
```
