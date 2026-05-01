# PCTP.hard Governance Consumption Audit

## Status

Governance-consumption audit for the April 30 averaged terminal-tail tranche.

This note is not a new proof. It records how the newer theorem-facing notes
should be consumed by the live matrix, gap ledger, assumption ledger,
circularity audit, review verdict, and release decision.

## Source Order

The tranche contains one earlier obstruction record:

```text
mcp-pctp-hard-final-obstruction-and-ttu-target.md
```

That note records `TTU.A / PCTP.hard` as open because `READ.COVER` alone is
downstream of `End_NS_avg` and cannot serve as the upstream original-data
production theorem.

The later tranche adds theorem-facing bridge surfaces:

```text
mcp-pctp-hard-discharge-via-averaged-terminal-tail-uniformization-avg-end-a-a92107787f.md
mpp-pctp-hard-terminal-tail-uniformization-assembly.md
mcp-pctp-hard-averaged-assembly-through-read-end.md
mpp-pctp-hard-matrix-readable-discharge.md
mcp-canonical-pctp-hard-bridge-from-averaged-terminal-tail-route-cfi-a-1500f83b37.md
```

Those later surfaces do not use `READ.COVER` as an upstream producer. They
produce the terminal-tail cover by the averaged route first and invoke readout
only after `End_NS_avg`.

## Accepted Local Bridge

The canonical consumed bridge is:

```text
TGC.A + AACT.Global.noJump + AVG.END.A + READ.END
=> PCTP.hard / TTU.A.
```

Expanded order:

```text
SCF_base + SGC.A_a.e + ATD_m^epsilon + CAVG.J + TGC.A
=> strict averaged-good branch or Jump_avg
```

```text
strict averaged-good branch + AACT.Global.noJump
=> DTC.A_avg
=> AVG.RCV.A
=> LCI.A_avg
=> CSP.A_avg
=> OFP.A_avg
=> CFI.A_avg
```

```text
CFI.A_avg + AVG.END.Cert
=> End_NS_avg
```

```text
End_NS_avg
=> READ.COVER
=> Field.Read + DTC.Read
=> READ.END
=> End_NS
```

Thus `READ.COVER`, `Field.Read`, `DTC.Read`, old pointwise `DTC.A`, old
pointwise `Field`, old `CFI.A`, and old `End_NS` remain downstream readout
objects. They are not spent upstream to produce the averaged endpoint package.

## Matrix Effect

The live proof-obligation matrix should no longer treat

```text
pctp-hard-terminal-tail-uniformization
```

as a blocked frontier. It should be grounded by the canonical PCTP bridge and
the matrix-readable discharge note.

## Release Effect

This removes the local theorem-program matrix blocker. It does not by itself
declare public release or whole-space export.

Release remains governed by the proof-promotion packet, target-fidelity audit,
source/export coverage, review verdict, submission verdict, reproducibility
surfaces, and final release decision.

## Verdict

Consume the later PCTP bridge tranche as a local theorem-program discharge of
`PCTP.hard / TTU.A`, with the exact legal order above. Do not collapse that
into an unaudited public Clay release claim.
