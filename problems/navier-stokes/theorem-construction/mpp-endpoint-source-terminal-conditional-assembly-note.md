# MPP Endpoint / Source Terminal Conditional Assembly Note

## Status

Theorem-facing conditional assembly note.

Role: record the formal endpoint/source terminal assembly after the retained-window receiver packet and the post-`LCI.A` source channels are supplied.

This note is deliberately conditional. It proves the assembly implications from the named input cells. It does **not** prove the analytic suppliers `DTC-to-TowerBound`, `FPCR.C`, `FSCR.C`, or `FCC.C1`, and it does **not** claim an independent classical blowup classification.

The governing conditional implications are:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound
\Longrightarrow
End_{NS}.
\tag{EST.0}
```

The averaged endpoint lane is separate:

```math
AVG.END.A:
\qquad
CFI.A_{\mathrm{avg}}+AVG.END.Cert
\Longrightarrow
End_{NS,\mathrm{avg}}.
\tag{EST.0a}
```

It does not recover the old endpoint package until the readout bridge

```math
READ.END:
\qquad
End_{NS,\mathrm{avg}}+Field.Read+DTC.Read
\Longrightarrow
End_{NS}
\tag{EST.0b}
```

is proved.

```math
FPCR.C+FSCR.C+FCC.C1
\Longrightarrow
FCI.5f.
\tag{EST.1}
```

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A
\Longrightarrow
OFP.A
\Longrightarrow
CFI.A.
\tag{EST.2}
```

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
\tag{EST.3}
```

## Inputs

The endpoint input cells are:

```math
END.Exh,
\qquad
END.Cross,
\qquad
END.Pack,
\qquad
END.Field,
\qquad
END.TowerBound.
\tag{EST.4}
```

The source input cells are the post-`LCI.A` channel theorems:

```math
FPCR.C,
\qquad
FSCR.C,
\qquad
FCC.C1.
\tag{EST.5}
```

The terminal recombination inputs are:

```math
LCI.A,
\qquad
FCI.5f,
\qquad
CFI.B1,
\qquad
CFI.B2.
\tag{EST.6}
```

## Theorem A: Endpoint conditional assembly

Assume `(EST.4)`. Then `End_NS` holds.

### Proof

By the endpoint matrix note, class membership is

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
\tag{EST.A1}
```

`END.Exh` supplies endpoint exhaustiveness in the witness-certificate vocabulary:

```math
\neg CM_{N,r,Q}
\Longrightarrow
Dead
\vee
packing\text{-}detached
\vee
tower\text{-}blown
\vee
Jump.
\tag{EST.A2}
```

`END.Pack` excludes the packing-detached face. Its input is the bounded pack gauge

```math
\Gamma_{pack,Q}\in L^\infty(I).
\tag{EST.A3}
```

Indeed, if `\Gamma_{pack,Q}(t)\le C_Q` on `I`, then the certificate condition for `packing-detached`, which requires unbounded pack-gauge escape, is contradicted by choosing a threshold `M>C_Q`.

`END.Field` excludes the `Jump` face. Its input is `OFP.A`, which propagates a positive one-field coherence scale and a finite field bound on the same-fluid family. Since `Jump` is the loss of every positive one-field coherence scale, `OFP.A` excludes `Jump`.

`END.TowerBound` excludes the `tower-blown` face. Its input is

```math
END.TowerAmp:
\qquad
\mathfrak A_{N,Q}\in L^\infty(I),
\tag{EST.A4}
```

