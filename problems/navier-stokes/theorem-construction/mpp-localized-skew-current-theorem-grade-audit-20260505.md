# MPP LocalizedSkewCurrent.A Theorem-Grade Audit

## Status

Audit of whether

```math
LocalizedSkewCurrent.A
```

is theorem-grade installed from the algebraic dyadic/source-current route in:

- `mpp-parabolic-source-current-route-note-20260505.md`;
- `mpp-cycle-heat-action-proof-plan-after-think-again-20260505.md`;
- the related source-current / signed-edge notes.

## Verdict

```math
\boxed{
LocalizedSkewCurrent.A\ \text{is not theorem-grade installed on the terminal
localized packet surface.}
}
```

What is installed is the bare algebraic skew fact: before one-sided weights,
lifted/cutoff reductions, positive-part extraction, and terminal same-fluid
selection, the incompressible dyadic advective exchange is antisymmetric and can
be represented as a zero-sum edge divergence on a closed interaction graph.

The theorem as stated in the source-current route is stronger. It asks for every
bounded-overlap same-fluid terminal packet family `\mathcal F_N` to admit a
legal antisymmetric packet current `J` and a small legal ledger `L_P` such that

```math
\partial_t E_P+D_P
=
\sum_{P'}J(P'\to P)+L_P,
\qquad
J(P\to P')=-J(P'\to P),
```

with

```math
\sum_{P\in\mathcal F_N}\int |L_P|\,dt
\le
o_N(1)+Loss_{legal}.
```

That localized terminal ledger is not supplied by the current notes.

## Installed Boundary

The installed algebra supports only the following bounded statement:

```math
\boxed{
BareDyadicSkewCurrent.0:
\text{on the unweighted closed dyadic triadic exchange graph, internal
advective energy sources are zero-sum and may be written as the divergence of
an antisymmetric edge current.}
}
```

This includes the three-shell compatibility check in the parabolic
source-current note: after moving explicitly legal non-skew remnants into a
ledger, a zero-sum shell source vector can be represented by antisymmetric edge
currents.

It does not include:

- one-sided source-wall tail weights;
- lifted commutator remainders;
- terminal positive-part selection;
- loss of the signed partner outside the selected terminal family;
- proof that every stranded partner is paid by pressure/cutoff/collar/off-family
  legal loss.

## Why The Installed Algebra Does Not Prove `LocalizedSkewCurrent.A`

The source-current route note correctly identifies the desired algebraic shape,
but its proof-status paragraph is only a route claim. The later signed-edge
audit tests exactly the missing promotion step and records a negative result:

```math
\boxed{
EdgePairing.A\ \text{is not installed by the current signed exchange
identities.}
}
```

The failure mechanisms are terminal and localization-sensitive:

1. one-sided source weights break the bare shell antisymmetry;
2. lifted/cutoff reductions replace the bare shell exchange by a
   commutatorized remainder with variable sign;
3. positive-part terminal selection may keep the positive child-feeding edge
   while discarding its negative exchange partner;
4. same-fluid fidelity preserves labels but does not prove signed balance inside
   the usable terminal ledger.

The edge-disintegration note installs a different object:

```math
EdgeDisintegrate.A:
\text{localized source recovery plus same-fluid positive edge fidelity.}
```

That is useful for the source-parent measure, but it is a positive variation
construction. It does not retain a signed antisymmetric counter-edge ledger.

The native source-measure decomposition says the same thing in measure form:
signed dyadic exchange does not dominate the native positive source after
weights, cutoffs, and terminal active selection, while the installed legal
ledgers do not dominate the interior native positive source carrier.

## Exact Missing Lemma

The missing localization/ledger lemma is:

```math
\boxed{
TerminalSkewLocalizationLedger.A
}
```

Statement:

For every bounded-overlap same-fluid terminal packet family `\mathcal F_N`, the
localized pre-Cauchy Navier--Stokes source decomposition admits a packet edge
current `J` and legal ledger `L_P` such that

```math
J(P\to P')=-J(P'\to P),
```

and

```math
\partial_tE_P+D_P
=
\sum_{P'}J(P'\to P)+L_P
```

for every selected terminal packet `P`, with

```math
\sum_{P\in\mathcal F_N}\int |L_P|\,dt
\le
o_N(1)+Loss_{legal},
```

where the ledger explicitly pays all defects created by:

- terminal packet cutoff and collar truncation;
- Leray/projection and pressure normalization localization;
- lifted commutator replacement of the bare shell exchange;
- one-sided source-wall tail weights;
- off-family or outside-window signed partners;
- spill from the selected terminal same-fluid graph.

Equivalent signed-edge form:

```math
\boxed{
TerminalSignedSaturation.A:
\text{the counter-edge of every selected positive terminal source edge either
belongs to the same saturated same-fluid terminal ledger or is paid by an
installed legal loss.}
}
```

Without this lemma, `LocalizedSkewCurrent.A` remains a conditional route target,
not an installed theorem.

## Consequence For The Parabolic Source-Current Route

The current honest factorization is:

```math
BareDyadicSkewCurrent.0
+
TerminalSkewLocalizationLedger.A
+
CycleHeatAction.A
\Longrightarrow
LocalPositiveSourceCarleson.A.
```

The route notes had compressed the first two factors into
`LocalizedSkewCurrent.A`. The audit says that compression is not theorem-grade
yet. The hard parabolic heat-action theorem is still necessary, but it is not
the only missing input: the localized terminal skew-current ledger must be
proved first or explicitly assumed.
