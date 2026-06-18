# Periodic Release Appendix Bundle

## Status

Legacy appendix bundle for an older periodic `T^3` presentation. It is retained
as provenance only. Current Clay-facing authority is the CM terminal witness
consumption bundle, not this periodic release surface.

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
FPCR.C+FSCR.C+FCC.C1+
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\Longrightarrow FCI.5f.
```

The strengthened sufficient branch is compatible:

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f,
\qquad
\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)
\text{ is one of those hypotheses.}
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

Each face maps to a finite row: participation, pack gauge, tower amplitude, and field coherence. Cross entries reduce to those rows. The pointwise endpoint package removes all rows, so a first finite endpoint contradicts endpoint closure.

## Appendix E: Reproducibility manifest

The reproducibility manifest is

```text
problems/navier-stokes/release-manifest.yaml
```

The proof promotion packet reports this manifest as passed. The appendix set is scoped to the periodic `T^3` release surface. The conditional `R^3` extension branch is stored separately and is excluded from the periodic release proof.
