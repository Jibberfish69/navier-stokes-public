# Source theorem frontier for active-shell amplitude gain

## Target
Prove a source theorem ruling out active-shell amplitude concentration from `OriginalSmoothData`, then propagate the result through:

`active-shell amplitude gain -> scale-normalized nu_SCF Carleson -> Jump_avg eliminated -> PCTP.hard -> terminal Part/Field/tower readout`.

## Mechanism scan
The relevant surfaces show the following status.

### Square-source route
`square-source-to-active-square-control-result.md` proves the conditional implication:

`square-source L2_t shell flux estimate + entrance-tail reserve -> active-square control`.

`square-source-shell-flux-estimate-result.md` records the fixed-shell cubic-amplitude obstruction: scaling smooth divergence-free data by amplitude `A` scales the shell flux cubically and breaks a universal fixed-shell square-source estimate.

### Direct active-square route
Direct active-square control is exactly the Carleson-level theorem needed downstream. Existing active-square surfaces reduce it to square-source control or active-shell amplitude gain.

### Terminal amplitude-decay route
Preterminal smoothness controls fixed shell tails at fixed times. The active-shell theorem requires uniform control on moving terminal active shells whose frequency may drift upward as `t -> T_*`.

### Monotone-dominance route
The monotone flux law surface records that shell energy plus raw dissipation permits scalar pulse profiles when nonlinear flux supplies the pulse. A monotone-dominance result therefore requires a new flux/source theorem or direct active-square control.

### Amplitude-speed gate route
The amplitude-speed gate theorem works after one of its supplier branches is installed. It is a valid local gate under supplier hypotheses, while the required supplier from `OriginalSmoothData` remains the source burden.

## Result
The downstream theorem chain is conditionally solved:

`active-shell amplitude gain -> scale-normalized nu_SCF Carleson -> Jump_avg eliminated -> PCTP.hard -> terminal Part/Field/tower readout`.

The source theorem

`OriginalSmoothData -> active-shell amplitude gain`

remains the active frontier. A proof needs one of the following new inputs:

1. heat-scale square-source estimate with amplitude normalization;
2. direct active-square Carleson theorem;
3. terminal active-shell amplitude-decay theorem;
4. monotone flux/source domination theorem controlling normalized `nu_SCF`.

## Exact next step
The sharpest next target is a nonlinear shell-flux source theorem that forbids source-balanced active pulses at terminal active scales.