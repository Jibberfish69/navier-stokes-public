# Branch-native Jump_avg no-escape theorem — obstruction after source search

## Target
Prove

`Jump_avg + OriginalSmoothData + SCF_base + SGC.A_a.e + ATD_m^epsilon -> contradiction`

using a quantitative defect-charge lower bound and a matching pressure/source upper bound.

## Search result
The relevant surfaces give strong typing of the bad branch:

- `TGC.A.noEscape` proves bad material contact or terminal SCF-good radius degeneration implies `Jump_avg`.
- `SCFBase Defect To Jump_avg Typing` proves an epsilon-level active terminal SCF defect implies `Jump_avg`.
- The earlier defect-charge notes isolate the desired contradiction scheme.

These surfaces classify entry into `Jump_avg`. They do not supply exit from `Jump_avg`.

## Attempted contradiction scheme
A branch-native proof would need a nonnegative defect charge `D_k` associated to persistent averaged bad cells, with two estimates on the same quantity:

1. lower side: persistent bad cells produce separated positive charge, for example `sum_k D_k = infinity` or `sum_k D_k >= c * number_of_cells` along a terminal subtail;
2. upper side: finite energy plus pressure/source control gives `sum_k D_k <= C(E0, source)`.

Together these two estimates would contradict persistent `Jump_avg`.

## Failure point
The current surfaces provide the typing implication

`bad SCF terminal behavior -> Jump_avg`.

They do not provide the reverse quantitative implication

`Jump_avg -> separated positive defect charge`.

The missing theorem is exactly the lower-bound/separation theorem for persistent averaged bad cells. The pressure/source upper-bound side also remains conditional on the supplier rows recorded earlier.

## Verdict
The branch-native no-escape theorem remains open. Therefore `PCTP.hard terminal-tail production` remains open as a full discharge target.

## Exact next theorem
Prove a lower-bound theorem of the form:

If `Jump_avg` persists on a terminal same-fluid tail, then there is a countable separated family of averaged bad cells with defect charges `D_k >= d0` and bounded overlap in the energy/source measure.

A companion upper-bound theorem must control the same `sum_k D_k` by finite energy and verified pressure/source suppliers.