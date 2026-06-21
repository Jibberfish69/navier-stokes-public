# Pointwise Class Readout To H^s Continuation Norm

Status: conditional analytic readout theorem.

## Statement

If the pointwise class-membership witness

```math
M_Q(u,p)
```

persists on the retained terminal cover at depth `N` above some `s>5/2`, then

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

## Proof

The pointwise witness is

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
```

`Pack_Q` supplies a finite retained cover with bounded deformation and bounded overlap. `Part_{N,Q}` records the finite tower participation and forcing law through depth `N`. `Field_{N,r,Q}` supplies one-field coherence, so the local tower packets patch as a single velocity field on `T^3`.

`DTC.Read` supplies the required pointwise tower and pressure-forcing readout, including

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q
```

for all `q<=N`.

Choose `N` so that the pointwise tower contains all spatial derivatives needed for `H^s`, with `s>5/2`. On each cover element, the local tower readout bounds the `H^s` norm. Finite overlap and the shared field coherence allow summation over the retained cover, giving a uniform global bound

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

## Output

This is exactly the continuation readout consumed by `PCTP.cond` and `ECQ.A`.