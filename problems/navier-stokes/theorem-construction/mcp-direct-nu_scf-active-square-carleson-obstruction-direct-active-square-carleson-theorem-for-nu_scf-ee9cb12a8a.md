# Direct active-square / Carleson theorem for nu_SCF — obstruction

## Target
Prove a direct active-square or Carleson theorem for the shared charge

`nu_SCF = |grad u|^2 dxdt + sum_chi |p_chi^loc|^(3/2) dxdt`

on terminal same-fluid windows.

## Desired estimate
For a separated terminal family `Q_k = Q_{r_k}^Phi(a_k,t_k)`, the needed scale-normalized bound is

`sum_k r_k^{-alpha} nu_SCF(Q_k) <= C(E0, source)`.

The exact conditional is: this bound plus the lower density supplied by
persistent `Jump_avg` completes the branch-native no-escape argument.

## Attempt
The raw carrier estimate gives

`sum_k nu_SCF(Q_k) <= C nu_SCF(total)`.

To obtain the active-square/Carleson estimate, the raw mass must gain the missing factor `r_k^alpha` on each active shrinking window. That gain is equivalent to an active-window amplitude estimate: terminal active windows must carry charge below the scale-critical threshold fast enough for the weighted sum to converge.

## Obstruction
Finite energy and local pressure integrability allow concentration on shrinking windows. The active-square target excludes such concentration. Existing source surfaces identify the same issue through shell variables: flux/source mass control permits steady or pulsed active shells unless an active-shell amplitude gain or square-source theorem is added.

## Verdict
The direct active-square/Carleson theorem remains open. It reduces to an active-window amplitude gain or heat-scale square-source estimate.

## Next target
Prove an active-shell amplitude gain strong enough to supply the missing scale factor in the `nu_SCF` Carleson sum.
