# MPP Forward Gold Nested Material Annulus Stress Cancellation Direct Test

Date: 2026-06-19

## Status

Direct nested-material-annulus test complete.  The exact same-fluid
participation law gives a real telescoping theorem: stress work across shared
material interfaces cancels pairwise.  This pays finite donor chains in the
material-annulus language.

It does not by itself close the terminal heat-scale branch.  The remaining
case is still an infinite terminal Zeno annulus chain or an unweighted terminal
stress/action reserve.

## 1. Exact material stress identity

Let \((u,p)\) be a smooth incompressible Navier-Stokes solution,

```math
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{NMA.1}
```

Let

```math
T(u,p)=-pI+2\nu S,
\qquad
S={\nabla u+\nabla u^T\over2}.
\tag{NMA.2}
```

Then

```math
D_tu=\nabla\cdot T.
\tag{NMA.3}
```

For any smooth material control volume \(\Omega(t)\),

```math
{d\over dt}
\int_{\Omega(t)}{1\over2}|u|^2\,dx
+
2\nu\int_{\Omega(t)}|S|^2\,dx
=
\int_{\partial\Omega(t)}u\cdot Tn\,dA.
\tag{NMA.4}
```

This is the exact participation ledger used below.

## 2. Nested material annuli

Let

```math
\Omega_0(t)\subset\Omega_1(t)\subset\cdots\subset\Omega_M(t)
\tag{NMA.5}
```

be smooth material control volumes.  Define the material shells

```math
A_j(t)=\Omega_j(t)\setminus\overline{\Omega_{j-1}(t)},
\qquad
1\le j\le M.
\tag{NMA.6}
```

Let

```math
E_B(t)=\int_B {1\over2}|u|^2\,dx,
\qquad
D_B(I)=2\nu\int_I\int_B |S|^2\,dxdt.
\tag{NMA.7}
```

For the interface

```math
\Gamma_j(t)=\partial\Omega_j(t),
\tag{NMA.8}
```

write the stress work through \(\Gamma_j\), with normal pointing outward from
\(\Omega_j\), as

```math
W_j(I)
=
\int_I\int_{\Gamma_j(t)}u\cdot Tn_j\,dA\,dt.
\tag{NMA.9}
```

Applying `(NMA.4)` to \(\Omega_j\) gives

```math
E_{\Omega_j}(b)-E_{\Omega_j}(a)
+D_{\Omega_j}([a,b])
=
W_j([a,b]).
\tag{NMA.10}
```

Applying `(NMA.4)` to the annulus \(A_j\) gives

```math
E_{A_j}(b)-E_{A_j}(a)
+D_{A_j}([a,b])
=
W_j([a,b])-W_{j-1}([a,b]).
\tag{NMA.11}
```

The sign in `(NMA.11)` is exact: the normal to \(A_j\) on the inner interface
\(\Gamma_{j-1}\) is \(-n_{j-1}\).

## 3. Telescoping cancellation

Summing `(NMA.11)` for \(j=1,\dots,M\), and adding `(NMA.10)` for
\(\Omega_0\), gives

```math
E_{\Omega_M}(b)-E_{\Omega_M}(a)
+D_{\Omega_M}([a,b])
=
W_M([a,b]).
\tag{NMA.12}
```

All internal interface stress works cancel exactly:

```math
W_0+\sum_{j=1}^{M}(W_j-W_{j-1})=W_M.
\tag{NMA.13}
```

This is the precise material-annulus form of same-fluid participation.  A
positive stress-work gain for an inner packet is not a private source.  It is
the negative side of the adjacent annulus balance unless it is supplied through
an outer boundary, stored energy decrease, or dissipation.

## 4. Finite donor-chain consequence

Suppose the selected inner packet \(\Omega_0\) receives positive stress work
over \(I=[a,b]\):

```math
W_0(I)>0.
\tag{NMA.14}
```

From `(NMA.10)`,

```math
W_0(I)
=
E_{\Omega_0}(b)-E_{\Omega_0}(a)+D_{\Omega_0}(I).
\tag{NMA.15}
```

For the first shell,

```math
W_0(I)
=
W_1(I)
-
\left(E_{A_1}(b)-E_{A_1}(a)\right)
-
D_{A_1}(I).
\tag{NMA.16}
```

