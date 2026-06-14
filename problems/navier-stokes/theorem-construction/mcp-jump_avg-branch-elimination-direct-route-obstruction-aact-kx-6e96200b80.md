# Jump_avg branch elimination — direct-route obstruction note

## Target
Eliminate the `Jump_avg` branch while avoiding any use of `Field_avg` on that branch.

## Attempt
The branch typing gives the rule: `Jump_avg` is the averaged one-field failure branch. Therefore a proof on this branch may use averaged cover data, same-fluid approach-tail data, defect-set geometry, and bad-set persistence, while `Field_avg` is unavailable as an input.

The circular route is clear: `Jump_avg -> Field_avg -> CFI.A_avg -> contradiction`. That route spends the conclusion-side field property on the branch where the field property is absent.

The direct route must instead prove a no-escape implication:

`Jump_avg + OriginalSmoothData + SCF_base + SGC.A_a.e + ATD_m^epsilon -> contradiction`.

One candidate direct proof has three steps:

1. `Jump_avg` gives a persistent nonempty averaged bad set `B_epsilon^Phi` along a same-fluid terminal approach tail.
2. The repaired local `AACT.KX` mechanism converts good averaged excess control off `B_epsilon^Phi` into a quantitative boundary flux or defect-pressure charge on the boundary of the bad set.
3. Finite energy, incompressibility, and the averaged cover prevent persistent positive defect charge from surviving on every terminal subtail.

Step 3 is the missing theorem. It must be a branch-native averaged no-escape lemma, using defect charge or boundary flux, and it must avoid `Field_avg` as a premise.

## Result
This attempt isolates the required replacement theorem:

`Jump_avg -> persistent averaged bad set`, combined with repaired `AACT.KX` and source estimates, must yield a direct contradiction through a no-escape defect-charge lemma.

## Status
`Jump_avg` elimination remains open. The next proof target is the branch-native no-escape lemma for persistent averaged bad sets.
