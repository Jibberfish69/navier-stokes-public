# Reference Projector To Top-Strain Comparison

## Status

Active theorem-facing exact-potential selector-strain note.

Role: convert the reference Cauchy--Green projector packet into the actual
selector-strain compatibility estimate needed by the SG.4-facing branch.

## Purpose

Discharge the concrete selector-strain step:

```math
\boxed{
(\Pi_J^{ref},\ \text{CG-RefGap packet},\ \text{strip residual packet})
\Longrightarrow
\bigl\|\Pi_J^{ref}-P_{J,\top}^{seg}\bigr\|_F^2
\le C_{\mathrm{RPTS0}}
\mathrm{Err}_{J,\mathrm{ssc}}^{CG}.
}
\tag{RPTS.0}
```

## Exact Inputs

1. the restricted Cauchy--Green reference-gap note
   [restricted-cg-reference-gap-persistence.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/restricted-cg-reference-gap-persistence.md);
2. either the current-time Cauchy--Green reference projector `P_J^{CG}(t,a)` or
   a synchronized reference projector `\Pi_J^{ref}` on the same strip;
3. one selector-strain sufficiency packet, either
   `D.7mp + D.7mo + D.7mm` or `D.7mf + D.7mk`.

## Exact Claim

### Theorem SSC-EP.A (current-time CG selector-strain packet)

Take the branch-local choice

```math
\Pi_J^{ref}(a,b,t):=P_J^{CG}(t,a).
\tag{RPTS.0a}
```

Assume on the selector-good strip `I_0` that

```math
E_{J,t_0}^{CG}(t,a)\le \frac{g_0}{4}
\qquad\text{for every }t\in I_0,
\tag{RPTS.0b}
```

and that the combined `D.7mb` strip residual packet

```math
\eta_J^{mb}(t,a,b)
=
|m_J(t_0,a,b)|
+
\eta_{J,\mathrm{off}}^{mb}(t,a,b)
+
\eta_{J,\mathrm{var}}^{mb}(t,a,b)
\tag{RPTS.0c}
```

is controlled. Then

```math
\bigl\|
P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le C_{\mathrm{RPTS0d}}
\frac{\eta_J^{mb}(t,a,b)^2}{g_0^2}.
\tag{RPTS.0d}
```

More precisely, `CGR.A` gives

```math
\bigl\|
P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
\frac{8\,\eta_J^{mb}(t,a,b)^2}{g_0^2}.
\tag{RPTS.0e}
```

So the exact selector-strain sufficiency packet on this branch is:

```math
E_{J,t_0}^{CG}\le g_0/4
\quad\text{and}\quad
\eta_J^{mb}\ \text{controlled}
\Longrightarrow
\bigl\|P_J^{CG}(t,a)-P_{J,\top}^{seg}(a,b,t)\bigr\|_F\le \varepsilon_J^{top}.
\tag{RPTS.0f}
```

This is the cleanest exact-potential selector-strain theorem because it avoids
any extra entrance-comparison interface.

The larger on-disk packet

```math
D.7mp + D.7mo + D.7mm
\tag{RPTS.0g}
```

is best read as one sufficient route to the hypotheses and source smallness
needed by `SSC-EP.A`, not as the minimal logical statement of the branch-local
selector-strain theorem itself.

That installed sufficient route is now written separately in
[selector-strain-sufficiency-d7mp-d7mo-d7mm.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-strain-sufficiency-d7mp-d7mo-d7mm.md).

### Theorem RPTS.A

Keep the same selector-good atom-free strip `I_0=[t_0,t_1]` and suppose:

1. the hypotheses of Theorem `CGR.A` hold;
2. the synchronized reference projector satisfies the entrance comparison

```math
\bigl\|
\Pi_J^{ref}(a,b,t)-P_{J,t_0}^{CG}(a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,\mathrm{sync}}^{ref}(a,b,t)
\qquad\text{for every }t\in I_0.
\tag{RPTS.1}
```

Then

```math
\bigl\|
\Pi_J^{ref}(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le
2\,\operatorname{Err}_{J,\mathrm{sync}}^{ref}(a,b,t)
+
\frac{4C_{CG,\mathrm{DK}}}{g_0^2}\,
E_{J,t_0}^{CG}(t,a)^2
+
\frac{32\,\eta_J^{mb}(t,a,b)^2}{g_0^2}.
\tag{RPTS.2}
```

