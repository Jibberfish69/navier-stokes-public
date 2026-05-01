# Component selection for nu_SCF — obstruction

## Target

Convert the extracted epsilon-threshold SCF sequence into positive terminal mass for the chosen analytic charge

```math
nu_SCF = mu_D + sum_chi mu_P_chi.
```

## Input already proved

The previous extraction gives terminal cylinders with

```math
SCF_base(Q_n) > epsilon_m.
```

The component decomposition is

```math
SCF_base = E_u + D_u + P + G_Phi.
```

Pack control governs the geometry component `G_Phi`. The chosen charge `nu_SCF` carries `D_u` and the local pressure part of `P`.

## Attempt

If the threshold excess occurs in `D_u` or local pressure, then the selected charge sees it:

```math
D_u(Q_n)+P_loc(Q_n) >= c epsilon_m
=> nu_SCF(Q_n) >= c' epsilon_m.
```

This would give the desired component selection for the `nu_SCF` route.

## Obstruction

The current surfaces leave another analytic channel:

```math
E_u(Q_n).
```

The local energy inequality controls balances and global size, yet it does not install a terminal component-selection theorem converting an `E_u` threshold packet into `D_u` or local pressure mass on the same terminal schedule.

Thus the threshold SCF sequence may be carried by the velocity-energy component under the current theorem surfaces. Since `nu_SCF` omits `E_u`, positive terminal `SCF_base` mass does not yet imply positive terminal `nu_SCF` mass.

## Verdict

Component selection for `nu_SCF` remains open. The exact missing theorem is one of the following:

```math
E_u terminal threshold => D_u/P terminal mass
```

on the same-fluid terminal schedule, or an enlarged final charge including an `E_u` carrier with a matching finite upper estimate.

## Consequence

The Jump_avg route now has this chain:

```math
Jump_avg => epsilon-threshold SCF sequence.
```

The next missing link is:

```math
epsilon-threshold SCF sequence => positive terminal mass for the final chosen charge.
```

## Boundary

This note blocks a premature discharge. The selected upper charge `nu_SCF` is controlled, but it has not yet been forced by every possible threshold SCF defect.