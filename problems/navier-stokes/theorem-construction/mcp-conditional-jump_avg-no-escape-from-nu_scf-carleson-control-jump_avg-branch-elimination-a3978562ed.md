# Conditional Jump_avg no-escape from scale-normalized nu_SCF Carleson control

## Target
Use the `Jump_avg` lower density and a scale-normalized `nu_SCF` upper estimate to eliminate `Jump_avg`.

## Conditional theorem
Assume:

1. `Jump_avg` persists on a terminal same-fluid tail.
2. Pack stabilization controls the geometric part of `SCF_base`.
3. SCF threshold failure yields a lower bound for the scale-normalized analytic density of `nu_SCF` on terminal bad windows.
4. A scale-normalized Carleson estimate holds for the same `nu_SCF` density on separated terminal windows.

Then `Jump_avg` is eliminated.

## Proof
From `Jump_avg`, every terminal subtail contains windows with arbitrarily small SCF-good radius. Under pack stabilization, the badness must enter the analytic part of `SCF_base`, so each selected bad window carries at least one fixed threshold unit of scale-normalized `nu_SCF` density.

Select a separated terminal sequence of such bad windows using the terminal subtail property. The lower bound gives

`sum_k normalized_nu_SCF(Q_k) >= sum_k c = infinity`.

The assumed Carleson estimate gives

`sum_k normalized_nu_SCF(Q_k) <= C(E0, source) < infinity`.

The two estimates conflict. Hence the persistent `Jump_avg` branch is eliminated under the stated Carleson hypothesis.

## Result
This proves the branch-native no-escape theorem conditionally on the scale-normalized `nu_SCF` Carleson estimate.

## Remaining boundary
The Carleson estimate itself remains open. Therefore this note is a conditional bridge, not a full `Jump_avg` discharge.