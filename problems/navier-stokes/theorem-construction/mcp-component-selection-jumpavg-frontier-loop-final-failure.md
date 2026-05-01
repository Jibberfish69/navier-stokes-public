# Component selection for Jump_avg — final frontier-loop failure note

## Target

Test the loop item:

`component selection for Jump_avg`.

This is the final current item in the `Jump_avg` branch-elimination loop.

## Sources checked

- `problems/navier-stokes/theorem-construction/mcp-component-selection-nuscf-obstruction-jump-avg-branch-elimination-cf942d4591.md`
- `problems/navier-stokes/theorem-construction/mcp-eu-to-dup-or-additive-carrier-obstruction-jump-avg-branch-elimination-63d034ea4b.md`
- `problems/navier-stokes/theorem-construction/mcp-active-shell-amplitude-gain-frontier-loop-failure.md`
- `problems/navier-stokes/theorem-construction/mcp-positive-carrier-active-square-carleson-frontier-loop-failure.md`
- `problems/navier-stokes/theorem-construction/mcp-signed-weighted-commutator-defect-frontier-loop-failure.md`

## Installed input

The branch has the installed reduction

`Jump_avg => epsilon-threshold SCF_base concentration sequence.`

On the selected terminal cylinders,

`SCF_base = E_u + D_u + P + G_Phi.`

The chosen analytic terminal charge is

`nu_SCF = mu_D + sum_chi mu_{P,chi}.`

It sees dissipation and local pressure. It does not see the velocity-energy component `E_u`.

## Attempted selection

If the threshold lies in `D_u` or local pressure, then the selected charge sees it:

`D_u(Q_n) + P_loc(Q_n) >= c epsilon_m => nu_SCF(Q_n) >= c' epsilon_m.`

This would feed the separated lower accumulation route.

## Obstruction

Current surfaces do not exclude an `E_u`-only threshold channel. A terminal SCF threshold packet may be carried by the velocity-energy component. In that case `SCF_base(Q_n) > epsilon_m` holds while `nu_SCF(Q_n)` need not carry positive terminal mass.

The local energy inequality gives local balances and finite global size. It does not prove the one-way theorem

`E_u terminal threshold => D_u/P terminal mass`

on the same terminal schedule.

Adding `E_u` to the final charge also fails under current surfaces. Global energy controls a time-slice energy budget, but repeated shrinking terminal windows can reuse the same moving energy packet. No summable separated-window upper estimate for an additive `E_u` carrier is installed.

The active-shell bypass also fails. Active-shell amplitude gain from `OriginalSmoothData`, direct active-square Carleson control, and the signed weighted commutator-defect theorem each failed in the current loop. Those failures block the only currently visible path for forcing the `E_u` threshold into the selected analytic charge.

## Verdict

`component selection for Jump_avg` remains open.

The exact missing theorem is one of:

1. `E_u terminal threshold => D_u/P terminal mass` on the same-fluid terminal schedule;
2. an additive `E_u` carrier with a finite bounded-overlap terminal-window upper estimate;
3. active-square/active-shell machinery strong enough to imply one of the above.

## Consequence

`Jump_avg branch elimination` remains unresolved. The current loop produced sharper obstruction notes for the commutator, positive-carrier, active-shell, and component-selection routes, but it did not discharge the branch.