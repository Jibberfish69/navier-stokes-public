# Field.Read and DTC.Read Invocation

Status: conditional readout suppliers invoked on the `READ.COVER` finite SCF-good cover.

## Inputs

`READ.COVER` supplies a finite fixed same-fluid cover with positive lower scale:

```math
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
r_*:=\min_i r_i>0,
```

and

```math
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

`ATD_m^\varepsilon` applies on the shrunken cylinders at sufficient depth.

## Field.Read

The readout theorem is

```math
Field.Read:
Field_{avg}
+READ.COVER
+ATD_m^\varepsilon
\Longrightarrow
Field.
```

The positive lower scale and finite cover convert averaged field coherence into old pointwise field coherence. Finite chain connectivity and local `ATD_m^\varepsilon` supply the fixed-scale control needed to read `Field_avg` as the old `Field` row.

Thus

```math
Field_{avg}\Longrightarrow Field
```

on the retained approach window after `READ.COVER` and `ATD_m^\varepsilon` are supplied.

## DTC.Read

The readout theorem is

```math
DTC.Read:
DTC.A_{avg}
+READ.COVER
+ATD_m^\varepsilon
\Longrightarrow
DTC.A.
```

The velocity tower readout follows from the fixed finite cover, the local averaged tower packet, and local Sobolev/Morrey on the shrunken cover elements.

For the forcing rungs

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q,
```

the viscous part is supplied by the `U_{q+2}` readout, so the depth condition is at least `m>=N+1` with the packet depth high enough for the viscous rungs.

The pressure part is supplied by `DTC.Read.Press.local`. On each fixed cover element choose a cutoff `\chi_i=1` on `B_i` and supported in `2B_i`, then split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

The local Schauder/Calderon-Zygmund estimate gives

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

The harmonic tail obeys

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le
C_{q,i}\|u_0\|_{L^2(T^3)}^2.
```

`ATD_m^\varepsilon` supplies the product-source carrier on the finite cover, and the periodic energy bound supplies the harmonic tail. Therefore the pressure part of `K_q` is available.

Hence `DTC.Read` upgrades `DTC.A_avg` to old `DTC.A` on the retained approach window.

## Output

The two old pointwise readout objects are now supplied:

```math
Field,
\qquad
DTC.A.
```

The next assembly step is

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
End_{NS}.
```