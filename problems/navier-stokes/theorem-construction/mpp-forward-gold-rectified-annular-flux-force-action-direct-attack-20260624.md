---
theorem_id: forward-gold-rectified-annular-flux-force-action-direct-attack-20260624
status: exact-direct-attack-reduces-missing-clock-to-force-action-full-packet-estimate
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Attacks the remaining object directly: the gauge-reduced rectified annular
  stress-work clock. Differentiating the same-fluid annular flux gives a
  force-action density made of material acceleration, reduced stress,
  pressure-time service, strain-time service, and cubic transport. This density
  is exactly inside the full pressure-viscosity-incompressibility-velocity
  packet, not a side readout. The attempt proves the sharp reduction:
  smoothness follows once the original-data terminal family has finite
  unweighted force-action clock. The note also proves that ordinary
  energy/dissipation cannot supply this clock because the force-action density
  is scale-critical while energy is radius-discounted.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-gauge-quotient-correction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-layer-averaged-flux-derivative-energy-bound-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
---

# Rectified Annular Flux Force-Action Direct Attack

Date: 2026-06-24

## 0. Object

The physical object is still one rising/thinning terminal spike and the same
fluid outer annulus that carries the later stress/strain return.  The exact
annular quantity is the gauge-reduced transported stress-work flux

```math
F_\phi^\sharp(s)
=
\int U_iT^\sharp_{ij}\partial_j\phi\,dy,
\qquad
T^\sharp=-PI+2\nu S(U),
\tag{RAF.1}
```

where \(U\) is the velocity after subtracting the local Galilean mode, \(P\)
is the pressure after subtracting the affine pressure gauge, and

```math
(\partial_s+V\cdot\nabla)\phi=0.
\tag{RAF.2}
```

The missing terminal clock is

```math
\sum_m\int_{J_m}
\left|{d\over ds}F_{\phi_m}^{\sharp}(s)\right|\,ds
<\infty
\tag{RAF.3}
```

on the selected shrinking heat-scale family with bounded same-material overlap.

This note attacks `(RAF.3)` directly.

## 1. Exact differentiated flux identity

Let

```math
D_s=\partial_s+V\cdot\nabla .
\tag{RAF.4}
```

The reduced variables obey

```math
D_sU=\nabla\cdot T^\sharp,
\qquad
\nabla\cdot U=0
\tag{RAF.5}
```

after the harmless affine/Galilean gauge is removed.  Since \(\phi\) is
transported,

```math
D_s\nabla\phi=-(\nabla V)^T\nabla\phi .
\tag{RAF.6}
```

Therefore

```math
\begin{aligned}
{d\over ds}F_\phi^\sharp
= {}&
\int (\nabla\cdot T^\sharp)_iT^\sharp_{ij}\partial_j\phi\,dy \\
&+
\int U_i(D_sT^\sharp_{ij})\partial_j\phi\,dy \\
&-
\int U_iT^\sharp_{ij}(\partial_jV_k)(\partial_k\phi)\,dy .
\end{aligned}
\tag{RAF.7}
```

This identity is the exact full-packet differentiation.  It contains no
detached center-only term.

Define the force-action density

```math
\begin{aligned}
\mathcal A_\phi^{FA}(s)
:={}&
\int_{\operatorname{collar}\phi}
|\nabla\cdot T^\sharp|\,|T^\sharp|\,|\nabla\phi|\,dy \\
&+
\int_{\operatorname{collar}\phi}
|U|\,|D_sT^\sharp|\,|\nabla\phi|\,dy \\
&+
\int_{\operatorname{collar}\phi}
|U|\,|T^\sharp|\,|\nabla V|\,|\nabla\phi|\,dy .
\end{aligned}
\tag{RAF.8}
```

Then the direct domination is

```math
\boxed{
\left|{d\over ds}F_\phi^\sharp(s)\right|
\le
\mathcal A_\phi^{FA}(s).
}
\tag{RAF.9}
```

Thus the terminal no-Zeno clock follows from the full same-packet
force-action theorem

```math
\boxed{
\sum_m\int_{J_m}\mathcal A_{\phi_m}^{FA}(s)\,ds<\infty .
}
\tag{RAF.10}
```

This is not a new proxy.  It is the absolute derivative of the same annular
stress/strain transaction.

## 2. Pressure-viscosity-incompressibility closure of the density

Every term in `(RAF.8)` is closed by the same coupled packet.

The force term is the material acceleration:

```math
\nabla\cdot T^\sharp=D_sU .
\tag{RAF.11}
```

The stress is pressure plus viscous strain:

```math
T^\sharp=-PI+2\nu S(U).
\tag{RAF.12}
```

