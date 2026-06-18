# AACT.KX local coefficient-margin bootstrap lemma

## Target
Repair the local `AACT.KX` coefficient-margin step for the averaged ACT budget.

## Repaired local statement
Let `X_R(t)` denote the averaged affine-excess control variable and `N_R(t)` its dissipative term on an averaged ACT interval `I`. Assume the local budget has the form

`dX_R/dt + c N_R <= B_R(t) X_R + C_* X_R^{1/2} N_R + F_R(t)`,

with `B_R,F_R in L1(I)`, `c>0`, and `C_*` fixed by the route. If a restart time `s in I` satisfies `X_R(s) <= eta` and the bootstrap region satisfies `sup_J X_R <= 4 eta` on a subinterval `J`, with

`eta <= c^2/(64 C_*^2)`,

then the nonlinear term is pointwise controlled on `J`:

`C_* X_R^{1/2} N_R <= (c/4) N_R`.

Consequently,

`dX_R/dt + (3c/4) N_R <= B_R(t) X_R + F_R(t)`

on `J`, and Gronwall gives

`sup_J X_R + (3c/4) int_J N_R <= exp(int_J B_R) ( X_R(s) + int_J F_R )`.

If the restart scheduler chooses `J` so that

`exp(int_J B_R) ( X_R(s) + int_J F_R ) <= 2 eta`,

then the bootstrap improves from `sup_J X_R <= 4 eta` to `sup_J X_R <= 2 eta`, so the coefficient margin closes by continuity.

## Proof
Inside the bootstrap region, `X_R^{1/2} <= 2 eta^{1/2}`. The choice of `eta` gives `2 C_* eta^{1/2} <= c/4`, hence the term multiplying `N_R` is controlled pointwise. The remaining inequality has only `L1_t` coefficients multiplying `X_R` or entering additively, so Gronwall applies without pointwise bounds on `B_R` or `F_R`. The scheduler condition supplies the bootstrap improvement, and continuity closes the local interval.

## Result
This repairs the specific audit defect: `L1_t` smallness is no longer used to control a coefficient multiplying `N_R`. The retained margin is obtained from pointwise smallness of `X_R`, produced by the restart seed plus continuity bootstrap.

## Remaining boundary
This note supplies the local coefficient-margin mechanism. A full `AACT.KX` theorem still requires a source-backed proof that the averaged route provides the restart seed `X_R(s) <= eta` and a finite covering of the terminal approach tail by scheduler subintervals satisfying the displayed Gronwall smallness condition.
