# Observable Projector Surrogate Construction

## Status

Active theorem-facing construction note.

Role: first hard-debt discharge surface on the spectral-gap / projector branch.
This note is the synchronization theorem on the exact discharge route, read
downstream of the exact-potential witness-to-readout splice `EWI.A`.

Lawful start/import: `EWI.A` is the constitutive splice. The local
synchronization, coherence, and pair-defect data used here are only the
branch-local projector packet below that splice; they are not a primitive start
in their own right.

## Purpose

Discharge the first exact downstream burden:

```math
\boxed{
(\text{EWI.A},\ \text{exact-potential branch-local projector packet})
\Longrightarrow
(\Sigma_J,\ \Pi_J^{ref}).
}
\tag{OPS.0}
```

The job of this note is to produce one observable symmetric surrogate and one
synchronized reference projector on the transported good family. Until those
objects exist, the spectral-gap discussion is only motivational setup.

## Exact Inputs

Installed upstream surfaces:

1. `EWI.A`, which installs the exact-potential constitutive import on the same
   transported good family and pays the CM-side packing/transport ledgers;
2. the exact-potential branch-local projector packet, with three downstream
   pieces:
   a pair-to-cocycle synchronization law,
   a downstream transport coherence law,
   and one gauge/phase normalization law.
3. the signless pair-defect packet `W_J` and branch-local projective data as
   consumers inside that projector packet.
4. on the current exact-potential realization, the honest downstream supplier
   is `\text{PTC-Lin}+\text{PTC-Shape}\Longrightarrow D.7mq`.

This note treats those as exact inputs and does **not** assume projector
identification or SG.4.

## Exact Claim

### Theorem OPS.A

There exists a symmetric observable tensor `\Sigma_J` on the transported good
family together with a synchronized reference projector field `\Pi_J^{ref}`
such that:

```math
(\text{EWI.A},\ \text{exact-potential branch-local projector packet})
\Longrightarrow
(\Sigma_J,\ \Pi_J^{ref}),
\tag{OPS.1}
```

and there exists a synchronized reference tensor `\Sigma_J^{ref}` with

```math
\Pi_{\max}(\Sigma_J^{ref})=\Pi_J^{ref},
\tag{OPS.2}
```

while the observable-construction error obeys

```math
\|\Sigma_J-\Sigma_J^{ref}\|
\le
\mathrm{Err}_{J,\mathrm{obs}}.
\tag{OPS.3}
```

Object roles:

```math
\Sigma_J
\quad\text{= observable symmetric surrogate,}
\tag{OPS.4a}
```

```math
\Pi_J^{ref}
\quad\text{= synchronized reference projector,}
\tag{OPS.4b}
```

```math
\mathrm{Err}_{J,\mathrm{obs}}
\quad\text{= observable-construction error ledger.}
\tag{OPS.4c}
```

The branch-local projector packet supplies the theorem only after the
transported reference projector is produced by its downstream synchronization,
transport-coherence, and gauge/phase normalization laws.  On the current
exact-potential route this is the concrete reduction
`PTC-Lin + PTC-Shape => D.7mq => synchronized projective/reference packet`, so
the theorem should be read in the sharper route form

```math
(\text{EWI.A},\ \text{exact-potential branch-local projector packet})
\Longrightarrow
(\Sigma_J,\Pi_J^{ref}),
\tag{OPS.4d}
```

not as a raw construction from `W_J` alone or from the local tuple by itself.

## Proof Skeleton

1. Use `EWI.A` to keep the exact-potential branch on one transported family with
   the CM-paid packing/transport ledgers already installed.
2. Use the downstream synchronization packet to transport signless pair data
   into one coherent projective/cocycle object on that family.
3. Use the downstream transport-coherence and gauge/phase normalization laws to
   break the branch ambiguity that `W_J` alone cannot resolve.
4. Build `\Sigma_J^{ref}` from the synchronized reference object so its top
   projector is exactly `\Pi_J^{ref}`.