where

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}
\sum_{k=0}^{N}
\left(|U_k(x,t)|+|K_k(x,t)|\right).
\tag{EST.A5}
```

The finite bound `(EST.A4)` contradicts the `tower-blown` certificate, which requires unbounded tower amplitude.

The installed `(Part,Dead)` row excludes the `Dead` face.

It remains to account for cross entries. `END.Cross` reduces them by the accepted endpoint matrix rules:

```math
Blown
\Longleftrightarrow
packing\text{-}detached
\vee
tower\text{-}blown,
\tag{EST.A6}
```

```math
Pack+Part+Jump
\Longrightarrow
Field\text{-coherence fracture},
\tag{EST.A7}
```

and the dead cross-entry reduces through the installed `(Part,Dead)` row.

Thus every endpoint face supplied by `(EST.A2)` is excluded by `(EST.4)`. Therefore no endpoint face remains in the witness-certificate matrix, and `End_NS` holds. ∎

## Theorem A_avg: Averaged endpoint conditional assembly

Define the averaged class-membership witness by

```math
CM_{\mathrm{avg},N,R,Q}
=
Pack_Q\wedge Part_{N,Q}\wedge Field_{\mathrm{avg},N,R,Q}.
\tag{EST.Aavg1}
```

The averaged one-field coherence row means that there is a positive scale
`R>0` and a finite same-fluid moving cover of `Q` such that the averaged
finite-difference / affine-excess / pressure-normalized coherence packet
propagated by

```math
LCI.A_{\mathrm{avg}}
\Longrightarrow
CSP.A_{\mathrm{avg}}
\Longrightarrow
OFP.A_{\mathrm{avg}}
```

is finite on that cover:

```math
\mathcal C^{avg}_{N,R,Q}(I)<\infty.
\tag{EST.Aavg1a}
```

The averaged jump face is loss of every positive averaged coherence scale:

```math
Jump_{\mathrm{avg}}
\quad\Longleftrightarrow\quad
\forall R>0,\
Field_{\mathrm{avg},N,R,Q}
\text{ fails on the same-fluid tail.}
\tag{EST.Aavg1b}
```

The averaged tower-blown face is escape of the averaged tower packet:

```math
tower\text{-}blown_{\mathrm{avg}}
\quad\Longleftrightarrow\quad
\forall M<\infty,\ \exists t\in I:
\mathfrak A^{avg}_{N,Q}(t)>M.
\tag{EST.Aavg1c}
```

The `Dead` and `packing-detached` faces keep their retained meanings:

```math
Dead:=\neg Part_{N,Q},
\qquad
packing\text{-}detached:=
\Gamma_{\mathrm{pack},Q}
\text{ escapes every finite bound.}
\tag{EST.Aavg1d}
```

Define the averaged endpoint package by

```math
End_{NS,\mathrm{avg}}
:=
END.Pack
\wedge
END.Field_{\mathrm{avg}}
\wedge
END.TowerBound_{\mathrm{avg}}
\wedge
END.Cross_{\mathrm{avg}}
\wedge
END.Exh_{\mathrm{avg}}.
\tag{EST.Aavg2}
```

The native averaged field and tower faces are

```math
END.Field_{\mathrm{avg}}:
\qquad
Field_{\mathrm{avg}}+OFP.A_{\mathrm{avg}}
\Longrightarrow
\neg Jump_{\mathrm{avg}},
\tag{EST.Aavg3}
```

```math
END.TowerBound_{\mathrm{avg}}:
\qquad
\mathfrak A_{N,Q}^{avg}\in L^\infty(I)
\Longrightarrow
\neg tower\text{-}blown_{\mathrm{avg}},
\tag{EST.Aavg4}
```

The averaged endpoint exhaustiveness theorem is

```math
\boxed{
END.Exh_{\mathrm{avg}}:
\neg CM_{\mathrm{avg},N,R,Q}
\Longrightarrow
Dead
\vee
packing\text{-}detached
\vee
tower\text{-}blown_{\mathrm{avg}}
\vee
Jump_{\mathrm{avg}}.
}
\tag{EST.Aavg5}
```

Proof. Since

```math
CM_{\mathrm{avg}}
=
Pack\wedge Part\wedge Field_{\mathrm{avg}},
```

failure of `CM_avg` is failure of at least one factor. Failure of `Part`
is `Dead`. Failure of `Field_avg` at every positive averaged coherence scale
is `Jump_avg`. Failure of `Pack` is routed through the averaged pack/tower
certificate split

```math
\neg Pack
\Longrightarrow
packing\text{-}detached
\vee
tower\text{-}blown_{\mathrm{avg}}.
\tag{EST.Aavg5a}
```

Combining these cases proves `END.Exh_avg`. ∎

Define the averaged blown gauge by

```math
\mathfrak B^{avg}_{N,Q}(t)
=
\Gamma_{\mathrm{pack},Q}(t)
+
\mathfrak A^{avg}_{N,Q}(t).
\tag{EST.Aavg5b}
```

The averaged cross theorem is

```math
\boxed{
END.Cross_{\mathrm{avg}}:
\text{every averaged cross-entry reduces to }
(Part,Dead),\ END.Pack,\ END.TowerBound_{\mathrm{avg}},\ END.Field_{\mathrm{avg}}.
}
\tag{EST.Aavg6}
```

Proof. A dead cross-entry carries participation failure, hence reduces to the
installed native row

```math
Dead_\times\Longrightarrow(Part,Dead).
\tag{EST.Aavg6a}
```

A blown cross-entry is escape of `\mathfrak B^{avg}_{N,Q}`. Escape of this sum
forces escape of at least one summand:

```math
Blown_\times
\Longrightarrow
\Gamma_{\mathrm{pack},Q}\text{ escapes}
\vee
\mathfrak A^{avg}_{N,Q}\text{ escapes},
```

so

```math
Blown_\times
\Longrightarrow
packing\text{-}detached
\vee
tower\text{-}blown_{\mathrm{avg}}.
\tag{EST.Aavg6b}
```

A jump cross-entry is a surviving one-field failure while the same-fluid
carrier remains under the `Pack` and `Part` rows. In the averaged grammar the
field row is `Field_avg`, so

```math
Jump_\times
\Longrightarrow
Jump_{\mathrm{avg}},
\tag{EST.Aavg6c}
```

equivalently

```math
Jump_\times
\Longrightarrow
Field_{\mathrm{avg}}\text{-coherence fracture}.
\tag{EST.Aavg6d}
```

Thus every averaged cross-entry reduces to the displayed native averaged
endpoint rows. ∎

Let

```math
AVG.END.Cert
:=
END.Pack
+END.Field_{\mathrm{avg}}
+END.TowerBound_{\mathrm{avg}}
+END.Cross_{\mathrm{avg}}
+END.Exh_{\mathrm{avg}}.
\tag{EST.Aavg7}
```

Then

```math
AVG.END.A:
\qquad
CFI.A_{\mathrm{avg}}+AVG.END.Cert
\Longrightarrow
End_{NS,\mathrm{avg}}.
\tag{EST.Aavg8}
```

### Proof

`CFI.A_avg` gives persistence of `CM_avg` on the same-fluid still-live
windows. If an averaged class exit occurs, `END.Exh_avg` produces one
averaged endpoint shell. The installed `(Part,Dead)` row removes `Dead`;
bounded pack gauge and `END.Pack` remove `packing-detached`;
`END.Field_avg` removes `Jump_avg`; `END.TowerBound_avg` removes
`tower-blown_avg`; and `END.Cross_avg` reduces the cross cases to those same
native rows. Therefore no averaged endpoint face remains, and
`End_NS_avg` holds. ∎

## Theorem A_read: Endpoint readout compatibility

The compatibility bridge to the old endpoint package is

```math
READ.END:
\qquad
End_{NS,\mathrm{avg}}
+
Field.Read
+
DTC.Read
\Longrightarrow
End_{NS}.
\tag{EST.Aread1}
```

where

```math
Field.Read:
\qquad
Field_{\mathrm{avg}}\Longrightarrow Field,
\tag{EST.Aread2}
```

and

```math
DTC.Read:
\qquad
DTC.A_{\mathrm{avg}}\Longrightarrow DTC.A.
\tag{EST.Aread3}
```

The readout locations are exact:

```math
Field.Read
\text{ feeds }END.Field\text{ and }END.Exh,
\tag{EST.Aread4}
```

while

```math
DTC.Read
\text{ feeds }END.TowerAmp.
\tag{EST.Aread5}
```

Thus the averaged endpoint lane is

```math
AVG.RCV.A
\Longrightarrow
LCI.A_{\mathrm{avg}}
\Longrightarrow
CSP.A_{\mathrm{avg}}
\Longrightarrow
OFP.A_{\mathrm{avg}}
\Longrightarrow
CFI.A_{\mathrm{avg}}
\Longrightarrow
End_{NS,\mathrm{avg}},
\tag{EST.Aread6}
```

and the pointwise endpoint lane is

```math
READ.END
\Longrightarrow
End_{NS}.
\tag{EST.Aread7}
```

After `AVG.END.A`, the remaining branches are

```math
\boxed{
READ.END:
End_{NS,\mathrm{avg}}+Field.Read+DTC.Read
\Longrightarrow
End_{NS}
}
\tag{EST.Aread8}
```

and the deeper analytic branch

```math
\boxed{
SCF_{\mathrm{avg}}\text{ supply}
\Longrightarrow
AACT.KX
\Longrightarrow
AVG.RCV.A
\Longrightarrow
AVG.END.A.
}
\tag{EST.Aread9}
```

## Theorem B: Source conditional assembly

Assume the post-`LCI.A` source channel inputs `(EST.5)`. Then `FCI.5f` holds.

### Proof

The frozen-family source split gives the exact pointwise identity

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}
=
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}
+
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}.
\tag{EST.B1}
```

