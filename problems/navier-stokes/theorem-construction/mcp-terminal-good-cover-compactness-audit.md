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

For each point of the coherent terminal subtail, choose a same-fluid parabolic cylinder with radius in `[r_*,2r_*]`. A parabolic Vitali-Besicovitch selection in bounded-distortion coordinates gives finite overlap. Periodicity supplies compact spatial geometry; bounded distortion transfers the overlap constants to the moving cylinders.

## Collapse branch

If no terminal subtail has a positive lower radius floor, the branch is terminal scale loss. Compactness is not used to manufacture a cover there.

## Verdict

The dichotomy has no hidden compactness assumption: compactness is used only on the positive-radius coherent branch, and the scale-collapse branch is separately typed as terminal good-scale loss.