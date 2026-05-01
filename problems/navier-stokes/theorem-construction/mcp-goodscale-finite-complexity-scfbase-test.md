# GoodScale.TTU Under Finite-Complexity For Pack.TTU

## Status

Failed automatic implication.

## Setup

Assume a finite-complexity or integrable label-modulus theorem has closed the strain route:

```math
Pack.TTU:
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

This supplies stable same-fluid geometry.

## GoodScale target

The GoodScale target is

```math
GoodScale.TTU:
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing,
```

where

```math
\mathcal B_{\varepsilon_m}^{\Phi}
=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

## Test

The strain finite-complexity theorem controls

```math
s(a,t)=\|\operatorname{sym}\nabla u(\Phi(a,t),t)\|_{op}.
```

The SCF-base packet is a different object. It contains scale-critical velocity, pressure, and gradient quantities on moving cylinders:

```math
SCF_{base}(Q_r^\Phi).
```

Pack geometry gives uniform comparison of moving cylinders. It supplies the geometric frame for SCF estimates. It does not supply smallness of the SCF-base packet at every active terminal material point.

Therefore the strain finite-complexity route gives

```math
Pack.TTU,
```

while GoodScale requires a separate finite-complexity or modulus theorem for

```math
(a,t,r)\mapsto SCF_{base}(Q_r^\Phi(a,t)).
```

## Result

The implication

```math
Pack.TTU+\text{strain finite-complexity}
\Longrightarrow
GoodScale.TTU
```

remains open.

## Next target

A sufficient theorem is

```math
SCFBase.FiniteComplexity:
\text{terminal active SCF-base badness has a fixed finite selector,}
```

or

```math
SCFBase.Modulus:
SCF_{base}\text{ has an integrable terminal label/scale modulus.}
```

Equivalently, prove upstream exclusion of the SCF-bad material set:

```math
JumpExclusion.Upstream.
```