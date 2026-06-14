# Exact-Potential Residual Pairwise Closure

## Status

Active theorem-facing exact-potential closure note.

Role: residual pairwise assembly from the angular ledger on the
exact-potential branch.

## Purpose

Discharge the residual pairwise step:

```math
\boxed{
D.7mr2
\Longrightarrow
RPC.3,
\quad\text{i.e.}\quad
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le C_{EPR}
\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}.
}
\tag{EPR.0}
```

## Exact Inputs

1. the exact-potential angular ledger from
   [exact-potential-angular-ledger-discharge.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-discharge.md);
2. the residual pairwise closure formulas `(PD.70q)` and `(PD.70s)`;
3. the integrated observation packet `\mathcal E_J^{obs}`.

## Exact Claim

### Theorem EPR.A

If the angular ledger is available in the `D.7mr2` form

```math
\Xi_J^{ang}
\le C_{ang}
|W_J|^2+\mathrm{Err}_J,
\tag{EPR.1}
```

then

```math
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\le C_{pair}
\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}.
\tag{EPR.2}
```

Equivalently, on the current branch,

```math
D.7mr2
\Longrightarrow
RPC.3.
\tag{EPR.3}
```

### Proof

This is exactly the residual pairwise closure slot already isolated in
`(PD.70q)/(PD.70s)`. Once the directional ledger is written in the form
`(EPR.1)`, the remaining step is integration and packaging of the loop term.
That is the same formal step recorded abstractly as `RPC.3`. ∎

### Corollary EPR.B (installed exact-potential supplier to residual closure)

Assume `D.7mq` on the active exact-potential strip, and assume the hypotheses
of Theorem `SSD.A` in
[selector-strain-sufficiency-d7mp-d7mo-d7mm.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-strain-sufficiency-d7mp-d7mo-d7mm.md)
on the same strip. Then `RPC.3` holds.

### Proof

Corollary `D.7mr2` in
[exact-potential-angular-ledger-discharge.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-discharge.md)
turns those hypotheses into the weighted angular ledger `D.7mr2`. Theorem
`EPR.A` then gives `RPC.3`. ∎

## Interpretation

This note carries no new projector mathematics. The hard theorem debt is
strictly upstream: close `PTC-Lin + PTC-Shape => D.7mq` and close the
selector-strain sufficiency packet on the active strip. This note is the point
where the exact-potential directional ledger becomes the downstream
SG.4-facing supplier packet.

## Downstream Use

The next step is the downstream lower-envelope and continuation handoff:

```math
EPR.A
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+\ \text{control}
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
```

That downstream export is written explicitly in
[sg4-and-br-lambda2-handoff.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sg4-and-br-lambda2-handoff.md).
The older
[lower-envelope-sg4-continuation-exact-potential.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-envelope-sg4-continuation-exact-potential.md)
surface is only a compact legacy alias of the same post-`RPC.3` packaging.

On the installed exact-potential simple-top route, the same post-`RPC.3`
package may therefore be read as downstream export:

```math
D.7mq + (D.7mp + D.7mo + D.7mm)
\Longrightarrow
RPC.3
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
```

It does not move the live theorem wall below the upstream `D.7mq` and
selector-strain packets.
