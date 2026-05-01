# FFSRC.A Averaged Route Decision

Status: conditional route decision.

## Decision

The averaged terminal-tail route uses the strengthened source supplier

```math
FFSRC.A
\Longrightarrow
FCI.5f.
```

This supplier is a named input of

```math
AVG.MAIN.A.
```

## Source branches

The strengthened branch is

```math
FFSRC.A:
FFPB.A0+FFSC.C1+FCC.C1
\Longrightarrow
FCI.5f.
```

The stricter exact same-depth branch is

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1
\Longrightarrow
FCI.5f.
```

The current averaged route selects the strengthened branch. The exact branch remains a separate route requirement for any version of the proof contract that demands same-depth pressure closure.

## Route consequence

Inside the averaged route, the source slot is filled by the completed theorem

```math
FFSRC.A\Longrightarrow FCI.5f.
```

Then the averaged consumer chain receives

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```

## Boundary

The route ledger should state explicitly:

```text
Source supplier used by AVG.MAIN.A: strengthened FFSRC.A.
Exact same-depth source branch: separate stricter alternate route.
```

This prevents source-branch ambiguity during matrix and review regeneration.