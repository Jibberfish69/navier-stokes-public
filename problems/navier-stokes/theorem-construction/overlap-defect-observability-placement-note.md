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
packet-overlap or separation-density quantity.

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
\approx
\sum_{Q\sim Q'}
c_{Q,Q'}\,
U_j(t)\phi_Q(x)\,\overline{U_j(t)\phi_{Q'}(x)},
\tag{OD.2}
```

or another coarse packet-overlap density capturing the off-diagonal defect.

## Correct placement

If one can show that such a defect satisfies a transport-diffusion equation of
the schematic form

```math
\partial_t w_J + b_J\cdot\nabla w_J - \nu\Delta w_J = f_J,
\tag{OD.3}
```

with forcing `f_J` controlled by the selector bad set or by the same
nonshadowing remainder already isolated in the `TPS` packet, then:

- backward uniqueness can be applied to `w_J`;
- observability can be applied to `w_J`;
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

What it can do is strengthen the endpoint once a defect equation like `(OD.3)`
is actually available.

So, at the present frontier:

```math
\boxed{
\text{backward-uniqueness / observability belongs on a derived overlap defect, not on the selector geometry itself.}
}
\tag{OD.5}
```
