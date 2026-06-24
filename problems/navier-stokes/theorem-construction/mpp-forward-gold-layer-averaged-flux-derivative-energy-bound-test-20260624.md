---
theorem_id: forward-gold-layer-averaged-flux-derivative-energy-bound-test-20260624
status: direct-test-layer-averaging-does-not-produce-energy-controlled-clock
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Attacks the remaining rectified annular flux-derivative clock by averaging
  over all transported annular layers. Coarea/layer averaging preserves the
  same-fluid outer-annulus object and prevents a single-collar artifact, but
  the differentiated clock still contains stress-divergence, stress-curl,
  pressure-time, strain-time, and cubic transport service terms. Those terms are
  controlled only by the same material tower/service clock, not by local energy
  or physical dissipation. Thus layer averaging proves same-packet admission
  and removes collar-choice drift, but it does not prove the finite unweighted
  terminal clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-annular-layer-coarea-clock-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-same-packet-identity-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-reduced-annular-flux-derivative-sign-structure-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-clock-direct-route-exhaustion-20260624.md
---

# Layer-Averaged Flux-Derivative Energy Bound Test

Date: 2026-06-24

## 0. Result

The transported outer annulus remains the right object.  The next possible
escape was to average the rectified annular flux-derivative clock over all
transported shell layers and hope that coarea turns the clock into a local
energy quantity.

That does not happen.  Layer averaging removes dependence on a single chosen
collar, but the absolute flux derivative still contains higher same-packet
stress, pressure, strain, coefficient, and transport service terms.

So the live estimate remains the same:

```math
\sum_m
\int_{J_m}
\left|
{d\over ds}F_{\phi_m}^{\sharp}(s)
\right|\,ds
<\infty,
\tag{LAF.1}
```

or its all-layer version

```math
\sum_m
\int_{\Lambda_m}
\int_{J_m}
\left|
{d\over ds}F_{\lambda,m}^{\sharp}(s)
\right|\,ds\,d\lambda
<\infty.
\tag{LAF.2}
```

The current calculation proves that `(LAF.2)` is not a consequence of the
ordinary local energy/dissipation ledger.

## 1. Same-material layer family

In material variables,

```math
x=X(a,s),
\qquad
v(a,s)=V(X(a,s),s),
\qquad
q(a,s)=Q(X(a,s),s),
\tag{LAF.3}
```

let \(\rho(a)\) be a fixed material radial coordinate and define transported
layer cutoffs

```math
\psi_\lambda(a)=\chi(\rho(a)-\lambda),
\qquad
\lambda\in\Lambda .
\tag{LAF.4}
```

After subtracting the Galilean velocity and affine pressure gauge, write

```math
V=m+U,
\qquad
Q=-m'\cdot y+c+P,
\qquad
T^\sharp=-PI+2\nu S(U).
\tag{LAF.5}
```

The gauge-reduced layer flux is

```math
F_\lambda^\sharp(s)
=
\int U\cdot T^\sharp\nabla\phi_\lambda\,dy,
\qquad
\phi_\lambda(X(a,s),s)=\psi_\lambda(a).
\tag{LAF.6}
```

Every layer is a same-fluid annular layer.

## 2. Differentiated layer flux

Using \(D_s=\partial_s+V\cdot\nabla\), \(D_sU=\nabla\cdot T^\sharp\), and
\(D_s\nabla\phi_\lambda=-(\nabla U)^\top\nabla\phi_\lambda\), the derivative is

```math
{d\over ds}F_\lambda^\sharp
=
I_{1,\lambda}+I_{2,\lambda}+I_{3,\lambda},
\tag{LAF.7}
```

where

```math
I_{1,\lambda}
=
\int
(\nabla\cdot T^\sharp)_i
T^\sharp_{ij}
\partial_j\phi_\lambda\,dy,
\tag{LAF.8}
```

```math
I_{2,\lambda}
=
\int
U_i(D_sT^\sharp_{ij})\partial_j\phi_\lambda\,dy,
\tag{LAF.9}
```

and

```math
I_{3,\lambda}
=
-\int
U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi_\lambda)\,dy .
\tag{LAF.10}
```

These are the same terms exposed in the gauge-reduced sign test.

