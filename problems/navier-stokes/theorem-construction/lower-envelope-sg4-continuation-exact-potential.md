# Lower-Envelope SG4 Continuation Exact-Potential

## Status

Active theorem-facing exact-potential handoff note.

Role: downstream lower-envelope, SG.4, and continuation assembly once the
exact-potential directional ledger has already been packaged.

## Purpose

Discharge the final exact-potential handoff:

```math
\boxed{
RPC.3
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+\ \text{control}
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
}
\tag{ELS.0}
```

## Exact Inputs

1. the residual pairwise closure note
   [exact-potential-residual-pairwise-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-residual-pairwise-closure.md);
2. the lower-envelope packet already isolated on the SG.4 branch;
3. the SG.4 supplier/readout package;
4. the downstream bridge `BR.\lambda2` and local strong-solution entry.

## Exact Claim

### Theorem ELS.A

If

```math
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le C_{ELS}
\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}},
\tag{ELS.1}
```

then

```math
[\lambda_J-\mathfrak s_J]_+
\le C_{ELS}
\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}.
\tag{ELS.2}
```

Consequently,

```math
[\lambda_J-\mathfrak s_J]_+\ \text{control}
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
\tag{ELS.3}
```

Equivalently, on the current exact-potential branch,

```math
RPC.3
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+\ \text{control}
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
\tag{ELS.4}
```

### Proof

This is the already isolated downstream handoff: once the exact-potential
branch has produced `RPC.3`, the lower-envelope ledger and the SG.4 supplier
schema finish the Navier--Stokes-facing readout, and the `BR.\lambda2` bridge
plus local strong-solution entry supply the continuation step. ∎

## Interpretation

This note is pure downstream assembly. It records the exact continuation route
after the selector-strain wall and residual pairwise closure are already
discharged. The live upstream burdens remain the synchronization closure
`PTC-Lin + PTC-Shape => D.7mq` and selector-strain sufficiency on the active
strip. For the full branch-facing downstream wording, treat this note as a
compact alias of
[sg4-and-br-lambda2-handoff.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sg4-and-br-lambda2-handoff.md).
