# YM Heat To Torus Heat To Classical Shadow Bridge

## Status

This is a theorem-facing bridge note.

Its job is to write the intended operator chain cleanly:

```text
MPP Navier-Stokes source object
-> auxiliary carrier built from that source geometry
-> Yang-Mills heat on the auxiliary carrier
-> torus spectral heat on the projected NC derivation lab
-> classical viscous channel in the commutative Navier-Stokes shadow of the same fluid.
```

This note does **not** claim that the full bridge is already discharged.
It records the exact bridge the lane is trying to make theorem-grade.

For the current live lane, the torus spectral heat surface is the chosen
internal branch surface. The classical whole-space `R^3` statement is a
downstream discharge/export target rather than the internal proving surface.
Any later Euclidean strict-shadow whole-space package is a downstream export
consumer of this bridge, not the constitutive source of the carrier law.

This bridge is not a Law 2 burden-bearing branch. It should be read only on the
Law-2-survivor side as auxiliary bridge packaging from the MPP fluid into torus
spectral/readout form. Dead-endpoint / participation-failure exclusion is
upstream in the CM tethering / no-drop line, not here.

## Source Hierarchy Preamble

Throughout this note, the source object is one MPP Navier--Stokes solution
with:

```math
(u,p),
\qquad
\Phi,
\qquad
F:=\nabla_a\Phi,
\qquad
\nabla\cdot u=0,
\tag{0}
```

and the same viscosity coefficient `\nu` and pressure correction enforcing the
incompressible sector of that fluid.

Any `G` appearing later in this note denotes a packet-local deformation metric
derived from `F` or `F^{-1}` with the convention fixed where it is used. This
note does **not** assert any lane-wide canonical `G`.

Any carrier object

```math
A,\qquad X,\qquad \Pi_{\mathrm{phys}}(A),\qquad \mathcal C(X)
\tag{0a}
```

is auxiliary and derived from that same MPP source geometry. Any Yang--Mills
heat evolution acts on those auxiliary carrier objects in auxiliary deformation
time `\tau`. Every theorem-facing sentence in this note is meant to be read in
one of four ways:

1. class-membership fact about the MPP fluid;
2. auxiliary geometric construction from that fluid;
3. auxiliary evolution on that derived geometry;
4. theorem returning the auxiliary output to the original NS lane.

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
\text{it is the carrier-visible spectral face of an auxiliary Yang--Mills heat law on geometry derived from the same MPP fluid.}
}
```

So the intended chain is not

```text
YM heat is merely analogous to NS.
```

It is:

```math
\boxed{
\text{the MPP source geometry feeds an auxiliary carrier }A[\Phi,F],\qquad
\partial_\tau A=-D_A^*F_A\text{ governs that auxiliary carrier in }\tau,
\qquad
\Delta_A \text{ is the torus spectral realization on the projected carrier sector,}
\qquad
\Delta \text{ is the classical viscous shadow of the same incompressible fluid.}
}
\tag{1}
```

## 1. Carrier-side Yang--Mills heat law

Given the same MPP source object `(u,p,\Phi,F)`, write the auxiliary carrier
gauge field / connection as

```math
A(\tau)=A[\Phi,F](\tau)
\tag{1a}
```

with curvature

```math
F_A = dA + A\wedge A.
```

The Yang--Mills heat flow is

```math
\partial_\tau A = - D_A^* F_A.
\tag{2}
```

Audit tags for `(2)`:

- `(S)` MPP source object: `(u,p,\Phi,F,\nabla\cdot u=0)`
- `(A)` auxiliary object: carrier connection `A`
- `(E)` auxiliary deformation time `\tau`
- `(V)` visible NS meaning: none yet; this is still auxiliary geometry
- `(R)` return map: delayed until `\Pi_{\mathrm{phys}}` and `\mathcal C`

After gauge fixing, the principal part is parabolic:

```math
\partial_\tau A - \Delta_A A
=
Q_1(A,\nabla_A A) + Q_2(A,A,A),
\tag{3}
```

where `\Delta_A` is the covariant Laplace-type operator induced by the
connection and `Q_1,Q_2` are quadratic/cubic interaction packets.

So the governing heat claim is:

```math
\boxed{
\text{the auxiliary carrier built from the same MPP source geometry closes by Yang--Mills heat descent, with principal operator }
\Delta_A.
}
\tag{4}
```

## 2. Torus spectral realization of the same heat law

Inside the compact `NC` torus derivation lab, the same auxiliary carrier
geometry supplies the concrete spectral package
already fixed in
[torus-projected-flow-extraction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md):

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

Audit tags for `(5)`:

- `(S)` MPP source object: exported coherence/deformation geometry from `(\Phi,F)` together with any packet-local metric choice
- `(A)` auxiliary object: `D_A,\nabla_A,\delta_A,\Delta_A`
- `(E)` no new time; this is structural operator data on the auxiliary carrier
- `(V)` visible NS meaning: viscous channel candidate
- `(R)` return map: through the projected carrier state `X`

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
\text{the operator appearing in the torus projected-flow law is the same covariant heat operator carried by the auxiliary Yang--Mills heat descent on }A[\Phi,F].
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
sector from the full auxiliary carrier gauge state built from the same MPP
source object.

Audit tags for `(9)`-`(11)`:

- `(S)` MPP source object: `(u,p,\Phi,F,E_N,A_F,P_F,\mathcal Q^{str})`
- `(A)` auxiliary object: full carrier `A` and projected state `X`
- `(E)` `\tau` on `A`, physical time `t` on `X`
- `(V)` projected transport-diffusion law with viscosity visible
- `(R)` explicit physical-sector map `\Pi_{\mathrm{phys}}:A\to X`

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

but is either absorbed by the displayed defect packet or killed in the
commutative readout. Then the same structural law survives modulo that defect
packet.

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

Audit tags for `(14)`-`(16)`:

- `(S)` MPP source object: same incompressible fluid viewed through shadow
- `(A)` auxiliary object: projected carrier state `X`
- `(E)` no new evolution parameter; this is the return map
- `(V)` visible NS meaning: viscosity, Leray projection, transport channel
- `(R)` explicit commutative shadow `\mathcal C`

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

The pressure term is suppressed here only because the shadow equation is being
written in Leray-projected form. The classical pressure remains the exact
anti-compression correction enforcing the incompressible sector of this same
MPP fluid after return to the visible NS lane.

So the full bridge is:

```math
\boxed{
\text{Yang--Mills heat on }A
\Longrightarrow
\text{spectral heat law on }X
\Longrightarrow
\text{classical viscous heat operator on }u,
\text{ as derived faces of the same auxiliary carrier branch.}
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
4. the lift from the torus internal proving surface to the downstream
   Euclidean strict-shadow/export consumer surface, if whole-space discharge is
   still demanded.

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

- [heat-governed-carrier-synthesis-for-tower-and-shadow-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/heat-governed-carrier-synthesis-for-tower-and-shadow-route.md)
- [torus-projected-flow-extraction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md)
- [torus-curvature-insertion-shadow-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/torus-curvature-insertion-shadow-lemma.md)
- [torus-ns-conditional-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/torus-ns-conditional-shadow-theorem.md)
- [projected-nc-flow-clay-frontier.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/projected-nc-flow-clay-frontier.md)
