# ResidualPair.A conditional decomposition

## Status

Conditional theorem-facing decomposition. The residual square estimate is reduced to explicit packet-frame licenses. The commutator, cutoff, coefficient-remainder, and off-packet terms have standard dissipation controls under the coefficient-good same-fluid packet hypotheses. The pressure term requires a projected / solenoidal packet-frame license or an equivalent pressure-normalized residual theorem.

## Target

For the principal-flow packet equation

```math
L_{j,k}w_j=R_{j,k},
\qquad
L_{j,k}=\partial_t+b_k\cdot\nabla-\nu\Delta-A_k,
\qquad b_k=u_{\le k},
```

prove

```math
\boxed{
ResidualPair.A:
\quad
\|R\|_{L_t^2H_x^{-1}}^2
\le
C\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
}
```

This is the dissipation side of `WeightedAdjRes.A` in the parent-or-charge drain route.

## Decomposition

Use the residual split

```math
R=R^{coeff}+R^{comm}+R^{press}+R^{cut}+R^{off}.
```

Here:

- `R^{coeff}` is the affine-frame low-flow and oscillatory strain remainder after extracting the central transport and central strain gauge;
- `R^{comm}` is the low-high / strict shell commutator remainder;
- `R^{press}` is the pressure or Leray-projection residual;
- `R^{cut}` is the packet cutoff commutator;
- `R^{off}` contains shell-separated and off-packet interactions.

## 1. Coefficient-good remainder

On coefficient-good tiles the stopped coefficient budget is

```math
\mathcal C(T)
:=\int_{I_T}
\left[r_T^2\|\nabla^2b_k\|_{L^\infty(Q_T^*)}
+r_T\|\nabla A_k\|_{L^\infty(Q_T^*)}\right]dt
\le \varepsilon_M.
```

After extracting the affine low-flow frame and central strain matrix, each remaining coefficient error carries this `\varepsilon_M` factor. In heat-scale units this gives

```math
\|R^{coeff}\|_{L_t^2H_x^{-1}}^2
\le C\varepsilon_M^2\int_I\sum_{q>N}D_q(t)dt.
```

Thus `R^{coeff}` is absorbable after choosing the shell gap / coefficient stopping parameter so that `\varepsilon_M` is small.

## 2. Commutator residual

The strict low-high commutator is absorbable only after the following two
estimates are proved on the same coefficient-good collar. First, Bernstein on a
`j`-shell gives the exact residual conversion

```math
\|R^{comm}_{j,k}\|_{H^{-1}}
\le C_{H^{-1}}2^{-j}\|R^{comm}_{j,k}\|_2.
```

Second, the strict scale gap and coefficient-good collar must supply the
Coifman--Meyer commutator bound

```math
\|R^{comm}_{j,k}\|_2
\le C_{CM}c_M\,\nu^{1/2}2^{2j}\|w_j\|_2,
\qquad c_M\to0
```

after the gap/stopping parameters are chosen. Together these give

```math
\|R^{comm}_{j,k}\|_{H^{-1}}
\le C_{H^{-1}}2^{-j}\|R^{comm}_{j,k}\|_2
\le C_{CM}c_M\,\nu^{1/2}2^j\|w_j\|_2,
```

where `c_M\to0` after the strict scale gap and coefficient-good collar are
enforced. Therefore

```math
\sum_{j>N,k<j-M}\|R^{comm}_{j,k}\|_{L_t^2H_x^{-1}}^2
\le Cc_M^2\int_I\sum_{q>N}D_q(t)dt.
```

This imports the repaired gradient commutator and low-pass collar estimates only at the residual `H^{-1}` level, where the high-frequency derivative loss is cheaper than in the previous active-square routes.

## 3. Cutoff residual

The packet cutoff identity gives a viscous commutator of the form

```math
\mathcal C^{cut}
=-4\nu\int \phi f\,\nabla\phi\cdot\nabla f.
```

Cauchy yields

```math
|\mathcal C^{cut}|
\le \eta\nu\int \phi^2|\nabla f|^2
+C_\eta\nu\|\nabla\phi\|_\infty^2\int |f|^2.
```

On a heat-scale coefficient-good packet, the derivative ledger for `\phi` is part of the legal packet-factor budget. Hence

```math
\|R^{cut}\|_{L_t^2H_x^{-1}}^2
\le
\eta\int_I\sum_{q>N}D_q(t)dt+Loss_{cut}^{legal}+o_N(1).
```

The cutoff term is controlled once the packet-factor derivative ledger is admitted into the same residual pairing budget.

## 4. Off-packet residual

For shell-separated and off-packet interactions, the fixed collar / terminal-tail localization gives

```math
\sum_{j>N}\|R^{off}_{j}\|_{L_t^2H_x^{-1}}^2=o_N(1),
```

provided the tile atlas has bounded overlap and the off-packet shell leakage is measured after the same terminal localization used by the adjoint packets.

## 5. Pressure residual and exact license

There are two lawful closures for the pressure component.

### Projected packet closure

If the principal packet equation is written after applying the Leray projection and the adjoint packet frame is solenoidal for the projected operator, then pressure is absent from the residual pairing:

```math
\langle \nabla p,\psi_T\rangle=0.
```

The remaining projection commutators are Calderon-Zygmund operators and are absorbed into `R^{comm}` or `R^{coeff}`.

### Pressure-normalized closure

If the packet frame is not exactly projected, one needs a local Poisson / pressure-normalization estimate on the same heat-scale carrier:

```math
\|R^{press}\|_{L_t^2H_x^{-1}}^2
\le C\int_I\sum_{q>N}D_q(t)dt+o_N(1).
```

This is a separate license because pressure recovery can import product-source carriers that are stronger than the residual-pairing budget. It must be proved on the same localized packet frame used by `\psi_T`.

## Conditional theorem

The exact conditional result is

```math
\boxed{
CoeffGood.A
+ProjectedPacketPressure.A
+CutoffLedger.A
+OffPacketTail.A
\Longrightarrow ResidualPair.A.
}
```

Equivalently, if `ProjectedPacketPressure.A` is replaced by `PressureNormalizedResidual.A`, the same conclusion follows.

## Proof summary

Sum the five component estimates. Choose `M` large so `\varepsilon_M+c_M` is absorbable, choose cutoff absorption parameter `\eta` below the available dissipation margin, and send `N\to\infty` in the off-packet tail. This gives

```math
\|R\|_{L_t^2H_x^{-1}}^2
\le C\int_I\sum_{q>N}D_q(t)dt+o_N(1).
```

## Claimed status

Conditional. The next theorem-facing target is `ProjectedPacketPressure.A`: construct the principal-flow adjoint packet frame in the Leray-projected divergence-free class, or prove an equivalent same-carrier pressure-normalized residual estimate. Without that pressure license, `ResidualPair.A` remains conditional rather than installed.
