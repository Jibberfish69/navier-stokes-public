# MPP Field Failure To Part Collapse

Date: 2026-05-22

Status: theorem-facing resolution of the retained-Field / terminal-Part
collapse subcase.

Theorem labels:

```text
RetainedFieldHit.A
TerminalFieldJumpPartCollapse.A
RetainedFieldToPartCollapse.A
```

## Point

Do the classification in the right order:

```text
first prove the branch-local Field hit,
then read the realized terminal endpoint and collapse it back to Part.
```

This note does not say that `Pack + Part + not-Field` is a real terminal row.
It says that row is a proof-facing way to spend the last unspent CM Part/Field after
Pack and Part have been retained as licenses. Once the endpoint is read as a
real same-fluid terminal scenario, the `Jump` that broke Field also breaks
terminal Part.

## Two Part Readings

This distinction is only a bookkeeping distinction. It is not a new CM Part/Field.

```text
Part^{lic}_{N,Q}
```

means Part is retained as a branch-local license: the selected obstruction is
still being treated as living on the same pressure-viscosity NS packet, so it is
not routed earlier as a dropped-law participation failure.

```text
Part^{term}_{N,Q}
```

means terminal Part in the same-fluid ontology: the retained neighboring pieces
really participate in one shared pressure-viscosity tower through depth `N` on
the same terminal carrier.

The collapse theorem is precisely that a realized Field/Jump endpoint can
coexist with `Part^{lic}` as an assumption used to reach the Field face, but it
cannot coexist with `Part^{term}` as an endpoint truth.

## Setup

Fix a retained terminal carrier `Q` and continuation depth `N`. Let
`\mathcal J_Q` denote a selected receiver/coherence endpoint after legal losses,
non-selected branches, paid terms, and pure readout artifacts have been removed.

Read `\mathcal J_Q` as the same object that the May 15 receiver note calls
receiver escape when Pack and Part have not failed earlier.

## Theorem 1: `RetainedFieldHit.A`

On the retained branch,

```math
Pack_Q
\wedge
Part^{lic}_{N,Q}
\wedge
\mathcal J_Q
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
\tag{RFH.A}
```

### Proof

Because `Pack_Q` is retained, the endpoint is not carrier loss. The receiver or
coherence packet is still on one usable same-fluid carrier.

Because `Part^{lic}_{N,Q}` is retained, the endpoint is not classified as an
external forcing or dropped-law event. The differentiated tower is being read as
the same pressure-viscosity NS tower through depth `N`.

Now suppose some positive scale `r>0` satisfies `Field_{N,r,Q}`. Then the
retained packet has positive-scale one-field coherence and finite local tower
readout at the same depth. That is exactly the missing receiver/coherence
admission: the selected endpoint is carried by the same field at positive
scale. This contradicts `\mathcal J_Q`.

Therefore no positive Field scale survives:

```math
\forall r>0\,\neg Field_{N,r,Q}.
```

This is the content of `REE.C` in
`mpp-receiver-escape-endpoint-reduction-20260515.md`, restated with the retained
license made explicit.

## Theorem 2: `TerminalFieldJumpPartCollapse.A`

For a realized same-fluid terminal endpoint,

```math
Pack_Q
\wedge
\mathcal J_Q
\wedge
\forall r>0\,\neg Field_{N,r,Q}
\Longrightarrow
\neg Part^{term}_{N,Q}.
\tag{TFJPC.A}
```

### Proof

Field failure here is not the mere absence of a convenient downstream readout.
It is a realized `Jump`: neighboring retained pieces on the same carrier cannot
be organized as one positive-scale same-law field.

Assume for contradiction that `Part^{term}_{N,Q}` holds. Then those same
neighboring pieces really participate in one shared pressure-viscosity tower
through depth `N` on the retained carrier `Q`. Terminal Part is not just a law
written at isolated points; it includes same-law participation on the overlaps
where the neighboring pieces are compared.

But a realized `Jump` says that, on those overlaps and arbitrarily close to the
terminal time, the neighboring pieces do not cohere as one same-law field. At
least one of the pieces or overlap relations is therefore not participating in
the same pressure-viscosity tower as the others.

That contradicts `Part^{term}_{N,Q}`. Hence

```math
\neg Part^{term}_{N,Q}.
```

This is the `P and not-F => not-A` half of the terminal ontology rule from the
Part/Field collapse audit, applied after the Field face has first been
hit in the branch-local proof.

## Theorem 3: `RetainedFieldToPartCollapse.A`

Combining the two steps gives the requested collapse:

```math
Pack_Q
\wedge
Part^{lic}_{N,Q}
\wedge
\mathcal J_Q
\Longrightarrow
Pack_Q
\wedge
\neg Part^{term}_{N,Q}
\wedge
\forall r>0\,\neg Field_{N,r,Q}.
\tag{RFTPC.A}
```

So the route-facing row

```text
Pack + retained-Part + not-Field
```

is only the order in which the proof reaches the endpoint. The terminal
same-fluid row is

```text
Pack + not-Part + not-Field.
```

## What This Does Not Prove

This does not prove `TerminalCMNoExit.A` and does not rule out the endpoint. It
only classifies it.

This does not collapse Pack into Part. The Pack/blown implication is a separate
carrier-geometry question.

This does not turn every downstream readout failure into a Part failure. The
collapse applies only when the Field failure is a realized terminal same-fluid
`Jump` on the retained carrier, not when a support theorem is merely absent or a
readout packet is quarantined.

