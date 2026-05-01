# BootSquare Weighted Bad-Set Mass Reduction

## Status

Failed as an unconditional proof from current surfaces.

## Target

With

```math
d\nu_J=M_J^2d\mu_J,
```

the BootSquare mass target is

```math
\nu_J(B_J)=\int_{B_J}M_J^2d\mu_J\to0.
```

## Sufficient route 1: bounded weight

If

```math
M_J^2\le C
```

on the retained family and

```math
\mu_J(B_J)\to0,
```

then

```math
\nu_J(B_J)\le C\mu_J(B_J)\to0.
```

## Sufficient route 2: uniform integrability

If `M_J^2` is uniformly integrable with respect to `mu_J`, then unweighted bad-set collapse implies weighted bad-set collapse:

```math
\mu_J(B_J)\to0
\quad\Longrightarrow\quad
\int_{B_J}M_J^2d\mu_J\to0.
```

## Obstruction

Unweighted smallness alone is insufficient. If `M_J^2` concentrates on `B_J`, then `mu_J(B_J)->0` can hold while `nu_J(B_J)` stays positive.

## Exact source theorem

```text
prove weighted bad-set mass collapse directly,
```

or

```text
prove unweighted bad-set collapse plus uniform integrability of M_J^2.
```