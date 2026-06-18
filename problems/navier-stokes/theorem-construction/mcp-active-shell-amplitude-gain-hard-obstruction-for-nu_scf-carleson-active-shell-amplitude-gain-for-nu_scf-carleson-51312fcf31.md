# Active-shell amplitude gain for nu_SCF Carleson — hard obstruction

## Target
Prove an active-shell amplitude gain strong enough to imply the direct active-square / Carleson theorem for `nu_SCF` on terminal same-fluid windows.

## Required gain
On every active terminal window or shell, one needs a gain of the form

`active_amplitude <= scale_gain`

strong enough to convert raw finite `nu_SCF` mass into the scale-normalized Carleson sum required by the `Jump_avg` lower density argument.

In shell language, this is the missing step behind active-square control: the shell energy amplitude must decay at the active scale fast enough to make the active-square sum finite.

## Attempt
Energy dissipation gives finite raw mass. Flux/source estimates give source mass or signed exchange control. These estimates still allow short pulses or steady active-shell amplitudes at shrinking scales. Such amplitudes preserve finite raw mass while breaking the scale-normalized Carleson sum.

The missing input is one of:

1. a heat-scale square-source estimate;
2. direct active-square control;
3. a terminal amplitude decay theorem tied to viscosity and same-fluid pack geometry;
4. a monotone quantity whose dissipation dominates the normalized `nu_SCF` density.

Current surfaces identify these as missing theorem atoms.

## Verdict
The active-shell amplitude gain remains open. The obstruction is structural: finite energy, dissipation, and source-mass bounds allow active-scale concentration unless an additional square-source, amplitude-decay, or monotone-dominance theorem is proved.

## Consequence for PCTP.hard
The strongest current output is:

`scale-normalized nu_SCF Carleson estimate -> Jump_avg eliminated -> PCTP.hard`.

The active-shell amplitude gain is the deepest exposed analytic target for proving that Carleson estimate from `OriginalSmoothData`.