5. Build `\Sigma_J` from the observable branch packet and record the mismatch
   by `\mathrm{Err}_{J,\mathrm{obs}}`.

## Current Exact-Potential Sufficient Route On Disk

On the exact-potential Cauchy--Green branch, the live first-burden reduction is
already sharper than the abstract statement above.

The pair-to-cocycle slot is reduced to the combined pair theorem packet

```math
\text{PTC-Lin}
+
\text{PTC-Shape}
\Longrightarrow
\text{the }D.7ma4\text{ slot, realized concretely by }D.7mq,
\tag{OPS.5}
```

where Corollary `D.7mq` in
[tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md:3375)
supplies the pair projector comparison

```math
\bigl\|
\widehat P_{J,\varepsilon}^{pair}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t).
\tag{OPS.6}
```

So the first discharge burden is not a free-form construction problem. On the
current exact-potential branch it sits below `EWI.A` and is the concrete
closure of the two upstream theorem packets:

1. pair-average linearization,
2. selector-shape control.

This is the on-disk route by which the synchronized reference projector becomes
available in usable form on the selector-good family.

So on the current route this note should be read as:

```math
\text{PTC-Lin}+\text{PTC-Shape}
\Longrightarrow
\text{the }D.7ma4\text{ slot, realized concretely by }D.7mq
\Longrightarrow
\text{synchronized projective/reference packet.}
\tag{OPS.7}
```

The remaining genuinely novel debt on this branch is still tensor-level, not
just projector-level. The two smallest upstream theorem packets are:

### Theorem PTC-Lin.A

Construct a pair-linearization theorem that closes the linearization side of
`D.7mn1` by averaged differentiability of the transported pair vector:

```math
z_{ab}(t)=W(t,a)\,\xi_{ab}+r_{ab}(t),
\qquad
\int |r_{ab}(t)|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)\to 0,
\tag{OPS.7a}
```

equivalently, through the exact tensor identity in
[ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md),

```math
\bigl\|
\mathcal K_{J,\varepsilon}^{pair}(t,a)
-W\,M_{J,\varepsilon}^{shape}(t,a)\,W^*
\bigr\|_{\mathrm{op}}
\le
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a),
\qquad
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a)\to 0.
\tag{OPS.7b}
```

### Theorem PTC-Shape.A

Construct a selector-shape theorem that closes the shape side of `D.7mn2` in
normalized second-moment form:

```math
\left\|
\frac{1}{m_{J,\varepsilon}(t,a)}\,M_{J,\varepsilon}^{shape}(t,a)
-
\frac{1}{d}\Pi_{N_a}
\right\|_{\mathrm{op}}
\le
\epsilon_{J,\varepsilon}^{shape}(t,a),
\tag{OPS.7c}
```

with

```math
\epsilon_{J,\varepsilon}^{shape}(t,a)\to 0
\quad\text{on the selector-good family,}
\tag{OPS.7d}
```

equivalently: prove selector-good directional isotropy up to degree-2 moments.
The primitive theorem statement is tensor-level. The projector-level comparison
to the Cauchy--Green reference object is a downstream corollary of the `D.7mn`
reduction, not the primitive shape axiom itself.

Then the exact on-disk reduction `D.7mn3` becomes

```math
\operatorname{Err}_{J,\varepsilon}^{lin}
+
\bigl|\mathbf W_J^{coc}\bigr|_{\mathrm{op}}^2\,
\epsilon_{J,\varepsilon}^{shape}
\to 0
\Longrightarrow
D.7mq.
\tag{OPS.7e}
```

At the projector level, this means precisely that

```math
\bigl\|
\widehat P_{J,\varepsilon}^{pair}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t),
\tag{OPS.7e'}
```

with `\operatorname{Err}_{J,CG}^{pair,\varepsilon}` generated by the tensor
errors `\operatorname{Err}_{J,\varepsilon}^{lin}` and
`\epsilon_{J,\varepsilon}^{shape}` through `D.7mn`, `D.7mq`, and the explicit
cocycle-norm conversion packet.

