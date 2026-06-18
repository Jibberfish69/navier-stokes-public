# Matching pressure/source upper bound for the Jump_avg defect charge — failed attempt

## Target
Verify an upper bound for the same charge used in the proposed `Jump_avg` contradiction.

The intended lower-bound charge is a scale-window defect charge based on the finite--infinitesimal separation defect `D_{h/F}`. A matching upper bound must control the same charge by finite energy plus verified pressure/source suppliers.

## Source search
Relevant upper-bound surfaces include:

- `flux-source-carleson-bound-result.md`
- `active-square-upper-tail-carleson-blocked-by-square-source.md`
- `flux-source-to-active-square-carleson-result.md`
- pressure/source supplier notes from the `PFlux` and `FFSRC.A` route.

## Attempt
The natural upper-bound route must control the defect charge by an active-square
or Carleson-type source measure. The repo surfaces show the needed chain:

1. flux-source control bounds shell forcing;
2. active-square Carleson bounds the square-strength tail charge;
3. the defect charge is compared to that active-square tail.

## Failure point
The accessible surfaces state that flux-source Carleson alone is insufficient for active-square Carleson. The missing theorem is an active-shell amplitude gain, an `L2_t` source theorem with heat-scale gain, or direct active-square Carleson control. Another surface records active-square upper-tail Carleson as blocked by the missing square-source theorem.

Therefore the pressure/source upper bound for the proposed defect charge is not verified from current surfaces.

## Verdict
The matching upper-bound side remains open. Since the lower-bound side also remains open, the branch-native `Jump_avg` no-escape theorem cannot currently discharge `PCTP.hard`.

## Exact missing theorem
Prove direct active-square Carleson control for the charge used by the `h/F` survivor, or prove a heat-scale square-source estimate strong enough to imply it.
