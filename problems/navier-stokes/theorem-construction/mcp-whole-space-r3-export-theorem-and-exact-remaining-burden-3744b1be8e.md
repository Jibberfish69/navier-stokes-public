# Whole-Space R3 Export Theorem And Exact Remaining Burden

## Status

Theorem-facing export reduction for the whole-space branch. This note records what is actually proved by the Euclidean export surfaces and what remains to be proved for the `R^3` Clay branch.

## Clay Whole-Space Target

For every smooth divergence-free rapidly decaying datum

```math
u^0\in C^\infty(\mathbb R^3;\mathbb R^3),\qquad \nabla\cdot u^0=0,
```

with `f=0`, prove a global smooth solution on `\mathbb R^3` with finite energy for all time.

## Theorem `R3.Export`

Assume the earlier CM-to-Euclidean export splice supplies the actual Euclidean carrier/readout surface. Assume the downstream Euclidean package:

```math
(A1a)\quad \forall u^0\in\mathcal D_{Clay}\;\exists X_0\in\mathcal K_{Euc}\text{ with }\mathcal C(X_0)=u^0,
```

```math
(A1b)\quad u=\mathcal C(X)\text{ solves exact classical Navier-Stokes on }\mathbb R^3,
```

```math
(A1c)\quad \sup_{t\ge0}\|X(t)\|_{H_D^s}<\infty\quad\text{for some }s>5/2.
```

Then the whole-space `R^3` Clay branch follows.

## Proof

Fix arbitrary Clay datum `u^0`. By `(A1a)`, choose an admissible carrier datum `X_0` with `\mathcal C(X_0)=u^0`.

By `(A1c)`, the carrier solution exists globally with bounded `H_D^s` norm. Set

```math
u(t):=\mathcal C(X(t)).
```

By `(A1b)`, `u` solves the exact classical incompressible Navier-Stokes equations on `\mathbb R^3` with datum `u^0`. The strict-shadow/norm comparison gives

```math
\sup_{t\ge0}\|u(t)\|_{H^s}
\le
C\sup_{t\ge0}\|X(t)\|_{H_D^s}<\infty.
```

Since `s>5/2`, the classical continuation criterion prevents any finite-time classical breakdown. The energy inequality supplies finite energy for all time. Thus the whole-space branch follows for the arbitrary datum `u^0`.

## Realized Classical Carrier Reduction

On the realized classical Euclidean carrier, `carrier-realization-classical-identification.md` gives

```math
\mathcal C=Id,
\qquad
X=u,
\qquad
H_D^s=H^s_\sigma(\mathbb R^3).
```

Therefore `(A1a)` and `(A1b)` are automatic:

```math
X_0:=u^0,
\qquad
\mathcal C(X_0)=u^0,
```

and the carrier equation is exactly the Leray-projected classical Navier-Stokes equation.

On this realized branch, the whole-space export theorem reduces to the single remaining statement

```math
(A1c_R):\quad
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb R^3)}<\infty
\quad(s>5/2)
```

for arbitrary smooth rapidly decaying divergence-free data. This is precisely the global regularity control needed on `\mathbb R^3`.

## Localization / Exhaustion Route

A periodic-to-whole-space export would need an additional theorem. Let `u^0_R` be periodic-box or cut-off approximations of `u^0` on boxes of size `R`. Periodic global regularity gives smooth `u_R`, but the passage `R\to\infty` requires uniform-in-`R` estimates:

```math
\sup_{t\le T}\|u_R(t)\|_{H^s(B_{R/2})}\le C_T,
```

uniform pressure-tail control for

```math
-\Delta p_R=\partial_i\partial_j(u_{R,i}u_{R,j}),
```

and exterior decay/tightness

```math
\sup_{t\le T}\int_{|x|>R_0}|u_R(x,t)|^2dx\to0\qquad(R_0\to\infty),
```

uniformly along the exhaustion. With these bounds, local compactness plus pressure-tail convergence gives an `R^3` classical limit.

## Export Obstruction

The closed periodic branch supplies compact-domain terminal continuation. It does not automatically supply the three uniform exhaustion estimates above. Torus compactness loses exterior decay, and periodic pressure lacks the whole-space harmonic/far-field normalization unless pressure-tail convergence is proved.

Thus the periodic closure is a strong internal theorem surface, while whole-space export still requires one of the following exact whole-space theorems:

1. `(A1c_R)` direct global `H^s(\mathbb R^3)` control on the realized carrier;
2. an exhaustion theorem with uniform local `H^s`, pressure-tail, and exterior-decay bounds;
3. one of the classical ladder theorems `(C1)` or `(C2)` from the discharge ladder;
4. a strict-shadow global carrier-control theorem `(A1c)` on a genuine Euclidean exported carrier.

## Boundary

This note proves the conditional whole-space export theorem and identifies the exact remaining whole-space burden. It does not claim that periodic closure alone exports to `R^3`.