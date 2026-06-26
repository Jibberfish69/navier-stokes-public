# Full moving service positive-variation hinge

Status: failed unconditional discharge; narrowed next hinge.

## 1. Active target

The active forward-gold route is the same-material full-clock / annular service trajectory. The current relay hinge asks for

```math
\int_0^{T^*}\Theta_N(t)\,dt<\infty
```

for the original smooth Navier--Stokes material history.

The required mechanism is a bounded-below same-material Lyapunov/coercivity storage whose decrease pays the positive moving pressure-strain / Hodge-interface service.

Source refs read:

- `problems/navier-stokes/theorem-construction/mcp-centerendpointprojectiondefecttoannulartail-a-globalsamepacketfullclockfromoriginaldata-a-9d0ed185c8.md`
- `problems/navier-stokes/theorem-construction/mcp-fullmovingsamematerialservicecarrierthetanl1-a-globalsamepacketfullclockfromoriginaldata-a-cee9b9b065.md`
- `problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md`
- `problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-payback-physical-frame-completion-boundary-20260625.md`

## 2. Installed facts used

The transported local energy identity gives same-fluid attachment:

```math
{d\over dt}\int {1\over2}|u|^2\phi\,dx
+2\nu\int\phi |S|^2\,dx
=-\int u\cdot T\nabla\phi\,dx .
```

The center endpoint projection defect is dominated by the transported annular carrier once that same carrier is genuinely `L^1`.

The fixed-threshold finite-collar service is `L^1` from energy.

The raw internal annular stress/strain action is finite on fixed positive-thickness transported annuli.

The full material clock implies the installed fixed `H^s` continuation readout. Hence the full clock estimate has continuation strength.

## 3. Direct storage attempt

Let the full material-Hodge packet be represented schematically by a material pullback operator

```math
L_G=-\operatorname{div}_a(G\nabla_a),
\qquad
\dot G=-2ASA^T,
```

with transported cutoff, pressure, viscosity, incompressibility, velocity, coefficient, and Hodge-interface terms kept in the same packet.

A natural candidate storage is a modulated material record

```math
\mathfrak E_N(t)
\simeq
\|U(t)\|_{H^N_G(\phi(t))}^2
+\text{Hodge/collar correction terms}.
```

Differentiating this storage gives the expected conditional propagation form

```math
d\log(1+\mathfrak E_N)_+
\le C\,\Theta_N(t)dt+dR_N^0 .
```

This proves that the full service clock propagates the material record. It gives the wrong direction for the relay hinge.

To discharge the hinge one needs the reverse one-way estimate

```math
\Theta_N(t)dt
\le
-d\mathfrak L_N(t)+dR_N(t),
\qquad
\mathfrak L_N(t)\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty .
```

The same-packet identities produce the signed net derivative of the material-Hodge interface. They do not produce rectified positive-variation control. Positive pressure-strain/Hodge-interface service can cycle through the same transported packet with small net signed change. A bounded-below storage can pay the total positive variation only after a no-recirculation or no-refund theorem rules out repeated re-crediting of the same material reserve.

## 4. Exact failure of the attempted proof

The attempted proof reaches the identity level and fixed-carrier `L^1` level, then stops at positive variation.

The available facts supply:

```math
\text{same-packet generation of }d\Omega_N^{full},
```

and

```math
\text{finite fixed-collar / fixed-annulus raw service}.
```

They leave open:

```math
\int_0^{T^*}d\Omega_N^{full}<\infty .
```

Equivalently, they leave open a one-way law converting the full moving rectified participation-law-strain action into a decrease of a bounded-below same-material reserve.

## 5. Narrowed next hinge

The next exact hinge should be named:

```math
\boxed{\text{FullSamePacketPLSNoRecirculation.A}}
```

Statement:

For the original smooth incompressible Navier--Stokes material history and the active continuation-depth material packet, prove that there exist a same-material reserve `\mathfrak R_N`, a bounded-below storage `\mathfrak L_N`, and an integrable error measure `dR_N` such that

```math
d\mathfrak R_N
+d\mathfrak L_N
+c\,d\Omega_N^{full}
\le dR_N,
\qquad
\mathfrak R_N\ge0,
\qquad
\mathfrak L_N\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty .
```

Here `d\Omega_N^{full}` is the full positive moving participation-law-strain service, including pressure/RHS, coefficient/frame, transported collar, Hodge interface, viscosity, incompressibility, and velocity in one packet.

This theorem is stronger and more precise than the current storage attempt. It asserts that positive full service consumes a material reserve once, rather than being recycled as later positive service at the same continuation depth.

## 6. Route consequence

If `FullSamePacketPLSNoRecirculation.A` is proved, then integrating gives

```math
\int_0^{T^*}d\Omega_N^{full}<\infty .
```

This discharges `GlobalSamePacketFullClockFromOriginalData.A`, hence the installed bridge gives

```math
\sup_{t<T^*}\|u(t)\|_{H^s}<\infty
```

for `s>5/2`, followed by classical relaunch past `T^*`.

Result of this bounded unit: the full moving service estimate remains open; the live mathematical burden is narrowed to the no-recirculation/no-refund positive-variation theorem for the full same-material PLS packet.