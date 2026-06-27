---
theorem_id: forward-gold-whole-transported-packet-parabolic-rescaling-boundary-20260627
status: scale-uniform-full-packet-action-inequality-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - ReusedSameMaterialStressChannelReturnResetCharge.A
  - ForwardNativeReserveBirthPaysFullPLS.A
  - FullPacketScaleUniformActionProducer.A
attacks_hinge:
  - ScaleUniformWholePacketActionInequality.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
  - OriginalParticipationStorageCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-channel-return-service-no-recirculation-equivalence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-inherited-stress-direction-bv-quotient-compression-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-bridge-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-prelimit-left-clock-circularity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-availableparticipationentropyconstruction-a-globalsamepacketfullclockfromoriginaldata-a-a85c6d09fe.md
effect: >-
  Corrects the scale target: do not rescale individual selected readouts.
  Rescale the whole transported Navier-Stokes material packet.  In the unit
  packet variables, velocity, pressure, material map, metric, incompressibility,
  Hodge/stress tests, and collar motion obey the same material system with the
  same viscosity.  Gold closes only if the full packet admits a lower-bounded
  action inequality with constants independent of the packet scale.  This is a
  sharper form of the missing original-history reserve/storage theorem, not a
  proof of it.  Partial, not Gold closed.
---

# Whole transported packet parabolic rescaling boundary

The scale correction is to rerun the proof on the whole transported material
packet, not to renormalize the selected scalar readouts one at a time.  The
entire pressure-viscosity-incompressibility-velocity packet has the Navier-
Stokes scaling.

## 1. Eulerian packet scaling

Fix a packet centered at \((x_0,t_0)\) with spatial scale \(r\).  Set

```math
y={x-x_0\over r},
\qquad
s={t-t_0\over r^2},
\tag{1}
```

and

```math
U(y,s)=r\,u(x_0+ry,t_0+r^2s),
\qquad
P(y,s)=r^2p(x_0+ry,t_0+r^2s).
\tag{2}
```

Then \(U,P\) solve the same equation with the same viscosity:

```math
\partial_sU+U\cdot\nabla_yU+\nabla_yP
=
\nu\Delta_yU,
\qquad
\nabla_y\cdot U=0.
\tag{3}
```

The point is that the whole coupled packet is invariant.  Pressure is not being
scaled as an external source, and viscosity is not being changed.

## 2. Material packet scaling

Let

```math
X^{(r)}(\alpha,s)
=
{X(a_0+r\alpha,t_0+r^2s)-x_0\over r}.
\tag{4}
```

Pull the material variables back to \((\alpha,s)\):

```math
V^{(r)}(\alpha,s)=r\,V(a_0+r\alpha,t_0+r^2s),
\qquad
Q^{(r)}(\alpha,s)=r^2Q(a_0+r\alpha,t_0+r^2s).
\tag{5}
```

Since \(D_\alpha X^{(r)}=D_aX\), the material inverse deformation and metric are
unchanged as tensors on the rescaled packet:

```math
A^{(r)}=A,
\qquad
G^{(r)}=G,
\tag{6}
```

pulled back to \((\alpha,s)\).  Consequently the whole material Navier-Stokes
system is identical:

```math
\partial_s V^{(r)}
+(A^{(r)})^T\nabla_\alpha Q^{(r)}
=
\nu\,\operatorname{div}_\alpha
\bigl(G^{(r)}\nabla_\alpha V^{(r)}\bigr),
\qquad
D_{A^{(r)}}V^{(r)}=0.
\tag{7}
```

The same stopped Hodge lift, divergence-free stress testing, material
connection motion, collar motion, and inherited/fresh stress-channel split must
therefore be read on the rescaled unit packet.

## 3. Correct scale-uniform closure statement

For each rescaled stopped packet, the desired theorem is a normalized full
packet action inequality

```math
d\mathfrak A^{(r)}
+c\,d\Omega^{(r)}
\le
dR^{(r)},
\qquad
\mathfrak A^{(r)}\ge -C_N(u_0),
\tag{8}
```

where \(d\Omega^{(r)}\) is the full pressure-viscosity-incompressibility-
velocity material action of the rescaled packet:

```math
d\Omega^{(r)}
=
d\Omega^{(r)}_{\rm fresh}
+d\Omega^{(r)}_{\rm reuse}
+d\Omega^{(r)}_{\rm reset}
+d\Omega^{(r)}_{\rm collar}
+d\Omega^{(r)}_{\rm legal/stop}.
\tag{9}
```

The constant in `(8)` must be independent of \(r\).  Any hidden dependence on
the original packet scale is exactly the heat-scale gap.

In inherited-channel notation, the reused part of `(8)` is the scale-uniform
version of

```math
\operatorname{Rec}(\Psi^{(r)})
+V_-(\Psi^{(r)})
\le
C_N(u_0)+R_{\rm legal}^{(r)}+Stop^{(r)}.
\tag{10}
```

Equivalently, the unit-packet theorem must supply a forward native reserve
assignment

```math
\iota^{(r)}:\Gamma_N^{reuse}(P^{(r)})
\to
\mathcal R_N^{reuse,nat}(u_0;P^{(r)}),
\tag{11}
```

with

```math
\omega_\gamma^{(r)}
\le
C_N\rho_{\iota^{(r)}(\gamma)}
+R_{\rm legal}^{(r)}(\gamma)
+Stop^{(r)}(\gamma),
\qquad
\operatorname{mult}(\iota^{(r)})\le C_N,
\tag{12}
```

and a scale-uniform reserve total

```math
\sum_{\rho\in\mathcal R_N^{reuse,nat}(u_0;P^{(r)})}\rho
\le
C_N(u_0)\mathcal R(P^{(r)})
+R_{\rm legal}^{(r)}(P^{(r)})
+Stop^{(r)}(P^{(r)}).
\tag{13}
```

## 4. Why this is stronger than scalar normalization

Normalizing a selected readout can make a single burst look unit-size, but it
does not preserve the whole participation law.  It can separate the scalar
reading from the pressure constraint, metric motion, collar motion, reset,
fresh Bessel part, and inherited reused-channel BV.

Parabolic rescaling of the entire transported packet preserves those objects at
once.  The proof then has only one possible pass/fail point: whether `(8)` is
available with constants independent of \(r\).

The heat-scale counterprofile says why this is necessary.  Raw energy can have

```math
\sum_m \ell_m<\infty
\tag{14}
```

while the normalized packet clock has

```math
\sum_m 1=\infty .
\tag{15}
```

Scale-uniform `(8)` would rule this out because every rescaled packet would pay
one unit from the same original-history reserve/storage ledger.  Without `(8)`,
the rescaling is only a faithful restatement of the critical obstruction.

## 5. Consequence if the packet inequality is proved

Assume `(8)` holds for the stopped packet family with the existing
finite-overlap stop/legal accounting.  Summing over rescaled packets gives

```math
\sum_{P^{(r)}}\int d\Omega^{(r)}
\le
C_N(u_0)+R_{\rm legal}+Stop.
\tag{16}
```

The installed consumers then give finite selected critical action, finite
routed-current/full same-material clock, bounded continuation-depth material
record, and the standard \(H^s\) continuation past a finite terminal time.

Thus the scale move is exactly right as a normalization principle.  The
remaining theorem is the scale-uniform lower-bounded full-packet action
inequality `(8)`, proved from the original Navier-Stokes law without importing
the downstream full material clock.

Gold remains partial, not closed.
