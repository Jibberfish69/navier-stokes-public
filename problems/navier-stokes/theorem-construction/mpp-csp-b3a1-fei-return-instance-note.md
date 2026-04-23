# MPP CSP.B3a1 FEI Return Instance Note

## Status

Candidate theorem-facing note.

Role: isolate the exact old collar-packet theorem reopened when the pressure-side
and top-viscous local FEI branches return to the receiver-side collar burden
`CSP.B3a1`.

## Purpose

The local FEI companion notes already record the branch-local returns

```math
FPL.G
\Longrightarrow
CSP.B3a1,
\qquad
FTL.G
\Longrightarrow
CSP.B3a1.
\tag{CBR.0}
```

The honest question is therefore not whether the FEI branch created a new collar
theorem species. It is only:

```math
\boxed{
\text{what exact parameter reads of }CSP.B3a1\text{ are reopened by the two FEI local returns?}
}
\tag{CBR.1}
```

## Setup

Retain

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo},
\qquad
\delta_{top}:=\delta+\Lambda,
\qquad
\delta_{press}:=\delta+5\Lambda.
\tag{CBR.2}
```

The branch-local route-native collar-return hypotheses already on disk are:

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta_{top}}(t)
<
\infty,
\tag{CBR.3a}
```

from `(FTL.Bc0)`, and

```math
\sup_{t\in I}
\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta_{press}}(t)
<
\infty.
\tag{CBR.3b}
```

from `(FPL.Bc0)`.

The generic receiver-side collar theorem family is

```math
\sup_{t\in I}
\mathcal G_{M,m,\rho,\psi}^{low,\delta_\ast}(t)
<
\infty,
\tag{CSP.25g2}
```

which is exactly `CSP.B3a1` with arbitrary fixed depth pair `(M,m)` and fixed
thickness `\delta_\ast>0`.

## Exact Instance Reads

### Reduction `CBR.A` (The top-viscous FEI return is exactly a `CSP.B3a1` instance)

If one instantiates `CSP.B3a1` with

```math
M:=N+4,
\qquad
m:=N+4,
\qquad
\delta_\ast:=\delta_{top},
\tag{CBR.4}
```

then its conclusion is exactly `(CBR.3a)`, i.e. `(FTL.Bc0)`.

### Proof

Substitute `(CBR.4)` into `(CSP.25g2)`. The resulting statement is

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+\Lambda}(t)
<
\infty,
\tag{CBR.5}
```

which is exactly `(FTL.Bc0)`. ∎

### Reduction `CBR.B` (The pressure-side FEI return is exactly a `CSP.B3a1` instance)

If one instantiates `CSP.B3a1` with

```math
M:=N+2,
\qquad
m:=N+2,
\qquad
\delta_\ast:=\delta_{press},
\tag{CBR.6}
```

then its conclusion is exactly `(CBR.3b)`, i.e. `(FPL.Bc0)`.

### Proof

Substitute `(CBR.6)` into `(CSP.25g2)`. The resulting statement is

```math
\sup_{t\in I}
\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda}(t)
<
\infty,
\tag{CBR.7}
```

which is exactly `(FPL.Bc0)`. ∎

### Corollary `CBR.C` (The FEI local returns reopen no new receiver theorem family)

The branch-local collar returns beneath the direct FEI split are not new collar
packet theorem families. They are exact parameter reads of the old route-native
receiver theorem `CSP.B3a1`.

Concretely:

```math
FTL.G
\Longrightarrow
CSP.B3a1[N+4,N+4,\delta+\Lambda],
\tag{CBR.8a}
```

```math
FPL.G
\Longrightarrow
CSP.B3a1[N+2,N+2,\delta+5\Lambda].
\tag{CBR.8b}
```

So once the FEI local stacks return, the live receiver-side burden is again the
old lower-order moving-collar packet theorem family, not a new FEI-specific
collar theorem.

## Exact Reopened Receiver Slot

The coefficient-side receiver input package for `CSP.B3a1` is

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\Gamma_{M,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I),
\qquad
P_{F,\rho,\psi}^{\ast}\in L^1(I),
\tag{CSP.25f}
```

read at the same parameters `(M,m,\delta_\ast)`.

By the same parameter-free substitution already used in
[mpp-lci-a-widened-thickness-lower-carrier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-widened-thickness-lower-carrier-note.md),
the only thickness-sensitive slot in `(CSP.25f)` is still the lower same-fluid
carrier ledger, and that slot is just the old `LCI.A` family at the same
thickness.

