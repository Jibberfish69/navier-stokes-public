# Final Source Branch Bookkeeping

## Status

Closed source-branch bookkeeping surface for the final averaged proof.

## Final source choice

The final averaged proof uses the strengthened sufficient source supplier

```math
FFSRC.A\Longrightarrow FCI.5f.
```

The strengthened source package is

```math
FFSRC.A:
FFPB.A0+FFSC.C1+FCC.C1\Longrightarrow FCI.5f.
```

This is the source branch used in the final chain

```math
LCI.A_{avg}+FCI.5f\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}.
```

## Stricter auxiliary branch

The stricter same-depth branch

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1\Longrightarrow FCI.5f
```

is recorded as an auxiliary strengthening. The final proof does not require this branch as a dependency.

## Bookkeeping rule

Every final dependency list should record:

```text
Source branch used: FFSRC.A -> FCI.5f.
Same-depth branch: auxiliary stricter route, not part of the final dependency spine.
```

## Non-import audit

The source branch uses no terminal readout objects:

```math
READ.COVER,
\quad Field.Read,
\quad DTC.Read,
\quad old\ Field,
\quad old\ DTC.A,
\quad old\ CFI.A.
```

## Verdict

The final source branch is selected and unambiguous:

```math
FFSRC.A\Longrightarrow FCI.5f.
```