So the minimal genuinely new mathematics upstream of `D.7mq` is:

```math
\text{PTC-Lin.A}
\quad\text{and}\quad
\text{PTC-Shape.A}.
\tag{OPS.7f}
```

In exact-potential language, the projective branch is now waiting on one
selector-good differentiability-exceptional-set theorem on the active pair
packet and one selector-shape isotropy theorem. More sharply: on the standard
selector-scale realization `\xi_{ab}=b-a` or `\xi_{ab}=(b-a)/\ell_J`, the
linearization side admits the imported descendant `TPS.4u => DiffExc =>
PTC-Lin.A`. The bounded-collar part of `PTC-Lin.A` is already downstream of
the installed active-pair scale selection, so the remaining linearization debt
is no longer a free-standing uniform-integrability wall. Everything after that
is assembly, except for the separately isolated selector-strain packet
`SSC-EP.A`.

These two upstream debts are now written separately in
[ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md)
and
[ptc-shape-normalization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md).

### Corollary OPS.B (exact-potential Cauchy--Green realization of the surrogate slot)

Assume the hypotheses of Corollary `D.7mq`. Define

```math
\Sigma_J(a,b,t):=\widehat P_{J,\varepsilon}^{pair}(a,b,t),
\qquad
\Pi_J^{ref}(a,b,t):=P_J^{CG}(t,a),
\qquad
\Sigma_J^{ref}(a,b,t):=P_J^{CG}(t,a).
\tag{OPS.8}
```

Then `\Sigma_J` and `\Sigma_J^{ref}` are symmetric observable tensors on the
transported good family,

```math
\Pi_{\max}(\Sigma_J^{ref})=\Pi_J^{ref},
\tag{OPS.9}
```

and the surrogate-construction slot holds with

```math
\|\Sigma_J-\Sigma_J^{ref}\|_F^2
\le
\operatorname{Err}_{J,CG}^{pair,\varepsilon}.
\tag{OPS.10}
```

So `(OPS.1)`-`(OPS.3)` are discharged on this branch by the identifications

```math
\mathrm{Err}_{J,\mathrm{obs}}
:=
\operatorname{Err}_{J,CG}^{pair,\varepsilon},
\qquad
\Pi_J^{ref}=P_J^{CG}.
\tag{OPS.11}
```

**Proof.**
Corollary `D.7mq` defines the pair projector field
`\widehat P_{J,\varepsilon}^{pair}` and proves

```math
\bigl\|
\widehat P_{J,\varepsilon}^{pair}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t).
\tag{OPS.12}
```

Both `\widehat P_{J,\varepsilon}^{pair}` and `P_J^{CG}` are symmetric rank-one
projectors, hence symmetric observable tensors on the good family. For a
rank-one projector `P`, the top projector `\Pi_{\max}(P)` equals `P` itself,
which gives `(OPS.9)`. Then `(OPS.10)` is exactly `(OPS.12)`. ∎

### Corollary OPS.C (installed exact-potential terminal read from the surrogate slot)

Assume the hypotheses of Corollary `OPS.B` on the active exact-potential
strip, and assume the hypotheses of Theorem `SSD.A` in
[selector-strain-sufficiency-d7mp-d7mo-d7mm.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-strain-sufficiency-d7mp-d7mo-d7mm.md)
on the same strip. Then the exact-potential branch closes the downstream chain

```math
(\Sigma_J,\Pi_J^{ref})
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
\tag{OPS.13}
```

### Proof

Corollary `OPS.B` is the surrogate/readout realization of `D.7mq` on this
branch. With Theorem `SSD.A` in hand, Corollary `SGH.C` in
[sg4-and-br-lambda2-handoff.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sg4-and-br-lambda2-handoff.md)
applies and yields the stated terminal chain. ∎

## Boundary

This note does **not** yet prove:

1. a simple-top gap for `\Sigma_J`;
2. Davis--Kahan stability;
3. comparison of `\Pi_J^{ref}` with `P_{J,\top}^{seg}`;
4. directional observability;
5. SG.4 or continuation.
