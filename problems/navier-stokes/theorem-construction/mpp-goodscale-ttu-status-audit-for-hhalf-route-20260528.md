# MPP GoodScale.TTU Status Audit For The H^{1/2} Route

## Status

Audit note. `GoodScale.TTU` is open as a positive production theorem. Its failure is usable as a CM Field/Jump exit branch.

## Positive route

The surface `mcp-field-ttu-jump-face-goodscale-test.md` records the direct theorem target:

```math
GoodScale.TTU:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing.
```

This means every active terminal material point has a positive SCF-good cylinder.

The surface `mcp-towercover-field-after-goodscale.md` records the downstream chain:

```math
Pack.TTU+GoodScale.TTU
\Longrightarrow
READ.COVER+ATD_m^\varepsilon
\Longrightarrow
TowerCover.TTU+Field.TTU
\Longrightarrow
Tower.TTU+Field
\Longrightarrow
End_{NS}.
```

So positive `GoodScale.TTU` supplies the retained Field readout needed for matched finite-difference control.

## CM route

For the CM contrapositive, the branch split is sharper:

```math
GoodScale.TTU \quad \text{or} \quad \neg GoodScale.TTU.
```

On the pass branch, `READ.COVER+ATD_m^\varepsilon` gives the Field readout, and `MatchedFieldFiniteDifferenceBound.A` controls the selected `H^{1/2}` shell.

On the failure branch, there is an active terminal material point with no positive SCF-good cylinder. The GoodScale test surface identifies this as the bad material set and records it in the averaged endpoint grammar as `Jump_avg`. Pointwise, this is loss of every positive local coherence scale, hence a Field-side exit.

Thus the H^{1/2} route does not need a positive proof of `GoodScale.TTU` on every branch. It needs the explicit pass/exit theorem:

```math
GoodScaleFailureToFieldExit.A:
\quad
Pack_Q(\mathcal W_*)
\wedge
Part_{N,Q}(\mathcal W_*)
\wedge
\neg GoodScale.TTU(\mathcal W_*)
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}(\mathcal W_*)
```

with the witness ledger fixed.

## Verdict

The repo has a downstream proof after `GoodScale.TTU`. The positive production theorem remains open. The CM route can proceed by proving the cleaner failure-classification theorem `GoodScaleFailureToFieldExit.A` and using positive `GoodScale.TTU` only on the retained-Field pass branch.

## Next exact theorem

```math
GoodScaleFailureToFieldExit.A
```

This theorem formalizes that an active terminal material point with no positive SCF-good cylinder is exactly a Field/Jump exit in the Part/Field grammar.
