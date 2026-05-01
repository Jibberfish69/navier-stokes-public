# Pressure Readout Through All Endpoint Rungs

## Status

Closed endpoint-rung pressure readout surface.

## Statement

Assume `READ.COVER` and `ATD_m^epsilon` on the shrunken cover elements with

```math
m\ge N+2.
```

Then for every endpoint rung `0<=q<=N`, `DTC.Read` recovers the pointwise forcing rung

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

Consequently `DTC.Read` supplies the pointwise tower input required by

```math
DTC\text{-}to\text{-}TowerBound\Longrightarrow END.TowerBound.
```

## Proof

Fix one readout-cover element `B_i'\Subset B_i\Subset 2B_i`, with cutoff `chi_i=1` on `B_i` and supported in `2B_i`. Split the pressure as

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

For `0<=q<=N`, local elliptic estimates give

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{q,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The right side is controlled by the finite-depth `ATD_m^epsilon` packet and Leibniz, since `m>=N+2`.

The harmonic part obeys the interior estimate

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}\|u(t)\|_{L^2(\mathbb T^3)}^2,
```

with the periodic energy bound supplying the right side.

The pressure gauge contributes no spatial derivatives. The moving-frame affine pressure potential contributes only finite-depth frame-ledger terms already controlled by `ATD_m^epsilon` and the readout-cover frame bounds.

The viscous term satisfies

```math
\Delta U_q=U_{q+2},
```

and `m>=N+2` gives the needed `U_{q+2}` readout for every `q<=N`.

Therefore every forcing rung

```math
K_q=-\nabla^{q+1}p+\nu U_{q+2}
```

is bounded on the fixed readout cover, uniformly over the finite cover. This is exactly the pointwise transported-center packet `DTC.A` at endpoint depth `N`.

## Consequence

The old endpoint tower row receives its required object:

```math
DTC.Read\Longrightarrow DTC.A\Longrightarrow END.TowerBound.
```

## Boundary

This readout is terminal. It uses `READ.COVER` and does not participate upstream in `AACT.Global`, `CFI.A_avg`, or `End_NS_avg`.