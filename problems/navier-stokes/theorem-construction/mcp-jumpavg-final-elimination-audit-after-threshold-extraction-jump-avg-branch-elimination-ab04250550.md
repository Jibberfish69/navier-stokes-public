# Final Jump_avg elimination audit after threshold extraction

## Target

Discharge `jump-avg-branch-elimination` after the new threshold extraction step.

## New progress

The following reduction is now installed:

```math
Jump_avg => epsilon-threshold SCF concentration sequence.
```

The proof uses the definition of `r_good`: terminal collapse of `r_good` lets one choose radii just above the local good-radius supremum, forcing `SCF_base` above `epsilon_m` on terminal shrinking cylinders.

The upper side for the chosen charge is also installed:

```math
sum_k nu_SCF(Q_k) <= C nu_SCF(total) < infinity
```

for bounded-overlap terminal windows.

## Audit

The desired contradiction requires the same charge on both sides:

```math
Jump_avg => separated positive lower accumulation for nu_SCF,
```

combined with the finite upper bound above.

The chain currently stops at two missing links.

First, component selection is open. The threshold SCF sequence may be carried by the velocity-energy component `E_u`, while `nu_SCF` carries the dissipation and local-pressure components. The current surfaces do not prove an `E_u` terminal threshold converts into `D_u` or local pressure mass on the same schedule.

Second, separated lower accumulation is open. Even after a positive terminal charge is available, the contradiction needs infinitely many separated or bounded-overlap windows with uniform positive `nu_SCF` charge. A nested reuse of one terminal defect does not pair with the bounded-overlap upper estimate.

## Verdict

`jump-avg-branch-elimination` remains open.

The exact remaining route is:

```math
E_u terminal threshold => D_u/P terminal mass
```

or an enlarged final charge including `E_u`, followed by

```math
final charge positive terminal mass => separated lower accumulation.
```

## Boundary

This is a failed final discharge audit. It records genuine progress and the exact remaining theorem pair. It does not promote the proof-obligation matrix row to grounded.