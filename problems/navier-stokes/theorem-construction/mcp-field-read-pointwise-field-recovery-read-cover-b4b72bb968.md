# Field.Read Pointwise Field Recovery

Status: conditional readout theorem.

## Statement

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon
\Longrightarrow
Field.
```

## Inputs

`Field_avg` is supplied by the averaged consumer chain. `READ.COVER` supplies a finite positive-scale SCF-good cover:

```math
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
r_*:=\min_i r_i>0.
```

For each cover element, the input includes an `ATD_m^\varepsilon` certificate
on a fixed shrunken cylinder. The shrink factor and constants belong to that
certificate; they are not inferred from the word `\varepsilon_m`-good alone.

## Proof

On each cover element, `ATD_m^\varepsilon` supplies finite-depth averaged affine tower control and local regularity at the depth needed for field coherence. Local Morrey/Sobolev readout converts the averaged control into pointwise control on the shrunken element.

The strict positive lower scale `r_*>0` prevents degeneration of the constants. The cover has finitely many elements, so the local constants have a finite maximum.

`Field_avg` gives averaged coherence on each element. Local stability from `ATD_m^\varepsilon` converts this to pointwise coherence on each shrunken element. Finite chain connectivity across overlaps propagates the same pointwise field identity across the retained approach window.

These inputs give the old field predicate:

```math
Field_{N,r,Q}.
```

## Output

```math
Field.
```

This feeds the old endpoint row

```math
END.Field.
```

## Boundary

`Field.Read` uses the finite positive-scale cover from `READ.COVER`. It is a readout theorem, separate from the averaged route that produced `Field_avg`.
