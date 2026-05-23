# MPP Clay Terminal Witness Invalidation

Date: 2026-05-23

Status: corrected truth-audited reduction note; not Clay-certified closure.

Theorem labels:

```text
ClayTerminalWitnessCMEntry.A
ClayTerminalWitnessInvalidation.A
ClayCMCounterexampleExclusion.A
```

## Correction

The old bridge direction was wrong. The useful proof does not start with

```text
CM class-exit witness => inadmissible Clay counterexample witness.
```

That direction is not automatic, because a Clay breakdown counterexample is
allowed to present evidence that smooth continuation fails.

The correct direction is entry first:

```text
Clay terminal counterexample witness
=> same original smooth Navier-Stokes object
=> canonical same-fluid CM terminal packet tree
=> genuine Pack/Part/Field CM exit.
```

This proves a strong reduction, not final Clay closure. To get contradiction,
one still needs the no-exit theorem:

```text
OriginalSmoothData => no GenuineCMExit(T_*) on any finite terminal tail.
```

In the current repo vocabulary, that is `TerminalCMNoExit.A /
NoGenuineCMExit.A` or an equivalent theorem.

## Installed Inputs

This corrected proof uses the installed CM-facing surfaces:

1. `GenuineCMExit.Equiv.A`: finite terminal non-continuation is equivalent to
   genuine continuation-complete CM exit.
2. `CanonicalTerminalPacketCapture.A`: every same-solution terminal obstruction
   is captured by the Pack-first CM witness tree.
3. `AnyFiniteFailureWitnessCMExit.A`: every genuine finite-time failure witness
   lands in

```math
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
```

4. `TerminalSourceResidueCMExit.A`: raw terminal source residue is a Pack/Part
   witness, not a fourth terminal residue and not a burden to delete first.
5. The governing primitive

```math
Exit(Q;\mathfrak O_{NS}^{work})
:=
\neg Member(Q;\mathfrak O_{NS}^{work}).
```

## Definition: Clay Terminal Witness CM Entry

A Clay finite-time counterexample witness `W_*` has CM lawful entry when it is
not treated as an external object, a relabeled system, or a generic word such as
"singularity." It must enter the terminal CM tree as an obstruction attached to
the same maximal smooth Navier-Stokes evolution from the original smooth datum.

The entry requirements are:

1. same-fluid provenance: `W_*` is extracted from the original smooth solution
   on the preterminal interval;
2. terminal relevance: `W_*` is the alleged obstruction at `T_*<infty`, after
   legal boundary/cutoff/collar losses, non-selected branches, readout-only
   artifacts, and paid finite ledger terms have been removed;
3. object legality: `W_*` is judged inside the same local object
   `\mathfrak O_{NS}^{work}`, so the available terminal services are exactly
   `Pack_Q`, `Part_{N,Q}`, and `Field_{N,r,Q}`;
4. no fourth residue: any surviving obstruction must land at the first failed
   Pack/Part/Field service.

This definition does not assume "no class-exit status." Class exit is the thing
the CM finite-failure theorem may prove.

## Theorem `ClayTerminalWitnessCMEntry.A`

Every finite-time Clay terminal counterexample witness from original smooth data
enters the canonical CM terminal packet tree and yields a genuine CM exit:

```math
\boxed{
ClayTerminalWitness(W_*)
\Longrightarrow
GenuineCMExit(T_*).
}
```

More explicitly, for a terminal window `Q` and continuation depth `N_s` high
enough for the installed `H^s`, `s>5/2`, readout,

```math
ClayTerminalWitness(W_*)
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N_s,Q}
\vee
\forall r>0\,\neg Field_{N_s,r,Q}.
```

## Proof

Assume a finite-time Clay terminal counterexample witness `W_*` exists at
`T_*<infty`.

By the Clay setup, `W_*` is attached to the maximal classical Navier-Stokes
solution from the original smooth datum on the preterminal interval `[0,T_*)`.
By same-fluid provenance and terminal relevance, discard legal
boundary/cutoff/collar losses, non-selected branches, readout-only artifacts,
and paid finite ledger terms. What remains is a same-solution terminal
obstruction.

Apply `CanonicalTerminalPacketCapture.A`. The obstruction must be captured by
the Pack-first CM packet tree on a terminal window `Q` at continuation depth
`N_s`.

Apply `AnyFiniteFailureWitnessCMExit.A`. The witness must satisfy

```math
\neg Pack_Q
\vee
\neg Part_{N_s,Q}
\vee
\forall r>0\,\neg Field_{N_s,r,Q}.
```

Since

```math
CM_{N_s,r,Q}
=
Pack_Q\wedge Part_{N_s,Q}\wedge Field_{N_s,r,Q},
```

no positive-scale continuation-complete CM packet survives on the same terminal
tail. By `GenuineCMExit.Equiv.A`, this is exactly `GenuineCMExit(T_*)`.

Therefore an alleged Clay terminal witness is not outside the CM route. It
enters the CM route and becomes a genuine CM-exit witness.

## Conditional Theorem `ClayTerminalWitnessInvalidation.A`

Assume the no-exit theorem for original smooth data:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\neg GenuineCMExit(T_*)
\quad
\text{for every finite }T_*.
}
```

Equivalently, assume `TerminalCMNoExit.A / NoGenuineCMExit.A`.

Then no finite-time Clay terminal counterexample witness exists.

### Proof

Assume, for contradiction, that a finite-time Clay terminal witness `W_*` exists
from original smooth data.

By `ClayTerminalWitnessCMEntry.A`,

```math
W_*\Longrightarrow GenuineCMExit(T_*).
```

By the no-exit theorem for original smooth data,

```math
\neg GenuineCMExit(T_*).
```

Contradiction. Therefore no finite-time Clay terminal counterexample witness
exists.

## Conditional Corollary `ClayCMCounterexampleExclusion.A`

Under `TerminalCMNoExit.A / NoGenuineCMExit.A`, no finite-time Clay
counterexample exists on the CM route.

### Proof

A finite-time Clay counterexample must present a same-fluid terminal
counterexample witness. `ClayTerminalWitnessInvalidation.A` rules out such a
witness. Therefore the counterexample cannot exist.

## Readback

The corrected proof does not say that CM class-exit is automatically
inadmissible as a Clay breakdown witness. It says the Clay witness must first
enter the same-fluid CM terminal tree, and the installed finite-failure
machinery then identifies it as genuine CM exit.

The remaining Clay-facing burden is exactly:

```text
prove that original smooth Navier-Stokes data cannot realize GenuineCMExit(T_*)
at any finite terminal time.
```
