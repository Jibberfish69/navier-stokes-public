# Terminal Irreducible Cut For SG.4/TPS Branch

## Status

Failed as an unconditional proof from the current canonical surfaces.

The SG.4/TPS branch is reduced to the exact terminal three-problem cut:

```text
BridgeA,
DG-Line^sharp,
BootSquare.
```

## Closed assembly

The downstream assembly is conditional on those three inputs:

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## 1. BridgeA

BridgeA is the projector comparison

```math
\|P_{al}-P_J^{CG}\|_F\to0.
```

By Davis-Kahan, a sufficient theorem is

```math
\frac{\delta_J}{\gamma_J}\to0,
\qquad
\delta_J:=\|C_{al}-C_{CG}\|_{op},
```

where `gamma_J` is the shared simple-top gap floor.

The current surfaces require this comparison theorem when `C_CG` is the current CG tensor consumed by `SSC-EP.A`.

## 2. DG-Line sharp

DG-Line sharp is supplied by positive-mass dominated splitting of the reduced cocycle:

```math
\frac{\sigma_2(H_J)}{\sigma_1(H_J)}\le q<1
```

on a positive-mass subfamily.

This gives the aligned entrance gap. The spectral-transversality surface identifies this as a deformation-side theorem burden.

## 3. BootSquare

The `SSC-D7mb-collapse` surface proves:

```text
BootSquare
=> InitCollapse + MixCollapse-Honest + DriftCollapse-Honest
=> SSC-D7mb-collapse
=> SSC.
```

The square packet is

```math
\int_{\mathcal G_J}
M_J^2
\bigl(\Lambda_J^{boot}\eta_J^{boot}\bigr)^2
\,d\mu_J=o_J(1).
```

Installed sufficient descendants include:

```text
StrongBadSet_{p>2},
WeightedBadSet + RH_nu,
Weight_{Lq} + BootBadSet_{mu,p},
DiffExc + BootLoc_{diff,p} + Weight_{Lq} + Uniform-Klin,
FrozenPairMomentLoc / LPM.C overstrong pair-side bypass.
```

Those descendants retain theorem content.

## Terminal branch theorem

The precise local theorem now reads:

```text
BridgeA + DG-Line^sharp + BootSquare
=> SG.4B.
```

## Exact remaining proof targets

```text
1. Prove delta_J/gamma_J -> 0.
2. Prove positive-mass dominated splitting of H_J.
3. Prove BootSquare through one installed sufficient descendant.
```

This is the terminal irreducible cut currently visible for the SG.4/TPS branch.
