# Overlap-Defect Observability Placement Note

## Purpose

This note records the correct place for backward-uniqueness, observability, or
quantitative unique-continuation inputs inside the `TPS` selector route.

The point is:

```math
\boxed{
\text{those parabolic tools should not be applied directly to selector geometry.}
}
```

They should enter only after one has built a derived defect equation for a
packet-overlap or separation-density quantity. That derived-defect packet is
now available concretely in
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md).

## Selector route versus defect route

The selector route is geometric and measure-theoretic:

```math
\text{good-set linearization}
\Longrightarrow
\text{transverse lower bound}
\Longrightarrow
\text{nonshadowing}
\Longrightarrow
\Gamma_J\to 0.
\tag{OD.1}
```

This is not yet a parabolic PDE for a single scalar defect.

To use observability or backward uniqueness, one needs instead a derived
quantity such as:

```math
w_J(t,x)
:=
\sum_{(Q,Q')\in\mathcal A_J^{adj}}
c_{Q,Q'}\,
U_j(t)\phi_Q(x)\,\overline{U_j(t)\phi_{Q'}(x)},
\tag{OD.2}
```

or another coarse packet-overlap density capturing the off-diagonal defect.

The current route now has two explicit canonical realizations:

1. the one-point density defect `w_J=\rho_J-\bar\rho_J`, which satisfies the
   coarse-parabolic equation `(PD.13)`;
2. the two-point pair defect `W_J=K_J-\bar K_J`, which satisfies the
   two-point coarse-parabolic equation `(PD.25)`.

The two-point defect is the sharper object for shadow-tube and pair-gap work,
because diagonal concentration is intrinsically a two-point phenomenon.

## Correct placement

The one-point defect equation is already explicit:

```math
\partial_t w_J+v_J\cdot\nabla w_J-\nu\Delta w_J
=
-\nabla\cdot(r_J\rho_J),
\tag{OD.3}
```

and the sharper two-point equation is:

```math
\partial_t W_J
+
v_J(x,t)\cdot\nabla_x W_J
+
v_J(y,t)\cdot\nabla_y W_J
-\nu(\Delta_x+\Delta_y)W_J
=
-\nabla_x\cdot\big(r_J(x,t)K_J\big)
-\nabla_y\cdot\big(r_J(y,t)K_J\big).
\tag{OD.3'}
```

So the forcing is no longer hypothetical: every high-frequency contribution
now appears explicitly in divergence form under a coarse parabolic principal
operator. This gives the parabolic tools a mathematically proper home. In
particular:

- backward uniqueness can be applied to `w_J`;
- observability can be applied to `w_J` or, more naturally, to `W_J`;
- unique-continuation estimates have a canonical PDE home.

So the correct logical order is:

```math
\boxed{
\text{selector theorem first, derived defect equation second, observability last.}
}
\tag{OD.4}
```

## Frontier use

This means the external parabolic uniqueness technology does **not** directly
replace the current `GS.15` / `GS.21` burden.

What it can do is strengthen the endpoint once the selector geometry has
already isolated the active shadow/overlap mechanism, because the derived
defect equations `(OD.3)` and `(OD.3')` are now actually available.

So, at the present frontier:

```math
\boxed{
\text{backward-uniqueness / observability belongs on the derived defects }w_J,W_J,\text{ not on selector geometry itself.}
}
\tag{OD.5}
```

This still does **not** solve the live selector-local lower-bound burden.
What it does close is the derived-defect side of the route: once the selector
packet has produced nonshadowing or a shadow-time budget, the downstream
parabolic tools can be attached to explicit equations rather than to a
formal placeholder.
