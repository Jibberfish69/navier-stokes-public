# Hardened DTC.Read And Field.Read Readout Theorem

## Statement

Assume `READ.COVER` gives a finite same-fluid cover with lower radius `r_*>0`, and assume `ATD_m^epsilon` on shrunken cover elements with `m>=N+2`. Then

```math
DTC.A_{avg}+READ.COVER+ATD_m^\epsilon\Longrightarrow DTC.A,
```

and

```math
Field_{avg}+READ.COVER+ATD_m^\epsilon\Longrightarrow Field.
```

## Pressure Readout

On one nested cover element `B_i'Subset B_i Subset 2B_i`, choose `chi_i=1` on `B_i` and supported in `2B_i`. Split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

For `0<=q<=N`, the local pressure estimate is

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The product term is controlled by `ATD_m^epsilon` and Leibniz. The harmonic part obeys

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}\|u(t)\|_{L^2}^2.
```

Thus the pressure derivative needed in the forcing rung is controlled on the cover.

## Forcing And Field Rungs

The forcing rung is

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

The pressure term is controlled by the estimates above, and the viscous term is controlled by the `U_{q+2}` readout. Hence `K_q` is bounded for all `q<=N`, giving `DTC.A`.

For the field predicate, `Field_avg` plus `ATD_m^epsilon` gives local Morrey/Sobolev readout on each cover element. The finite cover and lower radius give uniform constants, so the pointwise field predicate `Field` holds.

## Conclusion

The readout layer supplies the old pointwise endpoint inputs `DTC.A` and `Field` from averaged endpoint data. These feed `END.TowerBound` and `END.Field` inside `READ.END`.

## Boundary

This is a terminal readout theorem. It uses `READ.COVER` as an input and uses no pointwise endpoint closure upstream.