# TerminalSourceReverseHolder.OnwardSourceNormalize

## Status

Continuation from `TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A`.

The branch reduces to active-shell source normalization and then to a weighted commutator/residual-tail source-control frontier.  It remains open.

## Temporal reverse Holder chain

The valid implication chain is:

```math
HeatScaleSquareSource.A
\Longrightarrow
UniformTemporalSourceIntegrability_p.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A.
```

Here `HeatScaleSquareSource.A` gives the super-L1 time control needed to remove terminal source atoms.

## Square-source input

The square-source input requires source normalization on selected terminal active windows:

```math
ActiveShellSourceNormalize.A.
```

The direct test fails from current inputs.  Shell flux is trilinear, so scaling a smooth finite-mode profile by amplitude `A` gives source size like `A^3` and square-source size like `A^6`.  Original smoothness and preterminal smoothness give data-dependent bounds, while the terminal branch needs a scale-normalized estimate along moving high shells.

Thus:

```math
ActiveShellSourceNormalize.A
```

is the first missing source normalization theorem in this path.

## Parent reverse Holder route

The parent concentration route asks for boundedly many legal parents to carry a fixed fraction of source-parent mass.  Diffuse legal parentage can spread mass over arbitrarily many legal parents.  The needed strengthening is:

```math
ScaleNormalizedParentInverse.A.
```

At current route resolution this is equivalent to the scale-critical tree reserve:

```math
ScaleNormalizedParentInverse.A
\equiv
ScaleCriticalTreeCarleson.A.
```

So this route supplies no lower theorem beneath the current source wall.

## Source ODE / flux route

The shell energy balance has the form:

```math
dE_j+c\nu D_jdt\le F_jdt.
```

A scalar source-balanced pulse can persist when `F_j` matches damping.  The proof must use Navier-Stokes structure inside the shell flux.

The installed dyadic antisymmetry works before terminal weights and localization.  After weights, the remaining object is a weighted commutator defect.  The source-ODE route therefore reduces to two subtargets:

```math
WeightedCommutatorDefect.A
```

and

```math
ResidualTailControl.A.
```

The residual tail is stronger than available first-moment dissipation.  Taking absolute values returns to active-square / Carleson reserve language.

## Current smallest atoms

The continuation leaves the forward supplier with one of the following equivalent source-control atoms:

```math
ActiveShellSourceNormalize.A,
```

or

```math
WeightedCommutatorDefect.A + ResidualTailControl.A,
```

or

```math
ScaleNormalizedParentInverse.A.
```

Each is a source-control theorem at the same strength as the scale-critical source wall.

## Conditional chain

A proof of the source-normalization atom gives:

```math
ActiveShellSourceNormalize.A
\Longrightarrow
HeatScaleSquareSource.A
\Longrightarrow
UniformTemporalSourceIntegrability_p.A
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
ZenoSourceResidueRigidity.A
\Longrightarrow
SourcePulseExclusion.A.
```

## Verdict

The branch remains open.  The next smallest visible source-side atom is active-shell source normalization, equivalently weighted commutator defect plus residual-tail control.
