---
theorem_id: forward-gold-heat-scale-shrinking-resolution-on-retained-atlas-20260622
status: retained-atlas-heat-scale-shrinking-counting-solved-material-record-noexit-separate
logical_landing_node: heat_scale_shrinking_resolution_on_retained_atlas
edge_effect: >-
  Solves the heat-scale shrinking pulse as a shrinking-scale counting problem
  on the retained transported material annular atlas. The radius is not removed:
  each packet is rescaled at radius r_m, its transported annulus carries the
  same stress/strain law, the center time/storage overlap is bounded by the
  transported annular carrier C_m, and C_m is admitted into the annular part of
  A_4B. Bounded overlap of the transported dyadic atlas then forbids infinitely
  many heat-scale pulses with a fixed lower bound. This does not prove the
  separate pure-gold no-exit theorem that original smooth data must retain the
  material strain-metric/coefficient/tower record up to the terminal face.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-overlap-nojump-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-material-annular-return-attachment-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
---

# Heat-Scale Shrinking Resolution On The Retained Atlas

Date: 2026-06-22

## 0. Point

The heat-scale radius is part of the object.  For every terminal scale
\(r_m\), work with

```math
V_m(s,y)=r_m u(t_m+r_m^2s,x_m+r_my),
\qquad
Q_m(s,y)=r_m^2p(t_m+r_m^2s,x_m+r_my).
\tag{HSR.1}
```

The shrinking problem is not solved by replacing \(r_m\) with a fixed physical
radius.  It is solved on the retained branch by transporting the annular layer
belonging to that same heat-scale packet.

## 1. The center overlap is controlled by the transported annulus

Let \(\phi_m=\eta_m^2\) be a transported annular cutoff:

```math
(\partial_s+V_m\cdot\nabla_y)\phi_m=0.
\tag{HSR.2}
```

Let

```math
M_m(s)=\int {1\over2}|V_m(s,y)|^2\phi_m(s,y)\,dy .
\tag{HSR.3}
```

Using the stress tensor

```math
T_m=-Q_mI+2\nu S_y(V_m),
\tag{HSR.4}
```

the exact localized material identity is

```math
{d\over ds}M_m(s)
+
2\nu\int\phi_m|S_y(V_m)|^2\,dy
=
-\int V_m\cdot T_m\nabla\phi_m\,dy .
\tag{HSR.5}
```

Therefore

```math
\left[-{d\over ds}M_m(s)\right]_+
\le
2\nu\int\phi_m|S_y(V_m)|^2\,dy
+
\left|\int V_m\cdot T_m\nabla\phi_m\,dy\right|.
\tag{HSR.6}
```

Define the transported annular carrier density

```math
C_m(s)
:=
2\nu\int\phi_m|S_y(V_m)|^2\,dy
+
\left|\int V_m\cdot T_m\nabla\phi_m\,dy\right|.
\tag{HSR.7}
```

For the order-locked time/storage overlap \(\nu_m^{ol}\), the terminal-overlap
calculation gives

```math
\boxed{
\nu_m^{ol}(I)
\le
\int_I C_m(s)\,ds .
}
\tag{HSR.8}
```

So the center time-face pulse is not a private center object on the retained
branch.  It is bounded by the same heat-scale transported annular stress/strain
carrier.

## 2. The transported annular carrier is an \(A_{4B}\) channel

Split \(Q_m=Q_m^{loc}+Q_m^H\).  With \(\phi_m=\eta_m^2\),

```math
C_m(s)
\le
3\nu\int\phi_m|S_y(V_m)|^2\,dy
+
\left|\int Q_m^H V_m\cdot\nabla\phi_m\,dy\right|
+
\left|\int Q_m^{loc} V_m\cdot\nabla\phi_m\,dy\right|
+
4\nu\int |V_m|^2|\nabla\eta_m|^2\,dy .
\tag{HSR.9}
```

These are the annular pieces of the same pressure-viscosity-incompressibility-
velocity packet:

```math
\boxed{
C_m(s)\le C\,A_{4B,m}^{ann}(s)
}
\tag{HSR.10}
```

on the retained transported annular atlas.  The coefficient \(4\nu\) in the
last term is only the Young-inequality envelope for the cutoff-collar channel;
the packet-level channel is \(\nu |V_m|^2|\nabla\eta_m|^2\).

## 3. Bounded-overlap counting solves the shrinking stack

Let \(I_j\) be terminal heat-time intervals for a retained subsequence, and let
\(J_j\) be their log-scale images.  The transported dyadic material atlas has
bounded overlap:

```math
\sum_j{\bf 1}_{J_j}(\sigma)\le K .
\tag{HSR.11}
```

Combining `(HSR.8)`--`(HSR.10)` gives

```math
\sum_j\nu_{m_j}^{ol}(I_j)
\le
C\sum_j\int_{J_j}A_{4B}(\sigma)\,d\sigma
\le
CK\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma .
\tag{HSR.12}
```

The four-body loop gives

```math
\int_{\sigma_0}^{\infty}A_{4B}(\sigma)\,d\sigma<\infty .
\tag{HSR.13}
```

Thus infinitely many shrinking heat-scale pulses with a fixed lower overlap
mass cannot occur on the retained transported annular atlas:

```math
\nu_{m_j}^{ol}(I_j)\ge a_0>0
\quad\text{for infinitely many }j
\tag{HSR.14}
```

would force the left side of `(HSR.12)` to diverge while the right side is
finite.

## 4. What remains separate

This resolves the heat-scale shrinking/counting problem on the retained atlas:
the shrinking radius remains in `(HSR.1)`, the annular return remains in the
same heat-scale clock, and the fixed lower pulse cannot repeat infinitely often
after admission into \(A_{4B}\).

The separate pure-gold theorem is not `(HSR.12)`.  It is the no-exit theorem for
the material record itself:

```math
\boxed{
\text{original smooth data retains the heat-scale material
strain-metric/coefficient/tower record up to the terminal face.}
}
\tag{HSR.15}
```

That record survival theorem is the material-clock / same-packet Part problem.
It should not be renamed as the heat-scale shrinking problem after `(HSR.12)`.
