# Referee-Readable Manuscript Lemma Compression

## Status

Closed manuscript compression surface.

## Minimal Classical Lemma Sequence

The periodic proof can be presented with five classical PDE lemmas and one theorem.

### Lemma 1: Moving-cylinder epsilon regularity

A same-fluid parabolic cylinder with bounded distortion and sufficiently small scale-critical CKN packet has a smaller cylinder carrying finite-depth derivative and pressure bounds.

This is the external replacement for `SCF_base => ATD_m^epsilon`.

### Lemma 2: Local affine-excess estimate and finite-cover globalization

On each good moving cylinder, the affine-subtracted velocity residual satisfies a localized energy inequality. On a finite good-cylinder cover with a common scheduler, these local inequalities give a terminal averaged transported-tower bound.

This combines `AACT.KX.local` and `AACT.Global`.

### Lemma 3: Terminal cover dichotomy

Every terminal same-fluid tail has a positive-scale good-cylinder cover or loses uniform positive good scale. The second alternative is the averaged field-loss endpoint face.

This replaces `Field_avg / Jump_avg` vocabulary.

### Lemma 4: Endpoint contradiction

A first finite endpoint must enter one of four faces: participation failure, packing failure, averaged tower-amplitude escape, or terminal field-scale loss. The proof package eliminates all four, so the endpoint is impossible.

This replaces the endpoint matrix notation.

### Lemma 5: Terminal readout and continuation

The averaged endpoint package gives a finite readout cover. On that cover, averaged field and tower bounds recover the pointwise endpoint package. The pointwise package gives a uniform `H^s(T^3)` bound for some `s>5/2`, and periodic local theory extends the solution past any finite endpoint.

This combines `READ.END` and the continuation bridge.

## Final theorem

For smooth divergence-free zero-mean data on `T^3`, the periodic three-dimensional Navier-Stokes solution is global and smooth.

## Scope line

The manuscript states the periodic theorem. A whole-space `R^3` export remains a separately named theorem.

## Dependency compression

The manuscript should use the five lemma headings above and move internal labels into dependency notes or appendices.
