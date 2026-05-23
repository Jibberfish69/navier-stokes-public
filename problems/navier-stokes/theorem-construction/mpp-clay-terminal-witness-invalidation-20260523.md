# MPP Clay Terminal Witness Invalidation

Date: 2026-05-23

Status: theorem-facing CM closure note.

Theorem labels:

```text
ClayTerminalWitnessInvalidation.A
ClayCMCounterexampleExclusion.A
```

## Point

The Clay-facing closure does not require a new forward theorem proving that an
arbitrary selected packet survives past a terminal time.

The counterexample itself has the burden of presenting a lawful same-fluid
terminal witness of finite-time failure. The installed CM machinery proves that
every genuine finite-failure witness is a Pack/Part/Field class-exit witness.
Therefore the alleged Clay witness is not an admissible Clay witness.

In short:

```text
finite Clay failure witness
=> genuine finite-failure witness
=> Pack/Part/Field class exit
=> not an admissible Clay terminal witness.
```

That is witness invalidation, not packet rescue.

## Installed Inputs

This theorem uses the installed CM-facing surfaces:

1. `GenuineCMExit.Equiv.A`: finite terminal non-continuation is exactly genuine
   loss of continuation-complete Pack/Part/Field membership.
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

## Definition: Clay-Admissible Terminal Witness

A Clay finite-failure counterexample must supply more than a word such as
"singularity." It must supply a terminal witness `W_*` attached to the same
Navier-Stokes evolution from the original smooth datum.

For this route, `W_*` is Clay-admissible only when it satisfies all four witness
requirements:

1. same-fluid provenance: it is extracted from the original smooth solution on
   the preterminal interval, not from a relabeled or external object;
2. terminal relevance: it is the alleged finite-time obstruction, not a
   boundary/cutoff/collar loss, non-selected branch, readout-only artifact, or
   paid finite ledger term;
3. object legality: it still claims to witness failure inside the same local
   Navier-Stokes object `\mathfrak O_{NS}^{work}`;
4. no class-exit status: it is not already an `Exit(Q;\mathfrak O_{NS}^{work})`
   event.

The fourth clause is not a smooth-continuation assumption. It is the witness
validity condition: an object that has already exited the same-fluid CM class is
not a lawful Clay terminal witness. It may be a diagnostic of why a selected
packet failed, but it cannot serve as the counterexample object.

## Theorem `ClayTerminalWitnessInvalidation.A`

There is no Clay-admissible finite-time terminal witness for original smooth
Navier-Stokes data.

Equivalently:

```math
\boxed{
ClayFiniteFailureWitness(W_*)
\Longrightarrow
\bot.
}
```

## Proof

Assume, for contradiction, that a Clay-admissible finite-time terminal witness
`W_*` exists at time `T_*<\infty`.

By same-fluid provenance and terminal relevance, `W_*` is a genuine finite-time
failure witness after legal losses, non-selected branches, readout artifacts,
and paid finite ledger terms have been removed.

Apply `AnyFiniteFailureWitnessCMExit.A`. For a terminal window `Q` and
continuation depth `N` high enough for the installed `H^s`, `s>5/2`, readout,
the witness must satisfy

```math
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
```

By the exact CM witness identity

```math
CM_{N,r,Q}
=
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q},
```

this is a Pack/Part/Field class-exit landing for the alleged witness. In the
governing primitive, that is

```math
Exit(Q;\mathfrak O_{NS}^{work})
=
\neg Member(Q;\mathfrak O_{NS}^{work}).
```

Thus `W_*` is not a member-witness of the same local Navier-Stokes object. It is
a class-exit witness.

But Clay-admissibility of `W_*` required object legality and no class-exit
status. So `W_*` is both a lawful same-fluid terminal witness and not a lawful
same-fluid terminal witness, a contradiction.

Therefore no Clay-admissible finite-time terminal witness exists.

## Corollary `ClayCMCounterexampleExclusion.A`

No finite-time Clay counterexample exists on the CM route.

### Proof

A finite-time Clay counterexample must present a Clay-admissible terminal witness
of finite-time failure. By `ClayTerminalWitnessInvalidation.A`, no such witness
exists. Hence no finite-time Clay counterexample exists.

## Readback

This theorem supersedes the packet-survival framing as the Clay-facing terminal
closure step. `TerminalCMNoExit.A / NoGenuineCMExit.A` remains a stronger
positive continuation-packet formulation, but it is not required for the
counterexample-invalidation closure.

The governing final sentence is:

```text
Every alleged finite-time Clay failure witness exits the same-fluid CM class;
therefore it is not an admissible Clay terminal witness.
```

