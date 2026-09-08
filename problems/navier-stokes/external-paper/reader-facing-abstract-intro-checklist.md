# Reader-Facing Abstract, Introduction, And Review Checklist

## Abstract

We record the current periodic continuation route for the three-dimensional incompressible Navier--Stokes problem on the torus. The route is not a closed theorem: the remaining checked open ingredient is the signed critical-height sign-persistence / peak-height theorem at the Gold `L^1` source wall. Once that parent-storage object is proved, the contradiction from a first finite endpoint would pass through terminal-tail uniformization, endpoint-face elimination, a finite tower bound, and the standard periodic `H^s` continuation criterion. The whole-space `R^3` extension is not part of this release and remains conditional on high-order spatial-infinity tail control.

## Introduction

The periodic problem avoids spatial-infinity complications and admits finite readout covers, periodic pressure normalization, and compact Sobolev patching. The proof route uses these features to convert terminal local regularity and endpoint-grammar data into a standard continuation bound after the open coupled same-parent storage theorem is supplied. The main line is currently a conditional contradiction route, while the technical appendices record the terminal-tail uniformization theorem, elliptic pressure readout, frozen-family source theorem, and endpoint matrix.

The conditional target is precisely:

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0\,dx=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

The proof route is:

```math
SCF_{base}
\to ATD_m^\varepsilon
\to AACT.KX
\to DTC.A_{avg}
\to End_{NS,avg}
\to READ.COVER
\to Field.Read+DTC.Read
\to End_{NS}
\to H^s\text{ continuation}.
```

## External-review checklist

1. Verify status: this is a conditional periodic route, not a release-ready closed theorem.
2. Verify the main contradiction structure from finite `T_*` to bounded `H^s` continuation norm.
3. Verify terminal-tail uniformization supplies the finite readout cover and pointwise endpoint inputs.
4. Verify the pressure readout: local Poisson split, harmonic tail control, and depth condition `m>=N+2`.
5. Verify the source theorem is not treated as closed until the signed critical-height sign-persistence / peak-height theorem is proved.
6. Verify the endpoint matrix: every first endpoint enters one of `Dead`, `packing-detached`, `tower-blown`, or `Jump`, and each row is eliminated.
7. Verify dependency order: averaged endpoint closure precedes `READ.COVER`; pointwise `Field` and `DTC.A` appear only after `Field.Read` and `DTC.Read`.
8. Verify the final continuation step uses standard periodic `H^s` local theory with `s>5/2`.
9. Verify reproducibility: release manifest, dependency graph, proof matrix, review verdict, release decision, and final snapshot hashes.
10. Verify scope boundary: the `R^3` branch is excluded from the periodic release.

## R3 work queue

The separated whole-space branch starts from the live target

```math
OriginalSmoothData_{\mathbb R^3}\Longrightarrow Tail.Hs_{\mathbb R^3}.
```

The candidate route is an exterior cascade theorem

```math
ExtCascade_s^{\mathbb R^3}\Longrightarrow Tail.Hs_{\mathbb R^3}.
```

At current resolution this theorem is open. The R3 matrix branch must keep `TailFace_R3^Hs` as a live row until `Tail.Hs_R3` or a noncircular elimination theorem is proved.
