# SourcePulseExclusion.A Child-Route Propagation Audit

Status: failed propagation; live branch-native target remains open.

## Target

Propagate child-route audits toward

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A
\Longrightarrow Jump_{avg}\Rightarrow\bot.
```

This is the branch-native `Jump_avg` elimination route. It cannot assume `Field_avg` on the `Jump_avg` branch.

## Child routes audited

Terminal source coherence was audited in

```text
problems/navier-stokes/theorem-construction/mcp-terminalsourcecoherence-child-loop-audit-20260503.md
```

and remains open from `OriginalSmoothData`.

Scale-critical tree Carleson was audited in

```text
problems/navier-stokes/theorem-construction/mcp-scalecriticaltreecarleson-child-loop-audit-20260503.md
```

and remains open from `OriginalSmoothData`.

The Zeno rigid-class / residue-Liouville route was audited in

```text
problems/navier-stokes/theorem-construction/mcp-zeno-rigidclass-child-loop-audit-20260503.md
```

and no produced rigid class `B` currently closes it.

## Propagation decision

No child route currently supplies `SourcePulseExclusion.A`. Therefore the branch-native theorem remains open:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

Consequently, branch-native no-`Field_avg` elimination of `Jump_avg` remains open on current installed surfaces.

## Next primitive targets

The remaining concrete source-control targets are

```math
LocalPositiveSourceCarleson.A,
\quad
active\text{-}shell\ amplitude\ gain,
\quad
heat\text{-}scale\ square\text{-}source\ control,
\quad
ScaleNormalizedParentInverse.A,
\quad
\text{or production of a rigid Zeno class }B.
```

This audit preserves the stricter branch-native boundary while leaving the separately persisted endpoint-face `Jump_avg` discharge intact.