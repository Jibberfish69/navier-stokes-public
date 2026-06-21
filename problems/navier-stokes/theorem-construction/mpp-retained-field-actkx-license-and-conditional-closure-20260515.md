# MPP Retained Field ACT.KX License And Conditional Closure

## Status

Theorem-facing license note after
`mpp-retained-field-endpoint-tower-reduction-20260515.md`.

This note separates two things that must not be conflated:

```math
\text{conditional retained ACT.KX closure}
```

and

```math
\text{unconditional endpoint production from original data.}
```

The first one is enough to close the retained Field branch conditionally.  The
second one is the still-open noncircular production burden.

## Installed Input

The endpoint/tower reduction proves:

```math
Pack_Q+Part_{N,Q}+\Gamma_{\mathrm{pack},Q}\in L^\infty
+\neg Field_{N,r,Q}
\Longrightarrow
\neg DTC.TowerPkg_{N+1,Q}.
\tag{RFACT.1}
```

Here `DTC.TowerPkg_{N+1,Q}` means a finite same-family transported-center cover
of `Q_t`, `DTC.A` through depth `N+3` on every cover element, and the same-cover
pressure readout needed by `DTC-to-TowerBound` at tower depth `N+1`.

The retained ACT.KX completion note gives the conditional implication:

```math
ACT.KX+ACT.X\text{-}Scale+RWS.C_{\mathrm{scale}}
\Longrightarrow
ACT.X\text{-}Readout
\Longrightarrow
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}DTC.A_{\mathfrak p}.
\tag{RFACT.2}
```

The affine direct proof sharpens the analytic core:

```math
DTC.M\text{-}Affine_{\mathfrak p}
\Longrightarrow
DTC.PRE_{\mathfrak p}
\Longrightarrow
DTC.A_{\mathfrak p}.
\tag{RFACT.3}
```

These are usable only when their inputs are produced before the endpoint package,
without spending `LCI.A`, `CSP.A`, `OFP.A`, `Field`, or `End_NS`.

## Definition `PreEnd.ACTKX`

On a fixed same-family cover, define `PreEnd.ACTKX_Q` to be the package:

```math
NKF.Native+NKF.Ann+NKF.Quad
\Longrightarrow
ACT.X\text{-}Press,
\tag{RFACT.4}
```

```math
ACT.X\text{-}Cut+ACT.X\text{-}Press+ACT.X\text{-}MidRaw+ACT.X\text{-}TopVisc
\Longrightarrow
ACT.KX,
\tag{RFACT.5}
```

```math
ACT.X\text{-}Scale+RWS.C_{\mathrm{scale}}
\Longrightarrow
ACT.X\text{-}Readout,
\tag{RFACT.6}
```

with all centers, radii, cutoffs, pressure cells, finite parameter sets, and
majorants chosen from pre-endpoint same-family data.

The license condition is:

```math
PreEnd.ACTKX_Q
\text{ cannot cite }
Field,\ OFP.A,\ CFI.A,\ End_NS,\ READ.COVER,\ DTC.Read.
\tag{RFACT.7}
```

## Theorem `RFACT.A` (conditional retained Field closure)

Assume on a first retained terminal tail:

```math
Pack_Q,
\qquad
Part_{N,Q},
\qquad
\Gamma_{\mathrm{pack},Q}\in L^\infty(I),
\tag{RFACT.8}
```

and assume `PreEnd.ACTKX_Q` holds on the same-family cover at depth `N+3`, with
the same-cover pressure readout.  Then the retained Field exit is impossible:

```math
\neg\left(\forall r>0:\neg Field_{N,r,Q}\right).
\tag{RFACT.9}
```

### Proof

`PreEnd.ACTKX_Q` gives `ACT.X-Readout`, hence `DTC.A_{\mathfrak p}` on every
cover element.  The same-cover pressure readout and `DTC-to-TowerBound` at depth
`N+1` give

```math
\mathfrak A_{N+1,Q}\in L^\infty(I).
```

By `RFET.A`, bounded tower plus retained `Part plus Field-window evidence` and bounded pack gauge gives
a positive Field scale.  Therefore the retained Field exit cannot occur.
`\square`

## Contrapositive `RFACT.B`

On a retained branch where `Pack` and `Part` survive, any selected Field-row
exit forces failure of the pre-endpoint ACT/KX-to-DTC package:

```math
Part plus Field-window evidence+\neg Field
\Longrightarrow
\neg PreEnd.ACTKX_Q
\vee
\neg(\text{same-cover pressure readout})
\vee
\neg(\text{same-family depth }N+3\text{ synchronization}).
\tag{RFACT.10}
```

Expanded into proof atoms, the failure must hit one of:

```math
ACT.X\text{-}Scale,
\quad
RWS.C_{\mathrm{scale}},
\quad
ACT.X\text{-}Press,
\quad
ACT.X\text{-}Cut/MidRaw/TopVisc,
\quad
ACT.KX,
\quad
DTC.M\text{-}Affine/DTC.PRE,
\quad
\text{same-cover pressure readout}.
\tag{RFACT.11}
```

This is a Field-row failure.  If the obstruction instead loses bounded pack
geometry or participation, the branch has left through `Pack` or `Part` before
reaching `(RFACT.10)`.

## H1-H6 Custody Boundary

The retained H1-H6 completion file is a conditional replay surface, not an
unconditional source of endpoint data.  Its endpoint persistence lines use
`End_NS` to exclude first-failure faces.  That is legitimate only after the
terminal packet has already been produced.

It cannot be used upstream as:

```math
End_NS
\Longrightarrow
RSCB.NKF\text{ persists}
\Longrightarrow
ACT.KX
\Longrightarrow
DTC.A
\Longrightarrow
End_NS.
\tag{RFACT.12}
```

That loop spends the endpoint conclusion to build the DTC/tower supplier for the
same endpoint conclusion.

## Consequence

The retained pointwise Field branch is conditionally closed:

```math
PreEnd.ACTKX_Q
+\text{same-cover pressure readout}
\Longrightarrow
\text{no retained Field exit under }Part plus Field-window evidence.
\tag{RFACT.13}
```

The unconditional theorem is therefore exactly the noncircular production of
`PreEnd.ACTKX_Q` from original data, or the averaged replacement route:

```math
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{\mathrm{avg}}
\Longrightarrow
DTC.Read/Field.Read/READ.END.
\tag{RFACT.14}
```

No proof may promote the retained H1-H6 replay to an original-data proof unless
it supplies this pre-endpoint production without `End_NS`, pointwise `Field`, or
old readout objects.

## Averaged Branch Boundary

The no-`Jump_avg` averaged side is already a clean conditional production route:

```math
\neg Jump_{avg}
+TGC.A.cover
+ATD_m^\varepsilon
+AACT.KX.local
\Longrightarrow
DTC.A_{avg}.
\tag{RFACT.15}
```

The complementary branch is not closed by this note.  The installed branch
combination theorem is:

```math
Jump_{avg}+SourcePulseExclusion.A\Longrightarrow\bot.
\tag{RFACT.16}
```

So the remaining original-data wall is:

```math
\boxed{
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
\tag{RFACT.17}
```

This is the same source-control atom that appears under the active-window
Carleson / square-source / source-parent reserve names.  It is not the old
positive theorem `OriginalSmoothData => ScaleCriticalTreeCarleson.A`; it is the
contrapositive branch killer needed to remove `Jump_avg` without using the
endpoint package upstream.
