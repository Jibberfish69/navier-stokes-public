# TRS.nu_SCF terminal recurrence scheduler

## Target

Show that recurring terminal positive `nu_SCF` mass yields a separated or bounded-overlap lower schedule.

## Precise premise

Assume there is a constant `d0>0` such that every terminal subtail after every `tau<T_*` contains an admissible same-fluid window

```math
Q_k=Q_{r_k}^{\Phi}(a_k,t_k)
```

with

```math
\nu_{SCF}(Q_k)\ge d_0.
```

The window is required to lie inside the terminal subtail and have finite time footprint below `T_*`.

## Theorem

Under this recurring positive-mass premise, there exists an infinite terminal family `{Q_k}` with pairwise disjoint time footprints, hence overlap at most one, and

```math
\nu_{SCF}(Q_k)\ge d_0
\quad\text{for every }k.
```

## Proof

Choose any initial terminal time `tau_1<T_*`. By the premise, select `Q_1` in the subtail after `tau_1` with `nu_SCF(Q_1)>=d0`.

Suppose `Q_1,...,Q_k` have been selected with disjoint time footprints. Let `sigma_k<T_*` be a time strictly after the top of the time footprint of `Q_k`. Apply the recurring positive-mass premise to the terminal subtail after `sigma_k`. This gives a new admissible same-fluid window `Q_{k+1}` with

```math
\nu_{SCF}(Q_{k+1})\ge d_0,
```

and its time footprint lies after `sigma_k`. Hence it is disjoint from all earlier selected footprints.

Induction gives infinitely many windows. Their time supports are pairwise disjoint, so the family is separated in time and has bounded overlap `Omega=1`. Since the selections occur in terminal subtails with `sigma_k\uparrow T_*`, the family is terminal.

## Conclusion

The separated recurrence scheduler is discharged under the recurring positive-mass premise:

```math
\forall\tau<T_*\ \exists Q\subset\{t>\tau\}:\nu_{SCF}(Q)\ge d_0
\Longrightarrow
\exists\{Q_k\}\text{ terminal bounded-overlap}:
u_{SCF}(Q_k)\ge d_0.
```

## Boundary

This lemma does not produce positive `nu_SCF` mass from `Jump_avg`. That production remains the component-selection target. This lemma only converts recurring positive terminal mass into an upper-bound-compatible separated schedule.

Claimed status: discharged for the stated recurring-mass scheduler.