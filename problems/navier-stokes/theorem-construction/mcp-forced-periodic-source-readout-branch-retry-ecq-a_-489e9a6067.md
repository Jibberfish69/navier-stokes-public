# Forced Periodic Source/Readout Branch Retry

Status: failed as a direct extension. The forced periodic branch remains separate.

## Target

Extend the periodic branch from

```math
f=0
```

to

```math
f\ne0.
```

## Required equation changes

The equation becomes

```math
\partial_tu+u\cdot\nabla u+\nabla p=\nu\Delta u+f.
```

The transported tower equation gains force rungs:

```math
D_tU_k=K_k+B_k+\nabla^k f.
```

Thus the source and participation ledgers require terms of the form

```math
\sum_{k\le N}\|\nabla^k f\|_{X_k(I)}.
```

## Required branch packets

A forced periodic branch needs:

```math
FFSRC.A_{forced}\Longrightarrow FCI.5f_{forced},
```

with forcing added to pressure, strain/cascade, and cutoff/source bookkeeping.

It also needs

```math
DTC.Read_{forced},
```

because each endpoint rung reads

```math
K_q^{forced}=-\nabla^{q+1}p+\nu\Delta U_q+\nabla^q f
```

or the equivalent projected-pressure formulation.

Finally, continuation requires a forcing norm such as

```math
f\in L^1_{loc}([0,\infty);H^{s-1}(T^3))
```

or a stronger smooth forcing class, giving

```math
PCTP.cond_{forced}.
```

## Verdict

The forced periodic branch is open until the following packet is installed:

```math
FFSRC.A_{forced}+DTC.Read_{forced}+ECQ.A_{forced}/PCTP.cond_{forced}.
```

## Boundary

The completed theorem remains the periodic zero-force branch.
