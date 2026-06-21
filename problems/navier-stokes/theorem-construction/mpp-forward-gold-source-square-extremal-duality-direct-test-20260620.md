---
ns_viewer:
  theorem_id: forward-gold-source-square-extremal-duality-direct-test-20260620
  status: direct-extremal-duality-test-complete-source-square-not-produced
  proof_role: forward_gold_source_square_production_test
  logical_landing_node: source_square_extremal_duality_test
  edge_effect: "Tests whether minimal-counterexample, Bellman, Euler-Lagrange, or duality structure can produce same-carrier SourceSquareReserve.A from the local energy ledger. It cannot: endpoint-controlled and first-moment-controlled functionals vanish on a heat-scale source pulse whose source-square remains order one. A successful functional must contain square-strength source, active-height, or strict no-waste content."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-squaresourceestimate-completion-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-dynamic-tail-square-evolution-direct-test-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-ladder-closeout-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-created-reserve-source-square-energy-test-20260620.md
  downstream_consequence: "Do not pursue source-square production by a bare extremal or Bellman endpoint argument. The live supplier remains same-carrier square control, active-height/residence, selected critical strain/CKN, strict no-waste, or CM Part/Field consumption of the retained pulse after same-witness admission."
---

# MPP Forward-Gold Source-Square Extremal Duality Direct Test

Date: 2026-06-20

## Status

Direct extremal/duality test complete.  The optimization route does not produce
`SourceSquareReserve.A` from the current Navier--Stokes local energy ledger.

The exact output is:

```math
\boxed{
\text{endpoint or first-moment control}
\not\Longrightarrow
\text{same-carrier source-square control}.
}
\tag{SSED.0}
```

The missing object is not an extremizer.  It is square-strength information on
the actual selected positive carrier.

## 1. Target

For a selected shell/window pair let

```math
I_\lambda=[0,\lambda^{-2}],
\qquad
F_\lambda(t)\ge0
\tag{SSED.1}
```

be the assembled same-carrier positive source after legal exits are separated.
The desired source-square estimate has the form

```math
S_\lambda(I_\lambda)
:=
\int_{I_\lambda}\lambda F_\lambda(t)^2\,dt
\le
Small_\lambda(I_\lambda)+Legal_\lambda(I_\lambda).
\tag{SSED.2}
```

The native scalar energy balance available on the same packet has only

```math
E'(t)+c_0\nu D(t)\le F_\lambda(t)+L(t).
\tag{SSED.3}
```

After integration, `(SSED.3)` controls endpoint energy, dissipation first
moment, source first moment, and legal first moment.  It does not control
`(SSED.2)`.

## 2. Heat-scale extremal test

Fix a nonnegative smooth function \(\varphi\in C_c^\infty(0,1)\) with

```math
\int_0^1\varphi(\sigma)^2\,d\sigma=1.
\tag{SSED.4}
```

Set

```math
F_\lambda(t)
:=
\lambda^{1/2}\varphi(\lambda^2t),
\qquad
0\le t\le\lambda^{-2}.
\tag{SSED.5}
```

Then

```math
\int_{I_\lambda}F_\lambda(t)\,dt
=
\lambda^{-3/2}
\int_0^1\varphi(\sigma)\,d\sigma
\to0,
\tag{SSED.6}
```

but

```math
\int_{I_\lambda}\lambda F_\lambda(t)^2\,dt
=
\int_0^1\varphi(\sigma)^2\,d\sigma
=1.
\tag{SSED.7}
```

Thus every functional whose controlled decrease is bounded by source first
moment, endpoint energy, dissipation first moment, or legal first moment can
vanish on this sequence while the source-square target remains fixed.

## 3. Dual reading

The square-source estimate `(SSED.2)` is equivalent to boundedness of the
linear tests

```math
\int_{I_\lambda}\lambda^{1/2}F_\lambda(t)\psi_\lambda(t)\,dt
\tag{SSED.8}
```

for all \(\psi_\lambda\) with

```math
\int_{I_\lambda}\psi_\lambda(t)^2\,dt\le1.
\tag{SSED.9}
```

Take

```math
\psi_\lambda(t)
=
\lambda\varphi(\lambda^2t).
\tag{SSED.10}
```

Then `(SSED.9)` holds and

```math
\int_{I_\lambda}
\lambda^{1/2}F_\lambda(t)\psi_\lambda(t)\,dt
=1.
\tag{SSED.11}
```

The same test has first-moment size

```math
\int_{I_\lambda}F_\lambda(t)\,dt\to0.
\tag{SSED.12}
```

So duality exposes the same defect: the missing estimate is exactly the
boundedness of the \(L^2\)-dual pairing on the selected carrier.  It is not a
consequence of the \(L^1\)-type ledger.

## 4. Bellman or Euler-Lagrange consequence

Assume a Bellman or Euler-Lagrange route produces a lower-bounded functional
\(B_\lambda\) whose drop pays source-square:

```math
-{d\over dt}B_\lambda(t)
\ge
c\lambda F_\lambda(t)^2
-Legal_\lambda(t).
\tag{SSED.13}
```

Integrating `(SSED.13)` over `I_lambda` would give the target `(SSED.2)`.
The heat-scale pulse `(SSED.5)` forces a unit drop in \(B_\lambda\).  Therefore
one of the following must be true:

```math
\boxed{
B_\lambda
\text{ already contains square-strength source information,}
}
\tag{SSED.14}
```

or

```math
\boxed{
Legal_\lambda
\text{ contains a square-strength charge on the same carrier.}
}
\tag{SSED.15}
```

If \(B_\lambda\) is controlled only by endpoint energy, first-moment
dissipation, first-moment source, parent mass, finite donor balance, or legal
first moments, `(SSED.6)` makes its available drop tend to zero while
`(SSED.7)` demands a unit drop.  Thus the Bellman/Euler-Lagrange route closes
only after the missing square-strength theorem has already been inserted.

## 5. Navier-Stokes consequence

This test does not say the Navier--Stokes source is arbitrary.  It says the
installed local energy ledger has no noncircular mechanism that upgrades the
selected positive source from first-moment visibility to same-carrier
source-square control.

The remaining noncircular suppliers are:

```math
\boxed{
\text{SourceSquareReserve.A on the actual selected carrier,}
}
\tag{SSED.16}
```

```math
\boxed{
\text{active-height/source-residence control,}
}
\tag{SSED.17}
```

```math
\boxed{
\text{selected critical strain / normalized CKN reserve,}
}
\tag{SSED.18}
```

or

```math
\boxed{
\text{StrictRescaledNoWasteLyapunov.A.}
}
\tag{SSED.19}
```

Without one of these, the retained heat-scale square pulse remains visible but
unpaid in the forward-gold route.  After same-witness admission, that retained
pulse is a CM Part/Field readout object, not a solved forward-gold
source-square theorem.

## Verdict

The extremal/duality pivot is exhausted:

```math
\boxed{
\begin{gathered}
\text{optimization localizes the square pulse;}\\
\text{it does not create the square-strength carrier control.}
\end{gathered}
}
\tag{SSED.20}
```
