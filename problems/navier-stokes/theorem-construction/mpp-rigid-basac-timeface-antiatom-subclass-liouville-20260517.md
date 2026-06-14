# MPP Rigid B_ASAC Time-Face Anti-Atom Subclass Liouville

Date: 2026-05-17

## Status

Conditional theorem proved. Production into the rigid subclass remains open from installed inputs.

## Definition

Define the rigid subclass

```math
B_{ASAC}^{TA}\subset B_{ASAC}
```

by adding the intrinsic time-face anti-atom clause

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad\forall R<\infty.
```

All other `B_ASAC` clauses are inherited:

```text
same-fluid retained terminal carrier,
zero ASAC defect measure,
no earlier selected source slice,
no legal/projected/cutoff/boundary exit,
no finite or non-Zeno donor-refill exit,
terminal Zeno source support.
```

## Theorem

```math
\boxed{
RigidBASACTimeFaceSubclassLiouville.A:
(u_*,p_*,\mu_*^{src})\in B_{ASAC}^{TA}
\Longrightarrow
\mu_*^{src}=0.
}
```

## Proof

Fix `R<\infty`. The inherited no-earlier-selected-source-slice clause gives

```math
\mu_*^{src}(B_R\times[-R^2,-a])=0
\qquad\forall a>0.
```

The defining time-face anti-atom clause gives

```math
\mu_*^{src}(B_R\times\{0\})=0.
```

Use the countable cover

```math
[-R^2,0]
=
\left(\bigcup_{n\ge1}[-R^2,-1/n]\right)
\cup\{0\}.
```

Finite local measure and countable subadditivity yield

```math
\mu_*^{src}(B_R\times[-R^2,0])=0.
```

The cylinders exhaust the tangent spacetime domain as `R\to\infty`, hence

```math
\mu_*^{src}=0.
```

This proves the subclass Liouville theorem.

## Production audit

The installed equality-class production theorem gives `B_ASAC`. It supplies zero ASAC defect, same-fluid retention, no earlier selected source slice, no named paid exit, and terminal Zeno support.

It does not supply the added `TA` clause. The terminal-layer witness

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

still satisfies the available `B_ASAC` temporal information while producing a time-face atom. Thus the current route lacks

```math
ProductionIntoRigidBASACTimeFaceSubclass.A:
B_{ASAC}\Longrightarrow B_{ASAC}^{TA}.
```

## Consequence

The rigid subclass is valid and its residue Liouville theorem is proved. It does not discharge the original `ZenoResidueLiouville_{B_ASAC}.A` burden until a production theorem forces every produced survivor into `B_ASAC^{TA}` or supplies an equivalent time-face anti-atom clause.

## Remaining exact theorem

```math
\boxed{
ProductionIntoRigidBASACTimeFaceSubclass.A
}
```

Equivalently, prove any one of the previously isolated suppliers:

```math
UniformTemporalSourceIntegrability_{p,B_ASAC}.A,
\qquad
TerminalSourceReverseHolder_{B_ASAC}.A,
\qquad
ScaleNormalizedBranchEntropyReserve.A / TwoTowerDonorDepletion.A,
```

or a transported no-incoming theorem that includes the terminal time face as a genuine anti-atom clause rather than a boundary accounting term.
