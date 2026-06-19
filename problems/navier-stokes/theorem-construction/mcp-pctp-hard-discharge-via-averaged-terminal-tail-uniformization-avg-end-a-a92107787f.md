# PCTP.hard Conditional Reduction Via Averaged Terminal-Tail Uniformization

## Status

Terminal readout support packet. This is downstream support, not the current
CM-exit live edge, and it does not discharge `PCTP.hard / TTU.A` from
`OriginalSmoothData` by itself.

CM-exit boundary: promotion requires a checked landing in `Pack`, `Part`, or
`Field`. The readout chain may support endpoint compatibility, but it is not the
governing primitive

```math
Exit(Q):=\neg Member(Q).
```

## Exact Target

The terminal-tail target remains:

```math
PCTP.hard:
\qquad
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained/readout cover}.
```

This note proves only the following conditional reduction on a same-fluid
terminal approach tail:

```math
\mathrm{AvgProd}
+\mathrm{Jump}_{avg}\text{-handled}
+AVG.END.Cert
+READ.END
+END.PartMargin
\Longrightarrow
End_{NS}.
\tag{TTU.cond}
```

Here:

- `AvgProd` means the averaged no-`Jump_avg` production chain through
  `DTC.A_avg`, `AVG.RCV.A`, `LCI.A_avg`, `CSP.A_avg`, `OFP.A_avg`, and
  `CFI.A_avg`;
- `Jump_avg-handled` means the `Jump_avg` branch is separately eliminated or
  consumed as a licensed CM face. It is not removed by the no-`Jump_avg`
  production chain itself;
- `READ.END` is the terminal readout layer
  `End_NS_avg + READ.COVER + Field.Read + DTC.Read => End_NS`;
- `END.PartMargin` is the repaired pointwise endpoint input: closed terminal
  Part predicates or retained strict response margins on the same terminal tail.

## Averaged Production Chain

Work on a same-fluid terminal approach tail. The averaged-good split gives two
alternatives:

```math
Jump_{avg}
\quad\vee\quad
\neg Jump_{avg}.
```

`CAVG.J` types contact with the bad material set as `Jump_avg`, and `TGC.A`
types terminal SCF-good radius degeneration as `Jump_avg`. On the complementary
no-`Jump_avg` branch, the terminal tail has a finite positive-scale SCF-good
same-fluid cover with bounded overlap and a common scheduler majorant.

On that no-`Jump_avg` branch, the local moving-cylinder gain gives
`ATD_m^\varepsilon` on each shrunken cover cylinder. `AACT.Global.noJump` sums
the local averaged ACT budgets across the finite cover and finite route
parameter set, yielding

```math
DTC.A_{avg}.
```

The averaged receiver chain gives

```math
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}.
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

This removes averaged endpoint faces only after the averaged production branch
has built `CFI.A_avg` / `Field_avg`. It does not eliminate a branch that entered
`Jump_avg` before that production branch. That branch needs a separate
no-pulse/no-jump supplier or licensed CM-exit consumption.

## Readout Layer

Terminal readout is used in this order:

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

The pointwise endpoint package is the repaired package

```math
End_{NS}
:=
END.Pack
\wedge END.PartMargin
\wedge END.Field
\wedge END.TowerBound
\wedge END.Cross
\wedge END.Exh.
```

The pointwise terminal faces are therefore

```math
Dead
\vee
response\text{-}margin\text{-}collapse
\vee
packing\text{-}detached
\vee
tower\text{-}blown
\vee
Jump,
```

with cross entries reduced only by the accepted `END.Cross` maps on the same
endpoint packet.

## Noncircularity

The upstream averaged production branch uses only:

1. `SGC.A_{a.e.}` good-region coverage;
2. `CAVG.J` bad-set classification;
3. `TGC.A` terminal good-radius classification;
4. `ATD_m^\varepsilon` local moving-cylinder gain;
5. local `AACT.KX` budgets and finite-cover scheduler summation;
6. the separate `Jump_avg-handled` input when the branch enters `Jump_avg`.

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

upstream of `End_NS_avg`.

## Boundary

This packet reduces `PCTP.hard / TTU.A` to the displayed averaged production,
`Jump_avg` handling, endpoint-readout, and repaired Part-margin inputs. It is not
a proof of

```math
OriginalSmoothData\Longrightarrow End_{NS}
```

and it is not a proof of the final periodic continuation readout

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty
\qquad(s>5/2).
```

Those inputs remain the promotion boundary for this downstream terminal-tail
route.
