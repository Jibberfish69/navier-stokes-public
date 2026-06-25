---
theorem_id: forward-gold-annular-flux-derivative-same-packet-identity-20260624
status: proof-installed-flux-derivative-is-same-material-packet-quantity
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Proves the same-packet identity behind the annular stress-work rectification
  clock. In material coordinates the transported annular cutoff is fixed, and
  the derivative of the annular stress-work flux is an explicit finite sum of
  velocity, pressure, coefficient, strain, viscous, and collar terms on the
  same transported material packet. This proves admission of the rectification
  clock into the material tower. It does not prove the unweighted terminal
  summability of that clock; that summability remains the signed smooth
  same-packet commutator/coercivity estimate.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
---

# Annular Flux Derivative Same-Packet Identity

Date: 2026-06-24

## 0. Result

The rectification clock from the previous note is not a detached object.

In material coordinates, the annular cutoff is fixed and the time derivative of
the annular stress-work flux is a same-packet expression. It is made only from
the material velocity, pressure, deformation coefficients, strain, viscous
operator, and collar derivatives already carried by the full
pressure-viscosity-incompressibility-velocity packet.

This proves admission of the flux-derivative clock into the material tower.
It does not prove its unweighted terminal summability.

## 1. Material form of the annular stress-work flux

Let

```math
x=X(a,t),
\qquad
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\tag{AFD.1}
```

and

```math
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^\top .
\tag{AFD.2}
```

Incompressibility gives \(J=\det F=1\).  Let \(\psi(a)\) be the fixed material
annular cutoff.  The transported Eulerian cutoff is

```math
\phi(X(a,t),t)=\psi(a).
\tag{AFD.3}
```

Therefore

```math
\nabla_x\phi(X(a,t),t)=A^\top\nabla_a\psi(a).
\tag{AFD.4}
```

Let the pulled-back Cauchy stress be

```math
\mathcal T(a,t)
=
-q(a,t)I+2\nu S_x(u)(X(a,t),t),
\tag{AFD.5}
```

where

```math
(\nabla_xu)(X(a,t),t)
=
(\nabla_av)A .
\tag{AFD.6}
```

The annular stress-work flux is

```math
F_\psi(t)
=
\int
v_i\,\mathcal T_{ij}\,A_{\ell j}\,\partial_{a_\ell}\psi\,da .
\tag{AFD.7}
```

This is the same physical flux

```math
\int u\cdot T\nabla_x\phi\,dx
\tag{AFD.8}
```

written on the fixed material annulus.

## 2. Exact derivative identity

Differentiate `(AFD.7)` on the fixed material domain:

```math
\begin{aligned}
{d\over dt}F_\psi(t)
= {}&
\int
(\partial_tv_i)\,\mathcal T_{ij}\,A_{\ell j}\,\partial_\ell\psi\,da \\
&+
\int
v_i\,(\partial_t\mathcal T_{ij})\,A_{\ell j}\,\partial_\ell\psi\,da \\
&+
\int
v_i\,\mathcal T_{ij}\,(\partial_tA_{\ell j})\,\partial_\ell\psi\,da .
\end{aligned}
\tag{AFD.9}
```

The material Navier-Stokes law is

```math
\partial_t v+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0.
\tag{AFD.10}
```

The coefficient equation is

```math
\partial_tA=-A(\nabla_av)A.
\tag{AFD.11}
```

The stress derivative is

```math
\partial_t\mathcal T
=
-(\partial_tq)I
+
2\nu\,\partial_tS_x,
\tag{AFD.12}
```

and, using `(AFD.6)`,

```math
\partial_tS_x
=
\operatorname{sym}
\left(
(\nabla_a\partial_tv)A
+
(\nabla_av)\partial_tA
\right).
\tag{AFD.13}
```

Substituting `(AFD.10)` and `(AFD.11)` into `(AFD.13)` expresses
\(\partial_tS_x\) using only \(v,q,A,G\) and their material derivatives.

The pressure time derivative is fixed by differentiating the same material
pressure equation

