# SCFBase.FiniteComplexity — Moving Bad Packet Test

## Status

Failed as a consequence of the current endpoint definitions.

## Target

Test whether the active terminal SCF-bad set has a finite-complexity structure preventing moving bad packets:

```math
SCFBase.FiniteComplexity
\Longrightarrow
GoodScale.TTU.
```

## Bad set

The active SCF-bad material set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

GoodScale asks for

```math
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing.
```

## Moving bad packet model

A continuum active label family can support a moving bad packet pattern. At terminal times `t_n\uparrow T_*`, the bad scale-critical packet may concentrate near fresh labels `a_n`, while every fixed finite label selector avoids all but finitely many bad packets.

This pattern is consistent with threshold witnesses:

```math
\forall n\ \exists a_n,r_n:
SCF_{base}(Q_{r_n}^\Phi(a_n,t_n))>\varepsilon_m.
```

It is incompatible with a fixed finite selector theorem unless an additional finite-complexity rule prevents the labels `a_n` from escaping through the continuum.

## Role of Pack.TTU

`Pack.TTU` gives bounded same-fluid distortion and stable comparison of moving cylinders. It does not bound the number of active label cells where `SCF_base` can become bad. It also does not impose a fixed finite selector for the bad set.

## Role of SCF-bad upgrade

The upgrade

```math
SCF\text{-}bad\Longrightarrow tower\text{-}blown
```

is endpoint typing. It does not produce a finite selector for all bad packets.

## Required finite-complexity theorem

A sufficient theorem would be

```math
SCFBase.FiniteComplexity:
\exists\text{ finite cells }C_1,\dots,C_J
```

such that every active SCF-bad cylinder is controlled by one cell representative, with no moving-spike loss.

Equivalently, a fixed finite selector must capture all terminal bad SCF packets.

## Verdict

`SCFBase.FiniteComplexity` remains open. The current endpoint definitions provide threshold witnesses, while fixed finite-complexity requires an additional theorem.