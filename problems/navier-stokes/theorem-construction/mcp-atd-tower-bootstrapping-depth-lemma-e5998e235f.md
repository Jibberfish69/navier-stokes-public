# ATD Tower Bootstrapping Depth Lemma

Status: conditional local depth theorem.

## Statement

Assume the normalized cylinder satisfies the CKN smallness threshold:

```math
CKN_{std}(Q_1)\le\varepsilon_{CKN}.
```

Then, on a smaller cylinder, interior regularity and bootstrapping give the local tower bounds needed by `DTC.Read`:

```math
U_0,\dots,U_{N+2},
\qquad
\nabla p,\dots,\nabla^{N+1}p.
```

Consequently each endpoint forcing rung

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
\qquad 0\le q\le N,
```

has every required local readout slot.

## Proof

CKN epsilon regularity gives boundedness and smoothness on a shrunken normalized cylinder. Standard interior parabolic bootstrapping gives, for every finite `k` in the route depth,

```math
\sup_{Q_{1/2}}|\nabla^k u|
+
\sup_{Q_{1/2}}|\nabla^{k+1}p|
\le C_k.
```

Choose the `ATD` depth so that the velocity tower reaches

```math
U_{N+2}.
```

For every `0<=q<=N`, the velocity tower readout includes `U_q`. The viscous part of `K_q` is

```math
\nu\Delta U_q,
```

which is read from the `U_{q+2}` slot. The largest required slot is therefore

```math
U_{N+2}.
```

The pressure part of `K_q` is

```math
-\nabla^{q+1}p.
```

The largest pressure derivative required is

```math
\nabla^{N+1}p.
```

The pressure equation and interior elliptic/Schauder estimates supply these derivatives after the same CKN regularity gain. Thus every `K_q` for `q<=N` is controlled.

## Depth convention

Use the conservative route convention:

```math
ATD\text{ velocity depth }m_{ATD}\ge N+2.
```

If an implementation stores `ATD_m` as velocity depth `m+2`, this becomes

```math
m\ge N.
```

The theorem statement should carry the conservative condition

```math
m_{ATD}\ge N+2.
```

## Output

```math
CKN_{std}\le\varepsilon_{CKN}
\Longrightarrow
ATD_m\text{ has all slots required by }DTC.Read.
```