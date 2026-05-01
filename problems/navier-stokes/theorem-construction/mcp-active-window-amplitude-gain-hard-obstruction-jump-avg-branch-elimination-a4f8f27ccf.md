# Active-window amplitude gain — hard obstruction

## Target

Prove active-window amplitude gain or an equivalent heat-scale square-source estimate strong enough to give scale-normalized upper control for the final charge in the `Jumpavg` branch.

## Installed implication

The repo already has the conditional bridge:

```math
active\text{-}shell\ amplitude\ gain
=> scale\text{-}normalized\ nu_{SCF}\ Carleson.
```

Under shell-to-window comparison, heat-scale dissipation tail control, and summable reserves, the gain converts the active-square term into the scale-normalized Carleson estimate needed for terminal windows.

## Attempted discharge

The live item asks for the gain itself from `OriginalSmoothData`.

Current surfaces supply finite raw mass, finite dissipation, local pressure integrability, and source/flux control. These controls allow short active-shell pulses or persistent active amplitudes at shrinking scales. Such pulses can preserve raw finite mass while breaking the scale-normalized Carleson sum.

## Obstruction

The gain requires an additional theorem of one of these forms:

```math
heat\text{-}scale\ square\text{-}source\ estimate,
```

```math
direct\ active\text{-}square\ control,
```

```math
terminal\ amplitude\ decay,
```

or a monotone-dominance law whose dissipation controls the normalized active charge.

No such theorem is installed in the current surfaces.

## Verdict

The active-window amplitude gain remains open. The current strongest valid statement is conditional:

```math
active\text{-}window\ amplitude\ gain
=> final\ charge\ scale\text{-}normalized\ upper\ control
=> possible\ Jumpavg\ no\text{-}escape\ route.
```

## Boundary

This note records a failed discharge of the gain itself. It preserves the installed implication from gain to Carleson upper control and identifies the next analytic theorem needed.