`FPCR.C` supplies

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,press}\in L^1(I).
\tag{EST.B2}
```

Here the pressure channel has already been split into low-high/high-low, resonant finite-net pressure, and energy far-tail pieces. Its coefficient-side inputs are post-`LCI.A` inputs; this theorem does not move them before receiver closure.

`FSCR.C` supplies

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,sc}\in L^1(I).
\tag{EST.B3}
```

The strain/cascade estimate is the post-`LCI.A` coefficient-side bound of the triangular nonpressure channel.

`FCC.C1` supplies

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon,cut}\in L^1(I).
\tag{EST.B4}
```

Its proof uses the cutoff absorption estimate

```math
\mathcal N^{src,cut}
\le
\frac12\mathcal N^{visc}
+
\mathfrak b_{\psi}^{cut}\mathcal F^{\varepsilon},
\tag{EST.B5}
```

with `\mathfrak b_{\psi}^{cut}\in L^1(I)` supplied by post-`LCI.A` packet-factor derivative control.

Integrating `(EST.B1)` over `I` and using `(EST.B2)`--`(EST.B4)` gives

```math
\mathcal N_{N,\rho,\psi}^{src,\varepsilon}\in L^1(I).
\tag{EST.B6}
```

This is exactly `FCI.5f`. ∎

## Theorem C: Terminal recombination

Assume `LCI.A`, `FCI.5f`, `CFI.B1`, `CFI.B2`, and `End_NS`. Then there is no finite-time class exit along the route.

### Proof

First, collar Sobolev propagation consumes lower-carrier integrability and the frozen-family source ledger:

```math
LCI.A+FCI.5f
\Longrightarrow
CSP.A.
\tag{EST.C1}
```

Second, one-field forward preservation consumes the collar Sobolev packet and the same frozen-family source ledger:

```math
CSP.A+FCI.5f
\Longrightarrow
OFP.A.
\tag{EST.C2}
```

Third, class-membership forward invariance consumes the one-field theorem and the installed pack and participation forward inputs:

```math
OFP.A+CFI.B1+CFI.B2
\Longrightarrow
CFI.A.
\tag{EST.C3}
```

Finally, endpoint exclusion consumes class-membership forward invariance and the endpoint package:

```math
CFI.A+End_{NS}
\Longrightarrow
\text{no finite-time class exit}.
\tag{EST.C4}
```

Combining `(EST.C1)`--`(EST.C4)` proves the terminal recombination. ∎

## Corollary: Conditional terminal lane closure

Assume the retained-window receiver package has supplied `LCI.A`, the post-`LCI.A` source cells `(EST.5)` hold, the endpoint input cells `(EST.4)` hold, and the class-membership forward inputs `CFI.B1` and `CFI.B2` hold. Then there is no finite-time class exit.

### Proof

By Theorem B, `(EST.5)` gives `FCI.5f`. By Theorem A, `(EST.4)` gives `End_NS`. The assumptions now include `LCI.A`, `CFI.B1`, and `CFI.B2`, so Theorem C applies with all required hypotheses. Therefore there is no finite-time class exit. ∎

## Boundary

This note proves only the formal endpoint/source terminal assembly from named input cells. It does not prove:

```math
DTC\text{-}to\text{-}TowerBound,
\qquad
END.TowerAmp,
\qquad
FPCR.C,
\qquad
FSCR.C,
\qquad
FCC.C1.
\tag{EST.D1}
```

Those remain separate theorem-grade supplier cells. In particular, `DTC-to-TowerBound` must still read out both `U_k` and `K_k` on a finite transported-center cover, with depth at least `N+2` and local pressure/viscous response for

```math
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
\tag{EST.D2}
```

The source channel inputs remain downstream of `LCI.A`, not pre-receiver data.
