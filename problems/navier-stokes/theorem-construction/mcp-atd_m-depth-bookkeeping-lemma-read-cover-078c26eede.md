# ATD_m Depth Bookkeeping Lemma

Status: conditional depth bookkeeping theorem.

## Purpose

This note fixes the relation among the averaged local regularity depth `m`, the endpoint tower depth `N`, the pressure derivatives, and the viscous `U_{q+2}` slots used by `DTC.Read`.

## Required endpoint readout

The endpoint/tower route requires, for every

```math
0\le q\le N,
```

pointwise control of the velocity tower rung

```math
U_q
```

and the forcing rung

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

## Velocity depth

The velocity part requires `U_q` for all `q<=N`. Thus the local `ATD_m` packet must include at least

```math
U_0,\dots,U_N.
```

## Viscous depth

The viscous part of `K_q` is

```math
\nu\Delta U_q.
```

If `U_q` represents the `q`-th spatial tower rung, then `Delta U_q` is read from the `q+2` velocity slot. Hence for all `q<=N`, one needs

```math
U_{q+2},
```

and therefore the velocity tower must reach at least

```math
U_{N+2}.
```

## Pressure depth

The pressure part of `K_q` is

```math
-\nabla^{q+1}p.
```

Thus for all `q<=N`, `DTC.Read.Press.local` must control

```math
\nabla^{q+1}p,
\qquad 0\le q\le N.
```

The largest pressure derivative required is

```math
\nabla^{N+1}p.
```

The fixed-cover Poisson estimate controls this from the product-source carrier

```math
\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)},
\qquad q\le N.
```

This carrier is supplied by local velocity derivatives through depth at least `N+1`, and the viscous slot already forces the stronger requirement `N+2`.

## Minimum depth rule

The safe local-depth requirement is therefore

```math
m\ge N+2.
```

Equivalently, when the `ATD_m` convention stores velocity through `m` and pressure through the matching pressure depth, choose `m` so that

```math
U_{N+2},
\qquad
\nabla^{N+1}p
```

are both inside the shrunken-cylinder readout.

If the implementation convention stores `ATD_m` as velocity depth `m+2`, then the route condition is

```math
m+2\ge N+2,
\qquad\text{i.e.}\qquad m\ge N.
```

The route must state which convention is active. The conservative convention for theorem statements is:

```math
ATD_m\text{ is invoked at depth }m_{ATD}\ge N+2.
```

## Output

Under this depth rule,

```math
ATD_m^\varepsilon+READ.COVER
\Longrightarrow
DTC.Read
```

has all required local velocity, pressure, and forcing slots.

## Boundary

This note supplies depth bookkeeping only. The estimates themselves come from `ATD_m^epsilon` and `DTC.Read.Press.local`.