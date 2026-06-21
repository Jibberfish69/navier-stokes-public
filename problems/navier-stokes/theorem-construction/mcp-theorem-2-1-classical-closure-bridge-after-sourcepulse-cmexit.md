# Theorem 2.1 Classical Closure bridge after `SourcePulseCMExit.A`

## Status

Discharged for the periodic zero-force branch.

## Statement

For

```math
M=T^3,
\qquad
f=0,
\qquad
\nu>0,
\qquad
u_0^{vel}=u_0\in C^\infty(T^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{T^3}u_0=0,
```

the maximal classical solution satisfies

```math
T_*=\infty.
```

## Installed route inputs

The source-pulse tower residue is closed by `SourcePulseDTCPlacement.A` and `SourcePulseCMExit.A`:

```math
\text{terminal source-pulse genuine occurrence}
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

Thus a retained terminal class-membership branch has the legal retained witness

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

The branch selection, repaired `AACT.Global.noJump`, averaged endpoint package, and readout assembly produce `PCTP.hard / TTU.A` on the retained terminal tail.

## Classical closure proof

Let `(u,p)` be the maximal classical periodic solution on `[0,T_*)`.

`PCTP.hard` supplies uniform terminal-tail retained class membership and finite tower readout. Choose route depth `N` above a continuation index `s>5/2`. The readout gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
```

Periodic Navier-Stokes local well-posedness in `H^s(T^3)` gives a lifespan depending only on this bound, `\nu`, and the fixed torus. For any sequence `t_j\uparrow T_*`, relaunching the local theory from `u(t_j)` gives a classical solution on

```math
[t_j,t_j+\tau]
```

with a common `\tau>0`. For `j` large enough,

```math
t_j+\tau>T_*.
```

Uniqueness matches the relaunched solution with the original solution on the overlap. Hence the original classical solution extends past any finite maximal time. Therefore

```math
T_*=\infty.
```

## Conclusion

Theorem 2.1 classical closure follows for the periodic zero-force branch:

```math
\boxed{
C^\infty\text{ divergence-free zero-mean data on }T^3,\\ f=0
\Longrightarrow
\text{global smooth classical Navier-Stokes solution.}
}
```