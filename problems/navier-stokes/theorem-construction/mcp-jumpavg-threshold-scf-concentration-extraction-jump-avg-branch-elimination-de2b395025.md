# Jump_avg threshold SCF concentration extraction

## Target

Extract an epsilon-threshold SCF concentration sequence from `Jump_avg` on a same-fluid terminal tail.

## Definitions

For a bounded-distortion same-fluid terminal tail `T`, define

```math
r_good(a,t):=sup { r>0 : SCF_base(Q_r^Phi(a,t)) <= epsilon_m }.
```

The installed averaged-field equivalence gives

```math
Jump_avg(T) <=> for every terminal subtail T' of T, inf_{(a,t) in T'} r_good(a,t)=0.
```

## Lemma

Assume `Jump_avg(T)`. Then there are points `(a_n,t_n)` in `T` with `t_n` tending to `T_*` and radii `rho_n` tending to zero such that

```math
SCF_base(Q_{rho_n}^Phi(a_n,t_n)) > epsilon_m.
```

## Proof

For each `n`, take a terminal subtail after time `T_*-1/n`. Since `Jump_avg(T)` holds, the infimum of `r_good` on that subtail is zero. Choose `(a_n,t_n)` in the subtail with

```math
r_good(a_n,t_n) < 1/(2n).
```

Set

```math
rho_n = 1/n
```

after reducing `n` so that `rho_n` lies below the fixed cylinder scale bound. Since `rho_n` is strictly larger than the supremum of the good radii at `(a_n,t_n)`, the radius `rho_n` cannot be SCF-good. Therefore

```math
SCF_base(Q_{rho_n}^Phi(a_n,t_n)) > epsilon_m.
```

Also `t_n` lies in the terminal subtail and `rho_n` tends to zero. This proves the extraction.

## Consequence

The threshold compactness surface applies to this extracted sequence. Under pack-stabilized same-fluid compactness, a subsequence produces an epsilon-level terminal SCF defect.

This gives the following reduction:

```math
Jump_avg => epsilon-threshold SCF concentration sequence => terminal epsilon-level SCF defect.
```

## Boundary

This reduction advances the lower side of the `nu_SCF` route, yet it stops short of the full lower accumulation theorem. The remaining issue is component selection:

```math
terminal epsilon-level SCF defect => positive terminal mass for nu_SCF.
```

The direct route still needs separated lower accumulation for `nu_SCF` before the finite upper-bound lemma can produce a contradiction.