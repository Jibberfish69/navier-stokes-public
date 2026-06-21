# OriginalSmoothData to active-shell amplitude gain through sufficient mechanisms — failed discharge

## Target
Prove

`OriginalSmoothData -> active-shell amplitude gain`

using one of the sufficient mechanisms:

1. heat-scale square-source theorem;
2. direct active-square theorem;
3. terminal amplitude-decay theorem;
4. monotone-dominance theorem controlling normalized `nu_SCF`.

## Mechanism audit

### Heat-scale square-source route
The surface `square-source-to-active-square-control-result.md` gives a valid conditional implication:

`square-source L2_t shell flux estimate + entrance-tail reserve -> active-square control`.

The surface `square-source-shell-flux-estimate-result.md` shows the required square-source estimate has a fixed-shell amplitude obstruction. Scaling smooth divergence-free data by amplitude `A` gives cubic shell flux scaling and violates any universal bound independent of `A`.

### Direct active-square route
The active-square theorem is exactly the needed Carleson-level output. Existing active-square surfaces reduce it to either square-source control or active-shell amplitude gain. This route therefore loops back to the same source theorem.

### Terminal amplitude-decay route
Preterminal smoothness gives decay of high shells at each fixed time before `T_*`. It gives no uniform terminal active-scale decay as active shells may drift to infinity while `t -> T_*`. The needed theorem must control the moving active shell, not a fixed shell at a fixed preterminal time.

### Monotone-dominance route
The shell energy identity allows active pulses whenever nonlinear flux supplies the pulse. The monotone/no-pulse surface shows that a monotone law requires a new flux-source domination theorem or direct active-square control.

## Result
No available sufficient mechanism proves active-shell amplitude gain from `OriginalSmoothData`.

## Conditional chain preserved
The downstream chain remains valid as a conditional theorem program:

`active-shell amplitude gain -> scale-normalized nu_SCF Carleson -> Jump_avg eliminated -> PCTP.hard -> terminal Part/Field/tower readout`.

## Exact frontier
The active mathematical target is one source theorem strong enough to rule out active-shell amplitude concentration:

- heat-scale square-source with amplitude normalization;
- direct active-square Carleson;
- terminal active-shell amplitude decay;
- monotone flux/source domination for normalized `nu_SCF`.