### Corollary `CBR.D` (The only thickness-sensitive reopened slot is still `LCI.A`)

For the top-viscous return instance `(CBR.3a)`, the only thickness-sensitive
receiver slot is

```math
\Gamma_{N+4,N+4,\rho,\psi}^{low,\delta+\Lambda}\in L^1(I),
\tag{CBR.9a}
```

which is exactly the lower-carrier theorem `LCI.A` read at thickness
`\delta+\Lambda`.

For the pressure-side return instance `(CBR.3b)`, the only thickness-sensitive
receiver slot is

```math
\Gamma_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda}\in L^1(I),
\tag{CBR.9b}
```

which is exactly the lower-carrier theorem `LCI.A` read at thickness
`\delta+5\Lambda`.

So the FEI local returns do not reopen a new receiver-side carrier problem
either. They reopen the old collar theorem family `CSP.B3a1`, whose only
thickness-sensitive coefficient slot is again the corresponding `LCI.A`
instance.

### Corollary `CBR.E` (Exact returned lower-carrier theorem reads)

So the exact lower-carrier theorems reopened by the FEI local returns are:

1. the top-viscous returned read:

```math
LCI.A
\quad\text{with}\quad
(N,m,\delta)=(N+4,N+4,\delta+\Lambda),
\tag{CBR.10a}
```

2. the pressure-side returned read:

```math
LCI.A
\quad\text{with}\quad
(N,m,\delta)=(N+2,N+2,\delta+5\Lambda).
\tag{CBR.10b}
```

Among these two branch-local returns, the smaller-thickness reopened read is
the top-viscous instance `(CBR.10a)`. So the conservative next-form lower-carrier
move after the FEI return compression is not a new collar theorem, but the old
lower-carrier theorem `LCI.A` first at thickness `\delta+\Lambda`, and then at
the wider pressure-side thickness `\delta+5\Lambda`.

### Corollary `CBR.F` (The returned lower-carrier reads do not create a new lower-carrier route)

Because `LCI.A` is already formulated for an arbitrary lower-order family and an
arbitrary fixed collar thickness, the returned reads `(CBR.10a)` and
`(CBR.10b)` do not define new theorem mechanisms. They are only parameter reads
of the existing lower-carrier program.

So the conservative top-viscous returned read

```math
LCI.A[N+4,N+4,\delta+\Lambda]
\tag{CBR.11a}
```

and the wider pressure-side returned read

```math
LCI.A[N+2,N+2,\delta+5\Lambda]
\tag{CBR.11b}
```

both reopen the same old lower-carrier supplier architecture:

1. the sharper coefficient closure branch on the lower-carrier surface;
2. on its transported-center sufficient route, the same oscillation-side import,
   whose route-native compression already terminates at the `EOC` / `LCI`
   fixed point;
3. on the first-center-rung side, the same affine-defect / residual-center
   chain, whose honest current theorem-facing residual is still `RCF.A`.

Therefore the FEI-return compression is terminal in the exact conservative
sense:

```math
\boxed{
\text{after identifying the returned FEI collar instances and the exact returned }
LCI.A\text{ reads, no further new branch remains;}
\newline
\text{the route has returned to the already-installed lower-carrier program.}
}
\tag{CBR.12}
```

## Honest Boundary

This note does **not** prove either `(FTL.Bc0)` or `(FPL.Bc0)`. It does **not**
prove the bridge ledger `P_{F,\rho,\psi}^{\ast}`. It does **not** prove the
separate source-side burden `(FCI.5f)`. It also does **not** compare the branch-
local FEI returns `(FTL.Bc0)` and `(FPL.Bc0)` against the common sufficient
return `(FCL.Bc0)`.

What it does prove is narrower and exact:

1. the top-viscous local return and the pressure-side local return are exact
   parameter instances of the old receiver theorem `CSP.B3a1`;
2. no FEI-specific collar theorem family survives below those returns;
3. inside those receiver instances, the only thickness-sensitive slot is still
   the old lower-carrier family `LCI.A` at the corresponding thickness;
4. after those returned `LCI.A` reads are made explicit, the branch is
   terminal: it feeds back into the already-installed lower-carrier route rather
   than opening a new supplier architecture.
