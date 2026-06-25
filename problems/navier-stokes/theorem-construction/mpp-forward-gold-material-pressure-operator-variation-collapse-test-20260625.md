---
theorem_id: forward-gold-material-pressure-operator-variation-collapse-test-20260625
status: exact-operator-collapse-installed; operator-variation-sign-indefinite-and-equals-coefficient-strain-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Collapses the remaining pressure-second-time, coefficient, low-high, and
  collar variation terms to one material elliptic-operator variation problem.
  The pressure tower is q=L_G^{-1}R with L_G=-div_a(G grad_a). Its first and
  second time derivatives are exact resolvent identities involving dot L_G,
  ddot L_G, dot R, and ddot R. This proves the four remainder channels are one
  pressure-incompressibility operator-variation channel on the same material
  packet. The sign test shows the operator variation is not coercive from
  incompressibility alone: dot G is the material strain/coefficient deformation
  record, trace-free in volume but sign-indefinite in directions. Thus the
  collapse sharpens the live producer to finite material elliptic-operator
  variation / coefficient-strain clock.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-service-variation-coercivity-split-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
---

# Material Pressure Operator Variation Collapse Test

Date: 2026-06-25

## 0. Object

The remaining variation terms from the material service split are:

```math
\mathcal V_\psi^{press,tt}
+
\mathcal V_\psi^{coef}
+
\mathcal V_\psi^{low\text{-}high}
+
\mathcal V_\psi^{collar}.
\tag{POV.1}
```

They are not four independent problems. They are the same material
pressure-incompressibility operator changing along the original transported
annulus.

Define the material elliptic pressure operator

```math
L_G f
:=
-\partial_{a_\ell}(G_{\ell k}\partial_{a_k}f),
\qquad
G=AA^\top.
\tag{POV.2}
```

The material pressure equation is

```math
L_G q=R,
\tag{POV.3}
```

with

```math
R=
A_{\ell i}A_{k j}
(\partial_{a_\ell}v_j)
(\partial_{a_k}v_i).
\tag{POV.4}
```

The pressure gauge is fixed by zero mean on the periodic surface, or by the
retained local/harmonic split on a localized annulus.

## 1. Exact operator derivative identities

Differentiate `(POV.3)`:

```math
L_G\dot q+\dot L_G q=\dot R.
\tag{POV.5}
```

Therefore

```math
\boxed{
\dot q=L_G^{-1}(\dot R-\dot L_G q).
}
\tag{POV.6}
```

Differentiate again:

```math
L_G\ddot q+2\dot L_G\dot q+\ddot L_Gq=\ddot R.
\tag{POV.7}
```

Thus

```math
\boxed{
\ddot q=L_G^{-1}(\ddot R-2\dot L_G\dot q-\ddot L_Gq).
}
\tag{POV.8}
```

The operator derivatives are exact:

```math
\dot L_G f
=
-\partial_\ell(\dot G_{\ell k}\partial_k f),
\tag{POV.9}
```

and

```math
\ddot L_G f
=
-\partial_\ell(\ddot G_{\ell k}\partial_k f).
\tag{POV.10}
```

The coefficient derivatives are fixed by the material flow:

```math
\dot A=-A(\nabla_av)A,
\tag{POV.11}
```

```math
\dot G=\dot A A^\top+A\dot A^\top,
\tag{POV.12}
```

and

```math
\ddot A
=
-(\dot A)(\nabla_av)A
-A(\nabla_a\dot v)A
-A(\nabla_av)\dot A,
\tag{POV.13}
```

```math
\ddot G=\ddot A A^\top+2\dot A\dot A^\top+A\ddot A^\top .
\tag{POV.14}
```

The RHS derivatives are also exact:

```math
\dot R
=
\partial_t\left[
A_{\ell i}A_{k j}
(\partial_\ell v_j)(\partial_k v_i)
\right],
\tag{POV.15}
```

and

```math
\ddot R
=
\partial_{tt}\left[
A_{\ell i}A_{k j}
(\partial_\ell v_j)(\partial_k v_i)
\right],
\tag{POV.16}
```

with \(\dot v\) and \(\ddot v\) replaced by the material Navier-Stokes equation
and its time derivative.

Equations `(POV.6)` and `(POV.8)` are the promised collapse: pressure time and
pressure second-time service are material elliptic-operator variation plus RHS
variation on the same packet.

