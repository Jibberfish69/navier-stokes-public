# MPP CM Field-Face Source-Wall Reorientation Note

## Status

This note repairs the direction of the source-wall work after the signed-current
collapse audits.

The governing primitive is not:

```math
OriginalSmoothData\Longrightarrow NativePositiveSourceControl.A.
```

That is a positive bootstrap formulation.  It may be useful as a sufficient
supplier theorem, but it is not the primitive CM contrapositive route.

The governing primitive remains:

```math
\boxed{
Exit(Q;\mathfrak O_{NS}^{work}) := \neg Member(Q;\mathfrak O_{NS}^{work}),
}
```

witnessed analytically by:

```math
\boxed{
\neg CM_{N,r,Q}
=
\neg(Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}).
}
```

Thus the source wall may enter only after the CM witness split has selected
the `Field` row, or after a theorem proves that the other faces reduce to that
row on the same witness carrier.

## Direction Rule

The lawful direction is:

```math
\neg CM
\Longrightarrow
\neg Pack\ \vee\ \neg Part\ \vee\ \neg Field.
```

The source-wall route is a `Field`-face supplier/readout route:

```math
\neg Field
\quad\leadsto\quad
\text{one-field/source-readout obstruction}
\quad\leadsto\quad
NativePositiveSourceControl.A
\text{ or Zeno residue}.
```

It is not a replacement for the primitive:

```math
NativePositiveSourceControl.A
\not\equiv
CM.
```

and it is not permitted to prove the theorem by bypassing the witness split:

```math
OriginalSmoothData
\Longrightarrow
NativePositiveSourceControl.A
\Longrightarrow
Smooth
```

unless the first arrow has already been installed as an independent classical
continuation theorem.  The current repo does not install that arrow.

## Theorem `FieldFaceResidueReduction.A`

Fix a terminal same-fluid witness packet:

```math
\mathcal W=(Q,N,r,\Phi,u,p).
```

Assume:

1. `Pack_Q` and `Part_{N,Q}` are certified on `\mathcal W`;
2. `Field_{N,r_0,Q_0}` holds on the seed side of the same-fluid family;
3. the same-fluid family remains still-live up to the terminal witness;
4. endpoint-dead and pack-detached alternatives have already been excluded on
   this witness;
5. all receiver/collar, read-cover, pressure/cutoff, and legal-loss suppliers
   except the native positive source-control wall are available in their
   installed conditional form.

Then a terminal `Field` witness failure implies one of the following:

```math
\boxed{
\neg Field_{N,r,Q}
\Longrightarrow
\mathrm{VisibleJump}_{Field}
\ \vee\
\neg ReceiverFieldSupplier
\ \vee\
\neg ReadCover/NoJumpSupplier
\ \vee\
\neg NativePositiveSourceControl.A
\ \vee\
ZenoResidue_B.
}
\tag{FFR.1}
```

After the visible-jump and non-source supplier alternatives are separately
installed or routed into the endpoint matrix, this
reduces to the source-wall root:

```math
\boxed{
\neg Field_{N,r,Q}
\Longrightarrow
\neg NativePositiveSourceControl.A
\ \vee\
ZenoResidue_B.
}
\tag{FFR.2}
```

where:

```math
NativePositiveSourceControl.A
\equiv_{\mathrm{route}}
ScaleCriticalTreeCarleson.A
```

on the direct branch, and:

```math
ZenoResidue_B
:=
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
```

on the compactness branch.

## Proof

The installed one-field route has the form:

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A.
```

The readout layer gives the averaged-to-pointwise field row when its cover
inputs are present:

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Field_{N,r,Q}.
```

The source-pulse/no-`Jump_avg` material is licensed only as a supplier into this
Field/readout side.  It is not itself `Field`, and it is not `CM`.

Now assume all non-source alternatives in `(FFR.1)` are absent:

```math
\neg\mathrm{VisibleJump}_{Field},
\qquad
ReceiverFieldSupplier,
\qquad
ReadCover/NoJumpSupplier,
\qquad
\text{legal pressure/cutoff/off-family ledgers}.
```

Assume also the direct source-control branch:

```math
NativePositiveSourceControl.A,
```

or the Zeno replacement:

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

Then the installed supplier/readout chain gives the one-field predicate on the
same witness carrier:

```math
Field_{N,r,Q}.
```

This contradicts `\neg Field_{N,r,Q}`.  Therefore at least one listed
alternative in `(FFR.1)` must occur.  If the non-source alternatives are
independently excluded, `(FFR.2)` follows.

This is a contrapositive Field-face reduction.  It does not prove
`NativePositiveSourceControl.A` from `OriginalSmoothData`; it says exactly where
that theorem is allowed to be spent inside the CM program.

## Consequence For The Signed-Current Route

The signed-current work is still useful, but its type is now fixed:

```math
TerminalSignedSaturation.A,
ParabolicNoFreeSink.A,
ParabolicCycleCoercivity.A,
ParabolicEdgeResistance.A
```

are route presentations of:

```math
NativePositiveSourceControl.A
```

inside the `Field` face.  They are not direct Part or Field witness, class-membership direction, or
Smooth theorems.

The legal source-wall branch is therefore:

```math
\neg Field
\Longrightarrow
\neg NativePositiveSourceControl.A\ \vee\ ZenoResidue_B,
```

then prove:

```math
NativePositiveSourceControl.A
\quad\text{or}\quad
ZenoResidue_B\text{ impossible}.
```

The live analytic wall remains:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

but it is now correctly typed as a `Field`-face exclusion theorem under the CM
contrapositive proof program, not as the primitive proof direction itself.

## Promotion Boundary

This note installs a route-orientation and contrapositive bridge:

```math
FieldFaceResidueReduction.A.
```

It does not discharge:

```math
ScaleCriticalTreeCarleson.A,
\qquad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A,
\qquad
NativePositiveSourceControl.A.
```

No source-wall estimate may be promoted unless it is explicitly consumed through
`FieldFaceResidueReduction.A` or through an equally explicit Part/Field
witness bridge.
