# Residual Pairwise Closure From Directional Ledger

## Status

Candidate theorem-facing closure note.

Role: convert the directional observability ledger into the live residual
pairwise-closure slot.
This note is downstream assembly, not hard projector debt.

## Purpose

Discharge the pairwise-closure step:

```math
\boxed{
\Xi_J\le C_\Xi |W_J|^2+\mathrm{Err}_J
\Longrightarrow
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le C_{\mathrm{RPC0}}
\mathcal E_J^{obs}+\mathrm{Err}_J.
}
\tag{RPC.0}
```

## Exact Inputs

1. the angular or normal-covector directional ledger from
   `directional-observability-from-projector-identification.md`;
2. the live residual pairwise-closure slots `(PD.70q)`, `(PD.70s)`, and
   `PD.70z`;
3. the integrated observable budget `\mathcal E_J^{obs}`.

## Exact Claim

### Candidate Theorem RPC.A

On the exact-potential branch,

```math
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le C_{\mathrm{RPC1}}
\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}.
\tag{RPC.1}
```

On the normal-covector branch,

```math
\mathcal E_J^{dir,\perp}+\mathcal E_J^{loop}
\le C_{\mathrm{RPC2}}
\mathcal E_J^{obs}+\mathrm{Err}_{J,\perp}.
\tag{RPC.2}
```

## Proof Skeleton

1. Insert the directional ledger into the residual pairwise-closure formulas
   already isolated on the live branch.
2. Integrate over the active strip family.
3. Absorb branch-specific residuals into one explicit error ledger.

## Current Exact-Potential Route Read

On the exact-potential branch, once the angular ledger is available in the
`D.7mr2` form from
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:3375),
the remaining burden is exactly the residual pairwise closure slot
`(PD.70q)` / `(PD.70s)`.

So this note is no longer a generic closure placeholder. On the live
exact-potential route it is the formal integration step:

```math
D.7mr2
\Longrightarrow
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le C_{\mathrm{RPC3}}
\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}.
\tag{RPC.3}
```

The normal-covector subroute remains the separate `PD.70z` branch.

So the exact branch read is:

```math
D.7mr2
\Longrightarrow
RPC.3.
\tag{RPC.4}
```

The branch-local exact-potential write-up is now separated in
[exact-potential-residual-pairwise-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-residual-pairwise-closure.md).

## Boundary

This note does **not** yet prove lower-envelope control, SG.4, or the
continuation handoff.
