# SG4 TPS Final Closure From Retained Source Packets

## Status

Conditional branch closure.

## Inputs on the common retained family

```text
BridgeA,
DG-Line^sharp,
BootSquare.
```

## BridgeA

The aligned square budget gives aligned selector-strain compatibility with

```math
Pi_ref := P_al.
```

Using the aligned CG convention

```math
C_CG := W Pi_N W^*,
```

one has

```math
Err_cmp^frame = 0.
```

Thus BridgeA holds on the retained aligned branch.

## DG-Line^sharp

DG-Line is supplied by:

```text
lower singular-value floor,
relative Gramian error control,
in-plane anisotropy drain.
```

The lower singular floor gives nondegeneracy. The relative Gramian error is absorbed in the log-ratio estimate. The anisotropy drain supplies the negative Rayleigh drift. Hence `DG-Line^sharp` holds.

## BootSquare

BootSquare is supplied by:

```text
nu_J(B_J) -> 0,
||beta_J||_Lp(dnu_J) <= C, p > 2.
```

The weighted mass follows from unweighted bad-set collapse plus uniform integrability of `M_J^2`. The beta control follows from multiplier control of `Lambda_J^boot` and compatible `Lp` control of `eta_J^boot`. Holder gives the weighted square collapse.

## Same-family synchronization

The synchronization certificate places all packets on the same:

```text
retained selector-good family,
time strip,
finite frame,
weighted measure.
```

## Final handoff

Therefore

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Retained source assumptions

```text
aligned square-budget source estimates,
BootSquare unweighted bad-set collapse and weight uniform integrability,
BootSquare multiplier/residual Lp estimates,
DG-Line generator-integral floor,
DG-Line normalized cocycle-defect bound,
DG-Line reduced strain gap and alignment,
positive retained-family intersection.
```