# MPP SourcePulseDTCCover.A Extraction Theorem

## Status

Theorem-facing discharge of the source-side geometric half of
`SourcePulseDTCPlacement.A`.

This note proves:

```math
\boxed{
SourcePulseDTCCover.A.
}
```

It does not prove the analytic transported-center packet
`DTC.A_{\mathfrak p}` on that cover.  After this note, the only remaining input
for `SourcePulseDTCPlacement.A` is the analytic cell:

```math
\boxed{
DTC.A_{\mathfrak p}
\quad
\text{on each extracted same-family cover element, through depth }N+2.
}
```

## Target

Recall the cover-extraction target from
`mpp-sourcepulse-field-face-tower-placement-reduction-note.md`:

```math
\boxed{
SourcePulseDTCCover.A:
\quad
\text{every terminal source-pulse genuine non-smooth witness which retains }
Pack+Part
\text{ admits a finite same-family transported-center cover at the radii
required by }DTC.A.
}
\tag{SPDTC.0}
```

The target is geometric and selection-facing.  It asks only for the finite
same-family cover.  It does not include Morrey, pressure, viscous, center
forcing, affine-excess, or residual forcing estimates.

## Theorem `SPDTC.A` (Source-Pulse DTC Cover Extraction)

Let

```math
\mathcal P_n=(Q_n^\Phi,j_n,I_n)
```

be a terminal same-fluid source-pulse family.  Assume each `Q_n^\Phi` retains
the installed packing witness:

```math
Pack_{Q_n}(u,\Phi).
\tag{SPDTC.1}
```

Then, after shrinking the spatial radii by a fixed dimensional factor if
necessary, each `Q_n^\Phi` admits a finite transported-center cover

```math
Q_{n,t}
\subset
\bigcup_{\mathfrak p\in\mathscr P_n}
B(c_{\mathfrak p}(t),R_{\mathfrak p,n})
\qquad (t\in I_n)
\tag{SPDTC.2}
```

with:

1. `\mathscr P_n` finite for each `n`;
2. bounded overlap depending only on dimension and the local pack gauge on
   `Q_n`;
3. centers transported by the same flow map `\Phi`;
4. radii chosen at the DTC heat/packet scale required for the terminal active
   shell `j_n`;
5. all cover elements belonging to the same source-pulse family, not to a
   downstream readout cover.

Consequently:

```math
\boxed{
Pack\text{ on the terminal source-pulse family}
\Longrightarrow
SourcePulseDTCCover.A.
}
\tag{SPDTC.3}
```

### Proof

Fix `n`.  The packet window `Q_n^\Phi` is a legal same-fluid terminal active
window.  On that window, `Pack_{Q_n}` gives one transported carrier map
`\Phi_t` with finite local distortion:

```math
\Gamma_{\mathrm{pack},Q_n}(t)<\infty
\qquad (t\in I_n).
\tag{SPDTC.4}
```

Choose the DTC packet radius `R_{n}^{DTC}` to be the required heat/packet radius
for shell `j_n`, after the fixed collar shrink allowed in the statement.  Let
`A_n` be the compact label footprint of `Q_n^\Phi`, and set

```math
\Gamma_n:=
\sup_{a\in A_n,\ t\in I_n}
\max\{|D\Phi_t(a)|,\ |D\Phi_t(a)^{-1}|\}.
```

Choose a maximal `\eta_n`-separated net

```math
\{a_1,\ldots,a_{J_n}\}\subset A_n,
\qquad
\eta_n:=R_n^{DTC}/(2\Gamma_n).
```

The net is finite because `A_n` is compact.  Maximality gives the label cover
by `B(a_\ell,\eta_n)`, and the Lipschitz bound gives the transported cover with
radius `R_n^{DTC}/2`.  Transport the centers by the same flow map:

```math
c_{\mathfrak p}(t)=\Phi_t(a_{\mathfrak p}).
\tag{SPDTC.5}
```

The overlap is also fixed by the same hypotheses.  If one Eulerian point lies
in `K` transported balls, the inverse Lipschitz bound puts the corresponding
label centers in a ball of radius `\Gamma_n R_n^{DTC}/2`.  The disjoint balls
`B(a_\ell,\eta_n/2)` around those centers fit inside that label ball enlarged
by `\eta_n/2`, so volume packing gives

```math
K\le C_3(2\Gamma_n^2+1)^3,
```

with `C_3` dimensional.  Thus the transported family remains finite for the
whole interval and has bounded overlap depending only on dimension and the
local pack gauge.

The construction uses only the same carrier `\Phi` and the same terminal
packet `Q_n^\Phi`; no `READ.COVER`, endpoint readout cover, averaged cover, or
post-`End_NS` object is imported.  Thus the cover is same-family in the exact
sense required by `SourcePulseDTCPlacement.A`. `\square`

## Corollary `SPDTC.B` (Placement Split After Cover Extraction)

The transported-center placement theorem is now reduced to its analytic cell:

```math
\boxed{
\left[
\bigwedge_{\mathfrak p\in\mathscr P_n}
DTC.A_{\mathfrak p}
\text{ through depth }N+2
\right]
\Longrightarrow
SourcePulseDTCPlacement.A.
}
\tag{SPDTC.6}
```

on the cover extracted by `SPDTC.A`.

### Proof

`SPDTC.A` supplies `SourcePulseDTCCover.A`.  The definition of
`SourcePulseDTCPlacement.A` is exactly:

```math
SourcePulseDTCCover.A
+
\bigwedge_{\mathfrak p}DTC.A_{\mathfrak p}
\Longrightarrow
SourcePulseDTCPlacement.A.
```

Therefore the only unproved input is the analytic transported-center packet on
each extracted cover element. `\square`

## Boundary

This theorem does not prove:

```math
DTC.A_{\mathfrak p},
```

```math
END.TowerAmp,
```

or

```math
SourcePulseFieldExit.A.
```

It closes the geometric cover target and moves the live burden to:

```math
\boxed{
SourcePulseDTCAnalytic.A:
\quad
\bigwedge_{\mathfrak p\in\mathscr P_n}
DTC.A_{\mathfrak p}
\text{ on the extracted same-family source-pulse cover.}
}
\tag{SPDTC.7}
```

That analytic cell must be proved without spending old pointwise `Field`,
`End_NS`, `READ.COVER`, `DTC.Read`, or `SourcePulseExclusion.A` upstream.
