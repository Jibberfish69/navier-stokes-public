# GoodScale.TTU — SCF-Bad Point Typing Refinement

## Status

Conditional endpoint-grammar typing theorem.

## Active SCF-bad point

An active terminal material point is SCF-bad when

```math
(a,t)\in\mathcal B_{\varepsilon_m}^{\Phi}
```

where

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

Equivalently, the material point has no positive same-fluid SCF-good cylinder.

## Typing result

By `CAVG.J`, a terminal active tail meeting this bad material set enters the averaged jump face:

```math
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

Thus the SCF-bad point refinement is

```math
\boxed{
\text{active terminal SCF-bad point}
\Longrightarrow
Jump_{avg}.
}
```

## Relation to other faces

The implication to `tower-blown` requires extraction of unbounded finite-depth
tower amplitude from persistent scale-critical badness. That is a separate
concentration-to-tower theorem.

The implication to `packing-detached` requires extraction of pack-gauge escape
from persistent scale-critical badness. That is a separate concentration-to-pack
theorem.

The current grammar-level consequence is therefore exactly

```math
Jump_{avg}.
```

## Consequence for GoodScale.TTU

The GoodScale target

```math
GoodScale.TTU:
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing
```

is equivalent, at the endpoint grammar level, to upstream exclusion of `Jump_avg`:

```math
JumpExclusion.Upstream:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\neg Jump_{avg}.
```

## Boundary

`READ.COVER` and `End_NS_avg` exclude `Jump_avg` only downstream. They cannot be used as upstream inputs for this theorem.
