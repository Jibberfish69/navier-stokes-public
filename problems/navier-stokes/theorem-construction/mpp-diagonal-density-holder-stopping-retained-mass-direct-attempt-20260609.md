---
ns_viewer:
  theorem_id: diagonal-density-holder-stopping-retained-mass-direct-attempt-20260609
  status: partial-retained-intersection-closed-density-loss-budget-open
  proof_role: selector_source_packet_bounded_follow_up
  logical_landing_node: density-adapted-stopping-loss-budget
  edge_effect: "Tests DiagonalDensityHolderStoppingRetainedMass.A after the diagonal-density oscillation reduction. The finite retained-intersection lemma closes, but the density-adapted stopping theorem still needs a quantitative loss budget that enforces oscillation without consuming the selector-good branch."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-diagonal-density-source-oscillation-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mcp-density-selected-source-packet-closure-schedule-for-sg-4-tps-ep-a-2baab1f1b7.md
    - problems/navier-stokes/theorem-construction/mcp-source-packet-nonclosure-and-exact-primitive-boundary-2a4f79a676.md
    - problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md
    - problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md
  downstream_consequence: "The next theorem atom is DensityAdaptedStoppingLossBudget.A: produce a quantitative bad-set/loss budget for the density stopping that yields diagonal-density oscillation on retained terminal cells while leaving enough selector-good mass for the common strip."
---

# MPP Diagonal-Density Holder/Stopping Retained-Mass Direct Attempt

Date: 2026-06-09

Status: bounded follow-up proof attempt. This note does not close
`DiagonalDensitySourceOscillation.A`, `PTCShapeNormalization.A`, `D.7mq`,
`DG-Cal`, Pack survival, or CMI finality.

## Target

The active target is:

```text
DiagonalDensityHolderStoppingRetainedMass.A.
```

It must prove one of the following, on the same selector-good branch:

```text
Holder/oscillation control for the diagonal density,
```

or

```text
density-adapted stopping that enforces the oscillation bound while retaining
enough selector-good mass and preserving the common strip used by the shell,
transport, finite-frame, exact-potential-comparison, and CG-gap packets.
```

## Method Pass

Proof program: Navier-Stokes CM contrapositive support route.

Target object: selector-side source packet beneath `PTCShapeNormalization.A`.

Object role: supplier/bridge, not the final CM class-exit theorem.

Logical skeleton: direct proof attempt with counterexample pressure on the
unpaid stopping step.

Mechanism: finite loss-budget intersection plus density-stopping / oscillation
analysis.

## Closed Piece: Finite Retained-Intersection Lemma

Let `G` be the active selector-good family on one fixed strip, with
`\mu(G)>m_*`. Suppose the branch selections remove bad sets
`B_1,\dots,B_N\subset G`, and suppose each selection has a loss budget

```math
\mu(B_i)\le \varepsilon_i,
\qquad
\sum_{i=1}^N\varepsilon_i < m_*.
```

Then the retained common family

```math
G_*:=G\setminus\bigcup_{i=1}^N B_i
```

has positive mass:

```math
\mu(G_*)\ge \mu(G)-\sum_{i=1}^N\mu(B_i)
\ge m_*-\sum_{i=1}^N\varepsilon_i>0.
```

This proves the bookkeeping part of retained mass. Once the density stopping,
shell boundary choice, collar regularity, tensor comparison, CG gap, and
selector-strain compatibility each supply losses on the same strip, the finite
intersection itself no longer needs new mathematics.

## Conditional Piece: Holder Stopping Gives Oscillation On Retained Cells

Assume a terminal cell `Q_s^{ent}` is retained and the diagonal density obeys

```math
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha
\le
\gamma_{\mathrm{diag}}\bar\delta_j(Q),
```

with a retained center `a_{Q,s}` satisfying

```math
\delta_{j,Q}(a_{Q,s})
\ge
c_{\mathrm{diag}}\bar\delta_j(Q),
qquad
c_{\mathrm{diag}}>\gamma_{\mathrm{diag}}.
```

Then every `a\in Q_s^{ent}` satisfies

```math
\delta_{j,Q}(a)
\ge
(c_{\mathrm{diag}}-\gamma_{\mathrm{diag}})\bar\delta_j(Q),
```

so diagonal restriction stability follows on that retained cell. This is the
same selector-native route recorded in the terminal-sector-center and
diagonal-restriction notes.

Thus the local implication is paid. The unpaid issue is producing the retained
family with that estimate from the current inputs.

## Attempt 1: Derive Uniform Holder Control From The Installed Density Data

This fails. The installed diagonal density input is nonnegative `L^1` density
with positive parent average. A nonnegative `L^1` density can oscillate on every
scale inside a parent stopped cell and can have arbitrarily large local
essential oscillation on a terminal subcell.

So the current density representation does not imply the Holder packet.

## Attempt 2: Refine Until The Holder Product Is Small

This is only conditional. If the density already has a finite local Holder
seminorm on a retained region, refinement to diameter

```math
\operatorname{diam}(Q_s^{ent})
\le
\left(
\frac{\gamma_{\mathrm{diag}}\bar\delta_j(Q)}
{[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}}
\right)^{1/\alpha}
```

enforces the desired oscillation estimate. The current proof does not supply
the finite seminorm on the active density, and it does not prove that the
resulting refinement leaves enough active selector-good mass.

So this route reduces to a density-stopping loss theorem, rather than closing
`DiagonalDensityHolderStoppingRetainedMass.A`.

## Attempt 3: Use Measurable Large-Set Regularization

Large-set regularization can make a measurable density behave well on a large
closed set, but the present downstream theorem needs more than pointwise
regularity on an unnamed large subset. It needs a finite entrance-sector family
on one strip, label centers still inside the retained branch, shell/collar/CG
packets on the same family, and an explicit loss budget small enough for the
finite retained-intersection lemma above.

Thus measurable regularization is a possible method for the next theorem, but
it is not already a proof in the installed notes.

## Result

`DiagonalDensityHolderStoppingRetainedMass.A` is not proved from the installed
inputs.

The direct proof did close the finite retained-intersection step:

```text
finite same-strip loss budgets with total loss below starting mass
=> positive retained common family.
```

The actual next theorem atom is:

```text
DensityAdaptedStoppingLossBudget.A:
produce a quantitative bad-set/loss budget for the density-adapted stopping
which enforces the diagonal-density oscillation packet on retained terminal
entrance-sector cells while preserving enough selector-good mass on the same
strip for the shell, transport, finite-frame, exact-potential-comparison,
CG-gap, and selector-strain packets.
```

This is smaller than the prior target. The intersection algebra is paid; the
remaining burden is to produce the density-stopping loss budget itself and then
feed that budget into the same-strip finite intersection.

## New Live Criticism

`NS-LIVE-20260609-138`: `DiagonalDensityHolderStoppingRetainedMass.A` is not
proved. The finite retained-intersection lemma is paid, and the local Holder
implication to diagonal restriction is paid conditionally, but the proof still
lacks `DensityAdaptedStoppingLossBudget.A`: a quantitative theorem showing that
the density-adapted stopping which enforces sectorwise oscillation discards less
than the available selector-good mass while staying on the same strip used by
the shell, transport, finite-frame, exact-potential-comparison, CG-gap, and
selector-strain packets.
