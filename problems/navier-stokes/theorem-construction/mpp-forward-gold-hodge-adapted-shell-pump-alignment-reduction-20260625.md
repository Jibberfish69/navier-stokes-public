---
theorem_id: forward-gold-hodge-adapted-shell-pump-alignment-reduction-20260625
status: exact-principal-pump-alignment-installed; moving-constraint-commutator-remains-same-packet-service
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Proves the useful part of the moving-pump alignment bridge. If the active
  shell is read through the same incompressible/Hodge constraint, the principal
  pressure force is constraint-normal and does not feed the shell energy. The
  remaining leading low-high feed is the symmetric strain contraction
  \(h\cdot S_{<j}h\), whose positive part is bounded by the top positive
  strain eigenvalue times shell energy. Thus the principal moving pump is
  order-locked to the paid top-strain coordinate. The only surviving terms are
  the commutators created by the moving material Hodge constraint, coefficient
  frame, collar, and finite-width shell selection; these are same-packet
  coefficient/collar service, not pressure-only forcing. This reduces the live
  bridge from the whole pump to the moving-constraint commutator service.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-top-strain-storage-vs-moving-pump-alignment-check-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-weighted-material-energy-identity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625.md
---

# Hodge-Adapted Shell Pump Alignment Reduction

Date: 2026-06-25

## 0. Object

The live quantity is the same-shell positive pump in the original transported
material history.  The material equation is

```math
\partial_t v+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0.
\tag{HAS.1}
```

The earlier fixed material shell calculation wrote the interface as

```math
m_j=P_j+C_j,
\tag{HAS.2}
```

where \(P_j\) is the pressure/incompressibility/coefficient line and \(C_j\) is
the viscous coefficient commutator.  The present check asks what part of
\([m_j]_+\) is genuine feed and what part is created by using a shell that is
not adapted to the moving incompressibility constraint.

## 1. Pressure is normal to the retained constraint

At each material time, let \(\mathbb P_A\) denote the Hodge projection onto

```math
\ker\operatorname{div}_a(A\cdot).
\tag{HAS.3}
```

The pressure force is the complementary normal force enforcing `(HAS.3)`.
Therefore, for a constraint-compatible selected shell \(h_j\in
\ker\operatorname{div}_a(A\cdot)\),

```math
\langle A^\top\nabla_a q_j,h_j\rangle_{L^2_a}
=
-\langle q_j,\operatorname{div}_a(Ah_j)\rangle_{L^2_a}
=0.
\tag{HAS.4}
```

So the principal pressure line does not feed the shell.  Pressure remains in
the packet as the incompressibility force, but it is not a positive source on
the tangent shell.

For a fixed shell \(v_j=\Delta_j^av\), the same computation gives

```math
\operatorname{div}_a(Av_j)
=
\operatorname{div}_a([A,\Delta_j^a]v),
\tag{HAS.5}
```

which is exactly the coefficient/frame commutator already identified in the
moving material packet.  Thus the fixed-shell pressure feed is a measurement
error from not selecting inside the moving constraint; after correction it
becomes coefficient/frame service.

## 2. Principal low-high feed is top-strain aligned

In an Eulerian or frozen material chart where the selected high shell is
constraint-compatible, the Bony low-high term has the form

```math
\int (h_j\cdot\nabla u_{<j})\cdot h_j\,dx.
\tag{HAS.6}
```

Only the symmetric part of \(\nabla u_{<j}\) contributes:

```math
h_j\cdot\nabla u_{<j}\,h_j
=
h_j\cdot S_{<j}h_j,
\tag{HAS.7}
```

because the antisymmetric part is orthogonal to \(h_j\).

Let \(\lambda_{+,<j}\) be the positive top eigenvalue of \(S_{<j}\).  Then
pointwise,

```math
[h_j\cdot S_{<j}h_j]_+
\le
\lambda_{+,<j}|h_j|^2.
\tag{HAS.8}
```

After integrating over the transported annular shell,

```math
\left[
\int (h_j\cdot\nabla u_{<j})\cdot h_j
\right]_+
\le
\int\lambda_{+,<j}|h_j|^2 .
\tag{HAS.9}
```

This is the precise alignment statement.  The principal moving low-high pump
is not an independent pressure-time source.  It is order-locked to the
surrounding positive strain eigenvalue acting on the high-shell energy.

## 3. Subheat absorption and superheat placement

Split by the heat rate:

```math
\lambda_{+,<j}\le\delta2^{2j}
\qquad\text{or}\qquad
\lambda_{+,<j}>\delta2^{2j}.
\tag{HAS.10}
```

On the subheat region,

```math
\int\lambda_{+,<j}|h_j|^2
\le
\delta\,2^{2j}\|h_j\|_2^2,
\tag{HAS.11}
```

and high-shell viscosity absorbs this after choosing \(\delta\) small.

On the superheat region, the feed is the selected top-strain residence

```math
e_j\lambda_{+,<j}\,
\mathbf 1_{\{\lambda_{+,<j}>\delta2^{2j}\}},
\tag{HAS.12}
```

which is the coordinate handled by the signed top-strain log-storage
recombination, provided the signed shell interface and strain companion remain
order-locked in the four-body packet.

## 4. What remains after the adapted-shell correction

The full selected shell is not a naked Euclidean \(\Delta_j\) block on a fixed
constraint.  It carries:

```math
\mathbb P_A,\quad A,\quad G,\quad \phi,\quad
\text{finite-width shell selection}.
\tag{HAS.13}
```

Differentiating these objects creates the residual interface

```math
\mathcal R_j^{Hodge}
=
\mathcal R_j^{\dot A}
+\mathcal R_j^{\dot G}
+\mathcal R_j^{\dot\phi}
+\mathcal R_j^{[\Delta_j,A]}
+\mathcal R_j^{[\partial_t,\mathbb P_A]}
+\mathcal R_j^{visc,comm}.
\tag{HAS.14}
```

Each term is generated by the same material packet:

```math
\dot A=-A(\nabla_av)A,\qquad
\dot G=-2ASA^\top,\qquad
D_t\phi=0,
\tag{HAS.15}
```

plus the material pressure equation and viscous Stokes operator.  These are
coefficient/frame/collar/viscous commutator terms.  They are not a pressure-only
force and not an arbitrary terminal signal.

The resulting pump estimate is:

```math
\boxed{
[m_j]_+
\le
C\,e_j\lambda_{+,<j}\mathbf 1_{\{\lambda_{+,<j}>\delta2^{2j}\}}
+\varepsilon d_j
+[\mathcal R_j^{Hodge}]_+
+r_j^{HH}
+r_j^{legal}.
}
\tag{HAS.16}
```

Here \(r_j^{HH}\) is the already absorbed pure high-high velocity tail and
\(r_j^{legal}\) is the finite-overlap legal/collar tail.

## 5. Exact proof-state result

This closes the principal alignment part of the bridge:

```math
\boxed{
\text{principal moving shell feed}
\le
\text{paid top-strain coordinate}
+\text{viscous subheat}
+\text{paid high-high/legal tails}.
}
\tag{HAS.17}
```

The remaining part is sharply identified:

```math
\boxed{
\sum_j\int_0^{T_*}[\mathcal R_j^{Hodge}(t)]_+\,dt<\infty
}
\tag{HAS.18}
```

or the equivalent bounded-below same-packet storage for this Hodge/material
commutator.

That is smaller than the previous whole-pump statement.  The pressure force
itself has been put back into the incompressibility constraint; the surviving
work is the movement of the constraint, coefficient frame, collar, and finite
shell selector through the same original material history.