Iterating through finitely many shells gives

```math
W_0(I)
=
W_M(I)
-
\sum_{j=1}^{M}
\left(E_{A_j}(b)-E_{A_j}(a)\right)
-
\sum_{j=1}^{M}D_{A_j}(I).
\tag{NMA.17}
```

Equivalently,

```math
W_0(I)
\le
W_M(I)_+
+\sum_{j=1}^{M}\left[-(E_{A_j}(b)-E_{A_j}(a))\right]_+.
\tag{NMA.18}
```

The exact signed version `(NMA.17)` is the useful statement.  The inequality
`(NMA.18)` is only a corollary after discarding nonnegative dissipation and
taking the positive outer supply.  Since \(E_{A_j}(b)\ge0\), it also implies

```math
W_0(I)
\le
W_M(I)_+
+\sum_{j=1}^{M}E_{A_j}(a).
\tag{NMA.18a}
```

Thus every finite same-fluid donor chain is paid by one of:

```math
\text{outer boundary stress work,}
\qquad
\text{stored energy depletion in donor shells,}
\qquad
\text{dissipation.}
\tag{NMA.19}
```

No additional pressure-only theorem is needed for this finite-chain
cancellation; pressure is already inside the stress tensor \(T\).

## 5. Why this does not close the terminal heat-scale atom

The terminal heat-scale enemy is not a fixed finite annulus chain.  It can use
a Zeno family

```math
\Omega_0^{(m)}\subset\Omega_1^{(m)}\subset\cdots
\tag{NMA.20}
```

with terminal time intervals \(I_m=(T_m-\tau_m,T_m]\), shrinking material
scales, and no fixed outer material boundary on which \(W_M\) is controlled
uniformly in the unweighted heat-scale currency.

For every finite \(M\), `(NMA.17)` pays the chain up to \(\Gamma_M\).  Passing
to \(M\to\infty\), \(m\to\infty\), and \(\tau_m\downarrow0\) requires one of
the following uniform statements:

```math
\sup_{m,M}
\int_{I_m}\left[W_M^{(m)}(t)\right]_+\,dt<\infty
\quad\text{in the unweighted normalized currency,}
\tag{NMA.21}
```

or

```math
\sum_{j\ge1}D_{A_j^{(m)}}(I_m)
\quad\text{has a nonzero lower quantum over recurrent terminal chains,}
\tag{NMA.22}
```

or

```math
\sum_{j\ge1}
\left[-(E_{A_j^{(m)}}(T_m)-E_{A_j^{(m)}}(T_m-\tau_m))\right]_+
\quad\text{is uniformly finite and exhausts the donor chain.}
\tag{NMA.23}
```

The installed physical energy inequality gives only the physical, discounted
budget.  In heat-scale variables, the prior material-participation note shows
that this corresponds to \(e^{-s/2}\)-weighted control.  It does not give the
unweighted terminal reserve needed to sum infinitely many recurrent heat-scale
annuli.

## 6. Exact reduced supplier

This note proves the exact finite-chain material cancellation:

```math
\boxed{
\text{finite nested material donor chains telescope by stress-work cancellation.}
}
\tag{NMA.24}
```

It reduces the remaining forward-gold burden to:

```math
\boxed{
\text{NoFreeInfiniteMaterialZenoStressChain.A}
}
\tag{NMA.25}
```

or, equivalently, to one of the already isolated unweighted reserves:

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A}
\quad\text{/}\quad
\text{UnweightedMaterialStressWorkCarleson.A}
\quad\text{/}\quad
\text{SelectedCriticalStrainCarleson.A}
\quad\text{/}\quad
\text{NormalizedCKNCarleson.A}
\quad\text{/}\quad
\text{SourceSquareReserve.A}.
}
\tag{NMA.26}
```

## Verdict

Nested material annuli make the participation law exact and useful: finite
internal stress-transfer chains cancel pairwise and must be paid by outer
stress work, donor energy depletion, or dissipation.

The gold obstruction that remains is precisely the infinite terminal Zeno
version of that chain.  The proof still needs an unweighted terminal reserve
or a no-free infinite material Zeno stress-chain theorem.
