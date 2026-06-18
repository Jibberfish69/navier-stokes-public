# FFSRC.A Averaged Route Decision

Status: conditional route decision.

## Decision

The averaged terminal-tail route uses the strengthened source supplier

```math
\operatorname{Hyp}(FFSRC.A)
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
\operatorname{Hyp}(FFSRC.A):
FFPB.A0+FFSC.C1+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

Here `FCC.C1a` is
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.

The stricter exact same-depth branch is

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

The current averaged route selects the strengthened branch. The exact branch remains a separate route requirement for any version of the proof contract that demands same-depth pressure closure.

## Route consequence

Inside the averaged route, the source slot is filled by the completed theorem

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
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
Source supplier used by AVG.MAIN.A: strengthened Hyp(FFSRC.A), including FCC.C1a.
Exact same-depth source branch: separate stricter alternate route.
```

This prevents source-branch ambiguity during matrix and review regeneration.
