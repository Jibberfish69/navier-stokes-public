# YM Heat To Torus Heat To Classical Shadow Bridge

## Status

This is a theorem-facing bridge note.

Its job is to write the intended operator chain cleanly:

```text
Yang-Mills heat on the carrier
-> torus spectral heat on the NC derivation lab
-> classical viscous heat operator in the commutative Navier-Stokes shadow.
```

This note does **not** claim that the full bridge is already discharged.
It records the exact bridge the lane is trying to make theorem-grade.

## Purpose

The current torus packet already uses a heat operator:

```math
\partial_t X + \mathbb P_D N_D(X) = \nu\,\mathbb P_D \Delta_D X.
```

What this note fixes is the stronger reading:

```math
\boxed{
\text{the torus heat operator is not primitive;}
}
```
```math
\boxed{
\text{it is the carrier-visible spectral face of the underlying Yang--Mills heat law.}
}
```

So the intended chain is not

```text
YM heat is merely analogous to NS.
```

It is:

```math
\boxed{
\text{YM heat governs the carrier,}
\qquad
\Delta_D \text{ is its torus spectral realization,}
\qquad
\Delta \text{ is the classical shadow.}
}
\tag{1}
```

## 1. Carrier-side Yang--Mills heat law

Write the carrier gauge field / connection as `A(\tau)` with curvature

```math
F_A = dA + A\wedge A.
```

The Yang--Mills heat flow is

```math
\partial_\tau A = - D_A^* F_A.
\tag{2}
```

After gauge fixing, the principal part is parabolic:

```math
\partial_\tau A - \Delta_A A
=
Q_1(A,\nabla_A A) + Q_2(A,A,A),
\tag{3}
```

where `\Delta_A` is the covariant Laplace-type operator induced by the
connection and `Q_1,Q_2` are lower-order quadratic/cubic interaction packets.

So the governing heat claim is:

```math
\boxed{
\text{the carrier closes by Yang--Mills heat descent, with principal operator }
\Delta_A.
}
\tag{4}
```

## 2. Torus spectral realization of the same heat law

Inside the compact `NC` torus derivation lab, the concrete spectral package is
already fixed in
[torus-projected-flow-extraction.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md):

```math
D_A = -i\sum_{j=1}^3 \sigma^j(\delta_j+\operatorname{ad}_{A_j}),
```
```math
\nabla_A := [D_A,\cdot],
\qquad
\delta_A := \nabla_A^*,
\qquad
\Delta_A := \delta_A\nabla_A + \nabla_A\delta_A.
\tag{5}
```

So the same symbol `\Delta_A` now appears as the torus spectral heat operator.

The torus projected-flow law is then

```math
\partial_t X + \mathbb P_A N_A(X) = \nu\,\mathbb P_A \Delta_A X,
\tag{6}
```

with

```math
N_A(X):=\nabla_X^A X + \iota_X F_A,
\qquad
\mathbb P_A := Id - \nabla_A \Delta_A^{-1}\delta_A.
\tag{7}
```

So the bridge claim is:

```math
\boxed{
\text{the operator appearing in the torus projected-flow law is the same covariant heat operator that carries the Yang--Mills heat descent.}
}
\tag{8}
```

This is the exact point where the torus route stops being a separate analogy
and becomes a model-specific realization of the carrier heat law.

## 3. From carrier heat law to projected transport law

The intended middle bridge is:

```math
A
\xrightarrow{\Pi_{\mathrm{phys}}}
X,
\tag{9}
```

where `\Pi_{\mathrm{phys}}` extracts the admissible physical / projected-flow
sector from the full carrier gauge state.

At the formal theorem level, this bridge should satisfy:

```math
\Pi_{\mathrm{phys}}(\Delta_A A) = \Delta_A X,
\tag{10}
```

up to lower-order or shadow-invisible defect packets, and

```math
\Pi_{\mathrm{phys}}(-D_A^*F_A)

=
\nu\,\mathbb P_A \Delta_A X - \mathbb P_A N_A(X) + E_{\mathrm{phys}}(A).
\tag{11}
```

So there are two route readings:

### Route A -- exact physical-sector bridge

```math
E_{\mathrm{phys}}(A)=0.
\tag{12}
```

Then the projected Yang--Mills heat law becomes exactly the torus projected
transport-diffusion law:

```math
\partial_t X + \mathbb P_A N_A(X) = \nu\,\mathbb P_A \Delta_A X.
\tag{13}
```

### Route B -- shadow-visible forcing defect

```math
E_{\mathrm{phys}}(A)\neq 0,
```

but remains lower-order, absorbable, or shadow-killed in the commutative
readout. Then the same structural law survives modulo a defect packet.

This is the exact bridge the lane still needs to make theorem-grade.

## 4. Classical commutative shadow

The torus packet already fixes the commutative shadow clauses:

