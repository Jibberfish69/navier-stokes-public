# MPP FirstCurrentPruning.A Audit

## Status

Audit target: `FirstCurrentPruning.A`, the post-signed-current first-pulse
selection lemma used in the conditional `CycleHeatAction.A` reduction.

Verdict:

```math
\boxed{
\text{The strong form of } FirstCurrentPruning.A \text{ needed by }
CycleHeatAction.A \text{ is not installed.}
}
```

There is a weaker route-local selector principle available: after a rectified
source-current arrival functional is fixed, an earliest terminal arrival can
exclude strictly earlier positive arrivals of the same selected class.  That is
only a selection/ordering fact.  It does not prove the pruning inequality used
in the abstract flow reduction, because it does not charge internal negative
source sinks or stored donor energy paths.

## Strong Form Being Audited

The abstract reduction uses the following input:

```math
\boxed{
FirstCurrentPruning.A:
Val_\Sigma(F)
\le
Flux^+_{\partial\mathcal T}
+Val_\Sigma(F_{cycle})
+Loss_{legal}
+o_N(1).
}
```

Here `F` is the rectified nonnegative time-expanded source-current flow, and
`\Sigma` is the selected terminal active set.  The intended assertion is that,
once the terminal tree is selected first with respect to rectified
source-current arrival, every positive-flow path reaching `\Sigma` is either:

```math
\text{boundary-fed, legal-loss-fed, or part of an internal spacetime cycle.}
```

This is the exact statement recorded as Gate 3 in
`mpp-cycle-heat-action-abstract-flow-reduction-20260505.md`.

## What Is Installed

The older first-pulse notes install only conditional or weak selector facts:

1. `mcp-first-pulse-kill-fpk-a-20260504-001.md` proves a first-pulse kill only
   after the localized positive source-pulse measure, threshold-stable
   compactness, parent/charge licenses, and same-packet-family fidelity are
   already supplied.

2. `mpp-read-cover-bypass-first-pulse-reduction-20260505.md` installs
   `FirstCrossingCarrier.A` only as dyadic first-window selection.  It explicitly
   says no analytic bound is obtained from selection alone; the analytic burden
   begins with controlling the buffered carrier or square reserve.

3. `source-frontier.yaml` and `live-theorem-edge.yaml` record
   `CurrentRectification.A + FirstCurrentPruning.A + ParabolicDwell.A +
   HeatEdgeBudget.A => CycleHeatAction.A` as a conditional abstract reduction,
   not as a discharged theorem.

Thus the installed content is at most:

```math
\boxed{
\begin{gathered}
\text{first selected source-current arrival excludes strictly earlier positive}
\\
\text{arrivals of the same admissible selected class.}
\end{gathered}
}
```

Boundary of this weak selector:

```math
\begin{gathered}
\text{no rectification, no sink charge, no cycle heat action, no diffuse}
\\
\text{ancestry pricing, and no donor-depletion theorem are supplied by selection.}
\end{gathered}
```

## Failure Of The Strong Pruning Step

The no-free-sink audit shows the missing case.  In a finite spacetime graph
lift, a positive terminal divergence node can be fed by an internal sink:

```math
J(A\to B)=F>0,\qquad
\operatorname{div}J(B)=F,\qquad
\operatorname{div}J(A)=-F.
```

There is positive terminal source at `B`, but no boundary influx and no
necessary heat edge.  This is a source-current path from a donor sink to a
receiver source, not a closed cycle.  First-current selection does not remove
it, because the origin is a negative signed source/current sink, not an earlier
positive arrival of the selected class.

The same point is stated in
`mpp-cycleheataction-direct-attempt-no-free-sink-obstruction-20260505.md`:
first-pulse selection prunes earlier positive arrivals; it does not prune an
internal negative source sink transferring stored donor energy into the terminal
active packet.

Therefore the displayed `FP` inequality is not installed.  It silently assumes
that every non-boundary path feeding terminal positive source is either a
cycle or an earlier forbidden positive arrival.  Current installed surfaces do
not prove that dichotomy.

## Exact Missing Input

The missing input is not another bare first-pulse selector.  It is the
post-signed-current saturation bridge:

```math
\boxed{
ParabolicNoFreeSink.A
}
```

or equivalently:

```math
\boxed{
TerminalSignedSaturation.A / SignedPositiveBalance.A
}
```

Exact theorem needed:

```math
\boxed{
\begin{gathered}
\text{For every selected terminal same-fluid time-expanded packet ledger with}
\\
\text{localized skew current }J\text{ and rectified arrival flow }F,
\\
\text{any internal source-current path feeding terminal positive divergence}
\\
\text{is either boundary-fed, charged by the legal loss/residual/heat ledger,}
\\
\text{belongs to a heat-action-priced internal cycle, or creates a strictly}
\\
\text{earlier admissible source-current arrival under the same first-current}
\\
\text{selector.}
\end{gathered}
}
```

Only after this bridge is installed can the strong pruning step be used as:

```math
Val_\Sigma(F)
\le
Flux^+_{\partial\mathcal T}
+Val_\Sigma(F_{cycle})
+Loss_{legal}
+o_N(1).
```

`CurrentRectification.A` is also a prerequisite for the statement to be typed:
without a rectified nonnegative time-expanded flow `F`, there is no canonical
arrival functional on which to apply first-current selection.  But even granting
`F`, the missing mathematical content is the no-free-sink / signed-saturation
bridge above.

## Audit Boundary

This audit does not lower the live source-wall root.  The current route remains:

```math
LocalizedSkewCurrent.A
+
CurrentRectification.A
+
FirstCurrentPruning.A
+
ParabolicDwell.A
+
HeatEdgeBudget.A
\Longrightarrow
CycleHeatAction.A
```

only as a conditional reduction.  The first-current component may be kept as a
weak selector lemma, but the strong pruning inequality used by the reduction is
not theorem-grade until `ParabolicNoFreeSink.A` / `TerminalSignedSaturation.A`
is proved on the same selected terminal ledger.
