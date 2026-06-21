# M_Q Class-Witness Finalization

Status: conditional object-level theorem.

## Statement

On a retained still-live window `Q`, the pointwise class-membership object

```math
M_Q(u,p)
```

is witnessed by

```math
CM_{N,r,Q}(u,p,\Phi)
=
Pack_Q(u,\Phi)
\wedge
Part_{N,Q}(u,p)
\wedge
Field_{N,r,Q}(u,p).
```

With the tower/forcing readout supplied by `DTC.Read`, this witness gives the continuation readout

```math
M_Q(u,p)
\Longrightarrow
\sup_{t\in I}\|u(t)\|_{H^s(T^3)}<\infty
```

for a route depth `N` chosen above some `s>5/2`.

## Proof

`Pack_Q` supplies the shared material packing law on `Q`: the same flow map `Phi` carries the local material region with finite deformation gauge.

`Part_{N,Q}` records shared participation through depth `N`: the rungs

```math
U_k=\nabla^k u,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k
```

obey the transported tower law on `Q` for `0<=k<=N`.

`Field_{N,r,Q}` supplies one-field coherence through depth `N` and scale `r`, so neighboring towers and finite differences are induced by the same velocity-pressure field.

Together these three predicates are exactly the analytic witness family for membership:

```math
Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}
\Longrightarrow
M_Q(u,p).
```

`DTC.Read` supplies the tower/forcing readout needed by the participation and endpoint rows, including the pressure component of each

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Choosing `N` above a Sobolev continuation index `s>5/2`, the finite tower and coherence readout gives

```math
\sup_{t\in I}\|u(t)\|_{H^s(T^3)}<\infty.
```

Thus

```math
Pack+Part+Field+DTC.Read
\Longrightarrow
M_Q(u,p)
\Longrightarrow
H^s\text{ continuation readout}.
```

## Boundary

The witness is pointwise. Averaged predicates enter this theorem only after the readout bridges `Field.Read` and `DTC.Read` have produced pointwise objects.