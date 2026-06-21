# MPP PCTP.hard Collapse To Jump_avg Source Primitive

## Status

Theorem-facing dependency normalization after the support closures.

This note proves that, on the current averaged terminal-tail route, `PCTP.5.A`
is not an additional analytic primitive once the branch-native `Jump_avg`
elimination theorem is supplied. The direct `Pack.TTU` route remains a valid
fallback route, but it is not the next active primitive under the installed
TGC/AACT/AVG/READ assembly.

Against the governing CM primitive `Exit(Q):=not Member(Q)`, the whole note is
downstream. The phrase `source primitive` in this note means only the
remaining source-side input internal to the averaged `PCTP.hard` consumer
route. It does not mean either the governing CM primitive or the
source-pulse branch theorem for the class-membership contradiction program.

## Inputs

Use the installed support chain:

```math
TGC.A.noEscape+TGC.A.cover+AACT.Global.noJump+AVG.END.A+READ.END
\Longrightarrow
PCTP.hard / TTU.A.
```

from `mpp-pctp-tgc-integrated-terminal-tail-bridge-note.md`, with the upstream
spending audit from `mpp-tgc-a-upstream-spending-audit-note.md`.

Use the selected source/consumer row:

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
\qquad
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\text{ among those hypotheses,}
```

as verified for the selected route by
`mpp-pctp-hard-source-supplier-verification-note.md`.

Finally assume the remaining source primitive:

```math
AWG.A
\Longrightarrow
JAVG.1+JAVG.2
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
```

Equivalently, one may assume `SOURCE.NO-PULSE.A`, `NOHOP.A`, heat-scale
square-source control, direct active-window Carleson control, or the stronger
`QDrain.A` presentation.  The mixed-shell presentation
`MSC.Spill.NoPulse` is the same source atom expressed as spill-coefficient
domination for the mixed bilinear dissipation identity.

## Theorem

```math
\boxed{
AWG.A
+TGC.A
+AACT.Global.noJump
+AVG.END.A
+READ.END
\Longrightarrow
PCTP.hard / TTU.A.
}
```

With the support rows already installed for the selected route, this reduces the
current active primitive to:

```math
OriginalSmoothData\Longrightarrow AWG.A.
```

Again, this is the active primitive only for the downstream averaged
terminal-tail route; it is not a CM primitive or witness bridge.

## Proof

Work on a retained bounded-distortion same-fluid terminal approach tail
`\mathcal T`.

By `AWG.A`, the averaged jump branch is impossible:

```math
Jump_{avg}(\mathcal T)\Rightarrow\bot.
```

The TGC no-escape split says that bad material contact or terminal SCF-good
radius collapse implies `Jump_avg`:

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\quad\vee\quad
\inf r_{good}=0
\Longrightarrow
Jump_{avg}.
```

Since `Jump_avg` is impossible, the terminal tail lies on the complementary
no-jump branch. Therefore `TGC.A.cover` gives a finite positive-scale
SCF-good same-fluid terminal cover:

```math
\mathcal T'\subset
\bigcup_{j=1}^J Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
r_j\ge r_*>0,
\qquad
SCF_{base}(Q_{r_j}^{\Phi})\le\varepsilon_m,
```

with finite overlap and scheduler-ready `L^1` majorants.

On this cover, `ATD_m^\varepsilon`, the local averaged ACT inequalities, and
`AACT.Global.noJump` yield

```math
DTC.A_{avg}.
```

The averaged receiver and selected source-consumer chain then gives

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
```

and

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

The averaged endpoint package gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

Only after this averaged endpoint is available does the readout layer enter:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

Thus the terminal-tail retained class-membership/tower readout required by
`PCTP.hard / TTU.A` is produced in the legal order.

## Consequence

After the installed closures of `AACT.Global.noJump`, the selected source row,
and the bridge-license/readout package, the active averaged-route queue is:

```math
OriginalSmoothData\Longrightarrow
AWG.A/SOURCE.NO\text{-}PULSE.A/MSC.Spill.NoPulse.
```

The terminal-tail production item remains a release-facing blocked output, but
not an independent analytic primitive on this route. It closes downstream of
`AWG.A` through the TGC/AACT/AVG/READ assembly above.

If the route instead rejects the averaged TGC bridge and insists on direct
pointwise terminal-tail production, the fallback primitive is still

```math
Pack.TTU:
\quad
OriginalSmoothData\Longrightarrow S_{pack,Q}\in L^1([t_0,T_*)).
```

That fallback is separate from the active averaged-route collapse.
