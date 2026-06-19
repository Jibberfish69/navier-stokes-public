# Forced Periodic Branch Attempt

Status: failed as a direct branch extension. The forced periodic branch remains separate.

## Target

The forced periodic branch would allow

```math
f\ne0
```

in

```math
\partial_tu+u\cdot\nabla u+\nabla p=\nu\Delta u+f,
\qquad
\nabla\cdot u=0
```

on `T^3`.

## Required modifications

The zero-force branch cannot be reused unchanged. The forcing contributes to:

1. the local energy inequality;
2. the transported tower equations;
3. the source ledger `FCI.5f` / `FFSRC.A`;
4. the pressure Poisson equation, through divergence of the forced equation if the force is not projected cleanly;
5. the endpoint forcing rungs;
6. the final `H^s` continuation criterion.

For a forced branch, the `k`-th transported rung equation becomes

```math
D_tU_k=K_k+B_k+\nabla^k f,
```

so the participation and source ledgers need forcing terms such as

```math
\sum_{k\le N}\|\nabla^k f\|_{X_k(I)}
```

in the appropriate route spaces.

The forced classical relaunch theorem also requires a forcing norm.  One
sufficient hypothesis is

```math
f\in L^1_{loc}([0,\infty);H^{s-1}(T^3))
```

or a stronger smooth forcing class; on a relaunch interval the lifespan depends
on the current `H^s` norm of `u` and the corresponding local
`L^1_tH^{s-1}_x` forcing norm.

## Verdict

The current theorem is exactly the periodic zero-force branch. The forced branch is not discharged by the existing notes.

A valid forced branch would require a new theorem packet:

```math
FFSRC.A_{forced}\Longrightarrow FCI.5f_{forced},
```

```math
DTC.Read_{forced},
```

and

```math
ECQ.A_{forced}/PCTP.cond_{forced}.
```

## Boundary

The current closure statement remains

```math
T^3,
\qquad
f=0.
```