```math
\mathcal C(\Delta_A X)=\Delta\,\mathcal C(X),
\qquad
\mathcal C(\mathbb P_A X)=\mathbb P_{\mathrm{Leray}}\mathcal C(X).
\tag{14}
```

Write

```math
u := \mathcal C(X).
\tag{15}
```

Then the nonlinear shadow is

```math
\mathcal C(\mathbb P_A N_A(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)+E_{\mathrm{sh}}(X).
\tag{16}
```

So from `(13)` the classical shadow equation is

```math
\partial_t u

+\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)

=
\nu \Delta u

+\mathcal C(E_{\mathrm{phys}}(A)) - E_{\mathrm{sh}}(X).
\tag{17}
```

Under the exact-shadow / strict-shadow target,

```math
\mathcal C(E_{\mathrm{phys}}(A)) - E_{\mathrm{sh}}(X)=0,
\tag{18}
```

and one lands on the classical incompressible Navier--Stokes law:

```math
\partial_t u + \mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)=\nu\Delta u,
\qquad
\nabla\cdot u = 0.
\tag{19}
```

So the full bridge is:

```math
\boxed{
\text{Yang--Mills heat on }A
\Longrightarrow
\text{spectral heat law on }X
\Longrightarrow
\text{classical viscous heat operator on }u.
}
\tag{20}
```

## 5. What this says about the torus coercive term

The torus packet currently uses the coercive tail estimate

```math
\langle \Delta_D\Lambda_D^s X_{\mathrm{tail}},
\Lambda_D^s X_{\mathrm{tail}}\rangle
\ge
c_D \|X_{\mathrm{tail}}\|_{H_D^{s+1}}^2.
\tag{21}
```

This note upgrades its meaning.

That estimate should not be read only as:

```text
compact torus spectral gap gives a good sign.
```

It should be read as:

```math
\boxed{
\text{the torus packet is seeing the carrier heat law in its compact spectral realization.}
}
\tag{22}
```

So the flat torus does not reproduce the old positive-Ricci local damping term.
What it reproduces is the carrier heat law as spectral coercivity on the
nonpersistent sector.

That is the correct replacement meaning.

## 6. What this changes in the classical tower

The classical mixed-jet tower

```math
\partial_t J_{m,\alpha}
+
\sum_{a,\beta}
\binom ma\binom{\alpha}{\beta}
(J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta}
+
\nabla \Pi_{m,\alpha}
=
\nu \Delta J_{m,\alpha}
\tag{23}
```

is therefore not best read as a primitive PDE.

Under the present bridge, its visible terms mean:

- `\nu \Delta J_{m,\alpha}`:
  the classical shadow of the carrier Yang--Mills heat descent;
- `\nabla \Pi_{m,\alpha}`:
  the incompressible anti-compression correction required by the projected
  readout;
- mixed terms:
  the visible routing law induced by projecting the carrier interaction term
  `N_A(X)` into the classical derivative tower.

So the direct theorem-facing claim is:

```math
\boxed{
\text{the NS viscous term is the classical readout of the carrier heat operator already seen on the torus side.}
}
\tag{24}
```

## 7. Relation to Body IV

The original source-family fourth bridge used positive Ricci damping on a
geometric carrier.

The live torus route does not preserve that exact geometric term.
Instead it replaces the old local curvature damping by:

1. the carrier Yang--Mills heat law,
2. its spectral torus realization `\Delta_A`,
3. the coercive nonpersistent-sector estimate `(21)`,
4. the classical shadow viscous term `\nu\Delta u`.

So the updated Body IV reading is:

```math
\boxed{
\text{the old curvature bridge is replaced, on the live route, by a heat-governed carrier bridge whose torus face is spectral coercivity and whose classical face is viscosity.}
}
\tag{25}
```

## 8. Honest remaining theorem burdens

This bridge becomes fully discharged only when the lane proves:

1. a theorem-grade physical-sector map `\Pi_{\mathrm{phys}}:A\mapsto X`,
2. the exact or absorbable projection law `(11)`,
3. the exact-shadow or controlled-shadow identity `(18)`,
4. the lift from the torus derivation lab back to the declared classical
   theorem surface on the chosen domain.

So the current note should be read as:

```math
\boxed{
\text{the exact bridge schema the route is already trying to prove,}
}
```
```math
\boxed{
\text{not yet the final discharged bridge theorem.}
}
```

## Source anchors

- [heat-governed-carrier-synthesis-for-tower-and-shadow-route.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/heat-governed-carrier-synthesis-for-tower-and-shadow-route.md)
- [torus-projected-flow-extraction.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md)
- [torus-curvature-insertion-shadow-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/torus-curvature-insertion-shadow-lemma.md)
- [torus-ns-conditional-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/torus-ns-conditional-shadow-theorem.md)
- [projected-nc-flow-clay-frontier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/projected-nc-flow-clay-frontier.md)
