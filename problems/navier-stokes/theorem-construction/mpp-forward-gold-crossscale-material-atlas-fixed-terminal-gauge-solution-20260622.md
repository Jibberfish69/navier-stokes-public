---
theorem_id: forward-gold-crossscale-material-atlas-fixed-terminal-gauge-solution-20260622
status: retained-branch-center-time-modulation-absorbed-by-fixed-terminal-gauge-label-collar-stabilization-remains-visible
logical_landing_node: crossscale_material_atlas_compatibility
edge_effect: >-
  Solves the center/time modulation part of CrossScaleMaterialAtlasCompatibility.A
  on the retained terminal branch. Fix the terminal gauge (T*,x*) and rescale
  every packet by V_r(s,y)=r u(T*+r^2s,x*+ry). Then dot T and dot x vanish in
  the cross-scale label law. A moving packet center/time becomes only a
  rescaled translation (tau_m,a_m)=((t_m-T*)/r_m^2,(x_m-x*)/r_m). Bounded
  translations are exactly part of the C_N material time/space translation
  modulus; unbounded translations are loss of the retained same-packet atlas,
  not a hidden same-packet term. Label/sign/collar/selector variation is already
  handled by selector-collar stabilization as visible packet variation or
  eventual stabilization. Thus the retained-branch atlas compatibility is
  reduced to fixed terminal gauge plus C_N translation moduli, and the live
  simultaneous-packet obstruction returns to the bounded-below instantaneous
  X_SQ, X_QC, X_CG, X_GS construction.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossscale-material-atlas-compatibility-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossscale-material-compactness-evolution-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-compactness-collar-stabilization-solution-20260621.md
---

# Cross-Scale Material Atlas Fixed-Terminal-Gauge Solution

Date: 2026-06-22

## 0. Point

The moving-atlas calculation found the exact label law

```math
\partial_\sigma Y_\sigma
=
\nabla_yY_\sigma
\left(
-y+2sV_\sigma
+r_\sigma^{-1}\dot x_\sigma
-r_\sigma^{-2}\dot T_\sigma V_\sigma
\right).
\tag{FTG.1}
```

The modulation terms are not intrinsic to the fluid packet.  They are produced
by letting the microscope center and terminal time move with \(\sigma\).

On a terminal-point branch, use the fixed terminal gauge instead.

## 1. Fixed terminal gauge

Fix the terminal point \((T^\ast,x^\ast)\).  For every radius \(r=e^{-\sigma}\),
write

```math
V_\sigma(s,y)
=
r\,u(T^\ast+r^2s,x^\ast+ry),
\qquad
Q_\sigma(s,y)
=
r^2p(T^\ast+r^2s,x^\ast+ry).
\tag{FTG.2}
```

Then

```math
\dot T_\sigma=0,
\qquad
\dot x_\sigma=0.
\tag{FTG.3}
```

So `(FTG.1)` becomes

```math
\boxed{
\partial_\sigma Y_\sigma
=
\nabla_yY_\sigma(-y+2sV_\sigma).
}
\tag{FTG.4}
```

This is already a same-packet \(G_N/Q_N\) term: \(\nabla_yY_\sigma\) is the
material frame and \(V_\sigma\) is the velocity coordinate.

Thus center/time modulation is removed from the retained terminal branch by
using the terminal point as the gauge.

## 2. What happened to moving packets

Suppose an active packet had been written with center/time

```math
(t_m,x_m,r_m).
\tag{FTG.5}
```

In the fixed terminal gauge `(FTG.2)`, this packet is represented by the
rescaled translation

```math
\tau_m={t_m-T^\ast\over r_m^2},
\qquad
a_m={x_m-x^\ast\over r_m}.
\tag{FTG.6}
```

If \((\tau_m,a_m)\) is bounded, pass to a subsequence:

```math
(\tau_m,a_m)\to(\tau_\ast,a_\ast).
\tag{FTG.7}
```

Then the moving packet is just a bounded material time/space translate inside
the fixed terminal-gauge packet.  That is exactly what \(C_N\) records through
the material translation moduli

```math
\sup_{|\xi|\le\ell}\|\delta_\xi^a Z_N^{mix}\|,
\qquad
\sup_{|\tau|\le\delta}\|\delta_\tau^s Z_N^{mix}\|.
\tag{FTG.8}
```

So bounded moving centers/times do not create a new atlas defect. They are
absorbed by the already-built \(C_N\) coordinate.

If \((\tau_m,a_m)\) is unbounded, then the moving active packet has no retained
common heat-scale location in the fixed terminal gauge.  That is not a hidden
same-packet term.  It is loss of the retained cross-scale packet itself, the
failure that \(C_N\) is designed to record.

## 3. Labels, signs, collars, and selectors

Use a label cutoff transported from the fixed terminal-gauge material labels:

```math
\zeta_\sigma(s,y)=\zeta_0(Y_\sigma(s,y)).
\tag{FTG.9}
```

Then

```math
\partial_\sigma\zeta_\sigma
=
(\nabla_a\zeta_0)(Y_\sigma)\cdot
\nabla_yY_\sigma(-y+2sV_\sigma),
\tag{FTG.10}
```

again inside the same \(G_N/Q_N\) packet.

For finite or compact selector/collar families, the selector-collar
stabilization theorem supplies the remaining dichotomy:

```math
\text{variation visible in the packet}
\quad\text{or}\quad
\text{eventual stabilization.}
\tag{FTG.11}
```

On the stabilized branch, labels, signs, tests, cutoffs, and collars are fixed
for the terminal tail.  On the visible-variation branch, the variation is
already a same-packet four-body channel.

## 4. Retained-branch compatibility result

On the retained terminal branch, the cross-scale atlas can therefore be taken
in fixed terminal gauge:

```math
T_\sigma=T^\ast,\qquad x_\sigma=x^\ast,
\tag{FTG.12}
```

with bounded moving-packet offsets absorbed by the \(C_N\) translation moduli
and selector/collar variation handled by the stabilization theorem.

Thus

```math
\boxed{
\texttt{CrossScaleMaterialAtlasCompatibility.A}
\text{ holds on the retained same-packet branch.}
}
\tag{FTG.13}
```

The exact meaning is:

```math
d_\sigma L_C
\text{ differentiates one fixed-terminal-gauge material packet,}
\tag{FTG.14}
```

not a sequence of unrelated moving microscopes.

## 5. What remains

After fixed terminal gauge, the \(C_N\)-side of the simultaneous packet is no
longer the live obstruction on the retained branch.

The live construction is back to the four instantaneous cross-terms:

```math
X_{SQ},\qquad X_{QC},\qquad X_{CG},\qquad X_{GS}.
\tag{FTG.15}
```

They must be bounded below and must cancel the adjacent exchange mismatches
when differentiating the whole packet.  That is the remaining installation of
`SimultaneousMaterialFourBodyPacketCoercivity.A`.
