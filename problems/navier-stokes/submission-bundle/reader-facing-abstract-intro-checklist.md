# Reader-Facing Abstract, Introduction, And Review Checklist

## Abstract

We record the periodic branch of the three-dimensional incompressible Navier--Stokes theorem on the torus. For every smooth, divergence-free, zero-mean initial datum on `T^3`, the unforced equation admits a unique global smooth solution. The proof argues by contradiction from a first finite endpoint. A terminal-tail uniformization theorem supplies the finite readout cover, field coherence, and transported-center tower needed at the endpoint. An endpoint matrix then eliminates all possible endpoint faces, and the remaining finite tower bound gives a uniform `H^s` bound for some `s>5/2`. The standard periodic continuation criterion extends the solution past the alleged endpoint. The whole-space `R^3` extension is not part of this release and remains conditional on high-order spatial-infinity tail control.

## Introduction

The periodic problem avoids spatial-infinity complications and admits finite readout covers, periodic pressure normalization, and compact Sobolev patching. The proof uses these features to convert terminal local regularity and endpoint-grammar data into a standard continuation bound. The main line is written as a conventional contradiction proof, while the technical appendices record the terminal-tail uniformization theorem, elliptic pressure readout, frozen-family source theorem, and endpoint matrix.

The release scope is precisely:

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

1. Verify theorem scope: periodic `T^3`, smooth divergence-free zero-mean data, zero forcing, viscosity `nu>0`.
2. Verify the main contradiction structure from finite `T_*` to bounded `H^s` continuation norm.
3. Verify terminal-tail uniformization supplies the finite readout cover and pointwise endpoint inputs.
4. Verify the pressure readout: local Poisson split, harmonic tail control, and depth condition `m>=N+2`.
5. Verify the source theorem: exact split `FPCR.C+FSCR.C+FCC.C1=>FCI.5f` and compatible sufficient branch `FFSRC.A=>FCI.5f`.
6. Verify the endpoint matrix: every first endpoint enters one of `Dead`, `packing-detached`, `tower-blown`, or `Jump`, and each row is eliminated.
7. Verify dependency order: averaged endpoint closure precedes `READ.COVER`; pointwise `Field` and `DTC.A` appear only after `Field.Read` and `DTC.Read`.
8. Verify the final continuation step uses standard periodic `H^s` local theory with `s>5/2`.
9. Verify reproducibility: release manifest, dependency graph, live authority edge, source frontier, review verdict, release decision, and final snapshot hashes.
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
