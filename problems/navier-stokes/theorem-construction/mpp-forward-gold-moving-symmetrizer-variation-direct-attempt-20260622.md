---
theorem_id: forward-gold-moving-symmetrizer-variation-direct-attempt-20260622
status: frozen-symmetrizer-lift-reduces-to-same-packet-sigma-variation-clock
logical_landing_node: simultaneous_material_fourbody_packet_coercivity
edge_effect: >-
  Tests whether the frozen quotient symmetrizer can be lifted to the moving
  log-scale terminal packet. The exact derivative shows the only new term is
  <U,partial_sigma H_sigma U>. Differentiating the frozen Lyapunov equation
  gives L^*(partial_sigma H)+(partial_sigma H)L = -partial_sigma W
  -(partial_sigma L)^*H-H(partial_sigma L). Thus the moving lift works only if
  the sigma-variation of the frozen operator and readout is itself carried by
  the same material packet clock or by a summable residual. Fixed terminal
  gauge and mixed-tower scale evolution identify where those variation terms
  live, but current inputs do not prove their endpoint summability or
  absorption independently. Therefore the spectral route closes exactly under
  the same variation clause contained in SimultaneousMaterialFourBodyPacketCoercivity.A.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frozen-quotient-spectral-stability-equivalence-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossscale-material-compactness-evolution-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossscale-material-atlas-fixed-terminal-gauge-solution-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-single-pure-gold-wall-after-retained-branch-closure-20260622.md
---

# Moving Symmetrizer Variation Direct Attempt

Date: 2026-06-22

## 0. Point

The frozen quotient theorem gives a possible symmetrizer \(H_\sigma\) at one
log-scale.  The terminal packet moves in \(\sigma\).  The exact question is
whether

```math
\mathfrak L_\sigma(\mathfrak U_\sigma)
:=
\langle \mathfrak U_\sigma,H_\sigma\mathfrak U_\sigma\rangle
\tag{MSV.1}
```

has the same one-sided four-body drop along the moving terminal family.

The only new term is

```math
\langle \mathfrak U_\sigma,
(\partial_\sigma H_\sigma)\mathfrak U_\sigma\rangle .
\tag{MSV.2}
```

So the moving-lift theorem is exactly a same-packet variation theorem for
\(\partial_\sigma H_\sigma\).

## 1. Frozen identity

On the retained gauge quotient, suppose the frozen packet has

```math
\partial_t Z=\mathcal L_\sigma Z
\tag{MSV.3}
```

and full same-packet readout

```math
\mathcal W_\sigma
\simeq
A_{4B,N}
+D_{4B,N}
+{d\mathfrak C_N\over d\sigma}.
\tag{MSV.4}
```

If the frozen quotient is stable, the Lyapunov operator satisfies

```math
\mathcal L_\sigma^*H_\sigma
+H_\sigma\mathcal L_\sigma
=
-\mathcal W_\sigma .
\tag{MSV.5}
```

This is the frozen form of the desired four-body sign.

## 2. Moving storage derivative

Along the actual log-scale packet

```math
\partial_\sigma\mathfrak U_\sigma
=
\mathcal L_\sigma\mathfrak U_\sigma
+\mathcal N_\sigma(\mathfrak U_\sigma)
+\mathcal R_\sigma ,
\tag{MSV.6}
```

differentiate `(MSV.1)`:

```math
\begin{aligned}
{d\over d\sigma}
\langle \mathfrak U_\sigma,H_\sigma\mathfrak U_\sigma\rangle
={}&
\left\langle\mathfrak U_\sigma,
\left(
\mathcal L_\sigma^*H_\sigma
+H_\sigma\mathcal L_\sigma
\right)
\mathfrak U_\sigma
\right\rangle\\
&+
\left\langle\mathfrak U_\sigma,
(\partial_\sigma H_\sigma)\mathfrak U_\sigma
\right\rangle\\
&+
2\operatorname{Re}
\langle H_\sigma\mathfrak U_\sigma,
\mathcal N_\sigma(\mathfrak U_\sigma)\rangle
+R_\sigma .
\end{aligned}
\tag{MSV.7}
```

Using `(MSV.5)` gives

```math
{d\over d\sigma}\mathfrak L_\sigma
+\mathcal W_\sigma(\mathfrak U_\sigma)
\le
\left\langle\mathfrak U_\sigma,
(\partial_\sigma H_\sigma)\mathfrak U_\sigma
\right\rangle
+\mathcal N_{4B,\sigma}
+R_\sigma .
\tag{MSV.8}
```

The nonlinear term \(\mathcal N_{4B,\sigma}\) is not outside the route; it is
the factorial-weighted same-packet nonlinear tower already included in
\(A_{4B,N}\), \(D_{4B,N}\), and \(d\mathfrak C_N\).  The genuinely new moving
term is `(MSV.2)`.

## 3. Exact equation for \(\partial_\sigma H_\sigma\)

Differentiate the frozen Lyapunov equation `(MSV.5)`:

```math
(\partial_\sigma\mathcal L_\sigma)^*H_\sigma
+\mathcal L_\sigma^*(\partial_\sigma H_\sigma)
+(\partial_\sigma H_\sigma)\mathcal L_\sigma
+H_\sigma(\partial_\sigma\mathcal L_\sigma)
=
-\partial_\sigma\mathcal W_\sigma .
\tag{MSV.9}
```

Thus

