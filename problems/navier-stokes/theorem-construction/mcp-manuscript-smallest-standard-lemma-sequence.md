# Smallest Referee-Readable Standard Lemma Sequence

## Status

Closed manuscript-level compression.

## Final sequence

The proof should be presented as four standard lemmas plus the final theorem.

### Lemma 1: Moving-cylinder regularity and affine excess

If a same-fluid moving parabolic cylinder has small scale-critical CKN packet, then a smaller cylinder has finite-depth derivative bounds and the affine-subtracted residual satisfies the local energy inequality

```math
D^+X_R+cN_R\le B_RX_R+C X_R^{1/2}N_R+F_R.
```

On scheduler intervals this gives local affine-excess control.

This merges moving-cylinder epsilon regularity with the local affine-excess estimate.

### Lemma 2: Terminal good-cover dichotomy and globalization

Every terminal same-fluid tail either has a positive-scale finite SCF-good cover or loses every uniform positive good scale. On the positive-scale branch, the local estimates globalize by finite overlap and common scheduler to produce the terminal averaged tower bound.

### Lemma 3: Endpoint contradiction

A first finite endpoint must enter one of four primitive faces: participation failure, packing failure, averaged tower-amplitude escape, or terminal good-scale loss. The terminal package eliminates all four faces, so no first finite endpoint occurs.

### Lemma 4: Terminal readout and continuation

The averaged endpoint package gives a readout cover. On that cover, averaged
field and tower bounds recover the pointwise endpoint package. The pointwise
endpoint package gives `M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty` for some
`s>5/2`. Periodic `H^s` local theory supplies
`\tau=\tau(\nu,s,M_s)>0`; relaunching from `t_j\uparrow T_*` with
`T_*-t_j<\tau/2` carries the same solution past the endpoint by uniqueness.

### Theorem: periodic global smoothness

Smooth divergence-free zero-mean data on `T^3` generate a unique global smooth periodic Navier-Stokes solution.

## Manuscript rule

Internal labels may appear in parenthetical dependency references only. The main proof should use the four lemma titles above.

## Scope

The theorem is periodic on `T^3`. Whole-space export remains separate.
