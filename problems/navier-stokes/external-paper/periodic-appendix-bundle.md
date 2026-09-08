# Periodic Conditional Appendix Bundle

## Status

Appendix bundle for a conditional periodic `T^3` continuation route.  This is
not a closed theorem surface.  The current open ingredient is the noncircular
same-parent coupled active-capacity/full-exchange storage theorem at the Gold
`L^1` source wall.

## Appendix A: Dependency graph

The proof spine is

```math
SCF_{base}
\longrightarrow
ATD_m^\varepsilon
\longrightarrow
AACT.KX
\longrightarrow
DTC.A_{avg}
\longrightarrow
End_{NS,avg}
\longrightarrow
READ.COVER
\longrightarrow
Field.Read+DTC.Read
\longrightarrow
End_{NS}
\longrightarrow
H^s\text{ continuation}.
```

The machine-readable dependency graph is recorded at

```text
problems/navier-stokes/dependency-graph.yaml
```

and the release manifest fixes its hash.

## Appendix B: Pressure readout

The pressure readout uses a local Poisson split on finite cover elements:

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

The local term is controlled by Calderon--Zygmund/Schauder estimates on the doubled ball, while the harmonic tail is controlled by the periodic energy far-tail estimate. With readout depth `m>=N+2`, the viscous rung `\nu\Delta U_q` is supplied by `U_{q+2}`.

## Appendix C: Source split

The frozen-family source theorem consumes the single downstream object

```math
FCI.5f.
```

The exact split is

```math
FPCR.C+FSCR.C+FCC.C1\Longrightarrow FCI.5f.
```

The strengthened sufficient branch is compatible:

```math
FFSRC.A\Longrightarrow FCI.5f.
```

The main proof consumes only `FCI.5f`.

## Appendix D: Endpoint matrix

The endpoint faces are

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

Each face maps to a finite row: participation, pack gauge, tower amplitude, and field coherence. Cross entries reduce to those rows. The pointwise endpoint package removes all rows only after the coupled same-parent storage theorem supplies the open Gold `L^1` source input.

## Appendix E: Reproducibility manifest

The reproducibility manifest is

```text
problems/navier-stokes/release-manifest.yaml
```

The appendix set is scoped to the periodic `T^3` conditional route.  The manifest does not by itself close the open coupled-storage theorem. The conditional `R^3` extension branch is stored separately and is excluded from this periodic route.
