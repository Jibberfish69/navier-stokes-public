# Directional Observability From Projector Identification

## Status

Candidate theorem-facing consumer template.

Role: package the downstream directional ledger once a branch-specific
witness-to-readout theorem has already exported the constitutive ledgers. On
the exact-potential branch that consumer start sits below `EWI.A`; on the
normal-covector branch it sits below `NWI.A`.

## Purpose

Discharge the directional-observability step:

```math
\boxed{
\|\widehat P_J-P_{J,\top}^{seg}\|_F^2\le \eta_J
\Longrightarrow
\Xi_J\le C_{DO}\big(|W_J|^2+\mathrm{Err}_J\big).
}
\tag{DO.0}
```

## Constitutive Import

This note is not allowed to treat `\mathrm{Err}_{J,\mathrm{id}}` as a black-box
branch remainder if the class-membership carrier is already on disk.

The honest split is:

```math
\mathrm{Err}_{J,\mathrm{id}}
=
\mathrm{Err}_{J,\mathrm{pack}}^{cm}
+
\mathrm{Err}_{J,\mathrm{tc}}^{cm}
+
\mathrm{Err}_{J,\mathrm{cal}}^{branch},
\tag{DO.0a}
```

where the first two ledgers are exported from the constitutive MPP packet and
only the last term remains genuinely branch-local. On the exact-potential
branch, this split is made explicit in `EWI.A`; on the normal-covector branch,
the analogous CM/import split is packaged in `NWI.A`.

So this note has no lawful constitutive start of its own. It is a downstream
consumer template: `EWI.A` sits upstream of the exact-potential
projector-triangle read, and `NWI.A` sits upstream of the parallel
normal-covector consumer inequality. The earlier precipitating correction is
that the CM-export theorem has to sit upstream of `(DO.2)` or `(DO.4)`, not
merely be mentioned next to them.

## Exact Inputs

0. a branch-specific witness-to-readout theorem: `EWI.A` on the exact-potential
   branch or `NWI.A` on the normal-covector branch;
1. the synchronized projector recovery bounds from
   `stable-projector-recovery-via-davis-kahan.md`;
2. on the exact-potential branch, the selector-strain compatibility bound from
   `selector-strain-compatibility-for-synchronized-projector.md`;
3. the pair projector `P_{ab}` on the transported good family.

## Exact Claim

Assume the synchronized pair packet yields

```math
\|P_{ab}-\widehat P_J\|_F^2
\le C_{\mathrm{sync}}
|W_J|^2+\mathrm{Err}_{J,\mathrm{sync}},
\tag{DO.1}
```

and projector identification yields

```math
\|\widehat P_J-P_{J,\top}^{seg}\|_F^2
\le C_{\mathrm{id}}
|W_J|^2+\mathrm{Err}_{J,\mathrm{id}}.
\tag{DO.2}
```

### Candidate Theorem DO.A

Then the angular ledger obeys

```math
\Xi_J^{ang}
:=
\frac12\|P_{ab}-P_{J,\top}^{seg}\|_F^2
\le C_{DO}
|W_J|^2+\mathrm{Err}_{J,\mathrm{sync}}+\mathrm{Err}_{J,\mathrm{id}}.
\tag{DO.3}
```

On the normal-covector branch the same structure is recorded as

```math
\Theta_J^\perp
\le C_{\perp}
|W_J|^2+\mathrm{Err}_{J,\perp}.
\tag{DO.4}
```

That normal-covector inequality is also downstream only: the admissible branch
start there is `NWI.A`, not `(DO.4)` by itself.

## Proof Skeleton

1. Work below the already named branch-specific witness-to-readout theorem.
2. Use triangle inequality between `P_{ab}`, `\widehat P_J`, and
   `P_{J,\top}^{seg}`.
3. Feed in the synchronized pair-packet estimate `(DO.1)`.
4. Feed in the projector-identification estimate `(DO.2)`.
5. Package the resulting ledger in SG.4-facing form.

## Current Exact-Potential Closure Packet On Disk

On the exact-potential Cauchy--Green branch, the current on-disk packaged
closure is the branch-facing export `D.7mr2` in
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:3375).

That corollary gives the angular ledger directly in the form

```math
\Xi_J^{ang}(a,b,t)
\le
C\,|W_J(a,b,t)|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t).
\tag{DO.5}
```

So this note should be read only as the abstract downstream
projector-identification surface. It is not the exact-potential constitutive
start: `EWI.A` is. Likewise any normal-covector use has to begin at `NWI.A`,
not at a generic `\mathrm{Err}_{J,\mathrm{id}}` placeholder.

The exact-potential branch-local theorem surface is now written separately in
[exact-potential-angular-ledger-from-selector-strain.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-from-selector-strain.md),
which packages `D.7mq` plus selector-strain compatibility into `D.7mr2`
without leaving the branch-local notation implicit.

Equivalently, the exact-potential branch read is

```math
D.7mq + \text{selector-strain compatibility}
\Longrightarrow
D.7mr2
\Longrightarrow
\Xi_J^{ang}\le C_{DO}\big(|W_J|^2+\mathrm{Err}_J\big).
\tag{DO.6}
```

### Corollary DO.B (exact-potential directional observability packet)

Assume:

0. `EWI.A` has already installed the CM-paid packing/transport import on the
   active transported good family;
1. `PTC-Lin` and `PTC-Shape` close the pair slot in the sense of `D.7mq`;
2. one selector-strain sufficiency packet closes the strain slot, for example
   `D.7mp + D.7mo + D.7mm`.

Then on the exact-potential Cauchy--Green branch,

```math
\Xi_J^{ang}(a,b,t)
\le
C\,|W_J(a,b,t)|^2
+
C\,\operatorname{Err}_{J,\mathrm{sync}}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t)
+
C\,\operatorname{Err}_{J,CG}^{strain,\mathrm{boot}}(a,b,t).
\tag{DO.7}
```

**Proof.**
This is exactly Corollary `D.7mr2`. ∎

## Boundary

This note does **not** yet integrate the directional ledger into residual
pairwise closure or lower-envelope control.

It also does **not** by itself produce the constitutive import. Wherever this
note is used on the exact-potential branch, `EWI.A` must be named explicitly
first; wherever the same consumer shape is invoked on the normal-covector
branch, `NWI.A` must be named explicitly first. Otherwise the generic
`\mathrm{Err}_{J,\mathrm{id}}` becomes a fake primitive.
