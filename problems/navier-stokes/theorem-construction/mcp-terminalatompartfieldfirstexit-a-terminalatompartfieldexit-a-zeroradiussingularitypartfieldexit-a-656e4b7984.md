# TerminalAtomOriginalParticipationAuditExit.A

Status: supersedes the generated `TerminalAtomOriginalParticipationAuditExit.A` wording.

This surface used the stale phrase "Part/Field before Pack."  That phrase is no
longer an admissible mathematical reading.  The corrected statement is:

```text
A terminal source atom or zero-heat-time endpoint strip extracted from the
Navier-Stokes breakdown candidate is audited under the original Navier-Stokes
participation law before `not Pack_Q` is used as terminal disposal.
```

The pre-Pack test is the original equation-level participation question:
same datum, same maximal branch, same velocity-pressure law, viscosity,
pressure coupling, and incompressibility.  It is not an indexed Silver
`Part_{N,Q}` test, because that notation is only the finite packet-local record
after a packet/window/readout structure exists.

The terminal atom has two corrected placements:

1. If the same-solution participation record is absent, the branch is a
   Part-side dead failure before Pack disposal.
2. If the same-solution participation record remains but the positive
   carrier/readout structure is absent, the branch may be true `not Pack_Q`.

Field language is available only after a coherent readout/window or whole-field
readout has been named.  The old claim that `Field_{N,r,Q}` itself is tested
before Pack is deprecated.

Proof status: this note is a route-custody correction, not a new PDE estimate.
It prevents the terminal atom from being discarded by raw zero-radius Pack
language before the original participation law has been applied.
