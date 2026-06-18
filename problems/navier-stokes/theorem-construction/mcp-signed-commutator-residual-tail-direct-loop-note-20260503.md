# Signed commutator plus residual-tail direct loop note

## Target

Close the nonlinear shell-flux source theorem through the pair:

```math
\text{signed weighted commutator-defect control}
\quad+\quad
\text{active-square residual-tail control.}
```

A successful proof feeds `PositiveRemainderDepletion.A` and then
`SourcePulseExclusion.A`.

## Signed branch

Unweighted dyadic exchange cancellation holds before terminal weights, lifted reductions, cutoffs, and active-window positive-part selection. The live weighted lifted remainder has principal form

```math
R_{j,k,\ell}^{lift}:=
2^{2j}\langle C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle.
```

This term can be positive when the active packet aligns with an expanding strain eigendirection. One-sided shell weights orient the sum but do not impose eigendirection cancellation. Cutoffs and projectors localize legal terms but do not change the sign of the interior strain-production carrier.

Thus signed cancellation needs a new theorem: active eigendirection decorrelation, signed measure cancellation for `G_N^{lift,sigma}`, or a structural nonpositive/divergence identity for the true weighted remainder. None is installed.

## Residual-tail branch

Taking absolute values returns to the positive-carrier branch. The needed
estimate is active-square residual-tail / `ScaleCriticalTreeCarleson.A`.
Shell-amplitude gain, square-source control, or localized positive source
Carleson implies it once supplied.

Raw energy and first-moment dissipation do not control shellwise square dissipation on shrinking active windows. A source-balanced pulse can keep the active shell above threshold while remaining compatible with finite energy. Direct localized positive-source estimates preserve geometry but produce the same active-square residual after Cauchy/Young.

Thus residual-tail control also remains equivalent to the source-pulse theorem.

## Result

The commutator/residual-tail path remains open:

```math
\text{Signed weighted cancellation open},\qquad
\text{active-square residual-tail open}.
```

The exact next target is localized positive-strain/source depletion, i.e. a direct positive-part theorem for the active local source mass.

## Verdict

No discharge of `SourcePulseExclusion.A` follows from the current signed commutator or residual-tail surfaces.
