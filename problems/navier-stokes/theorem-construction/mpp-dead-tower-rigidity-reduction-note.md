# MPP Dead-Tower Rigidity Reduction Note

## Status

Theorem-facing reduction note.

Role: reduce the remaining dead-tower burden after the literal open-patch
rigidity theorem.

## Purpose

After
[mpp-open-dead-patch-rigidity-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-open-dead-patch-rigidity-theorem.md),
the class-membership dead-tower burden is no longer diffuse. The strongest
literal deadness shapes are already rigid. What remains is to connect the route's
actual class-membership notion of nonparticipation either to one of those rigid
shapes or to an explicit failure of the PDE-native participation law.

The purpose of this note is to isolate that exact reduction.

## What Is Already Closed

The dead-patch rigidity note already proves:

1. open-set vanishing at positive time collapses the whole connected slice;
2. pointwise infinite-order spatial deadness also collapses the whole slice.

So the following two literal forms are already discharged:

```math
\exists\ U\subset\Omega\ \text{open},\qquad
u(\cdot,t_0)=0\text{ on }U
\Longrightarrow
u(\cdot,t_0)\equiv 0,
\tag{DTRS.0a}
```

```math
\exists x_\ast,\qquad
\partial_x^\alpha u(x_\ast,t_0)=0\ \forall \alpha
\Longrightarrow
u(\cdot,t_0)\equiv 0.
\tag{DTRS.0b}
```

## What Dead Tower Actually Means

The route's primitive law does **not** define `tower-dead` as raw zero
velocity. The older word `dead endpoint` is kept here only as a
participation-side class-exit label, and `transport-dead` or `tower-dead` are
its local participation-side faces. This note does not treat that label as a
primitive law identity.

