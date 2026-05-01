# Jump_avg branch elimination — MCP visible theorem attempt

## Target

Eliminate `Jump_avg` on the branch where `Field_avg` is unavailable.

## Verdict

Failed discharge. The current canonical surfaces support the following boundary statement:

```math
Jump_{avg}+OriginalSmoothData+SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow \bot
```

is the required branch-native theorem. The repo has a proof skeleton and several conditional charge estimates. The repo lacks the decisive lower/upper pair for one shared charge object.

## Proof audit

1. `Field_avg` is the good-side object: a terminal subtail carries a uniform positive SCF-good radius.
2. `Jump_avg` is the complementary terminal radius-loss / bad-material-contact face.
3. `CAVG.J` types bad material contact as `Jump_avg`; it supplies branch grammar rather than branch exclusion.
4. `AACT.Global.noJump` begins on the good side: finite positive-scale SCF-good cover, scheduler-ready local ledgers, local `AACT.KX`, and finite-cover summation give `DTC.A_avg`.
5. `AVG.END.A` consumes `Jump_avg` only after the averaged class spine has supplied the needed endpoint package. Using it as a branch-native Jump elimination spends the unavailable `Field_avg` side information.
6. The only viable direct route is an averaged no-escape theorem: persistent `Jump_avg` must produce positive terminal defect charge, while finite energy, incompressibility, and pressure/source bounds control the same charge.

## Charge status

The final raw candidate `nu_SCF = mu_D + sum_chi mu_P_chi` has a finite raw pressure/dissipation upper bound on bounded-overlap terminal windows under the finite transported atlas. This supplies an upper-side ingredient.

The lower-side theorem is open:

```math
Jump_{avg}\Longrightarrow
\text{positive terminal lower accumulation for }nu_{SCF}.
```

The alternate `h/F` survivor route is also open:

```math
Jump_{avg}\Longrightarrow
\text{nonzero terminal }h/F\text{ survivor measure with separated positive scale-window mass.}
```

The scale-normalized upper control route also remains conditional on active-window amplitude gain or an equivalent heat-scale square-source estimate.

## Result

`jump-avg-branch-elimination` remains open. The exact next theorem target is:

```math
\boxed{
Jump_{avg}\Longrightarrow
\text{positive terminal lower accumulation for the same charge controlled by the pressure/source upper bound.}
}
```

A successful later discharge must pair that lower theorem with the already identified pressure/source upper estimate for the same charge, or install an equivalent branch-native averaged no-escape mechanism.

## Failure modes checked

- Circular branch route through `Field_avg`.
- Premature use of `AVG.END.A` on the Jump branch.
- Use of `AACT.Global.noJump` on the branch where its finite positive-scale cover input is unavailable.
- Misreading `CAVG.J` as an exclusion theorem.
- Mismatch between lower-charge production and upper-charge control.

## Status

Local theorem-note/audit artifact recorded. Claimed status: failed.