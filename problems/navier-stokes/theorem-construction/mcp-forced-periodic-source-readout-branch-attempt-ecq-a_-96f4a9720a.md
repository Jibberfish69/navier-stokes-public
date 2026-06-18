# Forced Periodic Source/Readout Branch Attempt

Status: failed as a direct extension. The forced periodic branch remains separate.

## Target

```math
f\ne0
\Longrightarrow
FFSRC.A_{forced}+DTC.Read_{forced}+ECQ.A_{forced}.
```

## Forced equations

For

```math
\partial_tu+u\cdot\nabla u+\nabla p=\nu\Delta u+f,
```

the differentiated transported rungs acquire forcing terms:

```math
D_tU_k=K_k+B_k+\nabla^k f.
```

Thus the source ledger must include forcing contributions through the required depth:

```math
\sum_{k\le N}\|\nabla^k f\|_{X_k(I)}.
```

## Required forced packets

A forced branch needs:

```math
FFSRC.A_{forced}\Longrightarrow FCI.5f_{forced},
```

with forcing terms in the pressure, strain/cascade, and cutoff/source packets.

It also needs a forced readout theorem:

```math
DTC.Read_{forced},
```

where pressure and tower rungs include `f` through the projected equation and its derivatives.

Finally, the continuation theorem must include a forcing norm, for example a condition of the form

```math
f\in L^1_{loc}([0,\infty);H^{s-1}(T^3))
```

or a stronger smooth forcing class.

## Verdict

The zero-force branch does not discharge the forced branch. The forced periodic route remains open until the three forced packets are installed:

```math
FFSRC.A_{forced},
\qquad
DTC.Read_{forced},
\qquad
ECQ.A_{forced}.
```

## Boundary

The current theorem remains the periodic zero-force statement with `f=0`.
