# Uniform Local Hs Bounds For Expanding Periodic Boxes

## Target

For every fixed ball `B_R`, finite time `T`, and `s>5/2`, prove

```math
\sup_n\sup_{t\le T}\|u_n(t)\|_{H^s(B_R)}<\infty
```

for periodic box solutions `u_n` on `T^3_{L_n}`, `L_n\to\infty`.

## Theorem `LocalHs.EXH`

Assume the localized Euclidean cascade scheduler, exterior energy tightness, and pressure-tail convergence. Then the uniform local `H^s` bound holds on every fixed interior ball.

## Proof

Choose a cutoff `\chi` supported in `B_{2R}` and equal to one on `B_R`. Localize the equation for `v_n=\chi u_n`. The localized equation is Navier-Stokes on `B_{2R}` with commutator forcing from the cutoff and a pressure term split into local Poisson plus exterior tail.

The localized cascade scheduler gives high-frequency control:

```math
\sup_{t\le T}E_{N,R}^{(n)}(t)+\int_0^T D_{N,R}^{(n)}(t)dt\le C_{T,R,N}
```

with constants independent of `n` once `B_{2R}` lies far inside the periodic box.

The low frequencies below `N` are finite in number. Local energy, local smoothing, and the pressure-tail theorem give uniform bounds for those modes on `B_{2R}`. Combining low modes and high-tail control yields a local `H^1` and then local higher-order parabolic bootstrap.

For derivatives up to order `s`, differentiate the localized equation. The nonlinear commutators are controlled by the already obtained lower-order local bounds and the high-tail scheduler. The pressure derivatives are controlled by local Calderon-Zygmund/Schauder estimates plus the pressure-tail theorem.

Induction over derivative order gives

```math
\sup_n\sup_{t\le T}\|u_n(t)\|_{H^s(B_R)}<\infty.
```

## Boundary

This theorem supplies local uniform regularity once exterior tightness and localized cascade estimates are available. It does not derive those exterior budgets from periodic smoothness alone.