The stress-time term is

```math
D_sT^\sharp
=
-(D_sP)I
+2\nu D_sS(U),
\tag{RAF.13}
```

with

```math
D_sS(U)
=
\operatorname{sym}\nabla(D_sU)
-
\operatorname{sym}\big((\nabla V)(\nabla U)\big).
\tag{RAF.14}
```

The pressure service is tied by the elliptic pressure law

```math
-\Delta P=\partial_iU_j\,\partial_jU_i
\tag{RAF.15}
```

up to the affine harmonic gauge already removed, and differentiating gives

```math
-\Delta(D_sP)
=
D_s(\partial_iU_j\,\partial_jU_i)
+[\Delta,D_s]P .
\tag{RAF.16}
```

The commutator in `(RAF.16)` contains the same velocity-gradient and pressure
tower terms:

```math
[\Delta,D_s]P
=
2(\partial_iV_k)\partial_{ik}P
+(\Delta V_k)\partial_kP .
\tag{RAF.17}
```

So `(RAF.8)` is exactly a pressure-viscosity-incompressibility-velocity
force-action density on the same transported annulus.

## 3. Why ordinary energy cannot bound this density

The ordinary local energy ledger controls

```math
\|V\|_{L_s^\infty L_y^2}^2
+
\nu\|\nabla V\|_{L^2_{s,y}}^2
\tag{RAF.18}
```

on normalized packets only with the terminal radius discount when summed over
shrinking physical scales.

The force-action density contains the scale-critical products

```math
|\nabla\cdot T^\sharp|\,|T^\sharp|,
\qquad
|U|\,|D_sT^\sharp|,
\qquad
|U|\,|T^\sharp|\,|\nabla V|.
\tag{RAF.19}
```

These are one derivative higher than the energy ledger, and after heat scaling
they remain unit-sized for a genuine terminal heat-scale event.  In physical
variables the first term has the scaling form

```math
\int_{J_r}\int_{\operatorname{collar}}
|\nabla_y\cdot T_r^\sharp|\,|T_r^\sharp|\,dy\,ds
=
r
\int_{Q_r^{collar}}
|\nabla_x\cdot T_x^\sharp|\,|T_x^\sharp|\,dx\,dt .
\tag{RAF.20}
```

Thus a self-similar heat-scale force-action event with

```math
|\nabla_x u|\sim r^{-2},
\qquad
|T_x^\sharp|\sim r^{-2},
\qquad
|\nabla_x\cdot T_x^\sharp|\sim r^{-3}
\tag{RAF.21}
```

has

```math
r
\int_{Q_r^{collar}}
|\nabla_x\cdot T_x^\sharp|\,|T_x^\sharp|\,dx\,dt
\sim 1.
\tag{RAF.22}
```

The physical energy inequality sees only the lower-order radius-discounted
quantity.  It does not force

```math
\sum_m\int_{J_m}\mathcal A_{\phi_m}^{FA}(s)\,ds<\infty .
\tag{RAF.23}
```

## 4. The exact theorem that would close the route

The missing theorem can now be stated without proxy language:

```math
\boxed{
\texttt{OriginalDataRectifiedAnnularForceActionClock.A}
}
\tag{RAF.24}
```

For every selected same-material terminal heat-scale family generated by one
smooth Navier--Stokes solution from original smooth finite-energy data,

```math
\boxed{
\sum_m\int_{J_m}\mathcal A_{\phi_m}^{FA}(s)\,ds<\infty .
}
\tag{RAF.25}
```

Equivalently,

```math
\boxed{
\sum_m\int_{J_m}
\left|{d\over ds}F_{\phi_m}^{\sharp}(s)\right|\,ds
<\infty .
}
\tag{RAF.26}
```

Then the installed chain gives:

```math
\texttt{OriginalDataRectifiedAnnularForceActionClock.A}
\Longrightarrow
\texttt{GlobalSamePacketFullClockFromOriginalData.A}
\Longrightarrow
\texttt{UniformTerminalZenoAnnularReturn.A}
\Longrightarrow
\texttt{MaterialClockToFixedHsContinuationReadout.A}
\Longrightarrow
\text{no finite-time breakdown.}
\tag{RAF.27}
```

## 5. Exact proof state

The direct attack proves the identity and the exact full-packet reduction:

```math
\left|{d\over ds}F_\phi^\sharp\right|
\le
\mathcal A_\phi^{FA}.
\tag{RAF.28}
```

It does not prove `(RAF.25)` from the currently installed original-data
inputs.  The remaining hard statement is now precisely the finite unweighted
force-action clock `(RAF.25)`.  That statement is the missing same-packet
four-body coercivity step in physical annular language.

