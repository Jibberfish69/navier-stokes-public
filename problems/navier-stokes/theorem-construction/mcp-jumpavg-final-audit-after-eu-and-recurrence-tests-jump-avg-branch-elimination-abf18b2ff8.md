# Final Jumpavg audit after E_u and recurrence tests

## Target

Discharge `jump-avg-branch-elimination` through the branch-native no-escape route.

## Installed progress

The route now contains a concrete threshold extraction:

```math
Jump_avg => epsilon-threshold SCF concentration sequence.
```

The selected analytic charge

```math
nu_SCF = mu_D + sum_chi mu_P_chi
```

has a finite bounded-overlap upper estimate on terminal windows.

## Audit of lower side

The lower side still lacks a valid final charge.

### nu_SCF route

`nu_SCF` has upper summability. Component selection fails because the threshold SCF packet can be carried by the velocity-energy channel `E_u`, while `nu_SCF` carries dissipation and local pressure.

### Enlarged charge route

Adding `E_u` to the charge closes the component-selection gap at the level of components. This enlarged charge lacks an installed additive finite upper carrier. The local energy inequality supplies balances and global size, while repeated terminal scale-critical `E_u` packets have no bounded-overlap summability theorem in the current surfaces.

### Recurrence route

Separated recurrence requires a final charge satisfying both properties:

1. every threshold SCF packet selects positive mass for that charge;
2. bounded-overlap terminal sums of that charge are finite.

No current candidate satisfies both. A nested reuse of one terminal defect does not supply the separated lower schedule required by the upper estimate.

## Verdict

`jump-avg-branch-elimination` remains open.

The exact remaining theorem pair is:

```math
E_u terminal threshold => D_u/P terminal mass
```

or an additive `E_u` carrier theorem with finite bounded-overlap upper control, followed by

```math
final charge positive terminal mass => separated recurrence.
```

## Boundary

This note records the final audit after the latest continuation work. It preserves the newly installed threshold extraction and the narrowed obstruction pair. It does not promote the proof-obligation row to grounded.