# Stable Projector Recovery Via Davis-Kahan

## Status

Candidate theorem-facing rigidity note.

Role: isolate the exact payoff of the spectral gap once the observable
surrogate exists.

## Purpose

Discharge the stable-projector slot:

```math
\boxed{
(\Sigma_J,\ \Sigma_J^{ref},\ g_J^{str})
\Longrightarrow
\widehat P_J\ \text{well-defined and stable}.
}
\tag{DK.0}
```

## Exact Inputs

1. `\Sigma_J` and `\Sigma_J^{ref}` from
   `observable-projector-surrogate-construction.md`;
2. the live simple-top gap `g_J^{str}` from
   `simple-top-gap-for-observable-surrogate.md`;
3. `\Pi_J^{ref}=\Pi_{\max}(\Sigma_J^{ref})`.

## Exact Claim

Define

```math
\widehat P_J:=\Pi_{\max}(\Sigma_J).
\tag{DK.1}
```

### Exact inequality DK.A

If `g_J^{str}\ge g_\ast>0`, then `\widehat P_J` is well-defined on the
simple-top region and

```math
\|\widehat P_J-\Pi_J^{ref}\|_F
\le
C_{DK}
\frac{\|\Sigma_J-\Sigma_J^{ref}\|_{\mathrm{op}}}{g_J^{str}}.
\tag{DK.2}
```

Using the observable-construction ledger `(OPS.3)`,

```math
\|\widehat P_J-\Pi_J^{ref}\|_F
\le
C_{DK}
\frac{\mathrm{Err}_{J,\mathrm{obs}}}{g_J^{str}}.
\tag{DK.3}
```

## Proof Skeleton

1. Use the simple-top gap to ensure the top eigenspace is rank one.
2. Apply Davis--Kahan between `\Sigma_J` and `\Sigma_J^{ref}`.
3. Read the numerator from the observable-construction ledger.

## Boundary

This note does **not** yet compare `\widehat P_J` to the true top-strain
projector `P_{J,\top}^{seg}`. That comparison is the downstream
selector-strain compatibility wall.

## Current Exact-Potential Corollary

### Corollary DK.B (the stable-projector slot is absorbed by `D.7mq`)

On the exact-potential Cauchy--Green branch, take

```math
\Sigma_J:=\widehat P_{J,\varepsilon}^{pair},
\qquad
\Sigma_J^{ref}:=P_J^{CG},
\qquad
\widehat P_J:=\Sigma_J,
\qquad
\Pi_J^{ref}:=\Sigma_J^{ref}.
\tag{DK.4}
```

Then the stable-projector comparison is already supplied by Corollary `D.7mq`:

```math
\|\widehat P_J-\Pi_J^{ref}\|_F^2
\le
\operatorname{Err}_{J,CG}^{pair,\varepsilon}.
\tag{DK.5}
```

So on this branch the Davis--Kahan slot carries no remaining theorem debt
beyond the closure of `PTC-Lin` and `PTC-Shape`.

**Proof.**
With the identifications `(DK.4)`, the inequality `(DK.5)` is exactly
`(D.7mq3)`. ∎
