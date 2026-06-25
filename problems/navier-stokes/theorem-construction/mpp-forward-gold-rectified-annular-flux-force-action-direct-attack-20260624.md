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
  smoothness follows once the original smooth solution's transported material
  history has finite rectified annular force-action variation around the
  candidate terminal spike concentration. Heat-scale windows are used only as
  bounded-overlap samplings of that same material history, not as independent
  annular-stack events. The note also proves that ordinary energy/dissipation
  alone is too low-order to control this force-action variation.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-gauge-quotient-correction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-layer-averaged-flux-derivative-energy-bound-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
---

# Rectified Annular Flux Force-Action Direct Attack

Date: 2026-06-24

## 0. Object

The physical object is the original smooth Navier--Stokes solution and its
transported material history.  If the candidate obstruction is a terminal
rising/thinning spike concentration, the surrounding annuli are material layers
inside that same history; they measure how the concentration is carried,
opposed, or returned through stress/strain over time.  The exact annular
quantity is the gauge-reduced transported stress-work flux

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

The missing terminal clock is the total variation of this same annular
stress-work transaction along the original solution's transported material
history:

```math
\int_{s_0}^{0}
\left|{d\over ds}F_{\phi}^{\sharp}(s)\right|\,ds
<\infty .
\tag{RAF.3}
```

Equivalently, after choosing a bounded-overlap heat-scale sampling of that same
history,

```math
\sum_m\int_{J_m}
\left|{d\over ds}F_{\phi_m}^{\sharp}(s)\right|\,ds
<\infty
\tag{RAF.4}
```

The sampled form is not a separate stack of possible events.  It is only a
coordinate accounting of the same solution history, including the candidate
spike's height/width evolution and the outer annular stress/strain return.

This note attacks `(RAF.3)` directly, with `(RAF.4)` as its sampled form.

## 1. Exact differentiated flux identity

Let

```math
D_s=\partial_s+V\cdot\nabla .
\tag{RAF.5}
```

The reduced variables obey

```math
D_sU=\nabla\cdot T^\sharp,
\qquad
\nabla\cdot U=0
\tag{RAF.6}
```

after the harmless affine/Galilean gauge is removed.  Since \(\phi\) is
transported,

```math
D_s\nabla\phi=-(\nabla V)^T\nabla\phi .
\tag{RAF.7}
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
\tag{RAF.8}
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
\tag{RAF.9}
```

Then the direct domination is

```math
\boxed{
\left|{d\over ds}F_\phi^\sharp(s)\right|
\le
\mathcal A_\phi^{FA}(s).
}
\tag{RAF.10}
```

Thus the terminal no-Zeno clock follows from the full same-packet
force-action theorem

```math
\boxed{
\sum_m\int_{J_m}\mathcal A_{\phi_m}^{FA}(s)\,ds<\infty .
}
\tag{RAF.11}
```

This is not a new proxy.  It is the absolute derivative of the same annular
stress/strain transaction.

## 2. Pressure-viscosity-incompressibility closure of the density

Every term in `(RAF.8)` is closed by the same coupled packet.

The force term is the material acceleration:

```math
\nabla\cdot T^\sharp=D_sU .
\tag{RAF.12}
```

The stress is pressure plus viscous strain:

```math
T^\sharp=-PI+2\nu S(U).
\tag{RAF.13}
```

The stress-time term is

```math
D_sT^\sharp
=
-(D_sP)I
+2\nu D_sS(U),
\tag{RAF.14}
```

with

```math
D_sS(U)
=
\operatorname{sym}\nabla(D_sU)
-
\operatorname{sym}\big((\nabla V)(\nabla U)\big).
\tag{RAF.15}
```

The pressure service is tied by the elliptic pressure law

```math
-\Delta P=\partial_iU_j\,\partial_jU_i
\tag{RAF.16}
```

up to the affine harmonic gauge already removed, and differentiating gives

