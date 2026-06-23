---
theorem_id: forward-gold-moving-symmetrizer-log-variation-absorption-20260622
status: exact-integrating-factor-reduction-installed-remaining-producer-is-same-packet-operator-log-variation
logical_landing_node: simultaneous_material_fourbody_packet_coercivity
edge_effect: >-
  Refines the moving-symmetrizer obstruction. The term
  <U,(partial_sigma H_sigma)U> does not have to be absorbed additively by the
  four-body loss. It is exactly controlled by the logarithmic operator
  variation Theta_H=||H^{-1/2}(partial_sigma H)H^{-1/2}|| times the storage.
  If int Theta_H d sigma is finite, an integrating factor absorbs the moving
  storage variation and preserves the unweighted four-body clock. Thus the
  moving spectral route reduces to one same-packet producer:
  finite operator-log variation of the frozen full-packet symmetrizer. The
  material log-growth identity is the correct candidate source because the
  fixed-terminal-gauge sigma derivatives of L_sigma and W_sigma are generated
  by the mixed pressure-viscosity-incompressibility-velocity tower. Current
  inputs locate this variation but do not prove the needed finite operator-log
  bound from original smooth data.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-symmetrizer-variation-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frozen-quotient-spectral-stability-equivalence-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-log-growth-channel-identity-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
---

# Moving Symmetrizer Log-Variation Absorption

Date: 2026-06-22

## 0. Point

The moving storage term is

```math
\left\langle
\mathfrak U_\sigma,
(\partial_\sigma H_\sigma)\mathfrak U_\sigma
\right\rangle .
\tag{MLV.1}
```

The previous direct attempt treated `(MLV.1)` as an additive residual to be
paid by \(d\mathfrak C_N\).  The sharper statement is multiplicative:
`(MLV.1)` is the logarithmic variation of the storage metric.

This matters because a multiplicative term can be absorbed by an integrating
factor once its total log variation is finite.

## 1. Operator log variation

Assume the frozen quotient symmetrizer is positive:

```math
c_0 I\le H_\sigma\le C_0 I
\tag{MLV.2}
```

on the retained gauge quotient. Define the operator log-variation density

```math
\Theta_H(\sigma)
:=
\left\|
H_\sigma^{-1/2}
(\partial_\sigma H_\sigma)
H_\sigma^{-1/2}
\right\|_{\mathcal H_N\to\mathcal H_N}.
\tag{MLV.3}
```

Then, pointwise in \(\sigma\),

```math
\left|
\left\langle
\mathfrak U_\sigma,
(\partial_\sigma H_\sigma)\mathfrak U_\sigma
\right\rangle
\right|
\le
\Theta_H(\sigma)
\left\langle
\mathfrak U_\sigma,
H_\sigma\mathfrak U_\sigma
\right\rangle .
\tag{MLV.4}
```

This is exact.  It is just Cauchy--Schwarz in the \(H_\sigma\)-metric.

## 2. Integrating factor absorption

Suppose the moving storage inequality has the form

```math
{d\over d\sigma}\mathfrak L_\sigma
+\mathcal W_\sigma(\mathfrak U_\sigma)
\le
\Theta_H(\sigma)\mathfrak L_\sigma
+R_\sigma ,
\tag{MLV.5}
```

where

```math
\mathfrak L_\sigma
=
\langle \mathfrak U_\sigma,H_\sigma\mathfrak U_\sigma\rangle
\tag{MLV.6}
```

and \(\mathcal W_\sigma\) is the full same-packet readout:

```math
\mathcal W_\sigma
\simeq
A_{4B,N}
+D_{4B,N}
+{d\mathfrak C_N\over d\sigma}.
\tag{MLV.7}
```

Let

```math
\Omega(\sigma)
:=
\int_{\sigma_0}^{\sigma}\Theta_H(\tau)\,d\tau .
\tag{MLV.8}
```

Multiplying `(MLV.5)` by \(e^{-\Omega(\sigma)}\) gives

```math
{d\over d\sigma}
\left(
e^{-\Omega(\sigma)}\mathfrak L_\sigma
\right)
+e^{-\Omega(\sigma)}
\mathcal W_\sigma(\mathfrak U_\sigma)
\le
e^{-\Omega(\sigma)}R_\sigma .
\tag{MLV.9}
```

If

```math
\int_{\sigma_0}^{\infty}\Theta_H(\sigma)\,d\sigma<\infty,
\tag{MLV.10}
```

then \(e^{-\Omega}\) is bounded above and below by positive constants on the
terminal tail.  Integrating `(MLV.9)` yields

```math
\boxed{
\int_{\sigma_0}^{\infty}
\mathcal W_\sigma(\mathfrak U_\sigma)\,d\sigma
<\infty
}
\tag{MLV.11}
```

provided \(R_\sigma\in L^1_\sigma\) and the weighted storage is bounded below.

So the moving symmetrizer does not require pointwise smallness of
\(\partial_\sigma H_\sigma\).  It requires finite logarithmic variation of
the symmetrizer.

## 3. Relation to the frozen Lyapunov equation

The frozen symmetrizer satisfies

