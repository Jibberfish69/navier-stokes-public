# PCTP.hard Discharge Via Averaged Terminal-Tail Uniformization

## Status

Terminal readout support packet. This is downstream support, not the current
CM-exit live edge.

CM-exit boundary: promotion requires a checked landing in `Pack`, `Part`, or
`Field`. The readout chain may support endpoint compatibility, but it is not
the governing primitive `Exit(Q):=not Member(Q)`.

```math
PCTP.hard:
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained/readout cover}.
```

The proof uses the averaged production branch and keeps pointwise readout terminal.

## Theorem `TTU.A`

For smooth periodic original data on the active terminal branch, the averaged route produces a terminal-tail uniformization sufficient for the old pointwise endpoint package:

```math
OriginalSmoothData
\Longrightarrow
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

Equivalently, the terminal faces

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump
```

are excluded through the averaged branch and terminal readout layer.

## Proof

Work on a same-fluid terminal approach tail. The averaged-good split gives two alternatives:

```math
Jump_{avg}
\quad\vee\quad
\neg Jump_{avg}.
```

`CAVG.J` types contact with the bad material set as `Jump_avg`. `TGC.A` types terminal SCF-good radius degeneration as `Jump_avg`. Hence on the complementary branch, the terminal tail has a finite positive-scale SCF-good same-fluid cover with bounded overlap and a common scheduler majorant.

On the no-`Jump_avg` branch, the local moving-cylinder gain gives `ATD_m^\varepsilon` on each shrunken cover cylinder. `AACT.Global.noJump` sums the local averaged ACT budgets across the finite cover and finite route parameter set, yielding

```math
DTC.A_{avg}.
```

The averaged receiver chain gives

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}.
```

The averaged consumer chain gives

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

The averaged endpoint theorem gives

```math
CFI.A_{avg}+AVG.END.Cert
\Longrightarrow
End_{NS,avg}.
```

This removes `Jump_avg` and the other averaged endpoint faces downstream only
after the averaged production branch has built `CFI.A_avg` / `Field_avg`. It
does not eliminate a branch that entered `Jump_avg` before that production
branch. Such a branch needs a separate no-pulse/no-jump supplier or a licensed
CM-exit consumption.

Finally, terminal readout is used in the legal order:

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

Thus the terminal-tail readout cover is produced from the averaged endpoint package, and pointwise endpoint closure follows.

## Noncircularity

The upstream production branch uses only:

1. `SGC.A_{a.e.}` good-region coverage;
2. `CAVG.J` bad-set classification;
3. `TGC.A` terminal good-radius classification;
4. `ATD_m^\varepsilon` local moving-cylinder gain;
5. local `AACT.KX` budgets and finite-cover scheduler summation.

It does not use

```math
READ.COVER,
\quad Field.Read,
\quad DTC.Read,
\quad End_{NS},
\quad DTC.A,
\quad Field,
\quad CFI.A
```

upstream of `End_{NS,avg}`.

## Facewise Conclusion

The previous primitive tower face is routed through the averaged endpoint package:

```math
tower\text{-}blown
\Longrightarrow
tower\text{-}blown_{avg}
\Longrightarrow
End_{NS,avg}
\Longrightarrow
End_{NS}.
```

The bad-material and radius-collapse alternatives are routed through `Jump_avg`, which is removed by `AVG.END.A` downstream.

Therefore `PCTP.hard` is discharged as an averaged terminal-tail
uniformization theorem only after the `Jump_avg` branch is separately
eliminated or consumed.

## Boundary

This packet discharges the local repo target `PCTP.hard / TTU.A` on the periodic terminal branch. Any public Clay-level release claim remains governed by the separate promotion gate and review artifacts.