```math
\boxed{
\text{`dead endpoint' is the legacy participation-side class-exit label.}
}
\tag{DTRS.1}
```

The relevant installed primitive is the PDE-native Law 2 surface from
[mpp-shared-participation-and-tower-coherence-law.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md),
not the exploratory witness bundle. Write

```math
U_k:=\nabla^k u,
\qquad
D_t:=\partial_t+u\cdot\nabla,
\qquad
D_tU_k=K_k+B_k,
\qquad
K_k:=-\nabla^{k+1}p+\nu\Delta U_k.
\tag{DTRS.2}
```

This is the route's PDE-native participation law:

```math
\boxed{
\text{while }(DTRS.2)\text{ remains the common local tower law on a still-live neighborhood,}\\
\text{the field is still dynamically participating there as one pressure-viscosity-coupled object.}
}
\tag{DTRS.3}
```

So the real dead-tower burden is not "can `u` vanish?". It is:

```math
\boxed{
\text{if a dead endpoint occurs, force it into an already-rigid literal shape}\\
\text{or into explicit failure of the PDE-native participation law on still-live neighborhoods.}
}
\tag{DTRS.4}
```

## Exact Reduction Theorems

### Lemma DTRS.A (point-jet deadness implies slice collapse)

If at positive time `t_0` there exists `x_\ast` such that

```math
\partial_x^\alpha u(x_\ast,t_0)=0
\qquad \forall \alpha,
\tag{DTRS.5}
```

then `u(\cdot,t_0)\equiv 0` on the whole connected component.

This is exactly Corollary `DTR.2a`.

### Theorem DTRS.B (class-membership nonparticipation reduces to rigid literal deadness or explicit Law 2 failure)

Fix a positive time `t_0`, a connected live neighborhood `V`, and assume:

1. `V` lies inside one common smooth field and one common volume-preserving
   motion map on the positive-time slice `t_0`;
2. a dead endpoint occurs at `x_\ast\in V` in its local participation-side
   form (`transport-dead` / `tower-dead`) and in the strong class-membership
   sense.

Then one must force at least one of the following alternatives:

```math
\text{open-patch deadness near }x_\ast,
\tag{DTRS.6a}
```

```math
\text{pointwise infinite-order deadness at }x_\ast,
\tag{DTRS.6b}
```

or

```math
\forall\ \text{sufficiently small live neighborhoods }W\subset V\text{ of }x_\ast,\
\exists k\ge 0\ \text{such that }D_tU_k=K_k+B_k
\text{ fails to remain one common local pressure-viscosity participation law on }W.
\tag{DTRS.6c}
```

This is the exact bridge from the class-membership dead-endpoint language to the
rigid literal deadness already handled by `DTR.1`.

#### Proof

Assume, toward contradiction, that none of `DTRS.6a`, `DTRS.6b`, `DTRS.6c`
holds. Then in particular `DTRS.6c` fails. So there exists a sufficiently
small live neighborhood `W\subset V` of `x_\ast` such that, for every rung
`k\ge 0`, the local tower law

```math
D_tU_k=K_k+B_k
\tag{DTRS.6d}
```

still remains the common pressure-viscosity participation law on `W`.

But then `DTRS.3` says exactly that the field is still dynamically
participating on `W` as one coupled NS object. This contradicts the claim that
`x_\ast` realizes a dead endpoint in the strong class-membership sense.

Hence at least one of `DTRS.6a`, `DTRS.6b`, `DTRS.6c` must hold.
`\square`

The logical core is worth stating separately:

```math
\boxed{
\text{a strong dead-endpoint claim cannot coexist with one common live-neighborhood tower law }D_tU_k=K_k+B_k\\
\text{unless the field has already fallen into one of the installed literal rigid branches.}
}
\tag{DTRS.6e}
```

So the open literal branches `DTRS.6a` and `DTRS.6b` are not extra analytic
burdens here. They are the already-isolated rigid literal forms that the
reduction explicitly allows before pushing the remaining burden onto the
shared participation law.

Any later quantitative coordinates for `DTRS.6c` such as
`\mathfrak P_N,\mathfrak Q_N` are downstream candidate readouts of this Law 2
failure branch. They are not the installed primitive used in this note.

### Corollary DTRS.B1 (nonparticipation outside the literal rigid branches forces Law 2 failure)

Under the hypotheses of `DTRS.B`, if neither open-patch deadness nor pointwise
infinite-order deadness occurs, then

```math
\forall\ \text{sufficiently small live neighborhoods }W\subset V\text{ of }x_\ast,\
\exists k\ge 0\ \text{such that }D_tU_k=K_k+B_k
\text{ fails to remain one common local pressure-viscosity participation law on }W.
\tag{DTRS.6f}
```

This is the exact no-drop reduction for the shared participation law.

### Theorem DTRS.C (the same reduction along material tubes)

Let `\Phi(a,t)` be the Lagrangian flow map, and let `A` be a nonempty open label
set. Write

```math
U_t:=\Phi_t(A).
\tag{DTRS.7}
```

Assume:

1. `t\in[t_0,t_1]\subset(0,T)`;
2. the shared packing law stays active on `A\times[t_0,t_1]`, so each `\Phi_t`
   is a smooth local diffeomorphism on `A`;
3. a transport-dead / tower-dead event is claimed somewhere on the transported
   tube
   ```math
   \mathcal T_A:=\{(\Phi(a,t),t):a\in A,\ t\in[t_0,t_1]\};
   \tag{DTRS.7a}
   ```
4. the transported region is understood only in the route's allowed sense:
   coordinate transport of the same NS field, not a new body with interface or
   surface-friction laws.

Then there exists a time `t_\ast\in[t_0,t_1]` such that at least one of the
following alternatives holds on the Eulerian slice `U_{t_\ast}`:

```math
\text{open-patch deadness on a nonempty open subset of }U_{t_\ast},
\tag{DTRS.7b}
```

```math
\text{pointwise infinite-order deadness at some }x_\ast\in U_{t_\ast},
\tag{DTRS.7c}
```

or

```math
\forall\ \text{sufficiently small live neighborhoods }W\subset U_{t_\ast}\text{ of }x_\ast,\
\exists k\ge 0\ \text{such that }D_tU_k=K_k+B_k
\text{ fails to remain one common local pressure-viscosity participation law on }W.
\tag{DTRS.7d}
```

#### Proof

Pick a bad point on the claimed dead tube, say `(a_\ast,t_\ast)` with
`x_\ast:=\Phi(a_\ast,t_\ast)`.

By the semantic boundary recorded in `FC.5a`, the material-tube language adds no
new mechanics: it is only a reparametrization of the same Eulerian NS field.
So the deadness claim at `(a_\ast,t_\ast)` is exactly an Eulerian
transport-dead / tower-dead claim at `(x_\ast,t_\ast)`.

Apply `DTRS.B` at `(x_\ast,t_\ast)`. This yields one of `DTRS.6a`,
`DTRS.6b`, `DTRS.6c`.

If `DTRS.6a` holds, the local diffeomorphism property of `\Phi_{t_\ast}` sends
open label patches to open Eulerian patches, so the deadness appears on a
nonempty open subset of `U_{t_\ast}`. This is `DTRS.7b`.

If `DTRS.6b` holds, then the full spatial jet of `u` vanishes at
`x_\ast\in U_{t_\ast}`. This is `DTRS.7c`.

If `DTRS.6c` holds, we obtain `DTRS.7d` at time `t_\ast`.

Hence the same trichotomy holds along material tubes.
`\square`

### Corollary DTRS.C1 (tube-wise nonparticipation outside the literal rigid branches forces Law 2 failure)

Under the hypotheses of `DTRS.C`, if no slice of the tube contains an open dead
patch and no point on the tube is spatially dead to infinite order, then
`DTRS.7d` must occur at some positive time on the tube.

### Theorem DTRS.1 (dead-tower reduction to the separate participation no-drop theorem)

Assume:

1. open-patch rigidity `DTR.1`;
2. point-jet rigidity `DTRS.A`;
3. class-membership-to-literal-or-Law-2-failure reduction `DTRS.B`;
4. material-tube reduction `DTRS.C`.

Then every positive-time class-membership nonparticipation event collapses into one
of two classes:

```math
\text{an already-rigid literal deadness branch,}
\tag{DTRS.8a}
```

or

```math
\text{explicit failure of the shared participation law in its PDE-native local-tower form.}
\tag{DTRS.8b}
```

```math
\boxed{
\text{after the literal rigidity lemmas, the only remaining live dead-tower burden is the no-drop theorem for the shared participation law on still-live neighborhoods.}
}
\tag{DTRS.8c}
```

## Practical Discharge Order

The shortest honest order is:

1. keep `DTR.1` and `DTRS.A` as the literal rigidity base;
2. use `DTRS.B` to reduce Eulerian class-membership nonparticipation to either
   a rigid literal deadness branch or explicit failure of the PDE-native
   participation law;
3. use `DTRS.C` to transport the same trichotomy along material tubes without
   adding any new mechanics;
4. conclude that full dead-tower exclusion is now exactly the no-drop theorem
   for the shared participation law, together with the already-installed
   literal rigidity lemmas.

So the dead-tower problem is no longer an unstructured wall. Its only live
positive-time burden is the separate participation no-drop theorem.

## Honest Boundary

This note **does** prove the reduction theorems `DTRS.B` and `DTRS.C`.

It does **not** yet prove the final no-drop theorem excluding explicit failure
of the shared participation law in the PDE-native local-tower form. So it
narrows the dead-tower burden to that Law 2 branch, but does not yet discharge
the remaining participation-failure burden.

## Source Surfaces

Primary source surfaces for this reduction:

1. `problems/navier-stokes/theorem-construction/mpp-open-dead-patch-rigidity-theorem.md`
2. `problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-exclusion-note.md`
3. `problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md`
4. `problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md`
5. `problems/navier-stokes/theorem-construction/mpp-object-law-corpus-refoundation.md`
6. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
