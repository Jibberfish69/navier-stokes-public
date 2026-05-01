# SG4 TPS Aligned Branch Final Assembly After Source Reductions

## Status

Conditional branch assembly.

## Inputs

```text
BridgeA,
DG-Line^sharp,
BootSquare.
```

## BridgeA

On the aligned-reference branch, set

```math
C_{CG}:=W\Pi_NW^*.
```

Then

```math
Err_{cmp}^{frame}=0.
```

Together with aligned selector-strain compatibility from the aligned square budget, this supplies BridgeA on the retained family.

## DG-Line^sharp

The DG-Line packet is supplied by:

```text
in-plane anisotropy drain,
relative Gramian error control,
lower singular-value floor on positive retained mass.
```

The drain gives negative log-ratio drift for the reduced Gramian. The relative error is absorbed. The lower singular-value floor converts ratio contraction into a quantitative simple-top gap.

## BootSquare

The BootSquare packet is supplied by:

```text
nu_J(B_J)->0,
||beta_J||_{Lp(dnu_J)}<=C, p>2.
```

Holder gives the weighted square collapse.

## Final handoff

Therefore the branch composes as

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Source assumptions retained

```text
aligned square budget / aligned SSC,
DG-Line drain / relative error / singular-value floor,
BootSquare weighted mass / beta Lp control,
same retained selector-good family throughout.
```