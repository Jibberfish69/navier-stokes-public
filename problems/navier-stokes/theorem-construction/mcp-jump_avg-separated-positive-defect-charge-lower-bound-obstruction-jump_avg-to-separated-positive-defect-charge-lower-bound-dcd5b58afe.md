# Jump_avg to separated positive defect charge lower bound — failed attempt

## Target
Prove that persistent `Jump_avg` produces a separated family of positive defect charges.

## Candidate object
The strongest available candidate is the finite--infinitesimal separation defect

`D_{h/F}(a,r,t) = h(a,r,t) - F(a,t)r`,

with scale-window measure

`|D_{h/F}|^2 / |r|^2 da dr/|r|^3`.

This object can represent terminal scale memory, affine mismatch, pack-side failure, and field-side failure when a licensed terminal scale schedule and nonzero survivor measure are supplied.

## Attempt
`Jump_avg` gives persistent loss of positive SCF-good averaged coherence on
every terminal subtail. The missing lower theorem must extract cells
`(a_k,r_k,t_k)` so that the scale-window defect measure has a uniform positive
lower mass on separated windows:

`D_k >= d0 > 0`.

Once the separated lower charges are produced, the contradiction route compares
`sum_k D_k` with a finite energy/source upper bound.

## Failure point
The available surfaces classify SCF defect or terminal radius degeneration as `Jump_avg`. They also define a candidate survivor measure. They do not prove that persistent `Jump_avg` forces nonzero terminal mass in that measure, nor that the mass sits on a separated family of windows with uniform lower charge.

The missing step is a compactness-and-nontriviality theorem:

`Jump_avg -> nonzero terminal h/F survivor measure with separated positive scale-window mass`.

## Verdict
The lower-bound theorem remains open. `PCTP.hard` cannot be discharged through the defect-charge no-escape route until this theorem is proved.
