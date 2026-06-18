# MPP SourcePulse Classical Criteria / BKM-Serrin Audit Note

## Status

Bounded audit for the live source-pulse theorem:

```math
\boxed{
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

This note tests whether named continuation criteria such as BKM,
Prodi-Serrin, or critical `L^3` regularity eliminate the terminal source-pulse
packet.

## Conditional Strength

The existing note `mcp-bkm-conditional-comparison-scfbase-towerbound.md`
records the valid conditional route:

```math
\int_{t_0}^{T_\ast}\|\omega(t)\|_{L^\infty}\,dt<\infty
\Longrightarrow
Pack.TTU+SCFBase.Modulus+TowerBound.Upstream.
```

Such a criterion gives high Sobolev control and therefore eliminates the
terminal bad packet.  Prodi-Serrin or critical regularity hypotheses would do
the same if supplied on the terminal interval.

## Why This Is Not A Discharge

The live branch starts from original smooth data plus the installed energy and
local-energy layers, not from a terminal BKM/Serrin hypothesis.

A terminal source-pulse packet is precisely a way for the solution to avoid a
uniform critical modulus: it concentrates source-balanced active mass on
shrinking heat-scale windows.  To use BKM or Serrin here, one must first prove
that the vorticity, strain, or critical velocity norm is time-integrable on
those same windows:

```math
\int_{I_n}\|\omega(t)\|_{L^\infty}\,dt<\infty
```

with enough uniformity to sum over the terminal schedule, or an equivalent
critical-space estimate.  That is not supplied by finite energy:

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

Nor is it supplied by the averaged good-cylinder route on the bad branch: the
bad branch is exactly the absence of a positive SCF-good coherence scale.

## Relation To SourcePulseExclusion.A

The conditional consequence is exact: a BKM/Serrin-strength terminal estimate
proved from original data removes active mass and implies
`SourcePulseExclusion.A`.  Proving that estimate is another presentation of the
same missing nonlinear source-control theorem.

Thus:

```math
\boxed{
OriginalSmoothData\Longrightarrow BKM/Serrin\text{-terminal control}
\quad\Longleftrightarrow_{\mathrm{route}}\quad
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
}
```

## Conclusion

Classical continuation criteria are valid consumers, not source-pulse
suppliers.  They close the endpoint only after the missing terminal
critical-space/source-control estimate has already been proved.