```math
-\partial_{a_\ell}
\left(G_{\ell k}\partial_{a_k}q\right)
=
A_{\ell i}A_{kj}
(\partial_{a_\ell}v_j)(\partial_{a_k}v_i).
\tag{AFD.14}
```

Thus \(\partial_tq\), after fixing the pressure gauge, is obtained from an
elliptic equation whose coefficients and right side are made from the same
material packet:

```math
\partial_tq
=
\mathcal E_q[v,q,A,G],
\tag{AFD.15}
```

where \(\mathcal E_q\) denotes the corresponding same-packet elliptic readout.

Equations `(AFD.9)`--`(AFD.15)` are the exact flux-derivative identity.

## 3. Same-packet tower admission

Choose \(N\) at least four derivatives above the fixed continuation readout
depth, as in the material-record definition.  The terms in `(AFD.9)` contain
at most:

1. one material time derivative of \(v\), replaced by `(AFD.10)`;
2. one material time derivative of \(A\), replaced by `(AFD.11)`;
3. one material time derivative of \(S_x\), replaced by `(AFD.13)`;
4. one pressure time derivative, read by `(AFD.15)`;
5. fixed collar derivatives of \(\psi\).

Therefore there is a same-packet density \(\Xi_{N,\psi}(t)\), made only from
the material velocity tower, pressure tower, coefficient/deformation tower,
viscous tower, and collar geometry, such that

```math
|F_\psi'(t)|
\le
\Xi_{N,\psi}(t).
\tag{AFD.16}
```

One concrete choice is the sum of the absolute values of the three integrals in
`(AFD.9)` after substituting `(AFD.10)`--`(AFD.15)`.  With Sobolev/Moser
estimates on the retained material chart, this density is bounded by a
nondecreasing polynomial expression in \(\mathcal P_N^{mat}\) and the
corresponding viscous/tower service density:

```math
\Xi_{N,\psi}(t)
\le
C_{\psi,N}\,
\mathcal Q_N\!\left(\mathcal P_N^{mat}(t)\right)
\left(
1+\mathcal S_N^{mat}(t)
\right).
\tag{AFD.17}
```

Here \(\mathcal S_N^{mat}\) is the same material service density appearing in
the smooth commutator calculation.  No pressure-only or viscosity-only
supplier is being introduced.

## 4. Consequence for the rectification clock

The rectification reduction gives, on normalized intervals \(J\),

```math
\int_J\left(D_\phi+|F_\phi|\right)ds
\le
|M_\phi(s_2)-M_\phi(s_1)|
+
2\int_JD_\phi\,ds
+
\int_J|F_\phi'|\,ds .
\tag{AFD.18}
```

By `(AFD.16)`,

```math
\int_J|F_\phi'|\,ds
\le
\int_J\Xi_{N,\psi}(s)\,ds .
\tag{AFD.19}
```

Thus the total annular stress-work clock is admitted into the same material
tower:

```math
\int_J\left(D_\phi+|F_\phi|\right)ds
\le
|M_\phi(s_2)-M_\phi(s_1)|
+
2\int_JD_\phi\,ds
+
\int_J\Xi_{N,\psi}(s)\,ds .
\tag{AFD.20}
```

The right side is entirely same-packet: storage, strain loss, and material
flux-derivative service.

## 5. What this does and does not close

This note closes one possible drift: the rectification term is not a loose
side calculation.  It is a same-packet material tower quantity.

The remaining theorem is still the unweighted terminal summability of that
same-packet service density:

```math
\sum_j\int_{J_j}\Xi_{N,\psi_j}(s)\,ds<\infty .
\tag{AFD.21}
```

That is exactly the signed smooth same-packet commutator/coercivity estimate in
flux-rectified form.

The physical meaning is direct: the outer annulus can carry later payback, and
back-and-forth payback is measured by how fast the same annular stress-work
transaction changes.  That rate of change is a full participation quantity of
the same fluid packet.  The MPP closure still requires proving that this
full participation rate cannot accumulate infinitely through the terminal
heat-scale family.
