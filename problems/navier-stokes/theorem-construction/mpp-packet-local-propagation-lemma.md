# MPP Packet-Local Propagation Lemma

## Status

Candidate theorem-facing propagation note.

Role: first packet-local propagation theorem for the transported closure packet
on one fixed material packet.

This note does **not** claim full closure of the class-membership route. Its
job is to package the current bridge-side quantities into one exact local
propagation theorem shape.

## Purpose

After the reference / bridge-tube reduction, the live transported tower bridge
is:

```math
\widetilde E_{N,r,\psi}(t)
\le
2\,\widehat{\mathcal E}^{ref}_{N,r,\psi}(t)
+
2\,|r|^2\,P_F^\ast(r,t;\psi)\,\mathfrak M^{tube}_{N+1,r,\psi}(t).
\tag{PL.0}
```

So the first honest packet-local propagation theorem should assume control of:

1. absolute packing amplitude;
2. relative packing mismatch;
3. reference-increment comparison packet;
4. bridge-tube envelope.

Then it should conclude control of the transported tower defect on the same
material packet.

## Theorem Shape

Fix a packet `\psi`, finite depth `N`, time interval `I`, and scale window
`0<|r|\le \rho`.

Assume

```math
\sup_{t\in I}A_F(t;\psi)<\infty,
\tag{PL.1}
```

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}P_F^\ast(r,t;\psi)<\infty,
\tag{PL.2}
```

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
\widehat{\mathcal E}^{ref}_{N,r,\psi}(t)<\infty,
\tag{PL.3}
```

and

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
\mathfrak M^{tube}_{N+1,r,\psi}(t)<\infty.
\tag{PL.4}
```

Then

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
\widetilde E_{N,r,\psi}(t)<\infty.
\tag{PL.5}
```

In parallel, the packet retains the packing control

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}P_F(r,t;\psi)<\infty,
\qquad
\sup_{t\in I}A_F(t;\psi)<\infty.
\tag{PL.6}
```

So the full packet remains finite on the fixed material packet.

## Proof Skeleton

From `(PL.0)`, for each `0<|r|\le \rho` and each `t\in I`,

```math
\widetilde E_{N,r,\psi}(t)
\le
2\,\widehat{\mathcal E}^{ref}_{N,r,\psi}(t)
+
2\,|r|^2\,P_F^\ast(r,t;\psi)\,\mathfrak M^{tube}_{N+1,r,\psi}(t).
\tag{PL.7}
```

Since `|r|\le \rho`, one gets

```math
\widetilde E_{N,r,\psi}(t)
\le
2\,\widehat{\mathcal E}^{ref}_{N,r,\psi}(t)
+
2\,\rho^2\,P_F^\ast(r,t;\psi)\,\mathfrak M^{tube}_{N+1,r,\psi}(t).
\tag{PL.8}
```

Taking the supremum over `0<|r|\le \rho` and then over `t\in I` yields `(PL.5)`
from the finiteness assumptions `(PL.2)`-`(PL.4)`. The packing statements
`(PL.6)` are the parallel packet-side bounds already assumed on the same
interval.

So this theorem is the first exact packet-local propagation statement:
if the packet-side reference and bridge-tube objects stay finite, then the
transported tower defect stays finite too.

## Interpretation

This note does not yet close the packet. It isolates the exact theorem burden
for the next stage:

```math
\boxed{
\text{propagate }\widehat{\mathcal E}^{ref}_{N,r,\psi}
\text{ and }\mathfrak M^{tube}_{N+1,r,\psi}
\text{ from packet data already carried by the branch.}
}
\tag{PL.9}
```

That is the first real packet propagation surface after the bridge reduction.

## Source Surfaces

Primary source surfaces for this propagation lemma:

1. `problems/navier-stokes/theorem-construction/mpp-reference-increment-and-bridge-tube-reduction.md`
2. `problems/navier-stokes/theorem-construction/mpp-increment-stability-lemma.md`
3. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