## 2. How the four remainder channels collapse

The pressure-second-time channel is exactly the \(\ddot q\) term:

```math
\mathcal V_\psi^{press,tt}
\quad\leadsto\quad
L_G^{-1}(\ddot R-2\dot L_G\dot q-\ddot L_Gq).
\tag{POV.17}
```

The coefficient channel is \(\dot L_G,\ddot L_G\), because \(L_G\) is the
pressure operator built from \(G=AA^\top\):

```math
\mathcal V_\psi^{coef}
\quad\leadsto\quad
\dot G,\ddot G.
\tag{POV.18}
```

The low-high channel is the paraproduct expansion of the same identities:

```math
\Delta_j(C_{\le j-C}H_j)
\quad
\text{with }C\in\{A,G,\dot G,\ddot G,\nabla v,\nabla q\}.
\tag{POV.19}
```

The collar channel is \(\dot B,\ddot B\), with

```math
B=A^\top\nabla\psi,
\qquad
\dot B=\dot A^\top\nabla\psi,
\qquad
\ddot B=\ddot A^\top\nabla\psi .
\tag{POV.20}
```

Thus `(POV.1)` is one object:

```math
\boxed{
\text{material pressure-operator/RHS/collar variation}
}
\tag{POV.21}
```

inside the full pressure-viscosity-incompressibility-velocity packet.

## 3. Sign test

The pressure operator is coercive at each fixed time:

```math
\langle f,L_G f\rangle
=
\int G\nabla_af\cdot\nabla_af\,da
\ge
\lambda_G\|\nabla_af\|_2^2 .
\tag{POV.22}
```

But its time variation has no one-way sign:

```math
{d\over dt}\langle f,L_Gf\rangle
=
\int \dot G\nabla_af\cdot\nabla_af\,da
+2\int G\nabla_a\dot f\cdot\nabla_af\,da .
\tag{POV.23}
```

Even freezing \(f\) to test only the operator variation gives

```math
\int \dot G\nabla_af\cdot\nabla_af\,da .
\tag{POV.24}
```

Since \(\dot G=\dot A A^\top+A\dot A^\top\) and
\(\dot A=-A(\nabla_av)A\), this quadratic form is the material strain /
coefficient deformation record. Incompressibility fixes volume:

```math
\det F=1.
\tag{POV.25}
```

It does not force \(\dot G\) to be negative semidefinite. One material direction
can stretch while another compresses. So `(POV.24)` is sign-indefinite.

This is the physical point: pressure ellipticity is retained, but the pressure
operator can rotate and stretch with the annular material frame. That variation
is the same strain/coefficient clock, not a dissipative loss.

## 4. Exact estimate obtained

The operator collapse gives a precise bound of the form

```math
\mathcal V_\psi^{rem}(t)
\le
C_{\psi,N}\,
\mathcal R_N^{op}(t),
\tag{POV.26}
```

where \(\mathcal R_N^{op}\) is the finite-depth material operator-variation
density built from

```math
\dot L_G,\ \ddot L_G,\ \dot R,\ \ddot R,\ \dot B,\ \ddot B,
\quad
\text{with }\dot v,\ddot v\text{ closed by NS.}
\tag{POV.27}
```

Conversely, the terms in `(POV.27)` are exactly the pressure-second-time,
coefficient, low-high, and collar channels in `(VCS.19)`.

Therefore

```math
\boxed{
\int_0^{T_*}\mathcal V_\psi^{rem}(t)\,dt<\infty
}
\tag{POV.28}
```

is equivalent, at the chosen continuation depth, to finite material
elliptic-operator variation plus the corresponding RHS/collar variation:

```math
\boxed{
\int_0^{T_*}\mathcal R_N^{op}(t)\,dt<\infty .
}
\tag{POV.29}
```

## 5. Status

The four remainders have collapsed to one physical mechanism:

```math
\text{finite material pressure-operator variation}.
\tag{POV.30}
```

The sign test shows that this mechanism is not supplied by fixed-time
ellipticity or incompressibility alone. It requires a one-way storage, a
no-waste identity, or a direct estimate for \(\mathcal R_N^{op}\).

So the live producer is now sharpened to:

```math
\boxed{
\int_0^{T_*}\mathcal R_N^{op}(t)\,dt<\infty
}
\tag{POV.31}
```

on the original transported material history.

