# MPP B_ASAC Residue Liouville Direct Attempt

Date: 2026-05-17

## Status

Direct attempt after
`mpp-asac-defect-measure-equality-class-production-20260517.md`.

Outcome: not a discharge.  The production side has improved, but the current
`B_ASAC` class is still not rigid enough by itself to prove terminal residue
Liouville.

## Target

The remaining equality-route theorem is:

```math
ZenoResidueLiouville_{B_{ASAC}}.A:
\quad
(u_\ast,p_\ast,\mu_\ast^{src})\in B_{ASAC}
\Longrightarrow
\mu_\ast^{src}=0.
```

Here `B_ASAC` is the produced terminal source-residue class with:

```text
same-fluid retained terminal carrier,
nonzero inherited native positive source residue,
no earlier selected source slice,
zero ASAC defect measure,
no legal/projected/cutoff/boundary exit,
no finite or non-Zeno donor-refill exit,
terminal Zeno source support.
```

This is exactly the branch left after the post-ASAC no-free-sink reduction.

## Attempt 1: use zero ASAC defect directly

The zero ASAC defect condition says the paid active-alignment / one-sided
pair-weight defect has vanished in the terminal extraction.  It does not say
that the native positive source-residue carrier itself vanishes.

The produced class was built precisely after ASAC, legal, boundary, projected
cutoff, and finite donor payments were removed.  A remaining terminal atom can
therefore sit in the source-residue measure while the ASAC-paid defect measure
is zero.  This gives no contradiction.

## Attempt 2: import terminal tangent parent-drain

The installed parent-drain proof of `TPNI.A` applies to the homogeneous frozen
tangent equation:

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi=\nu\Delta v,
```

where the adjoint packet identity has no volume source term.  A `B_ASAC`
object is different: it carries a terminal source-residue measure.

Pairing the `B_ASAC` limit with the same adjoint packet leaves exactly the
source-residue term that must be killed.  The first-pulse condition removes
earlier selected source parents; it is not a global no-incoming statement for
the full tangent field, and it is not a homogeneous adjoint identity.

Thus `TPNI.A` cannot be reused here without a new theorem converting the
terminal source atom into an earlier selected source slice, a legal/donor
escape, or an ASAC-paid defect.

## Attempt 3: temporal anti-atom from current class data

The class gives finite terminal source mass and no earlier selected source
slice.  It does not give any super-`L^1_s` temporal control.  The exact
endpoint time-marginal counterexample is

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has bounded `L^1_s` mass and converges to a terminal atom.  The model is not a
Navier-Stokes solution; it records the exact measure-theoretic gap: the
current `B_ASAC` clauses do not contain a reverse Holder or
`L^p_s`, `p>1`, anti-concentration input.

So `TerminalSourceReverseHolder.A` / `UniformTemporalSourceIntegrability_p.A`
closes this route by giving a super-`L^1_s` time marginal and excluding terminal atoms, but it is not produced by `B_ASAC` as stated.

## Attempt 4: global no-incoming / backward uniqueness

The older no-incoming audit separates the installed first-pulse source-parent
license from the stronger global boundary-flux condition.  `B_ASAC` inherits
the source-parent license; it does not add a transported-cylinder or weighted
global no-incoming flux condition for the full tangent field.

Therefore a class-specific backward-uniqueness proof would need a new input:

```math
NoIncomingFlux_{B_{ASAC}}.A
+
AnisotropicStokesCarleman_{B_{ASAC}}.A.
```

Those are not installed by the equality-class production theorem.

## Sharpened surviving atom

The useful next formulation is not broad `ZenoResidueLiouville.A` and not the
generic reverse-Holder door.  The exact class-specific atom is:

```math
\boxed{
BASACAtomForcesEscape.A
}
```

Statement:

```text
Every nonzero terminal source atom in B_ASAC forces at least one forbidden
escape: an earlier selected same-fluid source slice, a legal/projected/cutoff
boundary exit, a finite or non-Zeno donor-refill exit, or a nonzero ASAC-paid
defect measure.
```

Then:

```math
BASACAtomForcesEscape.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A
\Longrightarrow
TerminalZenoRefillNoFreeSink.A_{\mathrm{ind}}
\Longrightarrow
TerminalWeightedNoFreeSink.A_{\mathrm{ind}}
\Longrightarrow
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A.
```

## Verdict

`B_ASAC` is a real production improvement, not a closure.  The remaining
source-wall math is now the class-specific escape theorem
`BASACAtomForcesEscape.A`: prove that a nonzero terminal source atom cannot
remain after ASAC defect, legal exits, finite donor refill, and earlier
selected source slices have all been removed.
