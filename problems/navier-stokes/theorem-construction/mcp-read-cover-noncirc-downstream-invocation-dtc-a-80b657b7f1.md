# READ.COVER.noncirc Downstream Invocation

Status: conditional readout bridge invoked in the correct dependency order.

## Statement

```math
READ.COVER:
End_{NS,avg}
\Longrightarrow
\text{uniform positive-scale SCF-good finite cover}
```

on the retained same-fluid approach window

```math
Q^\Phi(I,A_\sharp).
```

## Proof

The averaged bad material set at threshold `\varepsilon` is

```math
\mathcal B_{\varepsilon}^{\Phi}
:=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon\}.
```

The installed bad-set row is

```math
CAVG.J_\varepsilon:
\mathcal B_{\varepsilon}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

The averaged endpoint package gives

```math
End_{NS,avg}\Longrightarrow \neg Jump_{avg}.
```

Thus, at the strict margin threshold `\varepsilon=\varepsilon_m/2`,

```math
End_{NS,avg}
\Longrightarrow
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

Every material point in the retained approach window therefore has some positive same-fluid cylinder satisfying

```math
SCF_{base}(Q_{r(a,t)}^\Phi(a,t))\le\varepsilon_m/2.
```

The strict margin lets local stability enlarge this to an open material neighborhood with `\varepsilon_m`-good cylinders after shrinking radii if required. These neighborhoods cover the compact retained approach window. Extract finitely many:

```math
Q^\Phi(I,A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
SCF_{base}(Q_{r_i}^{\Phi}(a_i,t_i))\le\varepsilon_m.
```

Set

```math
r_*:=\min_{1\le i\le M}r_i>0.
```

This gives the uniform positive-scale SCF-good finite cover required by the pointwise readout layer.

## Dependency audit

The order is valid:

```math
AVG.MAIN.A\Longrightarrow End_{NS,avg}\Longrightarrow READ.COVER.
```

`READ.COVER` is downstream of averaged endpoint closure. It is not an input to `AVG.MAIN.A`.

## Next item

Invoke the two readout suppliers on this finite cover:

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field,
```

```math
DTC.Read:
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

The pressure component of `K_q=-\nabla^{q+1}p+\nu\Delta U_q` remains part of `DTC.Read`.