# MPP Face Restriction Heredity Audit

## Status

Bounded follow-on proof atom from
`mpp-cm-cross-face-ledger-synchronization-creative-step-20260513.md`.

This note proves only the definition-level heredity needed by
`SameLedgerConcordance.A`.  It does not prove positive Field scale survives
ledger synchronization, and it does not discharge the post-reconcile source
wall.

## Target

```math
\boxed{FaceRestrictionHeredity.A}
```

For a same-fluid witness ledger

```math
\mathcal W=(O_NS^{work},Q,N,r,\Phi,\mathcal T),
```

let

```math
\mathcal W'=(O_NS^{work},Q,N,r',\Phi|_{\mathcal T'},\mathcal T')
```

where `\mathcal T' subset \mathcal T` is a still-live same-fluid terminal
subwindow and `0<r'<=r`.

Then:

```math
Pack_Q(\mathcal W)\Longrightarrow Pack_Q(\mathcal W'),
```

```math
Part_{N,Q}(\mathcal W)\Longrightarrow Part_{N,Q}(\mathcal W'),
```

and

```math
Field_{N,r,Q}(\mathcal W)\Longrightarrow Field_{N,r',Q}(\mathcal W').
```

## Proof

### Field-window evidence

The installed witness note defines `Pack_Q` as a retained same-fluid
carrier with volume preservation, finite pack gauge, retained localization, and
positive-scale finite-cover control on the relevant class region.

Restricting to a still-live same-fluid subwindow does not change the carrier
equations:

```math
\det\nabla_a\Phi=1
```

remains true after restriction, and any finite deformation or pack gauge bound
over `\mathcal T` remains finite over the smaller set `\mathcal T'`.  A finite
cover restricts to a finite cover of the smaller window.  Thus `Pack_Q` is
hereditary under same-fluid terminal restriction.

### Part face

The participation row is the finite-depth tower attachment:

```math
D_tU_k=K_k+B_k,\qquad 0\le k\le N,
```

with finite participation bounds through depth `N`.  These identities are local
on the same Navier-Stokes field, and a supremum or integral bound on
`\mathcal T` remains valid on `\mathcal T'`.  Hence `Part_{N,Q}` restricts to
`Part_{N,Q}` on the smaller ledger.

### Field face

The Field row is represented by the one-field coherence seminorm

```math
\mathfrak C_{N,r,Q}(t)
:=
\sup_{\substack{x,x+h\in Q_t\\0<|h|\le r}}
\sum_{k=0}^{N}
\frac{
|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|
}{|h|}
<\infty.
```

If `0<r'<=r`, then the supremum defining
`\mathfrak C_{N,r',Q}` ranges over a subset of the increments used for
`\mathfrak C_{N,r,Q}`.  Restricting the time-window to `\mathcal T'` also
restricts the supremum domain.  Therefore:

```math
\mathfrak C_{N,r',Q}(\mathcal T')
\le
\mathfrak C_{N,r,Q}(\mathcal T)
<\infty.
```

This proves the Field heredity claim.

## Boundary

`FaceRestrictionHeredity.A` is lower than the source-wall root because it only
spends restriction monotonicity of already certified rows.  It does not produce
a positive Field scale when no such scale is available.

The remaining non-bookkeeping synchronization burden is:

```math
\boxed{PositiveFieldScaleUnderSynchronization.A}
```

If that theorem requires source-residue exclusion, active square reserve
control, terminal temporal atom exclusion, or no-diffuse-ancestry, then it is
not a new CM bridge theorem.  It is the existing Field-face source-wall root:

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## Verdict

```math
\boxed{
FaceRestrictionHeredity.A\ \text{is discharged as a definition-level
restriction lemma.}
}
```

This supports `SameLedgerConcordance.A` but does not promote the aggregate CM
bridge beyond the installed same-ledger conjunction, and it does not close the
live source-wall root.
