# Source Branch Proof Decision

Status: conditional route decision.

## Decision

The averaged route uses the strengthened source supplier

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

This is the source input named in

```math
AVG.MAIN.A.
```

## Strengthened route

The selected source route is

```math
\operatorname{Hyp}(FFSRC.A):
FFPB.A0+FFSC.C1+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

It uses the packet-local widened pressure bridge, finite-family strain/cascade
control, and cutoff absorption with the separate cutoff-defect interval input
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.

## Exact same-depth branch

The stricter exact branch is

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

That branch remains a separate optional target for proof contracts requiring same-depth pressure closure.

## Route declaration

The active averaged theorem states explicitly:

```text
Source supplier for AVG.MAIN.A: Hyp(FFSRC.A), including FCC.C1a.
```

This declaration fixes the dependency graph and prevents ambiguity during matrix regeneration.

## Consequence

With

```math
LCI.A_{avg}
```

from `AVG.RCV.A` and

```math
FCI.5f
```

from `FFSRC.A`, the averaged consumer chain proceeds through

```math
LCI.A_{avg}+FCI.5f
\Longrightarrow
CSP.A_{avg}
\Longrightarrow
OFP.A_{avg}
\Longrightarrow
CFI.A_{avg}.
```
