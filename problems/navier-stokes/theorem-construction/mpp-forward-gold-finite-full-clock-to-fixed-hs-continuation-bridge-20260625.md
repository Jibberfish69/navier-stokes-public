---
theorem_id: forward-gold-finite-full-clock-to-fixed-hs-continuation-bridge-20260625
status: proof-installed-conditional-on-finite-full-material-clock
logical_landing_node: original_smooth_data_material_history_no_finite_breakdown
edge_effect: >-
  Records the proved downstream bridge for the current material-history route:
  once the original transported material history has finite full positive clock,
  the continuation-depth material record is uniformly bounded, that record
  controls the fixed-coordinate H^s norm for any fixed s>5/2, and classical
  local Navier-Stokes theory relaunches the same solution past an alleged finite
  terminal time. This bridge is proved conditionally; it does not produce the
  missing finite full clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-clock-to-fixed-hs-continuation-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-original-smooth-data-material-history-no-finite-breakdown-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-terminal-tail-coercivity-without-full-clock-test-20260625.md
---

# Finite Full Clock To Fixed Hs Continuation Bridge

Date: 2026-06-25

## 0. Claim

Assume the original transported material history has finite full positive clock
at the continuation depth `N_s` attached to a fixed `s>5/2`:

```math
\int_{\sigma_0}^{\infty}d\Omega_{N_s}^{full}<\infty.
\tag{FHC.1}
```

Assume this clock contains the positive logarithmic material-record variation:

```math
d\Omega_{N_s}^{full}
\ge
c_s\,d[\log(1+\mathcal P_{N_s}^{mat})]_+.
\tag{FHC.2}
```

Then the same smooth solution has a uniform fixed-coordinate `H^s` bound up to
`T_*`, and standard local theory extends it past `T_*`.

## 1. Finite clock bounds the material record

The material record is finite at every preterminal base time because the
solution is classical there. For every terminal parameter `sigma >= sigma_0`,

```math
\log(1+\mathcal P_{N_s}^{mat}(\sigma))
\le
\log(1+\mathcal P_{N_s}^{mat}(\sigma_0))
+
\int_{\sigma_0}^{\sigma}
d[\log(1+\mathcal P_{N_s}^{mat})]_+.
\tag{FHC.3}
```

Using `(FHC.1)` and `(FHC.2)`,

```math
\sup_{\sigma\ge\sigma_0}\mathcal P_{N_s}^{mat}(\sigma)<\infty.
\tag{FHC.4}
```

This is the continuation-depth readout of the full material tower. It is finite
depth only because one fixed `H^s` norm is being certified; the smooth material
history itself still carries all frequencies and all derivative levels.

## 2. The material record controls fixed-coordinate Hs

Let

```math
v(a,t)=u(X(a,t),t),
\qquad
F=D_aX,
\qquad
A=F^{-1}.
\tag{FHC.5}
```

For `N_s >= ceil(s)+4`, the material record controls the velocity tower,
pressure tower, coefficient/deformation tower, transported collar, and interface
record. In particular it controls the coefficient norms needed for composition:

```math
\|A\|_{W^{\lceil s\rceil+1,\infty}_a}
+
\|F\|_{W^{\lceil s\rceil+1,\infty}_a}
+
\sum_{|\alpha|\le \lceil s\rceil+1}\|D_a^\alpha v\|_{L^2_a}.
\tag{FHC.6}
```

Because

```math
\nabla_x=A^T\nabla_a,
\tag{FHC.7}
```

every fixed-coordinate derivative `nabla_x^k u`, with `k <= ceil(s)`, is a
finite sum of products of derivatives of `A` and derivatives of `v`:

```math
\nabla_x^k u(X(a,t),t)
=
\sum_{\Gamma\in\mathcal I_k}
C_\Gamma
\left(\prod_{\nu=1}^{r_\Gamma}D_a^{\beta_{\Gamma,\nu}}A(a,t)\right)
D_a^{\gamma_\Gamma}v(a,t).
\tag{FHC.8}
```

Incompressibility gives `det F=1`, so the change of variables has no hidden
volume loss. Hence there is a nondecreasing function `C_s` such that

```math
\|u(t)\|_{H^s_x(T^3)}
\le
C_s\!\left(\mathcal P_{N_s}^{mat}(t)\right).
\tag{FHC.9}
```

Combining `(FHC.4)` and `(FHC.9)`,

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty.
\tag{FHC.10}
```

The terminal tail is controlled by the finite clock, and every compact
preterminal interval is controlled by classical smoothness.

## 3. Relaunch

For `s>5/2`, classical periodic Navier-Stokes local theory gives a lifespan
bounded below by a function of `nu` and the `H^s` bound. Choose times
`t_j upward T_*` with `T_*-t_j` smaller than that lifespan. The solution
launched from `u(t_j)` is the same classical solution by uniqueness and extends
past `T_*`.

Therefore a finite maximal classical time is impossible under `(FHC.1)`:

```math
\boxed{
\int d\Omega_{N_s}^{full}<\infty
\Longrightarrow
\text{no finite-time classical breakdown for the original smooth solution.}
}
\tag{FHC.11}
```

## 4. Boundary

This bridge is proved. It is not the missing clock producer. The MPP closure
still requires the upstream theorem

```math
\int_0^{T_*}d\Omega_{N_s}^{full}<\infty
\tag{FHC.12}
```

for the original pressure-viscosity-incompressibility-velocity material history.