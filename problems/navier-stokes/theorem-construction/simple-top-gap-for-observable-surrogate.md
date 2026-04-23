# Simple-Top Gap For Observable Surrogate

## Status

Candidate theorem-facing rigidity note.

Role: isolate the simple-top gap burden in the same current-strength notation
used by the live clarification surface, downstream of `EWI.A` and the
observable-surrogate packet.

Lawful start/import: `EWI.A` stays upstream, and the surrogate packet remains a
branch-local downstream consumer, abstractly `OPS.A` and concretely `OPS.B` on
the current exact-potential realization.

## Purpose

Discharge the simple-top step on the observable surrogate itself:

```math
\boxed{
(\text{EWI.A},\ \text{observable-surrogate packet},\ \text{simple-top packet})
\Longrightarrow
g_J^{str}\ge g_\ast>0.
}
\tag{SGS.0}
```

## Exact Inputs

Installed upstream objects:

1. `EWI.A`, which keeps the exact-potential branch on the lawful transported
   family and imports the CM-paid ledgers;
2. the observable surrogate `\Sigma_J` from
   `observable-projector-surrogate-construction.md`, abstractly via `OPS.A`
   and concretely on the current branch via `OPS.B`;
3. the selector-good / simple-top packet on the active strip;
4. any upstream spectral floor / coherence supplier already carried by the
   live branch.

## Exact Claim

Use the live route gap symbol

```math
g_J^{str}
:=
\lambda_{J,\top}-\lambda_{J,2}.
\tag{SGS.1}
```

### Candidate Theorem SGS.A

```math
(\text{EWI.A},\ \text{observable-surrogate packet},\ \text{simple-top packet})
\Longrightarrow
g_J^{str}(x,t)\ge g_\ast>0
\quad\text{on the selector-good strip.}
\tag{SGS.2}
```

## Proof Skeleton

1. Prove lower control on `\lambda_1(\Sigma_J)`.
2. Prove upper control on `\lambda_2(\Sigma_J)`.
3. Use the selector-good simple-top packet to separate them uniformly on the
   relevant strip.

## Boundary

This note does **not** yet prove:

1. projector recovery;
2. selector-strain compatibility;
3. directional observability or SG.4.

## Current Exact-Potential Corollary

### Corollary SGS.B (projector-valued surrogate has automatic simple top)

On the exact-potential Cauchy--Green branch, once `EWI.A` and Corollary `OPS.B`
are in place, take the observable surrogate:

```math
\Sigma_J(a,b,t)=\widehat P_{J,\varepsilon}^{pair}(a,b,t).
\tag{SGS.3}
```

Then `\Sigma_J(a,b,t)` is a rank-one orthogonal projector, so its spectrum is

```math
\operatorname{spec}(\Sigma_J(a,b,t))=\{1,0,0\}.
\tag{SGS.4}
```

Therefore the surrogate simple-top slot is automatic with unit gap:

```math
g_J^{obs}(a,b,t):=
\lambda_1(\Sigma_J(a,b,t))-\lambda_2(\Sigma_J(a,b,t))
=1.
\tag{SGS.5}
```

So on this branch the remaining theorem-critical gap is not a new observable
surrogate gap. It is the Cauchy--Green / strain gap used downstream in
selector-strain compatibility.

**Proof.**
A rank-one orthogonal projector has one eigenvalue equal to `1` and the rest
equal to `0`. ∎
