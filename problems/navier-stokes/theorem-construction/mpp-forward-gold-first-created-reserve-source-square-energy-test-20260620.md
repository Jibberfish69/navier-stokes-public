---
ns_viewer:
  theorem_id: forward-gold-first-created-reserve-source-square-energy-test-20260620
  status: conditional-energy-test-bridge-proved-source-square-not-produced
  proof_role: forward_gold_first_created_reserve_source_square_bridge
  logical_landing_node: first_created_reserve_source_square_bridge
  edge_effect: "Multiplies the selected shell balance by the shell energy in the critical weight. The calculation proves that same-carrier source-square control pays the first-created square reserve once inherited past, boundary drop, and legal spill are charged. It does not produce SourceSquareReserve.A from current Navier-Stokes inputs."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-created-reserve-charge-production-clause-recheck-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-post-nowaste-equivalence-closeout-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-ladder-closeout-20260619.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coherent-participation-square-reserve-direct-test-20260620.md
  downstream_consequence: "Do not keep ReserveCreationCharge.A as an independent mystery once same-carrier SourceSquareReserve.A is available. The remaining production wall is the same-carrier square estimate for the actual selected participation source, plus boundary/past/legal compatibility."
---

# MPP Forward-Gold First-Created Reserve Source-Square Energy Test

Date: 2026-06-20

## Status

The direct energy test proves a conditional bridge:

```math
\boxed{
\text{same-carrier source-square}
\Longrightarrow
\text{first-created square-reserve charge}
}
\tag{FCSSE.1}
```

after inherited past, boundary drop, and legal spill are accounted for.

It does not produce `SourceSquareReserve.A` from the current Navier-Stokes
inputs.  It identifies exactly what source-square would pay inside the
interior first-created branch.

## 1. Same-carrier shell balance

Fix a selected shell and heat window

```math
I=[a,b],
\qquad
\lambda=\lambda_j .
\tag{FCSSE.2}
```

Let

```math
E(t)=\|w_j(t)\|_2^2,
\qquad
D(t)=\lambda^2E(t),
\tag{FCSSE.3}
```

and let \(F(t)\) be the assembled selected positive same-carrier source after
the declared legal exits have been separated.  The shell balance has the form

```math
E'(t)+c_0\nu D(t)
\le
F(t)+L(t),
\tag{FCSSE.4}
```

where \(L\) denotes the legal remainder left in this window.

The first-created square reserve on this same carrier is

```math
R_I
:=
\int_I\lambda D(t)^2\,dt
=
\int_I\lambda^5E(t)^2\,dt .
\tag{FCSSE.5}
```

The same-carrier source-square charge is

```math
S_I
:=
\int_I\lambda F(t)^2\,dt .
\tag{FCSSE.6}
```

## 2. Energy multiplier

Multiply `(FCSSE.4)` by \(\lambda^3E(t)\) and integrate over \(I\).  This gives

```math
{ \lambda^3\over2}\bigl(E(b)^2-E(a)^2\bigr)
+c_0\nu R_I
\le
\int_I\lambda^3E(t)F(t)\,dt
+
\int_I\lambda^3E(t)L(t)\,dt .
\tag{FCSSE.7}
```

Write

```math
B_I
:=
{ \lambda^3\over2}\bigl(E(b)^2-E(a)^2\bigr),
\qquad
L_I^{E}
:=
\int_I\lambda^3E(t)L(t)\,dt .
\tag{FCSSE.8}
```

Since \(D=\lambda^2E\),

```math
\lambda^3EF
=
\bigl(\lambda^{1/2}D\bigr)
\bigl(\lambda^{1/2}F\bigr).
\tag{FCSSE.9}
```

Cauchy--Schwarz gives

```math
\int_I\lambda^3E(t)F(t)\,dt
\le
R_I^{1/2}S_I^{1/2}.
\tag{FCSSE.10}
```

Combining `(FCSSE.7)` and `(FCSSE.10)`, and moving the negative part of the
boundary term to the right, gives

```math
c_0\nu R_I
\le
R_I^{1/2}S_I^{1/2}
+B_I^-
+L_I^{E}.
\tag{FCSSE.11}
```

Young's inequality gives the exact bridge

```math
R_I
\le
C_\nu S_I
+C_\nu B_I^-
+C_\nu L_I^{E}.
\tag{FCSSE.12}
```

Here \(C_\nu\) depends only on the fixed viscosity and the shell coercivity
constant \(c_0\).

## 3. First-created interpretation

For a first-created window, the inherited past term is already separated by the
definition of the branch.  The boundary defect

```math
B_I^-
=
\left[
{ \lambda^3\over2}\bigl(E(a)^2-E(b)^2\bigr)
\right]_+
\tag{FCSSE.13}
```

is not creation.  It is loss from a previous store, and must be charged to the
past, endpoint, or legal ledger.  The term \(L_I^{E}\) is declared legal only
when the local construction has already routed \(L\) into the legal spill
account, or when it supplies its own square/legal bound.

Thus the positive first-created reserve obeys

```math
\left[
R_I
-C_\nu B_I^-
-C_\nu L_I^{E}
\right]_+
\le
C_\nu S_I .
\tag{FCSSE.14}
```

This is the desired charge form, with the charge supplied by the same-carrier
source-square density.

## 4. What this removes

The interior first-created reserve is no longer a separate obstruction after
one has

```math
\int_I\lambda F(t)^2\,dt
\le
Small_j(I)+Legal_j(I)
\tag{FCSSE.15}
```

on the actual selected positive carrier.  Under `(FCSSE.15)` and the
boundary/legal compatibility in `(FCSSE.14)`,

```math
\left[
R_I
-C_\nu B_I^-
-C_\nu L_I^{E}
\right]_+
\le
C_\nu Small_j(I)+C_\nu Legal_j(I).
\tag{FCSSE.16}
```

So `ReserveCreationCharge.A` is a consumer of same-carrier source-square in
this branch.

## 5. What remains open

The calculation does not prove `(FCSSE.15)`.  The heat-scale model

```math
D(t)=F(t)=\lambda^{1/2}{\bf 1}_I(t),
\qquad
|I|=\lambda^{-2},
\tag{FCSSE.17}
```

has

```math
\int_I F(t)\,dt=\lambda^{-3/2}\to0,
\qquad
\int_I\lambda F(t)^2\,dt=1.
\tag{FCSSE.18}
```

The energy test reads this model correctly: the first moment vanishes, and the
source-square charge is exactly the unit payment for the unit reserve.

## Verdict

This note installs only the conditional bridge

```math
\boxed{
\text{SourceSquareReserve.A on the same selected carrier}
\Longrightarrow
\text{ReserveCreationCharge.A after past/boundary/legal separation.}
}
\tag{FCSSE.19}
```

The current unsolved forward-gold production theorem remains:

```math
\boxed{
\text{produce the same-carrier source-square bound for the actual selected
positive participation source.}
}
\tag{FCSSE.20}
```
