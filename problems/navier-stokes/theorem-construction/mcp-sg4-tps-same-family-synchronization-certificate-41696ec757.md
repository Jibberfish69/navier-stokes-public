# SG4 TPS Same-Family Synchronization Certificate

## Status

Conditional synchronization certificate.

Let `G` be the ambient selector-good family with one fixed time strip, one finite frame, and one weighted measure

```math
d\nu_J=M_J^2d\mu_J.
```

Let

```text
G_Bridge = family where BridgeA holds,
G_DG     = family where DG-Line^sharp holds,
G_Boot   = family where BootSquare holds.
```

Define the common retained family

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

Therefore, if the total loss is strictly less than the ambient retained mass,

```math
\mu_J(G\setminus G_{Bridge})
+\mu_J(G\setminus G_{DG})
+\mu_J(G\setminus G_{Boot})
<
\mu_J(G),
```

then

```math
\mu_J(G_*)>0.
```

On `G_*`, all packets use the same:

```text
selector-good family,
time strip,
finite frame,
weighted measure,
current/aligned reference convention.
```

This synchronizes the hypotheses needed for the final branch assembly.

## Source condition retained

```text
positive retained mass for the intersection G_*.
```