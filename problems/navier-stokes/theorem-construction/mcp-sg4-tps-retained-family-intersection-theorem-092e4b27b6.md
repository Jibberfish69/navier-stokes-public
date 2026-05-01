# SG4 TPS Retained-Family Intersection Theorem

## Status

Conditional theorem.

Fix one ambient selector-good family `G` with positive measure, one time strip, one finite frame, and one weighted measure

```math
d\nu_J=M_J^2d\mu_J.
```

Let

```text
G_Bridge = subfamily where BridgeA holds,
G_DG     = subfamily where DG-Line sharp holds,
G_Boot   = subfamily where BootSquare holds.
```

Define

```math
G_*:=G_{Bridge}\cap G_{DG}\cap G_{Boot}.
```

By the union bound,

```math
\mu_J(G\setminus G_*)
\le
\mu_J(G\setminus G_{Bridge})
+\mu_J(G\setminus G_{DG})
+\mu_J(G\setminus G_{Boot}).
```

Thus, under the strict loss inequality

```math
\mu_J(G\setminus G_{Bridge})
+\mu_J(G\setminus G_{DG})
+\mu_J(G\setminus G_{Boot})
<\mu_J(G),
```

one obtains

```math
\mu_J(G_*)>0.
```

On `G_*`, all packets share the same selector-good family, strip, finite frame, and weighted measure. This proves the retained-family synchronization required for the final SG.4/TPS branch closure.

## Source condition retained

```text
strict retained loss inequality for the concrete BridgeA, DG-Line, and BootSquare restrictions.
```