```math
\boxed{
\mathcal L_\sigma^*(\partial_\sigma H_\sigma)
+(\partial_\sigma H_\sigma)\mathcal L_\sigma
=
-\partial_\sigma\mathcal W_\sigma
-(\partial_\sigma\mathcal L_\sigma)^*H_\sigma
-H_\sigma(\partial_\sigma\mathcal L_\sigma).
}
\tag{MSV.10}
```

If the frozen quotient stability gap is uniform, the Lyapunov inverse is
bounded.  Therefore `(MSV.10)` gives the estimate

```math
\|\partial_\sigma H_\sigma\|
\le
C_\gamma
\left(
\|\partial_\sigma\mathcal W_\sigma\|
+\|\partial_\sigma\mathcal L_\sigma\|\,\|H_\sigma\|
\right).
\tag{MSV.11}
```

This is only useful when the right side is a same-packet clock density or a
summable residual.

## 4. The required variation domination

The moving symmetrizer gives the desired terminal inequality provided

```math
\boxed{
\left|
\left\langle\mathfrak U_\sigma,
(\partial_\sigma H_\sigma)\mathfrak U_\sigma
\right\rangle
\right|\,d\sigma
\le
\varepsilon\,\mathcal W_\sigma(\mathfrak U_\sigma)\,d\sigma
+C_\varepsilon\,d\mathfrak C_N^{var}
+dR_{4B,N}.
}
\tag{MSV.12}
```

Here

```math
d\mathfrak C_N^{var}
\tag{MSV.13}
```

must be a component of the same unified terminal clock \(d\mathfrak C_N\), not
an outside account.  If `(MSV.12)` holds with \(\varepsilon\) small, then
`(MSV.8)` becomes

```math
d\mathfrak L_{4B,N}
+c\,d\mathfrak C_N
+d\mathcal L_{4B,N}
\le
dR_{4B,N}.
\tag{MSV.14}
```

This is exactly `SimultaneousMaterialFourBodyPacketCoercivity.A`.

## 5. Where the variation terms come from

The cross-scale material calculation already identifies the fixed-terminal
gauge derivative:

```math
\partial_\sigma V_\sigma
=
-V_\sigma-y\cdot\nabla V_\sigma
-2s\,\partial_sV_\sigma ,
\tag{MSV.15}
```

and, using Navier--Stokes,

```math
\partial_\sigma V_\sigma
=
-V_\sigma-y\cdot\nabla V_\sigma
+2s\left(
(V_\sigma\cdot\nabla)V_\sigma
+\nabla Q_\sigma
-\nu\Delta V_\sigma
\right).
\tag{MSV.16}
```

For pressure,

```math
\partial_\sigma Q_\sigma
=
-2Q_\sigma-y\cdot\nabla Q_\sigma-2s\,\partial_sQ_\sigma,
\tag{MSV.17}
```

with \(\partial_sQ_\sigma\) determined by the differentiated pressure Poisson
law.  So fixed-terminal-gauge \(\partial_\sigma\mathcal L_\sigma\) and
\(\partial_\sigma\mathcal W_\sigma\) are generated by the same mixed
pressure-viscosity-incompressibility-velocity tower.

The material label law is also fixed-gauge:

```math
\partial_\sigma Y_\sigma
=
\nabla_yY_\sigma(-y+2sV_\sigma).
\tag{MSV.18}
```

Thus fixed-terminal-gauge atlas variation is not external.  It is a material
frame/velocity channel.

## 6. What is still not produced

The identities `(MSV.15)`--`(MSV.18)` locate the variation.  They do not prove
the endpoint estimate `(MSV.12)`.

The missing production statement is:

```math
\boxed{
\partial_\sigma\mathcal L_\sigma
\text{ and }
\partial_\sigma\mathcal W_\sigma
\text{ are controlled by the same }d\mathfrak C_N
\text{ and }dR_{4B,N}.
}
\tag{MSV.19}
```

Expanded, this says that positive sigma-variation of:

```math
\text{mixed velocity-pressure tower coefficients,}
\tag{MSV.20}
```

```math
\text{material metric/frame coefficients,}
\tag{MSV.21}
```

```math
\text{pressure trace and harmonic-memory readout,}
\tag{MSV.22}
```

```math
\text{selector/collar/sign/orientation records,}
\tag{MSV.23}
```

and

```math
\text{the full readout }\mathcal W_\sigma
\tag{MSV.24}
```

must be retained as same-packet clock, strict loss, or summable residual.

That is the same content already named by \(d\mathfrak C_N\).  No new
external supplier appears.

## 7. Direct attempt result

The frozen symmetrizer route closes the moving terminal branch only under the
variation domination `(MSV.12)`.

Equivalently:

```math
\boxed{
\text{frozen quotient stability}
+\text{same-packet }\sigma\text{-variation domination}
\Longrightarrow
\text{simultaneous material four-body coercivity.}
}
\tag{MSV.25}
```

Current inputs prove the exact formulas for the fixed-terminal-gauge variation,
but they do not prove `(MSV.12)` from original smooth data.

So the spectral route and the direct four-body route have the same live wall:

```math
\boxed{
\text{the moving material packet must carry its own }\sigma\text{-variation
as }d\mathfrak C_N\text{ or }dR_{4B,N}.
}
\tag{MSV.26}
```

Failure of `(MSV.26)` is loss of the same-material participation record, not a
hidden endpoint pulse inside a retained packet.
