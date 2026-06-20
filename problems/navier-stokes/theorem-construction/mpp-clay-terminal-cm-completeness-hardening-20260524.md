# MPP Clay Terminal CM Completeness Hardening

Date: 2026-05-24

Status: theorem-hardening note; not a positive smoothness proof and not a
preterminal-reflection route.

## Target

Harden the exact terminal step needed by the CM contrapositive program:

```text
finite Clay breakdown object
=> canonical same-solution terminal obstruction
=> first failed Pack/Part/Field service
=> Exit(Q):=not Member(Q).
```

The proof target is not that the exit happened earlier. The proof target is
that the terminal obstruction has no fourth primitive way to fail once it has
been made canonical.

## Theorem Target `ClayTerminalCMCompleteness.A`

Let `W_*` be a finite same-surface Clay breakdown object from original smooth
data. Assume `W_*` passes the CM test-admissibility clauses from
`mpp-clay-admissible-breakdown-cm-lawfulness-test-20260524.md`.

Then the canonical terminal obstruction extracted from `W_*` is exhausted by
the Pack-before-Part audited CM witness tree:

```math
ClayAdmissibleFiniteBreakdown(W_*)
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N_s,Q}
\vee
\forall r>0\,\neg Field_{N_s,r,Q}.
```

Consequently the derived face failure supports

```math
Exit(Q;\mathfrak O_{NS}^{work})
:=
\neg Member(Q;\mathfrak O_{NS}^{work}).
```

## Proof Shape

The proof should run as a normal-form/minimal-counterexample argument.

1. Put `W_*` into canonical terminal form.

   Use the five CM test-admissibility clauses: same datum, same equation, same
   fluid, same terminal role, and same witness grammar. This turns the Clay
   breakdown object into a same-solution terminal obstruction after legal losses,
   non-selected branches, readout artifacts, and paid finite ledger terms are
   stripped.

2. Apply the no-fourth-residue capture.

   `CanonicalTerminalPacketCapture.A` says every same-solution terminal
   obstruction has only three continuation services:

   ```text
   Pack_Q,
   Part_{N_s,Q},
   Field_{N_s,r,Q}.
   ```

3. Sort by the first failed service.

   If the canonical object has no positive same-fluid carrier, it is `not Pack_Q`.
   If the carrier survives but the pressure-viscosity participation tower does
   not, it is `not Part_{N_s,Q}`. If both survive and no positive one-field scale
   survives, it is `forall r>0 not Field_{N_s,r,Q}`.

4. Exclude the no-failure branch.

   Suppose Pack and Part survive, and suppose some positive Field scale survives.
   Then

   ```math
   Pack_Q\wedge Part_{N_s,Q}\wedge Field_{N_s,r,Q}
   ```

   is the continuation-complete CM packet at depth `N_s`. The installed readout
   gives an `H^s`, `s>5/2`, continuation bound, so the same classical solution
   extends past `T_*`. That contradicts the role of `W_*` as the finite terminal
   breakdown object.

Therefore the canonical terminal obstruction extracted from `W_*` must break
one of Pack, Part, or Field. That face failure is the CM contrapositive witness.

## What Remains To Check

The load-bearing check is the extraction step:

```text
ClayAdmissibleFiniteBreakdown(W_*)
=> same-solution terminal obstruction eligible for CanonicalTerminalPacketCapture.A.
```

The existing admissibility note supplies the five-clause test. The next proof
pass should verify that each clause is definition-level for a finite same-surface
Clay breakdown object, not an extra analytic estimate.

This extraction pass is recorded as:

```text
ClayBreakdownCanonicalTerminalObstruction.A
```

in `mpp-clay-breakdown-canonical-terminal-obstruction-20260524.md`.

Once that extraction is certified, `AnyFiniteFailureWitnessCMExit.A` supplies the
Pack-first landing, and `ClayCMContrapositiveEmbedding.A` supplies the readback
to `Exit(Q):=not Member(Q)`.

## Boundary

This note does not prove a positive no-exit theorem from original smooth data.
It does not use a shrinking-window argument. It does not require terminal exit
to reflect to a still-live preterminal packet.

Its job is narrower: make the alleged terminal Clay breakdown object canonical
enough that its failure is forced to appear as a typed CM face failure.
