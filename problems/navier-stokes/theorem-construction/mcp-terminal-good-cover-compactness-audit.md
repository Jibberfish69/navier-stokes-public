# Terminal Good-Cover Compactness Audit

## Status

Closed compactness audit for the terminal good-cover dichotomy.

## Compactness used

The cover extraction uses compactness only after passing to the coherent branch:

```math
\exists T'\subset T,\quad \exists r_*>0,\quad r_{good}(a,t)\ge r_*\text{ on }T'.
```

On this branch, the retained material cross-section is compact on the periodic surface, and the terminal subtail is treated through finite terminal windows with a common positive radius floor.

## Cover extraction

For each point of the coherent terminal subtail, choose a same-fluid parabolic
cylinder with radius in `[r_*,2r_*]`.  In pulled-back same-fluid coordinates,
choose a maximal `r_*/4`-separated net on the retained compact tail.  The
`r_*` cylinders cover the tail, the `r_*/4` cores are disjoint, and parabolic
packing gives at most `C_4(M_\sharp)(1+D_T/r_*)^4` selected cylinders with
fixed-dilate overlap bounded by `\Omega_4(M_\sharp)`.  Periodicity supplies
compact spatial geometry; bounded distortion transfers these constants to the
moving cylinders.

## Collapse branch

If no terminal subtail has a positive lower radius floor, the branch is terminal scale loss. Compactness is not used to manufacture a cover there.

## Verdict

The dichotomy has no hidden compactness assumption: compactness is used only on the positive-radius coherent branch, and the scale-collapse branch is separately typed as terminal good-scale loss.
