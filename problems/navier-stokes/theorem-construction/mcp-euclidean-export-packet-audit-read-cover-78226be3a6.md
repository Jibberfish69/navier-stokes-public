# Euclidean Export Packet Audit

Status: failed as an export theorem. The Euclidean whole-space branch remains separate.

## Target

A whole-space export packet would provide

```math
Euclidean.READ.COVER,
\qquad
Euclidean.Field.Read,
\qquad
Euclidean.DTC.Read,
```

plus far-field pressure-tail control and uniform constants under exhaustion by large balls.

## Periodic input boundary

The completed theorem-facing route is periodic:

```math
T^3,
\qquad
f=0,
\qquad
\int_{T^3}u_0=0.
```

It uses compactness of `T^3`, periodic pressure normalization, and finite cover extraction without spatial infinity.

## Euclidean requirements

For `R^3`, the following replacements are required.

1. A local terminal cover theorem on bounded regions with constants stable under large-ball exhaustion.
2. A far-field pressure-tail estimate replacing the periodic harmonic-tail bound.
3. A Euclidean `DTC.Read` theorem for

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q
```

with constants independent of the exhaustion radius.
4. A Euclidean `Field.Read` theorem with overlap and partition constants independent of the exhaustion radius.
5. A whole-space continuation criterion in the selected data class.

## Obstruction

The fixed-cover pressure split on `T^3` uses a compact periodic energy tail. In `R^3`, the harmonic tail includes distant source contributions over the exterior region. Controlling those uniformly requires decay or localization hypotheses and a far-field pressure-tail theorem.

Large-ball exhaustion also introduces boundary/cutoff terms. Without uniform exhaustion constants, the periodic readout theorem does not export.

## Verdict

The Euclidean export packet is open at

```math
\text{far-field pressure-tail control}
+
\text{uniform exhaustion constants}
+
Euclidean.READ.COVER/DTC.Read/Field.Read.
```

The periodic zero-force theorem remains correctly scoped to `T^3`.