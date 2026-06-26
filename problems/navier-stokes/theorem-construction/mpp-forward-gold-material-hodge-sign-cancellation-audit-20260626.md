---
theorem_id: forward-gold-material-hodge-sign-cancellation-audit-20260626
status: proof-audit-material-hodge-projection-is-orthogonal-not-one-way-coercive
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projector-first-pressure-elimination-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
---

# Material Hodge Sign Cancellation Audit

The localized-affine global-matching audit leaves one possible one-way
mechanism on the table: perhaps the nonlocal material Hodge pressure coupling
has a sign that forces finite full same-material action.

The answer is no in that standalone form.

The material Hodge projection proves pressure attachment and tangent/normal
separation.  It does not by itself give a monotone positive-action bound.

## 1. Projector identity

On the transported material packet, write

```math
D_A w=\operatorname{div}_a(Aw),
\qquad
\mathcal G_A\pi=A^\top\nabla_a\pi,
\qquad
\mathbb P_A=I-\mathcal G_A L_A^{-1}D_A.
\tag{HSA.1}
```

For constrained fields \(h\in\ker D_A\),

```math
\langle \mathcal G_A\pi,h\rangle_{L^2_a}=0.
\tag{HSA.2}
```

Thus applying \(\mathbb P_A\) to the material Navier--Stokes equation removes
pressure from the tangent equation:

```math
\mathbb P_A\partial_t v
=
\nu\mathbb P_A\operatorname{div}_a(G\nabla_av).
\tag{HSA.3}
```

This is an orthogonality statement.  It says pressure is the normal constraint
force needed to keep the velocity in the moving incompressible material bundle.
It does not say the pressure constraint dissipates the rectified material
action.

## 2. Motion of the projector has no fixed sign

Differentiating the projection gives, on constrained fields,

```math
\dot{\mathbb P}_A v
=
-\mathcal G_A L_A^{-1}\dot D_Av
=
\mathcal G_A L_A^{-1}\operatorname{div}_a(ABv),
\tag{HSA.4}
```

up to the fixed sign convention for \(L_A\).  This term lies in the normal
gradient range.  Against the current tangent field it does no \(L^2\)-energy
work:

```math
\langle \dot{\mathbb P}_A v,h\rangle_{L^2_a}=0
\qquad (h\in\ker D_A).
\tag{HSA.5}
```

The tangent shell variation comes from the moving material Stokes form

```math
\mathfrak a_A(h,h)=\int G\nabla_ah:\nabla_ah\,da,
\qquad
\dot G=-2ASA^\top.
\tag{HSA.6}
```

So the principal Hodge/projector motion is paid by strain/metric motion in the
same packet.  It is not a new sign-definite pressure reserve.

## 3. Finite-dimensional obstruction to a Hodge-only sign theorem

The sign issue is already visible in a finite-dimensional model.  Let
\(P(t)\) be an orthogonal projection onto a moving subspace of a Hilbert space,
and let \(z(t)\in\operatorname{Ran}P(t)\).  Differentiating the constraint
\((I-P)z=0\) gives

```math
(I-P)\dot z=\dot Pz.
\tag{HSA.7}
```

The right side is the normal correction needed to keep \(z\) on the moving
constraint bundle.  Orthogonality gives

```math
\langle \dot P z,z\rangle=0.
\tag{HSA.8}
```

But the shell readout of \(z\) can still move both upward and downward as the
subspace rotates.  The projection identity supplies attachment to the moving
constraint geometry; it does not produce a one-way inequality for the positive
variation of a shell or annular readout.

To turn this into a finite-action estimate, one must control the total
variation of the moving geometry.  In the material Navier--Stokes packet that
variation is exactly the strain/metric/Hodge service already included in the
full same-material action.

## 4. Consequence for the Gold route

The nonlocal Hodge pressure law closes a sector:

```math
\text{pressure motion}
\longrightarrow
\text{normal constraint correction plus strain/metric projector motion}.
\tag{HSA.9}
```

It does not close the finite-action theorem:

```math
\text{material Hodge orthogonality}
\not\Rightarrow
\int_0^{T_*}d\Omega_N^{PLS,full}<\infty.
\tag{HSA.10}
```

Here the legacy symbol \(d\Omega_N^{PLS,full}\) denotes the full
same-material action measure.

Therefore the Hodge sign option is not the missing one-way mechanism.  The
remaining Gold proof still needs a bounded-below same-material entropy,
no-free-upward-transfer theorem, or equivalent action-packing law for the
full pressure--viscosity--incompressibility--velocity material action on the
original transported history.

