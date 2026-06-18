# MPP Field Source-Residue Jump Classification Note

## Status

This note tests the tempting shortcut:

```math
\text{native positive source residue}
\Longrightarrow
VisibleJump_{Field}
\Longrightarrow
\text{endpoint contradiction}.
```

Verdict:

```math
\boxed{
\text{the classification is valid, but the contradiction is not automatic.}
}
```

A surviving Field-face source residue is a witness for the `(Field,Jump)`
endpoint cell.  It is not a separate fourth endpoint row, and it is not an
independent contradiction unless the `END.Field` exclusion theorem has already
been supplied.

## Setup

Work under the CM witness-face split:

```math
\neg CM_{N,r,Q}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

Assume the branch has been localized to the Field face:

```math
Pack_Q,\qquad Part_{N,Q},\qquad \neg Field_{N,r,Q}.
```

Assume further that the Field-face failure is witnessed by a native positive
source/readout residue:

```math
\mu^{src,+}_{field}\neq0,
```

or by one of its route-equivalent source-current presentations:

```math
TerminalSignedSaturation.A\text{ failure},
\quad
WeightedLiftedDefectCarleson.A\text{ failure},
\quad
CriticalFluxAmplitudeSmall.A\text{ failure}.
```

## Classification Theorem `FieldSourceResidueJump.A`

Under the retained Pack/Part carrier assumptions, a nonzero terminal native
source/readout residue on the Field face lands in the endpoint cell:

```math
\boxed{
\mu^{src,+}_{field}\neq0
\Longrightarrow
(Field,Jump).
}
\tag{FSRJ.1}
```

## Proof

The endpoint matrix defines the native Field terminal shell by loss of
positive one-field coherence scale on the same-fluid carrier:

```math
\neg Field_{N,r,Q}
\Longrightarrow
Jump.
```

The source residue is not a new endpoint predicate.  It is the analytic witness
showing why the finite-difference / one-field coherence modulus failed to stay
controlled on the retained Field row.  Since Pack and Part remain attached to
the same carrier, the failed row is Field, and the endpoint shell is Jump.
Thus the native endpoint cell is `(Field,Jump)`.

## Why This Does Not Close The Branch

The endpoint exclusion row is:

```math
END.Field:
\qquad
Field_{N,r,Q}+OFP.A
\Longrightarrow
\neg Jump.
```

Therefore a surviving source residue gives classification:

```math
\mu^{src,+}_{field}\neq0
\leadsto
(Field,Jump),
```

but not exclusion:

```math
(Field,Jump)
\not\Longrightarrow
\bot
```

unless the one-field preservation package has already supplied `Field+OFP.A`
on the same same-fluid family.

This is exactly why the source wall remains live.  The source-control theorem is
needed either to:

```math
NativePositiveSourceControl.A
\Longrightarrow
\text{no no-visible-jump Field-face residue},
```

or to feed the installed one-field/readout route that supplies `END.Field`.

## Consequence

The corrected CM route has three different statements, and they must not be
merged:

```math
\boxed{
FieldFaceResidueReduction.A:
\neg Field
\Rightarrow
VisibleJump_{Field}
\vee
\neg NativePositiveSourceControl.A
\vee
ZenoResidue_B
\vee
\text{non-source supplier failure}.
}
```

```math
\boxed{
FieldSourceResidueJump.A:
\mu^{src,+}_{field}\neq0
\Rightarrow
(Field,Jump).
}
```

```math
\boxed{
END.Field:
Field+OFP.A
\Rightarrow
\neg Jump.
}
```

The first is the CM-oriented branch reduction.  The second is endpoint
classification.  The third is endpoint exclusion.  The source wall is not
closed until the exclusion row is supplied without circularly assuming the
Field predicate whose failure selected the branch.

## Promotion Boundary

This note installs only the classification:

```math
FieldSourceResidueJump.A.
```

It does not discharge:

```math
NativePositiveSourceControl.A,
\qquad
ScaleCriticalTreeCarleson.A,
\qquad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A,
\qquad
END.Field.
```

It prevents one false shortcut: treating a source residue as an automatic
contradiction merely because it is endpoint-visible.
