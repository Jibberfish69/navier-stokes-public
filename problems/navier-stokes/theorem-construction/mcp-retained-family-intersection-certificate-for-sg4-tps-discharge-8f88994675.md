# Retained Family Intersection Certificate For SG4 TPS Discharge

## Status

Conditional theorem.

Let `G` be a common ambient selector-good family with

```text
one time strip,
one finite frame,
one weighted measure dnu_J,
positive ambient mass mu_J(G)>0.
```

For each source packet, let `G_i subset G` be the subfamily where that packet holds. Define

```math
G_*:=\bigcap_i G_i.
```

By the finite union bound,

```math
\mu_J(G\setminus G_*)
\le
\sum_i \mu_J(G\setminus G_i).
```

Therefore, if

```math
\sum_i \mu_J(G\setminus G_i)<\mu_J(G),
```

then

```math
\mu_J(G_*)>0.
```

On `G_*`, every packet uses the same:

```text
selector-good family,
time strip,
finite frame,
weighted measure.
```

This proves the same-family synchronization needed for source-level SG.4/TPS discharge.

## Source estimate retained

```text
strict total-loss inequality for the actual retained packet losses.
```