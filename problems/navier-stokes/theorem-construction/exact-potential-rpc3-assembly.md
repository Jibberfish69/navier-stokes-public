# Exact-Potential RPC3 Assembly

## Status

Active theorem-facing assembly note for the exact-potential simple-top branch.

Role: feed the angular ledger into the residual pairwise-closure slot.

## Target

Discharge the exact assembly step

```math
D.7mr2
\Longrightarrow
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\lesssim
\mathcal E_{J,M}^{obs}+o_J(1).
\tag{D1}
```

This is exactly `RPC.3`.

## Input

The only hard input is the angular ledger from
`exact-potential-angular-ledger-discharge.md`:

```math
\int_{\mathcal G_J} M_J^2\Xi_J^{ang}\,d\mu_J
\lesssim
\mathcal E_{J,M}^{obs}+o_J(1).
\tag{D1a}
```

If the local branch normalization is

```math
\mathcal E_J^{dir}
:=
\int_{\mathcal G_J}M_J^2\,\Xi_J^{ang}\,d\mu_J,
\tag{D1a'}
```

then `D.7mr2` feeds `RPC.3` directly in that stronger form. Since
`0\le \Xi_J^{ang}\le 1`, this also controls the older reconstruction target
with integrand `M_J^2(\Xi_J^{ang})^2`.

More explicitly, the audited exact-potential branch form is

```math
\mathcal E_J^{dir}
\lesssim
\mathcal E_{J,M}^{obs}+o_J(1),
\tag{D1a''}
```

and if the supplier packet exports

```math
\mathcal E_{J,M}^{obs}\lesssim \mathcal E_J^{obs}+o_J(1),
\tag{D1a'''}
```

then one recovers the branch-facing observation form used in `(RPC.3)`.

## Residual Pairwise Closure

Insert `(D1a)` into the already isolated pairwise residual closure slot
`(PD.70q)` / `(PD.70s)`. Then absorb the pair, synchronization, and
selector-strain remainders into one branch ledger
`\mathrm{Err}_{J,\mathrm{pair}}`.

This yields

```math
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\lesssim
\mathcal E_{J,M}^{obs}+o_J(1).
\tag{D1b}
```

After the supplier export `(D1a''')`, this becomes the unweighted branch-facing
form

```math
\mathcal E_J^{dir}+\mathcal E_J^{loop}
\lesssim
\mathcal E_J^{obs}+o_J(1).
\tag{D1c}
```

## Exact Assembly Theorem

### Theorem RPC.A

Assume `D.7mr2` on the active exact-potential strip. Then the residual
pairwise closure theorem `RPC.3` holds in the exact weighted form `(D1)`, and
in the unweighted form `(D1c)` once the supplier export `(D1a''')` is
available.

## Boundary

This note is downstream assembly only. It introduces no new synchronization or
selector-strain debt.
