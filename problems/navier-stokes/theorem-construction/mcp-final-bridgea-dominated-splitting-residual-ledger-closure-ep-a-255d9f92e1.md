# Final BridgeA Dominated-Splitting Residual-Ledger Closure

## Status

Conditional local branch theorem. The SG.4/TPS branch closes from three analytic estimates:

```text
delta_J/gamma_J -> 0,
positive-mass dominated splitting of H_J,
Lp smallness of m_J(t0), eta_off, eta_var.
```

## 1. Bridge A tensor comparison

Let

```math
\delta_J:=\|C_{al}-C_{CG}\|_{op},
```

and let `gamma_J` be a shared simple-top gap floor for `C_al` and `C_CG` on the retained strip. Davis-Kahan gives

```math
\|P_{al}-P_J^{CG}\|_F
\le
C\,\delta_J/\gamma_J.
```

Thus

```math
\delta_J/\gamma_J\to0
\Longrightarrow
\|P_{al}-P_J^{CG}\|_F\to0.
```

This proves Bridge A.

## 2. Dominated splitting

Assume on a positive-mass subfamily that the reduced cocycle `H_J` satisfies

```math
\sigma_2(H_J)/\sigma_1(H_J)\le q<1.
```

Then `sigma_1(H_J)>sigma_2(H_J)`, hence the aligned entrance gap

```math
g_0=\sigma_1(H_J)^2-\sigma_2(H_J)^2
```

is positive there. Since

```math
\{g_0>0\}=\bigcup_{n\ge1}\{g_0\ge1/n\},
```

there exists `kappa>0` such that `mu{g_0>=kappa}>0`. This supplies `DG-Line^sharp` on a retained positive-mass subfamily.

## 3. Initial residual

Assume

```math
\|m_J(t_0)\|_{L^p}\to0.
```

This closes the initial residual component.

## 4. Off-axis forcing

Assume

```math
\|\eta_{off}\|_{L^p}\to0.
```

This closes the off-axis forcing component.

## 5. Strain-variation / gap budget

Assume

```math
\|\eta_{var}\|_{L^p}\to0.
```

This closes the strain-variation / gap component.

## 6. eta_mb closure

By definition,

```math
\eta_{mb}=|m_J(t_0)|+\eta_{off}+\eta_{var}.
```

Minkowski gives

```math
\|\eta_{mb}\|_{L^p}
\le
\|m_J(t_0)\|_{L^p}
+
\|\eta_{off}\|_{L^p}
+
\|\eta_{var}\|_{L^p}.
```

Therefore the three residual estimates imply

```math
\|\eta_{mb}\|_{L^p}\to0.
```

## 7. Final branch fire

Choose retained-family thresholds so

```math
\sum_i\varepsilon_i<\frac12\mu(G_{gap}).
```

Then the retained common family has positive mass, and the installed branch handoff fires:

```text
Bridge A + DG-Line^sharp + eta_mb smallness
=> D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B
```

## Remaining analytic premises

```text
delta_J/gamma_J -> 0,
positive-mass dominated splitting of H_J,
Lp smallness of m_J(t0), eta_off, eta_var.
```