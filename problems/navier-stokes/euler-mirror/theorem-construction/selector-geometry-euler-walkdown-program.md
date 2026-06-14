# Selector-Geometry Euler Walkdown Program

## Purpose

Walk the parent torus-first TPS strong/defect selector route on the
three-dimensional incompressible Euler equation until the first exact surviving
bridge and the first exact non-Euler bridge are both named on disk.

This note does **not** claim an Euler `SG.4` theorem. It records the strongest
honest Euler walkdown of that road currently visible.

## Parent Aim

The parent selector route tries to convert the surviving one-field defect
packet into a selector-calibrated directional deficit and then into the
directional lower-envelope theorem `SG.4`.

Its theorem order is:

1. transported phase-space packet geometry;
2. selector cells, stopping, and balanced-frame control;
3. cocycle / pair-defect packet;
4. selector calibration to the one-sided deficit
   `[\lambda_J-\mathfrak s_J]_+`;
5. averaged one-sided budget `B_J^-`;
6. `SG.4`;
7. downstream projective/readout consumers.

## Fixed Euler Surface

Work only on

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = 0,
\qquad
\nabla\cdot u = 0.
```

Preserve the selector objects

```math
W_J,\quad
\lambda_J,\quad
\mathfrak s_J,\quad
\mathfrak d_J^-=[\lambda_J-\mathfrak s_J]_+,\quad
B_J^-,
```

but do not silently retain any `\nu`-driven coercive packet from the parent
route.

## Euler Walkdown

### ES1. Transported phase-space packet geometry

The first selector layer survives as a transport-geometry road:

1. packet cells and finite overlap remain meaningful;
2. selector stopping and balanced-frame bookkeeping remain meaningful;
3. cocycle-style control remains a transport supplier target rather than a
   parabolic one.

This preserves the route's geometry and its role as a downstream one-field
consumer.

### ES2. Euler pair-defect packet

The parent pair-defect PDE is

```math
\partial_t W_J
+
v_J(x,t)\cdot\nabla_x W_J
+
v_J(y,t)\cdot\nabla_y W_J
-\nu(\Delta_x+\Delta_y)W_J
=
-\nabla_x\cdot(r_J(x,t)K_J)
-\nabla_y\cdot(r_J(y,t)K_J).
```

The literal Euler walkdown deletes the diffusion term and keeps the same
transport/source geometry:

```math
\partial_t W_J
+
v_J(x,t)\cdot\nabla_x W_J
+
v_J(y,t)\cdot\nabla_y W_J
=
-\nabla_x\cdot(r_J^{E}(x,t)K_J^{E})
-\nabla_y\cdot(r_J^{E}(y,t)K_J^{E}).
\tag{ES2}
```

So the selector road still reaches an Euler pair-defect transport equation.

### ES3. Exact surviving target before the break

Before any `SG.4`-level closure is claimed, the strongest honest Euler theorem
target on this road is:

```math
\boxed{
\text{transported selector geometry}
+
\text{Euler pair-defect packet}
\Longrightarrow
\text{an Euler selector-calibration theorem candidate}
}
\tag{ES3}
```

That target still aims at the one-sided deficit budget

```math
B_J^-(a,b;I)
=
\int_I [\lambda_J(t)-\mathfrak s_J(a,b,t)]_+\,dt,
```

but without using parabolic observability to manufacture it.

### ES4. Exact non-Euler bridge

The route stops at the parent observability/coercivity bridge. The installed
parent reduction uses the coercive estimate

```math
\|W_J(t)\|_{L^2_{x,y}}^2
+
\nu\int_{t_0}^t \|\nabla_{x,y}W_J(s)\|_{L^2_{x,y}}^2\,ds
\le C_{\mathrm{parent}}\cdots
```

and then the selector observability packet

```math
\int_I\!\!\int_{G_J^{pair}}
\big(\mathcal O_J[W_J](a,b,t)\big)^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{obs}}
\Big(
\sup_{t\in I}\|W_J(t)\|_{L^2_{x,y}}^2
+
\nu\int_I\|\nabla_{x,y}W_J(t)\|_{L^2_{x,y}}^2\,dt
+
\mathcal R_J(I)
\Big).
\tag{ES4}
```

After viscosity removal, the term

```math
\nu\int_I\|\nabla_{x,y}W_J(t)\|_{L^2_{x,y}}^2\,dt
```

is gone. So the parent selector route no longer produces the averaged
one-sided budget by the same method.

This is the first exact non-Euler bridge on the selector road.

## Terminal Non-Euler Classification

The terminal classification is:

```math
\boxed{
\text{a direct one-sided selector deficit budget would be a new external route;}\\
\text{the parent parabolic observability bridge is non-Euler.}
}
\tag{ES5}
```

Equivalently, the missing theorem is an Euler selector-calibration theorem
converting `(ES2)` into control of `B_J^-` by transport and pressure geometry
alone.

## Status

The selector road is now honestly walked on Euler through the packet-geometry
and pair-defect stages. It is blocked exactly at the parent
observability/coercivity-to-`SG.4` bridge.
