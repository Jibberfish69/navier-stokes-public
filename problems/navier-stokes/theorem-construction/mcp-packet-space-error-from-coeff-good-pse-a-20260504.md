# Packet-space error control from coefficient-good tiles `PSE.A`

## Status

Claimed local discharge for the packet-space perturbation estimate used by `AHP.A`, in affine coordinates.

## Statement

Let

```math
y=J_T(t)^{-1}(x-X_T(t))
```

be the affine packet frame. After affine low-flow extraction and central strain gauging, write the pulled-back equation as

```math
(-\partial_t-\nu\nabla_y\cdot(B_T(t)\nabla_y))\varphi_T
=\mathcal E_T(t)\varphi_T.
```

Assume the coefficient-good budget

```math
\int_{I_T}
\left[
r_T^2\|\nabla^2b_k(t)\|_{L^\infty(Q_T^*)}
+r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}
\right]dt
\le\varepsilon_M.
```

Define the Gaussian packet norm

```math
\|u(t)\|_{\mathcal P_N}
=
\max_{|\alpha|\le N}
\sup_y r_T^{3/2+|\alpha|}
 e^{a|y|^2/r_T^2}|\partial_y^\alpha u(y,t)|.
```

Then there is a nonnegative density

```math
\beta_T(t)
\le C_{PSE}
r_T^2\|\nabla^2b_k(t)\|_{L^\infty(Q_T^*)}
+r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}
+2^{-cM}\omega_T(t)
```

with

```math
\int_{I_T}\beta_T(t)dt\le C\varepsilon_M+C2^{-cM},
```

such that the affine heat propagator satisfies

```math
\|H_T(t,s)\mathcal E_T(s)u(s)\|_{\mathcal P_N}
\le C\beta_T(s)\|u(s)\|_{\mathcal P_{N+1}}
```

for `t\le s`. Consequently,

```math
\|\mathcal E_T\|_{L_t^1(\mathcal P_{N+1}\to\mathcal P_N)}
\le C\varepsilon_M+C2^{-cM}.
```

In particular the perturbation is small in the packet calculus used by `AHP.A`.

## Proof

The affine extraction cancels the zeroth and first transport coefficients at the packet center. Taylor expansion gives, for `x=X_T+J_Ty`,

```math
b_k(x,t)-b_k(X_T,t)-\nabla b_k(X_T,t)(x-X_T)
=
\int_0^1(1-\theta)
\nabla^2 b_k(X_T+\theta J_Ty,t)[J_Ty,J_Ty]d\theta.
```

On the affine heat tube `|y|\le C_T r_T`, this gives

```math
|b_{rem}(y,t)|\le C r_T^2\|\nabla^2b_k(t)\|_{L^\infty(Q_T^*)}.
```

The term `b_{rem}\cdot J_T^{-T}\nabla_y u` therefore contributes, after applying one heat kernel derivative and rescaling by `r_T`, at most

```math
C r_T^2\|\nabla^2b_k(t)\|_{L^\infty(Q_T^*)}\|u\|_{\mathcal P_{N+1}}.
```

The central strain gauge cancels `A_k(X_T,t)`. The remaining matrix is

```math
A_k(X_T+J_Ty,t)-A_k(X_T,t),
```

and Taylor expansion gives

```math
|A_k(X_T+J_Ty,t)-A_k(X_T,t)|
\le C r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}
```

on the heat tube. Thus the strain remainder contributes at most

```math
C r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}\|u\|_{\mathcal P_N}.
```

Terms generated outside the strict tube are handled by the Gaussian weight. Polynomial factors such as `|y|/r_T` and `|y|^2/r_T^2` satisfy

```math
(1+|y|/r_T)^m e^{-a|y|^2/r_T^2}
\le C_{m,a,a'}e^{-a'|y|^2/r_T^2}
```

for `a'<a`, so the same estimates hold globally in the packet norm.

Cutoff terms are legal heat-scale commutators. For a cutoff `\theta_T` with

```math
|\partial_y^m\theta_T|\le C_m r_T^{-m},
```

the commutators

```math
[\Delta_y,\theta_T]u,
\qquad
[\partial_t+b_{aff}\cdot\nabla_y,\theta_T]u
```

are finite sums of heat-scale derivative terms. The packet atlas assigns these to a legal collar whose leakage is bounded by `C_M2^{-cM}` after the shell gap and terminal localization. They therefore contribute `2^{-cM}\omega_T(t)` with `\int\omega_T\le C_\omega`.

The affine heat kernel is spatially Gaussian and maps `\mathcal P_N` to itself, losing only the derivative already accounted for above. Combining the three classes of terms gives the displayed estimate for `H_T(t,s)\mathcal E_T(s)u(s)`.

Integrating the density over `I_T` and using coefficient-goodness yields

```math
\int_{I_T}\beta_T(t)dt\le C\varepsilon_M+C2^{-cM}.
```

This proves `PSE.A`.

## Consequence

`AHP.A` no longer needs a separate abstract packet-space hypothesis for `\mathcal E_T`. On coefficient-good tiles, that estimate follows from the stated remainder budget and the legal heat-scale cutoff ledger.

## Boundary

This result is an affine-metric packet estimate. Converting the final Gaussian into the physical isotropic form

```math
\exp(-c|x-X_T(t)|^2/r_T^2)
```

requires a separate uniform aspect-ratio bound for `J_T`, or else the correct bound remains in the affine distance `|J_T^{-1}(x-X_T)|`.