So with

```math
\operatorname{Err}_{J,\mathrm{ssc}}^{CG}(a,b,t)
:=
\operatorname{Err}_{J,\mathrm{sync}}^{ref}(a,b,t)
+
\frac{C_{CG,\mathrm{DK}}}{g_0^2}\,
E_{J,t_0}^{CG}(t,a)^2
+
\frac{\eta_J^{mb}(t,a,b)^2}{g_0^2},
\tag{RPTS.3}
```

one has the selector-strain comparison

```math
\bigl\|
\Pi_J^{ref}(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le C_{\mathrm{RPTS4}}
\operatorname{Err}_{J,\mathrm{ssc}}^{CG}(a,b,t).
\tag{RPTS.4}
```

### Corollary RPTS.B (reference-direction / reference-gap / bootstrap route)

Assume the hypotheses of `D.7mp`, `D.7mo`, and `D.7mm` on `I_0`, and suppose
the synchronized reference projector obeys `(RPTS.1)`. Then

```math
\bigl\|
\Pi_J^{ref}(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le C_{\mathrm{RPTS5}}
\operatorname{Err}_{J,\mathrm{sync}}^{ref}(a,b,t)
+
\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t).
\tag{RPTS.5}
```

### Corollary RPTS.C (commutator / persistence route)

Assume the hypotheses of `D.7mf` and `D.7mk` on `I_0`, and suppose the
synchronized reference projector obeys `(RPTS.1)`. Then

```math
\bigl\|
\Pi_J^{ref}(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\bigr\|_F^2
\le C_{\mathrm{RPTS6}}
\operatorname{Err}_{J,\mathrm{sync}}^{ref}(a,b,t)
+
\operatorname{Err}_{J,CG}^{strain}(a,b,t).
\tag{RPTS.6}
```

### Proof

For `(RPTS.2)`, insert `P_{J,t_0}^{CG}`:

```math
\bigl\|
\Pi_J^{ref}-P_{J,\top}^{seg}
\bigr\|_F^2
\le
2\bigl\|
\Pi_J^{ref}-P_{J,t_0}^{CG}
\bigr\|_F^2
+
2\bigl\|
P_{J,t_0}^{CG}-P_{J,\top}^{seg}
\bigr\|_F^2.
\tag{RPTS.7}
```

Apply `(RPTS.1)` to the first term and `(CGR.13)` to the second term to obtain
`(RPTS.2)`, hence `(RPTS.4)`.

For `(RPTS.5)`, the packet `D.7mp + D.7mo + D.7mm` is exactly the on-disk
bootstrap route proving selector-strain compatibility with strain ledger
`\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}`; this is the same branch
recorded abstractly in `SSC.B`. Adding the entrance comparison
`\operatorname{Err}_{J,\mathrm{sync}}^{ref}` yields `(RPTS.5)`.

For `(RPTS.6)`, the commutator / persistence packet `D.7mf + D.7mk` supplies
the same comparison with strain ledger `\operatorname{Err}_{J,CG}^{strain}`,
which gives `(RPTS.6)` after the same entrance insertion. ∎

## Interpretation

This note is the concrete selector-strain compatibility theorem for the
exact-potential branch. The cleanest branch-local form is `SSC-EP.A`, where one
simply takes `\Pi_J^{ref}:=P_J^{CG}(t,a)` and uses the CG persistence packet
plus the `D.7mb` residual packet to compare directly with the true top-strain
projector.

So the genuine mathematical wall is no longer “some projector should track the
strain direction”; it is the explicit comparison ledger `(RPTS.0d)` or, if one
insists on a separately synchronized reference projector, the interface variant
`(RPTS.2)` and its two on-disk sufficiency packets `(RPTS.5)` and `(RPTS.6)`.

Equivalently:

1. `SSC-EP.A` is the minimal branch-local selector-strain theorem;
2. `D.7mp + D.7mo + D.7mm` is the shortest installed sufficient packet currently
   on disk for producing that branch-local control.

## Downstream Use

Once `(RPTS.4)` is available, the angular ledger follows by combining:

1. the pair/synchronization packet `D.7mq`,
2. the selector-strain comparison `(RPTS.4)`,
3. the projector-space triangle inequality.

That is written next in
[exact-potential-angular-ledger-from-selector-strain.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-from-selector-strain.md).
