# Unconditional Carrier HFG Replay Blocked By Same-Rung Coefficient

## Target

The intended unconditional replay was

```math
carrier\ low\text{-}mode\ export
\Rightarrow HFG
\Rightarrow Part+Field+\mathfrak A_{N,Q}
\Rightarrow H1+H2+H6+ORIGIN.Retain
\Rightarrow LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

## Precondition check

The replay requires an unconditional carrier low-mode export:

```math
\|\nabla S_j u\|_\infty\le c\nu2^{2j}
```

on all shells needed by HFG.

The carrier route has this only conditionally, under finite lifted carrier energy and absorbed exported remainders. The finite lifted carrier energy route requires an Osgood-subcritical `\Phi_s` in

```math
E'(t)+c\Xi(t)\le C\Phi_s(E(t)).
```

The installed test gives

```math
c_\Phi(1+r+r^{3/2})\le \Phi_s(r)\le C_\Phi(1+r+r^{3/2})
\qquad(r\ge 0),
```

and

```math
\int_R^\infty {dr\over r^{3/2}}<\infty.
```

So the Osgood promotion branch fails.

## Structural obstruction

The source of the superlinear term is the lifted same-rung transport commutator:

```math
\langle [\Lambda_D^s,X\cdot\nabla_D]X,\Lambda_D^sX\rangle.
```

The current tame estimate gives

```math
|\langle [\Lambda_D^s,X\cdot\nabla_D]X,\Lambda_D^sX\rangle|
\le C\|\nabla_DX\|_\infty\|X\|_{H_D^s}^2.
```

On the present lifted surface,

```math
\|\nabla_DX\|_\infty\le C_D E^{1/2},
```

hence

```math
E'(t)\le C_{HFG}\big(E(t)^{3/2}+E(t)+1\big).
```

This permits scalar finite-time escape.

## Result

The unconditional replay is blocked until one of the following is installed:

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_\infty\le c\nu2^{2j}
```

from persistent-support transport, or

```math
\|\nabla_DX(t)\|_\infty\le a(t),\qquad a\in L^1_t,
```

or a readout-preserving normalization that converts the same-rung coefficient into a viscous-scale coefficient plus lower-order leakage.

## Boundary

The conditional carrier replay remains valid. The unconditional carrier-HFG-production-six-burden replay is blocked by the same-rung lifted transport coefficient.
