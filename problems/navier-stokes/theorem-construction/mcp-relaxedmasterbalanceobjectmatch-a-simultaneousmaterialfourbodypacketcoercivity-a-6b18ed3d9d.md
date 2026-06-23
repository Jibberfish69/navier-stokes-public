# Relaxed Master-Balance Object Match

## Claim

The smooth same-carrier master-balance construction matches the final terminal objects exactly if the final manuscript objects are defined by relaxation from the prelimit positive storage and clock:

```math
\mathfrak L_{4B,N}:=\Gamma\operatorname{-liminf}_m \mathfrak L_{4B,N,m},
```

up to the fixed positive equivalence constants from the small cross-storages, and

```math
d\mu_{clock}:=w^*\operatorname{-lim}_m d\mathfrak C_{N,m},
```

with

```math
d\mathcal K_{iface}
:=d\mu_{clock}-dA_{4B,N}-C_{log}d[\log(1+\mathcal P_N^{mat})]_+.
```

Under these definitions,

```math
d\mu_{clock}
=dA_{4B,N}+C_{log}d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{iface},
```

and the prelimit master balance passes to the desired final object.

## Proof

At the smooth level there is only one same material packet, so the prelimit clock is

```math
d\mathfrak C_{N,m}
=dA_{4B,N,m}+C_{log}d[\log(1+\mathcal P_{N,m}^{mat})]_+.
```

The prelimit master identity uses this exact clock. Therefore the terminal clock must be the weak-star limit of this positive measure, not merely the visible post-limit activity. Define

```math
d\mu_{clock}=w^*\lim_m d\mathfrak C_{N,m}.
```

The visible terminal objects are the lower-semicontinuous visible parts:

```math
dA_{4B,N}+C_{log}d[\log(1+\mathcal P_N^{mat})]_+\le d\mu_{clock}.
```

The missing mass is by definition

```math
d\mathcal K_{iface}
=d\mu_{clock}-dA_{4B,N}-C_{log}d[\log(1+\mathcal P_N^{mat})]_+\ge0.
```

Thus the final manuscript clock must be

```math
d\mathfrak C_N=d\mu_{clock}
=dA_{4B,N}+C_{log}d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{iface}.
```

For storage, let `E_{N,m}` be the positive diagonal smooth storage and choose exact cross-storages satisfying

```math
|X_{SQ,m}+X_{QC,m}+X_{CG,m}+X_{GS,m}|\le\theta E_{N,m},\qquad 0<\theta<1.
```

Then

```math
\mathfrak L_{4B,N,m}\simeq E_{N,m}.
```

Define the final storage by relaxed lower envelope

```math
E_N:=\Gamma\operatorname{-liminf}_m E_{N,m},
\qquad
\mathfrak L_{4B,N}:=(1-\theta)E_N.
```

Then

```math
\mathfrak L_{4B,N}\le\liminf_m\mathfrak L_{4B,N,m},
\qquad
\mathfrak L_{4B,N}\ge0.
```

This is exactly the storage convergence/lower-bound object needed for the limit passage.

## Necessity

If the final manuscript instead keeps a visible-only post-limit clock

```math
dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+
```

without the lsc gap `dK_iface`, then the prelimit positive clock loses mass at compactness and the old residual-side defect problem returns. Therefore the relaxed definitions are not a cosmetic choice; they are forced by the order-of-limits repair.

## Status

This closes the object-matching gate provided the final manuscript definitions are updated to these relaxed storage and clock objects. It does not by itself prove legal residual summability.
