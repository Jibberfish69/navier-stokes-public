# MPP CycleHeatAction.A Three-Shell Test Note

## Status

Bounded theorem test for the new parabolic source-current route.

Claimed status:

```math
\boxed{
LocalizedSkewCurrent.A\ \text{passes the three-shell algebraic test,}
}
```

but

```math
\boxed{
CycleHeatAction.A\ \text{does not follow from skewness and heat dissipation alone.}
}
```

The test identifies the exact missing strengthening:

```math
\boxed{
ParabolicEdgeResistance.A.
}
```

Equivalently, the signed source-current route must prove that same-fluid
nonlinear transfer currents have a scale-local resistive cost.  Without that
edge law, abstract skew source currents can pump positive divergence faster
than the heat ledger can charge.

## Three-Shell Parabolic Model

Work on one transported physical cylinder and three dyadic shells

```math
j_1<j_2<j_3.
```

Let

```math
E_i(t)\ge0,
\qquad
H_i(t)\ge0,
\qquad
i=1,2,3,
```

denote shell packet energy and heat dissipation on the cylinder.  Let
`J_{ij}(t)=-J_{ji}(t)` be an antisymmetric scale-current.  The packet balance is

```math
\dot E_i(t)+H_i(t)
=
\sum_{m=1}^3J_{mi}(t)+L_i(t).
\tag{1}
```

After putting `L_i` into the legal ledger, the internal current contribution is

```math
S_i(t):=\sum_mJ_{mi}(t).
```

The algebraic compatibility is

```math
\sum_iS_i(t)=0.
```

Thus every zero-sum source vector `S(t)` is represented by an antisymmetric
triangle current.  This is precisely the three-shell confirmation of
`LocalizedSkewCurrent.A`.

## What `CycleHeatAction.A` Would Need

The desired elementary three-shell form is:

```math
\int_I\sum_{i=1}^3[S_i(t)]_+\,dt
\le
Flux_{\partial I}^+
+\theta\int_I\sum_{i=1}^3H_i(t)\,dt
+Loss_{legal}
+o_N(1).
\tag{CHA-3}
```

Because

```math
S_i=\dot E_i+H_i,
```

one always has the formal inequality

```math
[S_i]_+\le [\dot E_i]_+ + H_i.
\tag{2}
```

Integrating gives

```math
\int_I\sum_i[S_i]_+\,dt
\le
\sum_i \operatorname{Var}_I^+(E_i)
+\int_I\sum_iH_i\,dt.
\tag{3}
```

Therefore heat controls positive source only if the positive temporal variation
of packet energy is controlled:

```math
\boxed{
\sum_i \operatorname{Var}_I^+(E_i)
\le
C_{\mathrm{var}}
\left(
Flux_{\partial I}^+
+\theta\int_I\sum_iH_i\,dt
+Loss_{legal}
\right).
}
\tag{4}
```

This is not a consequence of skewness alone.

## Abstract Pumping Obstruction

Let `A(t)` be any skew-symmetric `3\times3` matrix preserving total energy, and
consider the model

```math
\dot E(t)+H(t)=A(t)E(t),
\qquad
H_i(t)=\lambda_iE_i(t).
\tag{5}
```

The internal source is

```math
S(t)=A(t)E(t).
```

If the entries of `A(t)` are allowed to be large, then

```math
\sum_i[S_i(t)]_+
```

can be made arbitrarily large compared with

```math
\sum_iH_i(t),
```

while the current remains perfectly antisymmetric.  Thus:

```math
\boxed{
\text{skew exchange }+\text{ heat dissipation}
\not\Longrightarrow
CycleHeatAction.A.
}
```

This is not a Navier--Stokes counterexample.  It is a counterexample to the
idea that the desired theorem is merely graph-theoretic.

## Required Strengthening: `ParabolicEdgeResistance.A`

The missing Navier--Stokes input must be an edge-resistance law for legal
same-fluid source currents.

For every legal transfer edge `e:P\to P'`, define the scale-local heat
resistance

```math
\mathcal R_e
:=
c_{\mathrm{edge}}2^{-j_e}
\left(D_P+D_{P'}+D_{halo(e)}\right),
```

with the exact normalization chosen to match the live reserve

```math
\int\sum_{j>N}2^{-j}D_j^2\,dt.
```

The theorem needed is:

```math
\boxed{
ParabolicEdgeResistance.A:
\quad
\int_I |J_e(t)|\,dt
\le
\varepsilon
\int_I\mathcal R_e(t)\,dt
+C_\varepsilon Boundary_e^+
+Loss_e
+o_N(1)
}
\tag{PER}
```

or, in square-action form,

```math
\boxed{
\int_I
\frac{|J_e(t)|^2}{D_P+D_{P'}+D_{halo(e)}}\,2^{-j_e}\,dt
\le
\int_I(D_P+D_{P'}+D_{halo(e)})\,dt
+Loss_e
+o_N(1).
}
\tag{PER2}
```

The first form is the current-capacity estimate.  The second form is the
Thomson/action estimate.  Either form gives a nontrivial cost for large
same-scale source currents.

## Conditional Graph Theorem

Assume `LocalizedSkewCurrent.A` and `ParabolicEdgeResistance.A`.  Then every
internal parabolic cycle admits a cycle decomposition

```math
J=J_{\partial}+J_{cycle}+J_{loss},
```

where `J_{\partial}` is boundary-fed, `J_{loss}` is legal loss, and each
elementary internal cycle is charged by the sum of the edge resistances along
that cycle.

By bounded overlap of the packet tree,

```math
\sum_{\text{cycles }C}\sum_{e\in C}\mathcal R_e
\le
C_{\mathrm{ov}}
\left(
\sum_{P\in\mathcal T}D_P
+o_N(1)+Loss_{legal}
\right).
```

Hence

```math
\sum_{P\in\mathcal T}
\int[\operatorname{div}_{\mathcal G}J(P)]_+\,dt
\le
Flux_{\partial\mathcal T}^+
+\theta\sum_{P\in\mathcal T}\int D_P\,dt
+Loss_{legal}
+o_N(1).
```

This is exactly:

```math
\boxed{
CycleHeatAction.A.
}
```

Therefore the direct route now factors as

```math
LocalizedSkewCurrent.A
+ParabolicEdgeResistance.A
\Longrightarrow
CycleHeatAction.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
```

## Verdict

The three-shell test does not close `CycleHeatAction.A` outright.  It sharpens
the closure problem.

What is proved/tested:

```math
\boxed{
\text{triadic shell exchange admits a skew-current ledger.}
}
```

What remains:

```math
\boxed{
ParabolicEdgeResistance.A:
\text{legal same-fluid source-current edges have heat-scale resistance.}
}
```

This is the next exact theorem.  If it is true, the source-current route closes
the direct Carleson wall.  If it is false, then terminal source pulses can be
driven by a genuine lossless or low-resistance nonlinear pumping mechanism, and
the proof must switch to a different invariant.
