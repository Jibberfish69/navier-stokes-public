# Full PCTP.hard rerun after active-shell mechanism scan

## Target chain

1. `OriginalSmoothData -> active-shell amplitude gain`.
2. Prove a sufficient mechanism: heat-scale square-source, direct active-square, terminal amplitude-decay, or monotone-dominance for normalized `nu_SCF`.
3. Use active-shell amplitude gain to get scale-normalized `nu_SCF` Carleson control.
4. Use that Carleson estimate to eliminate `Jump_avg`.
5. Insert `Jump_avg` elimination into `PCTP.hard`.
6. Rerun `PCTP.hard -> terminal Part/Field/tower readout`.

## Mechanism scan

The installed surface `square-source-to-active-square-control-result.md` proves a conditional mechanism:

`square-source L2_t estimate + entrance-tail reserve -> active-square control`.

The surface `square-source-shell-flux-estimate-result.md` shows the square-source estimate fails as a universal fixed-shell consequence of original smooth data, by cubic amplitude scaling of the shell flux.

The surface `monotone-flux-law-active-shell-pulse-attempt.md` shows monotone/no-pulse control requires a new nonlinear source-control theorem; shell energy plus raw dissipation permits scalar active-shell pulses when the flux term supplies the pulse.

## Closed conditional bridge

The theorem note `mcp-active-shell-amplitude-gain-implies-nu_scf-carleson-active-shell-amplitude-gain-scale-normalized-nu_scf-carleson-estimate-b42419075e.md` proves:

`active-shell amplitude gain -> scale-normalized nu_SCF Carleson estimate`.

The theorem note `mcp-conditional-jump_avg-no-escape-from-nu_scf-carleson-control-jump_avg-branch-elimination-a3978562ed.md` proves:

`scale-normalized nu_SCF Carleson estimate -> Jump_avg eliminated`.

The theorem note `mcp-conditional-pctp-hard-discharge-modulo-nu_scf-carleson-cfi-a-5e972c869b.md` proves:

`Jump_avg eliminated + strict averaged-good branch route -> PCTP.hard`.

Therefore the conditional chain is:

`active-shell amplitude gain -> scale-normalized nu_SCF Carleson -> Jump_avg eliminated -> PCTP.hard -> terminal Part/Field/tower readout`.

## Unclosed source theorem

The remaining source theorem is:

`OriginalSmoothData -> active-shell amplitude gain`.

The current route cannot derive this from finite energy, compact-preterminal smoothness, or raw source-mass estimates. Those inputs permit high-frequency active-shell concentration near a terminal time unless a square-source, amplitude-decay, monotone-dominance, or direct active-square theorem is supplied.

## Verdict

The rerun closes conditionally after active-shell amplitude gain. The unconditional chain remains open at the source theorem

`OriginalSmoothData -> active-shell amplitude gain`.

## Exact next theorem target

Prove one of the following from `OriginalSmoothData`:

1. heat-scale square-source theorem for the shell flux;
2. direct active-square Carleson theorem;
3. terminal active-shell amplitude-decay theorem;
4. monotone-dominance theorem controlling normalized `nu_SCF`.
