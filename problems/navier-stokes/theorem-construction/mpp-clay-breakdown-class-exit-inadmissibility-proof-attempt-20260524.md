# MPP Clay Breakdown Class-Exit Inadmissibility Proof Attempt

Date: 2026-05-24

Status: failed target-fidelity-only proof; corrected burden isolated.

Theorem label tested:

```text
ClayBreakdownClassExitInadmissibility.A
```

## Claim Tested

The attempted closing claim was:

```text
classified Pack/Part/Field Exit(Q):=not Member(Q)
cannot be a valid Clay breakdown counterexample witness.
```

The intended proof mode was target fidelity only. No donor-reserve theorem,
source-wall theorem, no-pulse theorem, or positive packet-survival theorem was
to be imported.

## Installed Inputs

1. `ClayAdmissibleFiniteBreakdown.A` from
   `mpp-clay-admissible-breakdown-cm-lawfulness-test-20260524.md`:

```text
ClayAdmissibleFiniteBreakdown(W_*)
=> ClayWitness_CM(W_*).
```

2. `ClayFiniteFailureTypeCMExhaustion.A` and
   `ClayCMContrapositiveEmbedding.A`:

```text
ClayWitness_CM(W_*)
=> classified Pack/Part/Field Exit(Q):=not Member(Q).
```

3. `ClaySolutionCMExitInadmissibility.A`:

```text
ClaySmoothSolution(u,p)
=> no Exit(Q) on still-live finite windows.
```

4. The Clay whole-space target asks for

```text
u,p in C^\infty(R^3 x [0,infty))
```

for every smooth divergence-free rapidly decaying datum.

## Proof Attempt

Assume `W_*` is a finite same-surface Clay breakdown witness from original smooth
data.

By `ClayAdmissibleFiniteBreakdown.A`, `W_*` is CM-lawful. By the installed
Pack-first exhaustion and embedding, `W_*` forces

```text
Exit(Q):=not Member(Q)
```

through `not Pack_Q`, `not Part_{N_s,Q}`, or
`forall r>0 not Field_{N_s,r,Q}`.

To prove `ClayBreakdownClassExitInadmissibility.A` by target fidelity alone, one
would need the following definition-level rule:

```text
Every valid Clay breakdown counterexample witness must remain Member(Q) at the
terminal window it uses.
```

That rule is not supplied by the Clay target. The Clay target requires a
positive solution witness to be globally smooth. A breakdown counterexample
witness is used to deny that such a global smooth solution exists. Therefore
terminal class-exit contradicts Clay smooth-solution admissibility, but it does
not contradict Clay breakdown-counterexample admissibility by definition.

The attempted proof therefore stops at the exact gap:

```text
Exit(Q) disqualifies ClaySmoothSolution(u,p),
but does not by itself disqualify ClayAdmissibleFiniteBreakdown(W_*).
```

Promoting the stronger conclusion would redefine a counterexample witness as a
surviving in-class terminal object. That would beg the question, because the
breakdown alternative is precisely that the original smooth solution cannot be
continued as such an object.

## Result

`ClayBreakdownClassExitInadmissibility.A` is not proved as a pure
target-fidelity theorem.

What is proved remains:

```text
ClayAdmissibleFiniteBreakdown(W_*)
=> ClayWitness_CM(W_*)
=> classified Pack/Part/Field Exit(Q):=not Member(Q).
```

This closes the outside-CM loophole for finite Clay breakdown witnesses.

It does not close the finite-breakdown exclusion.

## Corrected Non-Positive Burden

The viable non-positive-forward close is narrower:

```text
ClayBreakdownPreterminalReflection.A:
ClayAdmissibleFiniteBreakdown(W_*)
=> exists still-live preterminal Q_pre with Exit(Q_pre).
```

That theorem would contradict `SLC.A`, because every still-live preterminal
classical window is CM-member.

The missing content is the reflection step from terminal Pack/Part/Field exit to
a still-live preterminal exit. Without that reflection, the terminal exit is
only the breakdown diagnosis, not a contradiction.

Equivalently, one needs an installed terminal closedness theorem:

```text
terminal Exit(Q) cannot be first realized only at T_* by the maximal classical
Navier-Stokes solution from original smooth data.
```

This is the same mathematical burden named in
`ClaySolutionCMExitInadmissibility.A` as the missing bridge for excluding Clay
breakdown.

## Boundary

This proof attempt does not revive `TerminalCMNoExit.A / NoGenuineCMExit.A` as
the governing Clay-facing CM target. It records why the proposed target-fidelity
shortcut does not replace the missing breakdown bridge.

