# Final Continuation Readout From PCTP.hard

Status: conditional final continuation theorem.

## Statement

```math
PCTP.hard+ECQ.A
\Longrightarrow
T_* = \infty.
```

## Proof

`PCTP.hard` supplies the uniform terminal-tail retained class-membership readout:

```math
OriginalSmoothData
\Longrightarrow
\text{uniform terminal-tail retained class-membership readout}.
```

The retained pointwise class witness is

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

At route depth `N` dominating some classical continuation index `s>5/2`, the readout gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

The classical local Navier-Stokes theory in `H^s(T^3)` gives a lifespan depending only on this bound. Choose `t_j\uparrow T_*`; for large `j`, the solution relaunched from `u(t_j)` exists past `T_*`. Uniqueness identifies it with the original solution on the overlap, contradicting maximality of a finite `T_*`.

Thus

```math
T_* = \infty.
```

Equivalently, `ECQ.A` says finite `T_*` is equivalent to finite-time class exit. Since `PCTP.hard` gives no finite class exit, `T_*` is infinite.

## Boundary

This theorem consumes `PCTP.hard`; it does not construct the averaged terminal bridge itself.