# PCTP.hard Hs Continuation Conversion

## Status

Conditional theorem installed for the final conversion step.

This note converts terminal tower control into the classical continuation contradiction. It does not prove terminal tower control from `OriginalSmoothData`.

## Theorem

Let `(u,p)` be the maximal smooth periodic Navier--Stokes solution on `[0,T_*)`. Fix `s>5/2`. Suppose that for some finite `N>s+2`, the terminal tower amplitude is bounded on a finite retained cover through depth `N`:

```math
\mathfrak A_{N,Q}(t)\le M_A,
\qquad 0<t<T_*.
```

Assume the finite cover constants remain uniform on the terminal tail. Then

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

Consequently the classical solution extends beyond `T_*`.

## Proof

The tower amplitude contains pointwise control of the velocity derivative tower `U_k` through order `N` on the retained finite cover. Since `N>s+2`, Sobolev patching on the finite cover gives uniform control of the `H^s` norm of `u` on the periodic domain or on the active terminal region covered by the retained packet. The constants depend only on the finite cover, the depth `N`, and the tower bound `M_A`.

Thus

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

For the periodic incompressible Navier--Stokes equation, the standard local well-posedness and continuation criterion in `H^s`, `s>5/2`, says that a classical solution can be continued past `T_*` whenever the `H^s` norm remains bounded up to `T_*`. Therefore the assumed finite maximal endpoint contradicts local continuation.

## Consequence

The PCTP.hard endpoint-face assembly has now reduced the full terminal contradiction to one analytic theorem:

```math
OriginalSmoothData\Longrightarrow \mathfrak A_{N,Q}\in L^\infty(0,T_*).
```

Once that tower theorem is supplied, the chain is:

```math
\mathfrak A_{N,Q}\in L^\infty
\Longrightarrow
\neg tower\text{-}blown
\Longrightarrow
\neg Dead\wedge\neg packing\text{-}detached\wedge\neg Jump
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\Longrightarrow
T_*=\infty.
```

## Boundary

This conversion is standard and conditional on terminal tower control. The live mathematical blocker remains the noncircular production of terminal tower control from the original periodic Navier-Stokes dynamics.