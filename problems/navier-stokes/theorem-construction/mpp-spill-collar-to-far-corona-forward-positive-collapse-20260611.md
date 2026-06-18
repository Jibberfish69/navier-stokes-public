# MPP Spill Collar To Far-Corona Forward-Positive Collapse

## Status

Forward-positive consolidation note for the remaining spill children in
`mpp-threshold-local-spill-collar-bound-direct-test-20260611.md`.

This note checks whether the three spill repairs

```text
ThresholdSpillHighTailReserve.A
ThresholdSpillDynamicCutoff.A
ThresholdSpillFluxReorganization.A
```

are still independent forward-positive children after the signed continuous
scale and weighted-carrier reductions already present in the repo.

## Fixed Threshold Spill

The fixed-threshold direct estimate gives:

```math
|spill_N(t)|
C_{spill}
2^{-N/2}E_{N-4}(t)^{1/2}D_N(t).
\tag{1}
```

So the fixed spill is controlled only after one controls the coefficient

```math
\theta_N(t):=2^{-N/2}E_{N-4}(t)^{1/2}
\tag{2}
```

on the same active time set that carries `D_N`.

The baseline energy law controls the first moment of dissipation.  It does not
control the active product in `(1)`.  Thus a direct high-tail reserve is not a
new estimate unless it proves a genuine coefficient or weighted-product
theorem strong enough to absorb `(1)`.

## High-Tail Reserve And Dynamic Cutoff

The checked finite-band endpoint notes already identify the coefficient
problem behind the high-tail and dynamic-cutoff ideas.

`mpp-direct-finite-band-bilinear-8j11-direct-attempt-20260609.md` shows that a
finite-collar bilinear packet is absorbable only after smallness of the
collar coefficient on the retained terminal interval.

`mpp-terminal-finite-collar-seed-to-interval-control-proof-20260609.md` proves
the conditional seed-to-interval mechanism: if the terminal window has small
coefficient measure and a small high-frequency entrance seed, then the finite
collar coefficient stays small and the finite-band packet is absorbable.

Thus:

```text
ThresholdSpillHighTailReserve.A
```

and

```text
ThresholdSpillDynamicCutoff.A
```

are not independent theorem doors.  They reduce to synchronized terminal-window
coefficient control or to a weighted-product theorem on the same carrier.

## Flux Reorganization

The flux reorganization route does produce real structure.

The checked chain is:

```text
lifted-band-collar-class-reduction-lemma.md
moving-spill-fixed-offset-reduction-lemma.md
same-scale-edge-family-and-model-estimate-note.md
same-scale-coefficient-kill-into-weighted-carrier-note.md
```

Those notes show:

1. the lower fixed collar and same-scale spill reduce to accepted collar or
   finite edge families in the signed continuous-scale channel;
2. the moving near-corona spill reduces to a finite family of fixed-offset
   same-scale edge packets;
3. each fixed-offset edge packet satisfies the coefficient-bearing edge estimate

```math
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
\le
\varepsilon\nu\int_0^TD_N(t)\,dt
+
C_{\varepsilon,a,\nu}
\int_0^T\Theta_N^{ss,\sharp}(t)E_N(t)\,dt;
\tag{3}
```

4. the same-scale coefficient term is absorbed into the weighted carrier:

```math
\Theta_N^{ss,\sharp}(t)E_N(t)
\le
\widetilde\Lambda_N^\sharp(t)E_N(t).
\tag{4}
```

So flux reorganization does not leave the fixed spill as an independent open
theorem.  It moves the same-scale and near-corona side onto the weighted
carrier surface.

## Weighted Carrier Boundary

The carrier movement is not the same as coefficient-free closure.

`weighted-carrier-assembly-blocked-by-lpas.md` records that the weighted
carrier estimate

```math
\int_0^T
\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt
\le
\varepsilon\nu\int_0^TD_N(t)\,dt+C2^{-2\delta N}
\tag{5}
```

remains blocked by the far-corona active-square theorem:

```math
\mathrm{ResidualSourceBalancedLPAS.A}
\quad\text{or}\quad
\mathrm{ResidualDirectCTSOrFCTS.A}.
```

So the honest result is:

```text
same-scale / moving-spill / upper-boundary pieces
=> weighted carrier
=> residual far-corona LPAS/CTS remains.
```

## Result

The three spill children are not independent active children anymore.

```text
ThresholdSpillHighTailReserve.A
```

reduces to the same finite-collar coefficient or weighted-product control.

```text
ThresholdSpillDynamicCutoff.A
```

reduces to synchronized terminal-window coefficient control.

```text
ThresholdSpillFluxReorganization.A
```

works as a reorganization into the weighted carrier, but the weighted carrier
itself is still blocked by the far-corona active-square theorem.

Therefore the remaining forward-positive child is the far-corona theorem:

```math
\boxed{
\mathrm{ResidualSourceBalancedLPAS.A}
\quad\text{or}\quad
\mathrm{ResidualDirectCTSOrFCTS.A}.
}
```

In the continuum language this is cumulative-tail stress control.  In the
local dyadic engine it is the lower-prefix active-square theorem:

```math
\int_0^T
\sum_{j\ge N}
\left(\sum_{k\le j-C_1}E_k(t)\right)
2^{-j}D_j(t)^2\,dt
\le
\nu\int_0^TD_N(t)\,dt+C_*2^{-2\delta N}.
\tag{LPAS}
```

## Forward-Positive Consequence

The cone/payment/drain route has now stopped branching into spill aliases.
The next direct mathematical work is the residual far-corona LPAS/CTS problem
itself.
