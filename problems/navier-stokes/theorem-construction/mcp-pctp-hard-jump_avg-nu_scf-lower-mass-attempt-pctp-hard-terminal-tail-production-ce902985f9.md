# PCTP.hard discharge attempt: Jump_avg to nu_SCF lower mass

## Target
Advance the open `PCTP.hard` discharge by proving the lower side of the branch-native `Jump_avg` no-escape route.

## Shared charge
Use the analytic `SCF_base` charge

`nu_SCF = |grad u|^2 dxdt + sum_chi |p_chi^loc|^(3/2) dxdt`.

The existing upper-carrier note gives finite total `nu_SCF` on bounded-overlap terminal window families. This makes `nu_SCF` the correct charge for the no-escape route.

## Candidate lower-mass lemma
Assume a pack-stabilized terminal same-fluid tail and the following coercive SCF-base comparison:

`SCF_base(Q_r^Phi) > epsilon_m` forces either geometric pack failure or `nu_SCF(Q_r^Phi)` carries the analytic part of the threshold at the same scale.

Since pack stabilization controls the geometric part, persistent `Jump_avg` forces persistent analytic threshold failure. Therefore every terminal subtail contains a same-fluid window with positive analytic `nu_SCF` contribution at the SCF threshold scale.

## Obstruction
This gives a scale-normalized lower contribution, while the existing upper carrier controls raw `nu_SCF` mass. A discharge needs the same normalization on both sides. Finite raw mass permits shrinking terminal windows with positive scale-normalized density. The contradiction requires a Carleson or active-square upper estimate for the scale-normalized `nu_SCF` density.

## Result
The lower-mass route is reduced to one exact theorem:

`Jump_avg -> separated positive scale-normalized nu_SCF density`,

paired with

`sum of the same scale-normalized nu_SCF densities <= finite bound`.

The current raw upper carrier supplies finite raw mass, and the scale-normalized Carleson upper theorem remains the missing analytic estimate.

## Consequence for PCTP.hard
`PCTP.hard` remains open at this scale-normalized charge mismatch. The next target is the Carleson upgrade for `nu_SCF` on terminal same-fluid windows.