```math
-\Delta(D_sP)
=
D_s(\partial_iU_j\,\partial_jU_i)
+[\Delta,D_s]P .
\tag{RAF.17}
```

The commutator in `(RAF.16)` contains the same velocity-gradient and pressure
tower terms:

```math
[\Delta,D_s]P
=
2(\partial_iV_k)\partial_{ik}P
+(\Delta V_k)\partial_kP .
\tag{RAF.18}
```

So `(RAF.9)` is exactly a pressure-viscosity-incompressibility-velocity
force-action density on the same transported annulus.

## 3. Why ordinary energy cannot bound this density

The ordinary local energy ledger controls

```math
\|V\|_{L_s^\infty L_y^2}^2
+
\nu\|\nabla V\|_{L^2_{s,y}}^2
\tag{RAF.19}
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
\tag{RAF.20}
```

These are one derivative higher than the energy ledger.  A heat-scale sampling
of a genuine high-gradient portion of the same material spike history does not
become small merely because the coordinate window shrinks.  In physical
variables the first term has the scaling form

```math
\int_{J_r}\int_{\operatorname{collar}}
|\nabla_y\cdot T_r^\sharp|\,|T_r^\sharp|\,dy\,ds
=
r
\int_{Q_r^{collar}}
|\nabla_x\cdot T_x^\sharp|\,|T_x^\sharp|\,dx\,dt .
\tag{RAF.21}
```

Thus a self-similar heat-scale force-action event with

```math
|\nabla_x u|\sim r^{-2},
\qquad
|T_x^\sharp|\sim r^{-2},
\qquad
|\nabla_x\cdot T_x^\sharp|\sim r^{-3}
\tag{RAF.22}
```

has

```math
r
\int_{Q_r^{collar}}
|\nabla_x\cdot T_x^\sharp|\,|T_x^\sharp|\,dx\,dt
\sim 1.
\tag{RAF.23}
```

The physical energy inequality sees only the lower-order radius-discounted
quantity.  It does not force

```math
\sum_m\int_{J_m}\mathcal A_{\phi_m}^{FA}(s)\,ds<\infty .
\tag{RAF.24}
```

## 4. The exact theorem that would close the route

The missing theorem can now be stated without proxy language:

```math
\boxed{
\texttt{OriginalDataRectifiedAnnularForceActionVariation.A}
}
\tag{RAF.25}
```

For the transported material history generated by one smooth Navier--Stokes
solution from original smooth finite-energy data, around the candidate terminal
spike concentration,

```math
\boxed{
\int_{s_0}^{0}\mathcal A_{\phi}^{FA}(s)\,ds<\infty .
}
\tag{RAF.26}
```

Equivalently,

```math
\boxed{
\int_{s_0}^{0}
\left|{d\over ds}F_{\phi}^{\sharp}(s)\right|\,ds
<\infty .
}
\tag{RAF.27}
```

Any bounded-overlap heat-scale decomposition of this material history is just a
sampled version of `(RAF.26)` and `(RAF.27)`.

Then the installed chain gives:

```math
\texttt{OriginalDataRectifiedAnnularForceActionVariation.A}
\Longrightarrow
\texttt{GlobalSamePacketFullClockFromOriginalData.A}
\Longrightarrow
\texttt{UniformTerminalZenoAnnularReturn.A}
\Longrightarrow
\texttt{MaterialClockToFixedHsContinuationReadout.A}
\Longrightarrow
\text{no finite-time breakdown.}
\tag{RAF.28}
```

## 5. Exact proof state

The direct attack proves the identity and the exact full-packet reduction:

```math
\left|{d\over ds}F_\phi^\sharp\right|
\le
\mathcal A_\phi^{FA}.
\tag{RAF.29}
```

It does not prove `(RAF.26)` from the currently installed original-data
inputs.  The remaining hard statement is now precisely the finite force-action
variation of the original solution's material history around the candidate
terminal concentration.  That statement is the missing same-packet four-body
coercivity step in physical annular language.
