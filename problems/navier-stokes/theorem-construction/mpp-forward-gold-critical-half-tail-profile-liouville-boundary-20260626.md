# Critical half-tail profile Liouville boundary

Status: local Liouville route fails; global packing hinge isolated.

## 1. Target

The strict-good-lambda half-barrier leaves one apparent profile route:

```math
\text{exclude a material-time high-ratio profile with unit normalized action and vanishing raw heat mass.}
\tag{CHL.1}
```

The hoped-for conclusion is a strict tail gain

```math
N_L\lesssim2^{-(1+\varepsilon)L}
\tag{CHL.2}
```

or the equivalent full-clock estimate

```math
\sum_\ell2^\ell\nu_\ell<\infty.
\tag{CHL.3}
```

## 2. Local profile test

The existing material-time Liouville audit supplies the decisive local obstruction. Let

```math
u(x,t)=B(t)x,
\qquad
\operatorname{tr}B(t)=0,
\qquad
B(t)=B(t)^T.
```

Then

```math
\partial_tu+(u\cdot\nabla)u=(\dot B+B^2)x,
\qquad
\Delta u=0.
```

With pressure

```math
p(x,t)=-{1\over2}x\cdot(\dot B+B^2)x,
```

the local incompressible Navier--Stokes equation holds:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p-\nu\Delta u=0,
\qquad
\nabla\cdot u=0.
```

For `B\ne0`, this is a genuine strain/profile packet. It carries material-time participation-law-strain action while the affine core has zero raw heat loss.

## 3. Global periodic matching scale

Periodic localization and divergence-free collar matching restore the full global equation at heat scale. The installed localized-affine audits keep the scaling

```math
\text{raw physical cost}=O(r),
\qquad
\text{normalized material action}=O(1).
\tag{CHL.4}
```

Thus a terminal chain with radii `r_k\downarrow0` and `\sum_k r_k<\infty` has finite raw energy/dissipation cost while carrying infinitely many unit normalized material-time action packets.

This confirms the critical half-tail shape:

```math
\nu_\ell\sim {2^{-\ell}\over \ell+1},
\qquad
N_L\sim {2^{-L}\over L+1}.
\tag{CHL.5}
```

The local Liouville route therefore cannot supply the strict good-lambda coefficient below `1/2`.

## 4. Exact remaining theorem

A valid theorem must use the original global history more strongly than local profile exclusion. The surviving statement is:

```math
\boxed{\text{GlobalCriticalHalfTailPackingExclusion.A}}
```

Statement:

For one original smooth incompressible Navier--Stokes material history, prove that an infinite terminal sequence of localized affine/material-time high-ratio profiles with unit normalized full PLS action cannot be packed with summable raw heat/viscous/fixed-annulus cost.

Equivalently, prove a global same-history packing law strong enough to beat the critical tail:

```math
N_L=o(2^{-L}/L)
```

in weighted summable form, or prove a bounded-below same-material storage that charges each such packed profile once.

## 5. Result

The local material-time profile Liouville route is exhausted. The next live hinge is a global same-history packing theorem for the critical half-tail. This is sharper than the previous forward-native-reserve statement: it names the exact enemy profile and the exact scaling that survives all currently installed raw ledgers.