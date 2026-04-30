# BridgeA DG-Line BootSquare Terminal Reduction

## Status

Conditional terminal reduction for the local SG.4/TPS branch.

The remaining supplier package has been reduced to three analytic premises:

```text
BridgeA,
DG-Line^sharp,
BootSquare.
```

## 1. Residual compression

The `SSC-D7mb-collapse` surface proves:

```text
InitCollapse + MixCollapse-Honest + DriftCollapse-Honest
=> SSC-D7mb-collapse
=> SSC.
```

The same surface proves the stronger bootstrap sufficient route:

```text
BootSquare
=> InitCollapse + MixCollapse-Honest + DriftCollapse-Honest
=> SSC-D7mb-collapse
=> SSC.
```

Here `BootSquare` is the weighted square envelope

```math
\int_{\mathcal G_J}
M_J^2
\bigl(\Lambda_J^{boot}\eta_J^{boot}\bigr)^2
\,d\mu_J=o_J(1).
```

So the three named D.7mb suppliers compress to one packet:

```text
BootSquare.
```

## 2. Bridge A

Let

```math
\delta_J:=\|C_{al}-C_{CG}\|_{op},
```

and let `gamma_J` be the shared simple-top gap floor. Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F\le C\delta_J/gamma_J.
```

Thus

```text
delta_J/gamma_J -> 0
=> BridgeA.
```

## 3. DG-Line sharp

If the reduced cocycle `H_J` has positive-mass dominated splitting,

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1,
```

then the aligned entrance gap is positive on a positive-mass subfamily, hence `DG-Line^sharp` supplies the retained simple-top gap family.

## 4. Terminal handoff

On the retained common family:

```text
BridgeA + DG-Line^sharp + BootSquare
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B.
```

## Exact remaining analytic premises

```text
delta_J/gamma_J -> 0,
positive-mass dominated splitting of H_J,
BootSquare.
```