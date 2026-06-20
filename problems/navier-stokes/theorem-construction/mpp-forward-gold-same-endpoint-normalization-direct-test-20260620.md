# Same Endpoint Normalization Direct Test

Date: 2026-06-20

## Status

Direct theorem test complete.  `SameEndpointNormalization.A` is not installed by
Zeno compactness or by the existence of selected receiver/donor packets.  It is
an exact parabolic-gauge alignment statement.

The theorem closes only after the relative parabolic transform from the remote
donor endpoint gauge to the receiver endpoint gauge converges to the identity,
up to legal symmetry.  This is one concrete component of
`ZenoNoDriftUniqueTangent.A`.

## 1. Endpoint gauges

Let the receiver endpoint packet have center, time, scale, and rotation

```math
(x_R,t_R,r_R,O_R),
\qquad
r_R>0,
\qquad
O_R\in SO(3).
\tag{SEN.1}
```

Let the remote donor endpoint have

```math
(x_D,t_D,r_D,O_D),
\qquad
r_D>0,
\qquad
O_D\in SO(3).
\tag{SEN.2}
```

The receiver normalized variables are

```math
y_R
=
O_R^{-1}{x-x_R\over r_R},
\qquad
s_R
=
{t-t_R\over r_R^2}.
\tag{SEN.3}
```

The donor normalized variables are

```math
y_D
=
O_D^{-1}{x-x_D\over r_D},
\qquad
s_D
=
{t-t_D\over r_D^2}.
\tag{SEN.4}
```

## 2. Relative parabolic transform

Expressing the donor coordinates in the receiver gauge gives

```math
y_R
=
A_{RD}y_D+b_{RD},
\tag{SEN.5}
```

where

```math
A_{RD}
=
{r_D\over r_R}O_R^{-1}O_D,
\qquad
b_{RD}
=
O_R^{-1}{x_D-x_R\over r_R}.
\tag{SEN.6}
```

For time,

```math
s_R
=
\alpha_{RD}s_D+\tau_{RD},
\tag{SEN.7}
```

where

```math
\alpha_{RD}
=
{r_D^2\over r_R^2},
\qquad
\tau_{RD}
=
{t_D-t_R\over r_R^2}.
\tag{SEN.8}
```

Thus same endpoint normalization is the exact statement

```math
A_{RD}\to I,
\qquad
b_{RD}\to0,
\qquad
\alpha_{RD}\to1,
\qquad
\tau_{RD}\to0,
\tag{SEN.9}
```

after quotienting only by declared legal profile symmetries.

Equivalently,

```math
{r_D\over r_R}\to1,
\qquad
O_R^{-1}O_D\to I,
\qquad
{x_D-x_R\over r_R}\to0,
\qquad
{t_D-t_R\over r_R^2}\to0.
\tag{SEN.10}
```

## 3. Conditional endpoint coherence

Let `psi_i` be a finite smooth mode test with a uniform modulus on the normalized
packet domain:

```math
|\psi_i(y,s)-\psi_i(y',s')|
\le
\omega(|y-y'|+|s-s'|),
\qquad
\omega(\rho)\downarrow0.
\tag{SEN.11}
```

If `(SEN.9)` holds, then evaluating donor and receiver endpoints in the same
receiver gauge gives

```math
\max_i
|\psi_i(R)-\psi_i(D)|
\le
\omega(
\|A_{RD}-I\|+|b_{RD}|+|\alpha_{RD}-1|+|\tau_{RD}|
)
\longrightarrow0.
\tag{SEN.12}
```

Therefore

```math
\boxed{
\text{RelativeParabolicGaugeConvergence.A}
+
\text{FiniteModeUniformContinuity.A}
\Longrightarrow
\text{SameEndpointNormalization.A}
}
\tag{SEN.13}
```

for the finite smooth mode test class.

## 4. What compactness does not supply

Local suitable compactness can give a subsequential limit in one chosen
normalization.  It does not force a second endpoint normalization to be
asymptotically identical to the first.

There are four independent failures.

### 4.1 Scale-ratio drift

If

```math
{r_D\over r_R}\to\lambda\ne1,
\tag{SEN.14}
```

then `A_RD` converges to a dilation, not the identity.  A non-scale-invariant
mode sees a nonzero endpoint difference.

### 4.2 Center drift

If

```math
{x_D-x_R\over r_R}\to a\ne0,
\tag{SEN.15}
```

then `b_RD` does not vanish.  A translated donor endpoint is a different point
in the receiver gauge.

### 4.3 Time-face drift

If

```math
{t_D-t_R\over r_R^2}\to \theta\ne0,
\tag{SEN.16}
```

then the donor endpoint lies on a different normalized heat-time slice.  This
is exactly the heat-scale terminal pulse geometry.

### 4.4 Rotation or internal symmetry drift

If

```math
O_R^{-1}O_D\not\to I
\tag{SEN.17}
```

modulo the stabilizer of the selected profile, non-radial mode tests need not
agree at the endpoint.

Each failure preserves Zeno compactness in a separately chosen gauge.  The
missing theorem is the convergence of the relative gauge.

## 5. Exact reduction

At current input strength,

```math
\boxed{
\text{SameEndpointNormalization.A}
\Leftarrow
\text{ScaleRatioLock.A}
+
\text{CenterLock.A}
+
\text{HeatTimeFaceLock.A}
+
\text{RotationGaugeLock.A}.
}
\tag{SEN.18}
```

These four locks are exactly the coordinate form of the no-drift/unique-tangent
claim.

`SelectorStability.A` remains separate: it says the two endpoint packets are
being compared on the same selected branch.  `(SEN.18)` only says that, once the
two endpoints are chosen, their parabolic gauges align.

## 6. Relation to source-square and no-waste

A source-square, critical-action, or strict no-waste theorem can avoid proving
`(SEN.18)` by paying the endpoint difference directly in the telescoping
identity:

```math
\sum_\alpha a_\alpha
\bigl(
\|A_{\alpha,N}-I\|
+|b_{\alpha,N}|
+|\alpha_{\alpha,N}-1|
+|\tau_{\alpha,N}|
\bigr)
\le
\operatorname{Legal}_N+o_N(1).
\tag{SEN.19}
```

Without such a payment, endpoint normalization has to be proved as a rigidity
statement.

## Verdict

`SameEndpointNormalization.A` is not a formal coordinate choice.  The relative
parabolic transform between the donor endpoint and receiver endpoint must
converge to the identity.

The exact unresolved content is the four-lock package:
`ScaleRatioLock.A`, `CenterLock.A`, `HeatTimeFaceLock.A`, and
`RotationGaugeLock.A`, or an equivalent no-drift/unique-tangent theorem.
