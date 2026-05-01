# Jump_avg branch elimination continuation after `AACT.Global.noJump` repair

## Status

Failed discharge / hard obstruction record.

This continuation follows the repaired no-jump averaged ACT globalization note:

```math
\neg Jump_{avg}+TGC.A.cover+ATD_m^\varepsilon+AACT.KX.local
\Longrightarrow
DTC.A_{avg}.
```

The remaining branch target is Field_avg-free elimination of the complementary face:

```math
Jump_{avg}+OriginalSmoothData
\Longrightarrow
\bot.
```

## Audit result

The current MCP-visible surfaces support a branch-native no-escape program, yet they do not contain the decisive lower/upper pair for one shared charge object.

The viable route is:

```math
Jump_{avg}
\Longrightarrow
\text{positive terminal lower accumulation for }\nu_{SCF},
```

paired with

```math
\nu_{SCF}\text{ has terminal upper control from finite energy and pressure/source estimates.}
```

The upper-side machinery has conditional and partial support through the raw `\nu_{SCF}` pressure/dissipation carrier and active-window reductions. The lower-side theorem remains open:

```math
Jump_{avg}
\Longrightarrow
\text{positive terminal lower accumulation for the same }\nu_{SCF}\text{ charge.}
```

The alternate survivor-measure route also remains open:

```math
Jump_{avg}
\Longrightarrow
\text{nonzero terminal }h/F\text{ survivor measure with separated positive scale-window mass.}
```

## Failure point

`Jump_avg` records terminal loss of positive SCF-good material scale. That grammar alone supplies branch classification. It does not yet produce a quantitative, lower-bounded terminal charge on a measure that is also controlled by the pressure/source upper estimate.

The exact missing theorem is:

```math
\boxed{
Jump_{avg}
\Longrightarrow
\liminf_{k}\nu_{SCF}(\mathcal W_k)\ge c_*>0
}
```

for a terminal sequence of admissible windows `\mathcal W_k`, with the same `\nu_{SCF}` appearing in the already identified upper-control side.

## Excluded routes

The audit excludes these circular routes:

```math
Field_{avg}\text{ on the Jump branch},
\quad
AACT.Global.noJump\text{ on the Jump branch},
\quad
AVG.END.A\text{ as an upstream Jump eliminator},
\quad
CAVG.J\text{ as a contradiction theorem}.
```

## Conclusion

`jump-avg-branch-elimination` remains open. The next theorem-grade target is the shared-charge lower theorem:

```math
Jump_{avg}
\Longrightarrow
\text{positive terminal lower accumulation for }\nu_{SCF}
```

or an equivalent branch-native no-escape mechanism using a charge already controlled by the pressure/source upper estimate.

Full `PCTP.hard` terminal-tail production remains blocked by this branch.