# MPP ParabolicEdgeResistance.A Cauchy-Young Test

## Status

Rehydrated direct test of the edge-resistance input left by the parabolic
source-current route.

Target:

```math
\boxed{
ParabolicEdgeResistance.A:
\text{legal same-fluid source-current edges have heat-scale resistance.}
}
```

Representative forms from the current route are:

```math
\int_I |J_e(t)|\,dt
\le
\varepsilon\int_I\mathcal R_e(t)\,dt
+C_\varepsilon Boundary_e^+
+Loss_e
+o_N(1),
\tag{PER.1}
```

with

```math
\mathcal R_e
:=
2^{-j_e}(D_P+D_{P'}+D_{halo(e)}),
```

or the square-action form:

```math
\int_I
{ |J_e(t)|^2\over D_P+D_{P'}+D_{halo(e)}}\,2^{-j_e}\,dt
\le
\int_I(D_P+D_{P'}+D_{halo(e)})\,dt
+Loss_e+o_N(1).
\tag{PER.2}
```

Verdict:

```math
\boxed{
ParabolicEdgeResistance.A
\text{ is not proved by the available Cauchy/Young packet estimates.}
}
```

The estimates give a conditional positive-carrier replacement, but the
absorbing term is exactly the scale-critical square reserve
`ScaleCriticalTreeCarleson.A`, not an installed heat ledger.

## Installed Product Estimate

The live weighted/lifted source edge is represented by the commutatorized
lifted remainder

```math
\mathcal R_{j,k,\ell}^{lift}
=
2^{2j}\langle[\Delta_j,\Delta_k u\cdot\nabla]\Delta_\ell u,\Delta_j u\rangle
```

on the separated support

```math
j\ge N,
\qquad
N+M<k<j-4,
\qquad
|\ell-j|\le C_{LP}.
```

The existing positive-carrier replacement gives, with

```math
a_k(t):=2^{3k/2}\|\Delta_k u(t)\|_2,
\qquad
U_k(t):=\sum_{\ell>k+4}D_\ell(t),
```

the pointwise envelope

```math
|\mathfrak G_N^{lift,\sigma}(t)|
\le
C\sum_{k>N}2^k a_k(t)U_k(t).
\tag{E.1}
```

Applying Young's inequality yields

```math
|\mathfrak G_N^{lift,\sigma}(t)|
\le
\varepsilon\sum_{k>N}2^kU_k(t)^2
+C_\varepsilon\sum_{k>N}D_k(t).
\tag{E.2}
```

The second term is an installed first-moment dissipation tail.  The first term
is exactly the live square-reserve integrand:

```math
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2.
\tag{E.3}
```

Thus `(E.2)` proves only:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\Longrightarrow
\text{aggregate positive-carrier edge capacity for }
\mathfrak G_N^{lift,\sigma}.
}
\tag{E.4}
```

It does not prove `ScaleCriticalTreeCarleson.A`, and it does not prove
`ParabolicEdgeResistance.A` from the already installed first-moment heat
ledger.

## Why The Cauchy Route Is Circular

The desired resistance law would charge source current by endpoint heat action.
The product estimate instead has the structure

```math
\text{source current}
\le
C_{PER}
\text{low/intermediate coefficient}
\times
\text{high active tail}.
```

Young's inequality can split this product only by creating the square tail

```math
\sum_{k>N}2^kU_k^2.
```

But that square tail is the scalar source-wall reserve already known as
`ScaleCriticalTreeCarleson.A`.  It is not a lower installed heat budget.  Using
it to prove edge resistance would spend the theorem that the edge-resistance
route was meant to imply.

Equivalently, the square-action form `(PER.2)` asks for a Thomson-type bound
where the denominator is the endpoint/halo dissipation.  The available packet
estimate leaves a low-strain or donor-amplitude coefficient.  Without a
terminal coefficient bound, active amplitude Carleson reserve, or strain-sign
decorrelation theorem, that coefficient can align with the selected active
packet and produce the native positive trilinear defect:

```math
|w_j|^2
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
```

That is the same source-control atom, not a payable resistance term.

## Strongest Valid Conditional Reduction

The following reduction is valid.

```math
\boxed{
ScaleCriticalTreeCarleson.A
+
TerminalSkewLocalizationLedger.A
\Longrightarrow
ParabolicEdgeResistance.Aggregate.A.
}
```

Here `ParabolicEdgeResistance.Aggregate.A` means the summed, bounded-overlap
capacity estimate for the legal terminal current envelope:

```math
\sum_{e\in\mathcal E(\mathcal T)}
\int_I |J_e(t)|\,dt
\le
o_N(1)+Loss_{legal}
```

after the first-moment dissipation tail and legal localization losses are
absorbed.

Proof.  Use `TerminalSkewLocalizationLedger.A` to replace the terminal source
carrier by a legal localized source-current envelope with bounded overlap.
Apply `(E.2)`.  The first-moment tail is installed, while
`ScaleCriticalTreeCarleson.A` absorbs `(E.3)`.  The remaining pressure/cutoff,
off-family, projection, and collar terms are legal losses by the terminal
ledger.  This gives the aggregate capacity estimate.

This is conditional and directionally wrong for the current route: it uses
`ScaleCriticalTreeCarleson.A` to prove edge capacity, while the route needs
edge resistance to prove `ScaleCriticalTreeCarleson.A`.

## Exact Obstruction

The Cauchy/Young test fails at:

```math
\boxed{
\int_I\sum_{k>N}2^kU_k(t)^2\,dt
\le
o_N(1)+Loss_{legal}.
}
```

That is precisely `ScaleCriticalTreeCarleson.A`.

Therefore the route cannot close `ParabolicEdgeResistance.A` through ordinary
product estimates unless it supplies one genuinely new input:

```math
\boxed{
\begin{gathered}
\text{a terminal coefficient bound for }S_{<j}^{loc},\\
\text{or a positive active Carleson reserve},\\
\text{or positive strain/eigendirection decorrelation},\\
\text{or terminal signed/parabolic saturation plus a non-circular heat edge law}.
\end{gathered}
}
```

Without one of these, `ParabolicEdgeResistance.A` is not a lower theorem below
the source wall.  The source-current route still returns to:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```