```math
\mathcal L_\sigma^*H_\sigma
+H_\sigma\mathcal L_\sigma
=
-\mathcal W_\sigma .
\tag{MLV.12}
```

Differentiating gives

```math
\mathcal L_\sigma^*(\partial_\sigma H_\sigma)
+(\partial_\sigma H_\sigma)\mathcal L_\sigma
=
-\partial_\sigma\mathcal W_\sigma
-(\partial_\sigma\mathcal L_\sigma)^*H_\sigma
-H_\sigma(\partial_\sigma\mathcal L_\sigma).
\tag{MLV.13}
```

Under a uniform frozen quotient stability gap, the Lyapunov inverse is bounded.
Thus the operator log variation is controlled by the relative variation of the
frozen operator and readout:

```math
\Theta_H(\sigma)
\le
C_\gamma
\left(
\|\partial_\sigma\mathcal W_\sigma\|_{\mathcal W\to H}
+\|\partial_\sigma\mathcal L_\sigma\|_{\mathcal L\to\mathcal L}
\right),
\tag{MLV.14}
```

where the norms are taken in the same retained packet Hilbert structure.  This
line is a definition of the required relative operator norms; it is not an
outside estimate.

## 4. Same-packet source of \(\Theta_H\)

In fixed terminal gauge,

```math
\partial_\sigma V_\sigma
=
-V_\sigma-y\cdot\nabla V_\sigma
+2s\left(
(V_\sigma\cdot\nabla)V_\sigma
+\nabla Q_\sigma
-\nu\Delta V_\sigma
\right),
\tag{MLV.15}
```

and

```math
\partial_\sigma Q_\sigma
=
-2Q_\sigma-y\cdot\nabla Q_\sigma-2s\,\partial_sQ_\sigma .
\tag{MLV.16}
```

The pressure time derivative is determined by the differentiated pressure
Poisson equation.  Therefore \(\partial_\sigma\mathcal L_\sigma\) and
\(\partial_\sigma\mathcal W_\sigma\) are generated by the same mixed
velocity-pressure-incompressibility tower, with the viscous second spatial
derivatives included.

For a finite \(N\)-rung packet, the variation is a finite-rung inflation:

```math
\partial_\sigma(\text{\(N\)-rung coefficients})
\subset
\text{\((N^\sharp)\)-rung mixed material packet},
\tag{MLV.17}
```

where \(N^\sharp\) is fixed once the \(N\)-rung Hilbert structure and the
operator/readout definitions are fixed.  It comes from exactly the derivative
orders displayed in `(MLV.15)`--`(MLV.16)`: scaling derivatives, one time
derivative, and the viscous second spatial derivative.

Thus the candidate gold producer is

```math
\boxed{
\int_{\sigma_0}^{\infty}\Theta_H(\sigma)\,d\sigma
\le
C
\int_{\sigma_0}^{\infty}d[\log(1+\mathcal P_{N^\sharp}^{mat})]_+
+C\int_{\sigma_0}^{\infty}dR_{4B,N^\sharp}.
}
\tag{MLV.18}
```

This is the exact way the material-record log-growth identity could feed the
moving symmetrizer.

## 5. What current inputs do and do not prove

Current inputs prove the location of the variation:

```math
\partial_\sigma\mathcal L_\sigma,
\quad
\partial_\sigma\mathcal W_\sigma
\quad
\text{are generated by the same mixed material tower.}
\tag{MLV.19}
```

Current inputs also prove the formal log-growth channel identity on a fixed
transported material atlas:

```math
d[\log(1+\mathcal P_{N^\sharp}^{mat})]_+
\le
C\,dA_{4B,N^\sharp}^{ann}
\tag{MLV.20}
```

when \(A_{4B,N^\sharp}^{ann}\) is the full tower-level same-carrier activity.

What is not yet proved is the operator-relative bound `(MLV.18)` as an
installed theorem for the actual frozen full-packet symmetrizer \(H_\sigma\).
This is the precise remaining production statement:

```math
\boxed{
\texttt{FullPacketSymmetrizerLogVariationAdmittedToMaterialClock.A}
}
\tag{MLV.21}
```

with content `(MLV.18)`.

## 6. Result

The moving-symmetrizer obstruction is now sharper.

The old additive target was:

```math
\left|\langle U,(\partial_\sigma H)U\rangle\right|
\le
\varepsilon W(U)+d\mathfrak C+dR .
\tag{MLV.22}
```

The sharper target is:

```math
\boxed{
\int \Theta_H\,d\sigma<\infty.
}
\tag{MLV.23}
```

Then an integrating factor absorbs the storage variation and keeps the
unweighted four-body readout finite.

So the live wall is not a new endpoint measure and not a component estimate.
It is:

```math
\boxed{
\text{the frozen full-packet symmetrizer must have finite same-material
operator log variation along the terminal cascade.}
}
\tag{MLV.24}
```

That is still one-fluid packet work.  The variation is generated by the same
pressure-viscosity-incompressibility-velocity tower, and the remaining proof is
that this generated variation is admitted to the same material clock already
inside \(d\mathfrak C_N\).
