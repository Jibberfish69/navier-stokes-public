# Global terminal cover scheduler: no-Jump discharge and seed boundary

## Target

Work on the frontier-loop item `global finite/summable terminal cover scheduler` after the local `AACT.KX` coefficient-margin repair.

The relevant scheduler target is

`SGC.A_a.e + ATD_m^epsilon + local AACT.KX => terminal scheduled averaged cover => DTC.A_avg`.

The independent audit requires that this step avoid upstream use of `READ.COVER`, pointwise `DTC.A`, pointwise `Field`, `End_NS`, or endpoint readout conclusions.

## Sources checked

- `mcp-aact-global-finite-cover-scheduler-attempt.md`
- `mcp-tgc-a-terminal-good-cover-scheduler-theorem.md`
- `mcp-aact-global-nojump-finite-cover-scheduler-theorem-avg-end-a-b464d2cdf8.md`
- `mcp-terminal-good-cover-compactness-audit.md`
- `mcp-aact-kx-scheduler-seed-obstruction-aact-kx-f4eff31d09.md`
- `mcp-aact-kx-local-absorption-discharge-via-coefficient-demotion.md`

## Result

The scheduler target is discharged on the no-`Jump_avg` positive-radius branch.

Precisely, assume a bounded-distortion same-fluid terminal tail `T` satisfies:

1. `SGC.A_a.e`;
2. `ATD_m^epsilon` on the shrunken selected cylinders;
3. `neg Jump_avg(T)` with the strict classification that terminal SCF-good radius degeneration is a `Jump_avg` face;
4. the repaired local `AACT.KX` inequality

   `D^+ X_{j,p} + c N_{j,p} <= B_{j,p} X_{j,p} + C_X X_{j,p}^{1/2} N_{j,p} + F_{j,p}`

   on every selected cylinder and route parameter.

Then there is a terminal same-fluid finite-overlap scheduled cover and the averaged dynamic tower certificate follows:

`DTC.A_avg`.

## Proof

From `SGC.A_a.e`, compact subwindows of the strict good material region have finite same-fluid SCF-good covers. The terminal good-cover compactness audit shows that compactness is used only after passing to a coherent positive-radius branch. On the no-`Jump_avg` branch, the strict cover-degeneration classification rules out terminal good-radius collapse. Therefore, after replacing the terminal approach by a terminal subtail, the route has selected cylinders

`Q_j = Q_{r_j}^Phi(a_j,t_j),  1 <= j <= J,`

with finite overlap, bounded same-fluid distortion, and a common lower radius floor

`r_j >= r_* > 0`.

For each selected cylinder and each route parameter `p` in the finite required set, `ATD_m^epsilon` supplies the local seed and ledgers

`X_{j,p}(s_{j,p}) <= eta_X,   B_{j,p}, F_{j,p} in L^1(I_j)`.

The repaired local `AACT.KX` theorem absorbs only `C_X X_{j,p}^{1/2}N_{j,p}` by the first-exit smallness of `X_{j,p}`. Choose `eta_X` so that

`C_X(2 eta_X)^{1/2} <= c/2`.

Define common majorants

`B_*(t) = sum_{j,p} 1_{I_j}(t) B_{j,p}(t),`

`F_*(t) = sum_{j,p} 1_{I_j}(t) F_{j,p}(t).`

Since the cover and route parameter set are finite, `B_*, F_* in L^1` on the terminal subtail. By absolute continuity of the integral, partition the terminal subtail into scheduler cells `I_alpha` such that

`(eta_X + int_{I_alpha} F_*) exp(int_{I_alpha} B_*) <= 2 eta_X`.

On each scheduler cell, the first-exit argument gives

`X_{j,p} in L^infty(I_alpha cap I_j),   N_{j,p} in L^1(I_alpha cap I_j),   K_{<=m,j,p}^{avg} in L^1(I_alpha cap I_j)`.

Summing in `j` and `p`, using finite overlap and the lower radius floor, yields the global averaged packet at receiver scale:

`X_avg in L^infty,   N_avg in L^1,   K_{<=m}^{avg} in L^1`.

This is the averaged dynamic tower certificate `DTC.A_avg`.

## Noncircularity audit

The argument uses only the local SCF/ATD/AACT machinery, finite-overlap summation, and absolute continuity of `L^1` scheduler budgets. It does not use `READ.COVER`, pointwise `DTC.A`, pointwise `Field`, `End_NS`, `DTC.Read`, or `Field.Read` upstream.

## Boundary

This file does not eliminate the complementary `Jump_avg` branch. The previous failed scheduler attempt correctly identified the unconditional obstruction: if terminal good radii collapse to zero while local good cylinders exist pointwise, finite-cover scheduling fails unless that collapse is classified as `Jump_avg` and then eliminated, or a summable infinite-cover scheduler is proved.

The current result therefore closes the scheduler target only on the no-`Jump_avg` positive-radius branch. The next target remains `Jump_avg` branch elimination.
