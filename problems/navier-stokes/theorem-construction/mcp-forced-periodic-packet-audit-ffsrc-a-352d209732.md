# Forced Periodic Packet Audit

Status: failed as a completed branch packet. The forced periodic branch remains separate.

## Target

A forced periodic extension would require

```math
f\ne0
\Longrightarrow
FFSRC.A_{forced}+DTC.Read_{forced}+ECQ.A_{forced}/PCTP.cond_{forced}.
```

## Equation change

The equation is

```math
\partial_tu+u\cdot\nabla u+\nabla p=\nu\Delta u+f.
```

The transported tower equation becomes

```math
D_tU_k=K_k+B_k+\nabla^k f.
```

Thus the forced packet must carry forcing rungs

```math
\nabla^k f,
\qquad 0\le k\le N.
```

## Required forced source packet

The zero-force source theorem `FFSRC.A` cannot be reused unchanged. The forced source theorem must prove

```math
FFSRC.A_{forced}\Longrightarrow FCI.5f_{forced},
```

with the force contribution inserted into pressure, strain/cascade, cutoff, and transported-source ledgers.

## Required forced readout

The endpoint rungs require the forced readout

```math
K_q^{forced}=-\nabla^{q+1}p+\nu\Delta U_q+\nabla^q f,
```

or the equivalent projected formulation. Therefore `DTC.Read_forced` must include pointwise control of the forcing derivatives on the fixed readout cover.

## Required forced continuation

The continuation criterion must include a forcing norm, for example

```math
f\in L^1_{loc}([0,\infty);H^{s-1}(T^3))
```

or a stronger smooth forcing class. This gives the forced analogue

```math
PCTP.cond_{forced}.
```

## Verdict

The forced periodic packet is open until the following are installed:

```math
FFSRC.A_{forced},
\qquad
DTC.Read_{forced},
\qquad
ECQ.A_{forced}/PCTP.cond_{forced}.
```

The current theorem-facing branch remains periodic and zero-force.
