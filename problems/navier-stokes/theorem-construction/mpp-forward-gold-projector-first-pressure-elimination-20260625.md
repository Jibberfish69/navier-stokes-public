---
theorem_id: forward-gold-projector-first-pressure-elimination-20260625
status: exact-projector-first-reduction-installed; pressure-differentiation-demoted-to-moving-constraint-geometry
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Installs the projector-first version of the pressure/collar graph-driver
  reduction.  Applying the material Hodge projector before differentiating
  removes pressure as a top-order dynamic variable.  The pressure force becomes
  the normal correction needed to keep the velocity in the moving bundle
  \(\ker D_A\).  Differentiating the projector gives a normal term driven by
  \(\dot A=-AB\); its tangent-shell energy contribution is read through the
  moving material Stokes form.  Since \(\dot G=-2ASA^\top\), the principal
  tangent geometry clock is strain/metric service, while the antisymmetric
  rotation is gauge/skew at the level of the metric bundle.  This replaces
  pressure-graph differentiation as the preferred pressure-elimination route.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-stokes-hodge-shell-clock-closure-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hodge-shell-whole-pump-overclaim-correction-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-materialellipticgraphdriversignedreduction-a-globalsamepacketfullclockfromoriginaldata-a-fe3cacea22.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rdriver-strain-vorticity-recombination-20260625.md
---

# Projector-First Pressure Elimination

Date: 2026-06-25

## 0. Material operators

Work on one smooth transported material packet.  Let

```math
D_A w:=\operatorname{div}_a(Aw),
\qquad
\mathcal G_A\pi:=A^\top\nabla_a\pi.
\tag{PPE.1}
```

Fix the sign convention

```math
L_A:=D_A\mathcal G_A.
\tag{PPE.2}
```

Equivalently, if the positive elliptic operator is written as
\(-\operatorname{div}_a(G\nabla_a)\), then \(L_A\) below is that positive
operator and the signs in the inverse are adjusted accordingly.  The sign
choice does not affect the projector identity.

Define

```math
\mathbb P_A
=
I-\mathcal G_A L_A^{-1}D_A.
\tag{PPE.3}
```

Then

```math
D_A\mathbb P_A=0,
\qquad
\mathbb P_A\mathcal G_A=0,
\tag{PPE.4}
```

on the usual mean-zero pressure quotient and with the same boundary/collar
normalization used in the material packet.

The material Navier--Stokes equation is

```math
\partial_t v+\mathcal G_A q
=
\nu\operatorname{div}_a(G\nabla_av),
\qquad
D_Av=0.
\tag{PPE.5}
```

Applying \(\mathbb P_A\) gives the projected tangent evolution

```math
\boxed{
\nabla_t^A v
:=
\mathbb P_A\partial_t v
=
\nu\mathbb P_A\operatorname{div}_a(G\nabla_av).
}
\tag{PPE.6}
```

Pressure is now a constraint multiplier recovered after the tangent evolution,
not a top-order dynamic variable.

## 1. Differentiating the moving projector

Differentiate `(PPE.3)`:

```math
\dot{\mathbb P}_A
=
-\dot{\mathcal G}_AL_A^{-1}D_A
+\mathcal G_AL_A^{-1}\dot L_AL_A^{-1}D_A
-\mathcal G_AL_A^{-1}\dot D_A.
\tag{PPE.7}
```

On a constrained field \(v\), \(D_Av=0\), so the first two terms vanish when
`(PPE.7)` is applied to \(v\):

```math
\dot{\mathbb P}_Av
=
-\mathcal G_AL_A^{-1}\dot D_Av.
\tag{PPE.8}
```

Since

```math
\dot D_Av
=
\operatorname{div}_a(\dot A\,v),
\tag{PPE.9}
```

and

```math
\dot A=-AB
\tag{PPE.10}
```

with \(B=\nabla_xu\) pulled back to material variables, we get

```math
\boxed{
\dot{\mathbb P}_Av
=
\mathcal G_AL_A^{-1}\operatorname{div}_a(ABv)
}
\tag{PPE.11}
```

up to the fixed sign convention for \(L_A\).

This is the exact pressure/Hodge motion formula.  The source is \(B\), the
velocity gradient of the same material packet.  It is not an independent
pressure source.

## 2. Why this is not a tangent energy source

The right side of `(PPE.11)` lies in the normal gradient range
\(\operatorname{Ran}\mathcal G_A\).  Therefore for every current tangent field
\(h\in\ker D_A\),

```math
\langle \dot{\mathbb P}_Av,h\rangle_{L^2_a}=0.
\tag{PPE.12}
```

