# Branch-native averaged no-escape theorem — obstruction model

## Target

Prove the branch-native theorem needed for `jump-avg-branch-elimination`:

```math
Jump_{avg}+OriginalSmoothData+SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow \bot
```

without using `Field_avg` as a premise on the `Jump_avg` branch.

## Claim of this note

The theorem is not derivable from the currently installed branch data alone. The current canonical surfaces require an additional quantified defect-charge or flux theorem.

## Formal obstruction model

Use a terminal parameter interval `T=(0,1)` with terminal time `1`. Define

```math
r_{good}(t)=1-t.
```

For every terminal subtail `(s,1)`,

```math
\inf_{t\in(s,1)} r_{good}(t)=0.
```

Hence the installed definition gives

```math
Jump_{avg}(T).
```

At every nonterminal time `t<1`, the good radius is positive. Thus compact subsets away from the endpoint admit positive-scale good covers, matching the role of `SGC.A_{a.e.}` on compact good regions. `ATD_m^\varepsilon` can be assigned on each such good compact region. Let the abstract energy be any finite constant `E_0<\infty`.

This model satisfies the recorded definition/typing surfaces:

```math
Field_{avg}(T)\Longleftrightarrow
\exists T'\subset T\text{ terminal},\ \exists r_*>0\text{ with }r_{good}\ge r_*\text{ on }T',
```

and that statement fails for `r_good(t)=1-t`. Therefore `Jump_avg(T)` holds. `CAVG.J` remains a face-typing rule: bad-set contact or terminal radius collapse is assigned to `Jump_avg`.

No contradiction follows from these data. The data contain terminal good-radius collapse and finite energy, yet no installed object converts the collapse into a lower-bounded charge with divergent terminal accumulation.

## Why the desired proof needs new analytic input

A valid no-escape proof needs a shared object `D_k` or `Flux_k` satisfying both sides:

```math
D_k\ge d_0>0\quad\text{on terminal jump scales}
```

with enough scale separation or counting to imply

```math
\sum_k D_k=\infty
\quad\text{or}\quad
\liminf_{k\to\infty}\sum_{j\le k}D_j>C(E_0,source),
```

and also

```math
\sum_k D_k\le C(E_0,source).
```

The currently installed surfaces provide neither the lower-bound charge production nor the matching finite-energy upper bound for the same charge.

## Consequence for `jump-avg-branch-elimination`

The branch-native theorem cannot be installed from the present assumptions. The legal repo status remains:

```math
jump\text{-}avg\text{-}branch\text{-}elimination: open.
```

The next valid theorem target is the quantitative defect-charge theorem:

```math
Jump_{avg}\Longrightarrow
\exists\{D_k\}\text{ with terminal lower accumulation and finite-energy upper control.}
```

## Audit boundary

This is a hard obstruction for the requested discharge from current surfaces. It is a local theorem-note/audit artifact, not a Millennium-problem proof promotion.