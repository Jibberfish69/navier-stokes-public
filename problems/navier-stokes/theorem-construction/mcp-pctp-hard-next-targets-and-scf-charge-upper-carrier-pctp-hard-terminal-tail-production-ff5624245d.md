# PCTP.hard next-target chain and canonical charge selection

## Ordered next targets

1. Canonical charge selection for the `Jump_avg` no-escape route.
2. Finite upper carrier for that same charge.
3. Lower nonzero terminal mass from `Jump_avg` for that charge.
4. Separated lower accumulation on a terminal scale schedule.
5. No-escape contradiction from lower accumulation plus finite upper carrier.
6. Insert no-escape into `PCTP.hard` and discharge terminal-tail production.

## Target 1: canonical charge

Use the `SCF_base` analytic defect charge rather than the earlier `h/F` survivor charge, because the repo already has a matching finite upper carrier for `SCF_base`.

On a finite transported cutoff atlas, define

`nu_SCF = |grad u|^2 dx dt + sum_chi |p_chi^loc|^(3/2) dx dt`.

For terminal windows `Q_k`, define

`D_k^SCF = nu_SCF(Q_k)`.

This charge is canonical for the `Jump_avg` branch because `SCF_base = E_u + D_u + P + G_Phi`, pack stabilization controls `G_Phi`, and the remaining analytic failure is exactly the gradient/local-pressure carrier.

## Target 2: finite upper carrier

The existing upper-carrier surface proves that every separated or bounded-overlap terminal family satisfies

`sum_k D_k^SCF <= C_atlas nu_SCF([t0,T*) x T^3) < infinity`.

The proof uses finite energy for `grad u`, local pressure Calderon-Zygmund bounds for `p_chi^loc`, and bounded overlap of the terminal windows.

## Result

Targets 1 and 2 are discharged for the `SCF_base` charge. The remaining problem is lower mass and separated accumulation from `Jump_avg` for this same charge.