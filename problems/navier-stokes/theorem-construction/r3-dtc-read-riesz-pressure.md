# DTC.Read_R3 Riesz Pressure Readout

## Status

Conditional theorem note.

## Theorem

Assume `READ.COVER_R3`, `Tail.Hs_R3`, local `ATD_m^epsilon` on the compact-core cover, and `m>=N+2`. Then the whole-space readout theorem holds:

```math
DTC.Read_{R3}:
DTC.A_{avg,R3}+READ.COVER_{R3}+ATD_m^\varepsilon+Tail.Hs_{R3}
\Longrightarrow DTC.A_{R3}.
```

## Pressure split

On `R^3`, set

```math
p=\mathcal R_i\mathcal R_j(u_i u_j)
```

up to an additive function of time. For each compact-core readout ball

```math
B_i'\Subset B_i\Subset 2B_i,
```

choose `chi_i=1` on `B_i`, supported in `2B_i`, and split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_au_b).
```

Interior elliptic estimates give, for `0<=q<=N`,

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The far part is the Riesz transform of `(1-chi_i)u\otimes u`. On compact `B_i'`, the kernel derivatives are smooth away from the support of the far source. `Tail.Hs_R3` supplies exterior product-source tightness, while compact-core local tower bounds control the bounded annular portion. Hence

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
<\infty
```

uniformly on the terminal interval.

## Viscous rung

The endpoint force rung is

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
\qquad 0\le q\le N.
```

The viscous term requires `U_{q+2}`, so the readout depth condition is

```math
m\ge N+2.
```

Local `ATD_m^epsilon` supplies this rung on each cover element.

## Conclusion

Velocity tower readout, Riesz pressure readout, and viscous readout together give pointwise `DTC.A_R3` to endpoint depth `N` on the whole-space terminal readout cover.

## Boundary

This theorem is conditional on `READ.COVER_R3` and `Tail.Hs_R3`.