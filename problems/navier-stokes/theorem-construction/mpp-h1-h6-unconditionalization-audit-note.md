# H1-H6 Unconditionalization Closure Audit for `TCM.6`

## Claim level

This note records the updated theorem-surface audit for the current
Navier-Stokes class-membership edge. The six burdens

```math
LCI.A,\quad CJ.A_{low}.7,\quad FCI.5f,\quad OFP.A,\quad CFI.A,\quad End_{NS}
```

were already terminally closed at the retained H1-H6 packet level. The requested
next layer was the original-data/endpoint upgrade:

```math
OriginalSmoothData\Longrightarrow H1+H2+H6.
```

That layer is now installed through the paired notes

- `mpp-endpoint-face-packgauge-retained-admission-solution-note.md`
- `mpp-rawdata-production-and-release-completion-packet.md`

with route-facing theorem:

```math
RawData.Production
+EndpointFace.Type
+PackGauge.Dichotomy
+RetainedAdmission.Persistence
\Longrightarrow
H1+H2+H6+ORIGIN.Retain.
```

## Source cut

Read surfaces:

- `problems/navier-stokes/live-theorem-edge.md`
- `problems/navier-stokes/live-theorem-edge.yaml`
- `problems/navier-stokes/theorem-construction/mpp-terminal-class-membership-six-burden-closure-note.md`
- `problems/navier-stokes/theorem-construction/mpp-act-kx-conditional-route-completion-packet.md`
- `problems/navier-stokes/theorem-construction/mpp-endpoint-face-packgauge-retained-admission-solution-note.md`
- `problems/navier-stokes/theorem-construction/mpp-rawdata-production-and-release-completion-packet.md`
- `problems/navier-stokes/proof-obligation-matrix.yaml`

The obligation matrix now has no unresolved or bridge-pending proof obligations
inside this local class-membership packet. Review/export surfaces still govern
paper readiness.

## Six-burden replay

The installed ordered discharge is:

```math
RSCB.NKF
\Rightarrow NKF.Native
\Rightarrow ACT.KX
\Rightarrow ACT.X\text{-Readout}
\Rightarrow ACT.A
\Rightarrow RCF.A
\Rightarrow LCI.A
\Rightarrow FCI.5f
\Rightarrow OFP.A
\Rightarrow CFI.A
\Rightarrow End_{NS}.
```

The named burden closures remain:

1. `LCI.A`: retained receiver chain through `ACT.KX + ACT.X-Scale + RWS.C_scale => ACT.X-Readout => ACT.A => RCF.A => LCI.A`.
2. `CJ.A_low.7`: lower-carrier converse supplier on a fixed same-fluid transported cover; `ACT.KX + Field^{<=C} => Gamma_low in L^1(I)`.
3. `FCI.5f`: post-`LCI.A` source ledger, `FPCR.C + FSCR.C + FCC.C1`.
4. `OFP.A`: `LCI.A + FCI.5f => CSP.A => OFP.A`.
5. `CFI.A`: `OFP.A + CFI.B1 + CFI.B2 => CFI.A`.
6. `End_NS`: `DTC-to-TowerBound + END.Exh + END.Cross + END.Pack + END.Field => End_NS`.

## H1: `OriginalSmoothData => RSCB.NKF` through endpoint

On compact classical intervals, H1 follows from retained smooth center-ball
regularity:

```math
RSCB.NKF \Rightarrow NKF.Moll + NKF.Point \Rightarrow NKF.Native.
```

The endpoint upgrade is supplied by `RetainedAdmission.Persistence`: if pack
gauge, participation, field coherence, and finite tower ledgers stay finite on
an approach tail, retained center balls, local smooth norms, `ACT.X-Scale`, and
scheduler seeds persist on a shorter terminal subwindow. If retained admission
fails first, `EndpointFace.Type` routes the failure to

```math
Dead\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

`End_NS` excludes those faces, so retained-window native forcing persists up to
the endpoint.

## H2: bounded pack gauge through endpoint

On compact classical intervals,

```math
\partial_tD_a\Phi(a,t)=\nabla u(\Phi(a,t),t)D_a\Phi(a,t)
```

and `\nabla u\in L^1_tL^\infty_x` give bounded deformation and bounded inverse
deformation. Hence `\Gamma_{pack,Q}\in L^\infty` and the finite same-fluid cover
is available locally.

At the endpoint, `PackGauge.Dichotomy` supplies the exact route split:

```math
\Gamma_{pack,Q}\notin L^\infty
\Longrightarrow
packing\text{-}detached\vee tower\text{-}blown.
```

Those are endpoint faces killed by `End_NS`, so the bounded pack gauge persists
on endpoint-free approach tails.

## H6: endpoint certificate exhaustiveness

The exact class witness is

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

`EndpointFace.Type` proves from this witness:

```math
\neg Part\Rightarrow Dead,
\qquad
\neg Pack\Rightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field\Rightarrow Jump.
```

The cross-entry reductions follow from the same grammar: dead cross-entries
reduce to `(Part,Dead)`, blown cross-entries reduce through
`\mathfrak B_{N,Q}=\Gamma_{pack,Q}+\mathfrak A_{N,Q}`, and jump cross-entries
reduce to the field-coherence fracture row. Thus `END.Exh` and `END.Cross` are
installed from definitions.

## Conclusion

H1, H2, and H6 are solved at the class-membership-local route level. H3-H5 then
replay inside the existing packet, yielding

```math
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

This closure discharges the requested H-layer. The remaining nonlocal release
state is not this H-layer: submission/review surfaces still mark paper export
and stand-alone presentation as revise-stage.
