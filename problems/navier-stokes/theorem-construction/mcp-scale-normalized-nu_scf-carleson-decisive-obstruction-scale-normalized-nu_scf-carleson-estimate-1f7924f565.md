# Scale-normalized nu_SCF Carleson estimate — decisive obstruction

## Target
Prove a scale-normalized Carleson estimate for

`nu_SCF = |grad u|^2 dxdt + sum_chi |p_chi^loc|^(3/2) dxdt`

on terminal same-fluid windows.

## Required form
For separated terminal windows `Q_k = Q_{r_k}^Phi(a_k,t_k)`, the `Jump_avg` lower side requires an estimate of the form

`sum_k SCF_normalized(Q_k) <= C(E0, source)`.

This is stronger than the raw finite-measure carrier

`sum_k nu_SCF(Q_k) <= C nu_SCF(total)`.

## Attempt
The raw upper carrier is already available from the finite-energy and local-pressure measure. To upgrade it, one must control scale weights coming from the normalized `SCF_base` threshold. For shrinking terminal windows, this requires the bound

`sum_k r_k^{-alpha} nu_SCF(Q_k) <= C`.

Raw finite measure supplies no such estimate. A finite Radon measure can concentrate on shrinking windows with finite total mass while the scale-normalized weighted sum diverges.

The existing active-square and flux-source surfaces identify the same mathematical barrier: source-mass or flux-mass bounds do not imply active-square Carleson control. The missing ingredient is a square-source theorem, active-shell amplitude gain, or direct active-square estimate.

## Verdict
The scale-normalized `nu_SCF` Carleson estimate remains unproved. The obstruction is structural: raw finite energy and local pressure integrability do not control the scale-normalized terminal density required to contradict `Jump_avg`.

## Consequence
The current chain proves only:

`scale-normalized nu_SCF Carleson estimate -> Jump_avg eliminated -> PCTP.hard`.

It does not prove the Carleson estimate from `OriginalSmoothData`. Therefore `PCTP.hard terminal-tail production` remains conditionally discharged, with this Carleson theorem as the remaining analytic target.

## Exact next theorem target
Prove a direct active-square/Carleson theorem for `nu_SCF` on terminal same-fluid windows, or prove an active-shell amplitude gain strong enough to imply that theorem.
