# H1-H2-H6 / `ORIGIN.Retain` Closure Note

## Status

This note supersedes the earlier attack version. The three primitive burdens it
isolated are now discharged in
`mpp-endpoint-face-packgauge-retained-admission-solution-note.md`, and the
source-side production/release packet is recorded in
`mpp-rawdata-production-and-release-completion-packet.md`.

The installed route-facing closure is:

```math
RawData.Production
+EndpointFace.Type
+PackGauge.Dichotomy
+RetainedAdmission.Persistence
\Longrightarrow
H1+H2+H6+ORIGIN.Retain.
```

Here `RawData.Production` is read in the endpoint-exclusion route sense: on any
same-fluid endpoint approach tail, either finite `Pack/Part/Field/tower` data
are produced, or the failure is typed into the endpoint matrix. Since `End_NS`
removes the endpoint faces, endpoint-free approach tails carry the finite data.

## H1: retained-window native forcing through endpoint

On compact classical intervals, smoothness of the maximal solution supplies
retained center balls and finite local `u,p` norms. The retained smooth
center-ball theorem gives

```math
RSCB.NKF
\Longrightarrow
NKF.Moll+NKF.Point
\Longrightarrow
NKF.Native.
```

At a first finite retained-route endpoint, failure of retained admission cannot
occur inside a compact classical subinterval. It must therefore appear as a
typed loss of one of the retained class witnesses, or as finite tower-amplitude
escape. `EndpointFace.Type` and `RetainedAdmission.Persistence` give the
endpoint alternative:

```math
\text{failure of retained admission}
\Longrightarrow
Dead\vee response\text{-}margin\text{-}collapse
\vee packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

Thus `End_NS` excludes the only first-failure faces, and `RSCB.NKF` persists on
endpoint-free approach tails.

## H2: bounded pack gauge through endpoint

On compact classical intervals, the deformation gradient satisfies

```math
\partial_tD_a\Phi(a,t)=\nabla u(\Phi(a,t),t)D_a\Phi(a,t),
\qquad
\det D_a\Phi=1.
```

Since `\nabla u\in L^1_tL^\infty_x` on retained tubes, Gronwall gives bounded
`D_a\Phi`; incompressibility and smooth invertibility give bounded inverse
deformation. Therefore

```math
\Gamma_{pack,Q}\in L^\infty(I)
```

on compact classical intervals. At an endpoint approach tail, `PackGauge.Dichotomy`
gives

```math
\Gamma_{pack,Q}\text{ escapes every finite bound}
\Longrightarrow
packing\text{-}detached\vee tower\text{-}blown.
```

Both faces are killed by the endpoint matrix once `End_NS` is installed. Hence
the pack gauge and finite same-fluid cover persist on endpoint-free approach
tails.

## H6: endpoint certificate exhaustiveness

The exact witness is

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

`EndpointFace.Type` proves the certificate grammar directly from this witness:

```math
\neg Part_{N,Q}\Longrightarrow Dead,
\qquad
\neg Pack_Q\Longrightarrow packing\text{-}detached\vee tower\text{-}blown,
\qquad
\neg Field_{N,r,Q}\Longrightarrow Jump.
```

The cross entries reduce through the same grammar: dead cross-entries use the
installed `(Part,Dead)` row, blown cross-entries use
`\mathfrak B_{N,Q}=\Gamma_{pack,Q}+\mathfrak A_{N,Q}`, and jump cross-entries
use the field-coherence fracture row. Therefore

```math
END.Exh+END.Cross
```

are installed from definitions, and the endpoint block closes as

```math
DTC\text{-}to\text{-}TowerBound
+END.Exh+END.Cross+END.Pack+END.Field
\Longrightarrow
End_{NS}.
```

## Replay

With H1, H2, and H6 installed, H3-H5 replay in the existing packet:

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

Thus the requested next layer is solved at the class-membership-local route
level. The separate paper/review release surfaces still govern whether the
whole Navier-Stokes packet is export-ready.
