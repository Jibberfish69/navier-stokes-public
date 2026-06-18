# Terminal Readout Invocation: Recovering `End_NS` From `End_NS_avg`

## Status

Conditional terminal readout theorem.

This note proves the invocation layer

```math
DTC.Read+Field.Read+READ.END
```

that recovers the old pointwise endpoint package from the averaged endpoint package after the averaged route has produced `End_NS_avg`.

## Inputs

The averaged endpoint route supplies

```math
End_{NS,avg}.
```

The terminal cover bridge supplies

```math
READ.COVER:
End_{NS,avg}\Longrightarrow
Q^\Phi(I,A_\sharp)\subset\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
r_*:=\min_i r_i>0,
```

with

```math
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

On the shrunken cover elements, `ATD_m^\varepsilon` supplies the finite-depth local tower packets needed for readout.

The averaged route also supplies

```math
Field_{avg},
\qquad
DTC.A_{avg}.
```

## Theorem `Field.Read`

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field.
```

The finite positive-scale cover converts averaged field coherence into pointwise field coherence. Each cover element has a uniform positive lower scale and the `ATD_m^\varepsilon` local tower gain. Finite overlap transfers the averaged field bounds to the old pointwise field row on the same-fluid approach window.

Thus `Field.Read` supplies the endpoint input

```math
END.Field.
```

## Theorem `DTC.Read`

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

The velocity tower part follows from fixed-scale finite cover, the local averaged tower packet, and local Sobolev/Morrey on each shrunken cover element.

For forcing rungs, use

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q.
```

The viscous part is read from the `U_{q+2}` tower rung, so the readout depth must reach at least `N+2` for endpoint tower depth `N`.

The pressure part is supplied on each cover element by the local pressure split

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b),
```

with `\chi_i=1` on the inner ball and supported in the doubled ball. The local Schauder / Calderon-Zygmund estimate gives

```math
\|\nabla^{q+1}p_i^{loc}\|_{L^\infty(B_i')}
\le
C_{q,\alpha,i}\|\nabla^q(\chi_i u\otimes u)\|_{C^{0,\alpha}(2B_i)}.
```

`ATD_m^\varepsilon` supplies the product-source carrier on the finite cover. The harmonic tail satisfies the energy far-tail estimate

```math
\|\nabla^{q+1}h_i\|_{L^\infty(B_i')}
\le C_{q,i}\|u_0\|_{L^2}^2.
```

Therefore `DTC.Read` supplies old pointwise `DTC.A` on the readout cover.

In particular, `DTC.A` gives the endpoint tower input

```math
DTC.A\Longrightarrow END.TowerAmp\Longrightarrow END.TowerBound.
```

## Theorem `READ.END`

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

`Field.Read` supplies the old pointwise `Field` row. `DTC.Read` supplies the old pointwise transported-center/tower readout and hence `END.TowerAmp`. The `Pack` row and the repaired Part response-margin row are shared between the averaged and old endpoint grammars.

With pointwise `Field`, pointwise `DTC.A`, and the repaired Part response-margin
input recovered, the old endpoint matrix applies:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound\Longrightarrow End_{NS}.
```

Thus every old pointwise endpoint face is removed:

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

Hence

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

## Boundary

No pointwise endpoint input is used upstream of the readout layer. The order is:

```math
End_{NS,avg}\Longrightarrow READ.COVER,
```

then

```math
READ.COVER+ATD_m^\varepsilon+Field_{avg}\Longrightarrow Field,
```

and

```math
READ.COVER+ATD_m^\varepsilon+DTC.A_{avg}\Longrightarrow DTC.A,
```

then

```math
Field+DTC.A+END.Exh+END.Cross+END.Pack\Longrightarrow End_{NS}.
```

This proves terminal readout invocation without upstream pointwise spending.