## 3. Coarea gives all-layer admission

Since

```math
\nabla\phi_\lambda
=
\chi'(\rho-\lambda)\nabla\rho
\tag{LAF.11}
```

and the \(\lambda\)-family has bounded overlap, coarea/bounded overlap gives

```math
\int_\Lambda |I_{1,\lambda}|\,d\lambda
\le
C
\int_{\mathcal A}
|\nabla\cdot T^\sharp|\,
|T^\sharp|\,
|\nabla\rho|\,dy,
\tag{LAF.12}
```

```math
\int_\Lambda |I_{2,\lambda}|\,d\lambda
\le
C
\int_{\mathcal A}
|U|\,
|D_sT^\sharp|\,
|\nabla\rho|\,dy,
\tag{LAF.13}
```

and

```math
\int_\Lambda |I_{3,\lambda}|\,d\lambda
\le
C
\int_{\mathcal A}
|U|\,
|T^\sharp|\,
|\nabla U|\,
|\nabla\rho|\,dy.
\tag{LAF.14}
```

Therefore

```math
\int_\Lambda
\left|
{d\over ds}F_\lambda^\sharp
\right|\,d\lambda
\le
\Xi_N^{layer}(s),
\tag{LAF.15}
```

where \(\Xi_N^{layer}\) is a same-packet material service density.

This is useful: layer averaging keeps the clock inside the full
pressure-viscosity-incompressibility-velocity packet.  It does not yet make the
clock finite.

## 4. Why local energy does not control the layer clock

The first layer-averaged term can be estimated by Young:

```math
\int_{\mathcal A}
|\nabla\cdot T^\sharp|\,|T^\sharp|
\le
\varepsilon
\int_{\mathcal A}|\nabla\cdot T^\sharp|^2
+
C_\varepsilon
\int_{\mathcal A}|T^\sharp|^2 .
\tag{LAF.16}
```

The first integral in `(LAF.16)` is acceleration/force-square:

```math
\nabla\cdot T^\sharp=D_sU.
\tag{LAF.17}
```

The second contains pressure and strain stress:

```math
|T^\sharp|^2
\lesssim
|P|^2+\nu^2|\nabla U|^2 .
\tag{LAF.18}
```

Neither quantity is supplied as an unweighted terminal-family bound by the
ordinary local energy inequality.  Physical energy/dissipation controls only
radius-weighted normalized first-order information on shrinking heat-scale
families.

The second term is stronger still.  Since

```math
D_sT^\sharp
=
-(D_sP)I+2\nu D_sS(U),
\tag{LAF.19}
```

and

```math
D_sS(U)
=
\operatorname{sym}\nabla(\nabla\cdot T^\sharp)
-
\operatorname{sym}\big((\nabla U)^2\big),
\tag{LAF.20}
```

the layer clock contains pressure-time, stress-derivative, and quadratic
velocity-gradient service.  Those are material tower terms.  They are not
local-energy terms.

The third term is cubic collar transport:

```math
\int_{\mathcal A}|U|\,|T^\sharp|\,|\nabla U|\,dy,
\tag{LAF.21}
```

again scale-critical in normalized variables and not summable over a terminal
heat-scale family from physical energy alone.

## 5. Exact conclusion

Layer averaging gives the best possible non-drifting admission statement:

```math
\text{all transported shell flux derivatives}
\subset
\text{same full material participation packet}.
\tag{LAF.22}
```

It does not give the finite normalized terminal clock:

```math
\sum_m
\int_{\Lambda_m}
\int_{J_m}
\left|
{d\over ds}F_{\lambda,m}^{\sharp}
\right|\,ds\,d\lambda
<\infty.
\tag{LAF.23}
```

To prove `(LAF.23)`, one still needs the signed same-packet coercive theorem:

```math
d\mathfrak L_{4B,N}
+
c\,d\Omega_N
+
d\mathcal L_{4B,N}
\le
dR_N^0,
\qquad
\int dR_N^0<\infty,
\tag{LAF.24}
```

with \(d\Omega_N\) containing the gauge-reduced rectified all-layer annular
clock.

This test rules out one more false finish: coarea over the outer annulus
preserves the full participation object, but it does not turn the rectified
stress/strain return into an energy-controlled quantity.