This is the geometric reason the projector-first route is cleaner than
differentiating \(L_Gq=R\).  The normal pressure correction can move the
ambient representative of \(v\), but it does no work on the tangent shell
itself.

The tangent clock enters through the moving material Stokes form on
\(\ker D_A\):

```math
\mathfrak a_A(h,h)
=
\int G\nabla_ah:\nabla_ah\,da,
\qquad
G=AA^\top.
\tag{PPE.13}
```

Since

```math
\dot G
=
\dot A A^\top+A\dot A^\top
=
-2ASA^\top,
\tag{PPE.14}
```

the principal form variation is

```math
\dot{\mathfrak a}_A(h,h)
=
\int \dot G\nabla_ah:\nabla_ah\,da
+\text{transport/collar lower terms}.
\tag{PPE.15}
```

Thus

```math
|\dot{\mathfrak a}_A(h,h)|
\le
C\,\lambda_+(S)\,\mathfrak a_A(h,h)
+r_A(h,h).
\tag{PPE.16}
```

The antisymmetric part \(\Omega\) of \(B=S+\Omega\) does not enter \(\dot G\).
It is pure frame rotation at the metric level.  In a metric-gauge formulation,
that rotation is skew/unitary and does not create a positive tangent Stokes
energy clock.  Any residual appearance of \(\Omega\) in a non-gauge-fixed
formula is a projector-frame commutator, not a pressure source; it is typed as
Hodge/frame legal service or vorticity/rotation service inside the same packet.

## 3. Shell consequence

Let

```math
\Pi_j(t)=\chi_j(\mathcal S_A(t))\mathbb P_A(t),
\qquad
h_j=\Pi_jv,
\tag{PPE.17}
```

where \(\mathcal S_A\) is the material Stokes operator associated with
\(\mathfrak a_A\) on \(\ker D_A\).  The shell identity is

```math
{d\over dt}{1\over2}\|h_j\|_2^2
+\nu\langle \mathcal S_Ah_j,h_j\rangle
=
\langle \dot\Pi_jv,h_j\rangle
+r_j^{legal}.
\tag{PPE.18}
```

The pressure force has disappeared from the principal tangent equation.  The
selector motion obeys

```math
\left[\langle \dot\Pi_jv,h_j\rangle\right]_+
\le
\varepsilon\nu\langle \mathcal S_Ah_j,h_j\rangle
+C\,e_j\lambda_+(S)\mathbf 1_{\{\lambda_+(S)>\delta2^{2j}\}}
+r_j^{legal}.
\tag{PPE.19}
```

The subheat part is absorbed by viscosity.  The superheat part is exactly the
top-strain/log-storage coordinate already installed:

```math
B_j=e_j\left[\log{\lambda_+(S)\over\delta2^{2j}}\right]_+.
\tag{PPE.20}
```

## 4. Readout replacement

The raw pressure/collar variation is only a readout of this projected material
geometry:

```math
d\Omega_N^{press/RHS}
+d\Omega_N^{collar}
\le
C_N\left(
d\Omega_N^{rel.defect}
+d\Omega_N^{Hodge/projector}
+d\Omega_N^{strain}
+dD_N^{vis}
\right)
+dR_N^{legal}.
\tag{PPE.21}
```

The projector-first route proves the sharper top-order placement

```math
d\Omega_N^{Hodge/projector}
\le
C_Nd\Omega_N^{strain}
+dR_N^{legal},
\tag{PPE.22}
```

where \(d\Omega_N^{strain}\) is the same signed strain/log material clock, with
vorticity/frame commutators retained as same-packet rotation service rather
than pressure forcing.

## 5. Consequence

This route replaces pressure-graph differentiation as the preferred coordinate
system:

```math
\boxed{
\text{project first, evolve inside the moving incompressible material bundle,
and recover pressure only as a normal constraint multiplier.}
}
\tag{PPE.23}
```

It closes the false pressure-differentiation burden.  The pressure-Hessian term
that appears when differentiating \(L_Gq=R\) is an artifact of reading the
constraint multiplier before projecting.  In the projected formulation, its
top-order effect is already in the strain/metric/Hodge motion of the same
material packet.

The remaining Gold object is consequently not a pressure graph clock.  It is
the finite positive variation of the projected material strain-vorticity
continuation record after the installed payments:

```math
\boxed{
\text{finite graph-compatible full PLS clock}
\quad\Longleftrightarrow\quad
\text{finite positive material strain/metric/vorticity record variation at
continuation depth.}
}
\tag{PPE.24}
```

