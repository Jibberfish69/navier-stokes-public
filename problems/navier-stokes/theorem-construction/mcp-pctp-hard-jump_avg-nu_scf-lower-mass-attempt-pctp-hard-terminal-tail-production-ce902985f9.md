# PCTP.hard discharge attempt: Jump_avg to nu_SCF lower mass

## Target
Advance the open `PCTP.hard` discharge by proving the lower side of the branch-native `Jump_avg` no-escape route.

## Shared charge
Use the analytic `SCF_base` charge

`nu_SCF = |grad u|^2 dxdt + sum_chi |p_chi^loc|^(3/2) dxdt`.

The existing upper-carrier note gives finite total `nu_SCF` on bounded-overlap terminal window families. This makes `nu_SCF` the correct charge for the no-escape route.

## Candidate lower-mass lemma
Assume a pack-stabilized terminal same-fluid tail and the following coercive SCF-base comparison:

Fix the scale-normalization exponent `gamma>0` dictated by the chosen SCF
threshold normalization, and set

`d_SCF,gamma(Q_r^Phi) := r^{-gamma} nu_SCF(Q_r^Phi)`.

The lower lemma needed is the exact weighted statement

`SCF_base(Q_r^Phi) > epsilon_m` and pack stabilization on `Q_r^Phi`
force

`d_SCF,gamma(Q_r^Phi) >= c(epsilon_m)`,

equivalently

`nu_SCF(Q_r^Phi) >= c(epsilon_m) r^gamma`.

Since pack stabilization controls the geometric part, persistent `Jump_avg`
forces persistent analytic threshold failure. Therefore every terminal subtail
must contain a same-fluid window `Q_r^Phi` with the same-radius weighted lower
bound `r^{-gamma}nu_SCF(Q_r^Phi) >= c(epsilon_m)`.

## Obstruction
This gives a lower bound for the weighted density `d_SCF,gamma`, while the
existing upper carrier controls only raw `nu_SCF` mass. A discharge needs the
same exponent `gamma` on the upper side:

`sum_Q r(Q)^{-gamma} nu_SCF(Q) <= C`.

Finite raw mass permits shrinking terminal windows with
`r(Q)^{-gamma}nu_SCF(Q) >= c(epsilon_m)`. The contradiction requires a
Carleson or active-square upper estimate for this exact weighted
`nu_SCF` density.

## Result
The lower-mass route is reduced to one exact theorem:

`Jump_avg -> separated windows Q_k with r_k^{-gamma}nu_SCF(Q_k) >= c(epsilon_m)`,

paired with

`sum_k r_k^{-gamma}nu_SCF(Q_k) <= finite bound`.

The current raw upper carrier supplies finite raw mass, and the scale-normalized Carleson upper theorem remains the missing analytic estimate.

## Consequence for PCTP.hard
`PCTP.hard` remains open at this scale-normalized charge mismatch. The next target is the Carleson upgrade for `nu_SCF` on terminal same-fluid windows.
