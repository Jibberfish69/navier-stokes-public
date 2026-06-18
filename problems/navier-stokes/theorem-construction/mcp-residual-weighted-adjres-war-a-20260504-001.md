# Residual split and `WeightedAdjRes.A`

## Status

Local theorem note for the principal-flow adjoint route.

Claimed status: conditional. The pressure component requires either a Leray-projected packet frame or an equivalent pressure-normalized residual theorem on the same packet carrier.

## Theorem `WAR.A`

Let

```math
L_{j,k}=\partial_t+b_k\cdot\nabla-\nu\Delta-A_k,
\qquad b_k=u_{\le k},
```

and let the localized high-frequency packet equation be

```math
L_{j,k}w_j=R.
```

After extracting the principal strain into `A_k`, decompose

```math
R=R^{comm}+R^{press}+R^{cut}+R^{off}.
```

Assume the four component estimates

```math
\|R^{comm}\|_{L_t^2H_x^{-1}}^2
\le C c_M^2\int_I\sum_{q>N}D_q(t)\,dt,
```

```math
\|R^{press}\|_{L_t^2H_x^{-1}}^2
\le C\int_I\sum_{q>N}D_q(t)\,dt+o_N(1),
```

```math
\|R^{cut}\|_{L_t^2H_x^{-1}}^2
\le \eta\int_I\sum_{q>N}D_q(t)\,dt+o_N(1),
```

and

```math
\|R^{off}\|_{L_t^2H_x^{-1}}^2=o_N(1).
```

Then

```math
\boxed{
\|R\|_{L_t^2H_x^{-1}}^2
\le C\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
}
\tag{ResidualPair.A}
```

Together with `WeightedAdjBessel.A`, this implies

```math
\boxed{
\sum_Tg_T^{-2}
\left|
\int_{I_T}\langle R,\psi_T\rangle\,dt
\right|^2
\le C\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
}
\tag{WeightedAdjRes.A}
```

## Proof of the component estimates

### 1. Commutator term

The commutator term consists of the strict low-high mismatch generated when `b_k\cdot\nabla` is localized to shell `j`:

```math
R^{comm}_{j,k}=[P_j,b_k\cdot\nabla]w_j
```

plus the fixed adjacent-shell variants. Since `k<j-M`, Coifman-Meyer and Bernstein give

```math
\|R^{comm}_{j,k}\|_2
\le c_M 2^j\|w_j\|_2,
\qquad c_M\to0 \quad(M\to\infty).
```

High-frequency localization gives

```math
\|R^{comm}_{j,k}\|_{H^{-1}}
\le C2^{-j}\|R^{comm}_{j,k}\|_2
\le Cc_M\|w_j\|_2.
```

Using the shell dissipation normalization

```math
c_D\nu 2^{2j}\|w_j(t)\|_2^2
\le D_j(t)\le
C_D\nu 2^{2j}\|w_j(t)\|_2^2
```

and the strict shell ledger, the parabolic packet scaling converts the last bound into

```math
\sum_{j>N,k<j-M}\|R^{comm}_{j,k}\|_{L_t^2H_x^{-1}}^2
\le Cc_M^2\int_I\sum_{q>N}D_q(t)\,dt.
```

### 2. Pressure term

There are two licensed forms.

In the projected form, the packet equation is written after the Leray projector. The pressure gradient is orthogonal to the solenoidal adjoint packet frame:

```math
\langle\nabla p,\psi_T\rangle=0.
```

Projection commutators are Calderon-Zygmund operators applied to the same low-high products already assigned to `R^{comm}` and `R^{coeff}`. The `H^{-1}` shell gain yields

```math
\|R^{press}\|_{L_t^2H_x^{-1}}^2
\le C\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
```

In the pressure-normalized form, solve the local pressure Poisson equation on the heat-scale carrier and subtract the local harmonic or lower-order pressure part. Calderon-Zygmund boundedness controls the localized double divergence source in `L^2`, while high-frequency localization supplies the `H^{-1}` gain. The same tail bound follows once the pressure carrier is the same carrier used by the adjoint packet family.

This is the only component whose proof is a genuine license rather than pure bookkeeping.

### 3. Cutoff term

Cutoff residuals have the form

```math
R^{cut}=\nu(2\nabla\phi\cdot\nabla w_j+w_j\Delta\phi)
+(b_k\cdot\nabla\phi)w_j
```

plus adjacent packet-boundary terms. In dual form against `v\in H^1`, integrate the first piece by parts:

```math
|\langle 2\nu\nabla\phi\cdot\nabla w_j,v\rangle|
\le \eta \nu\|\nabla w_j\|_2\|\nabla v\|_2
+C_\eta\nu\|w_j\|_2\|\nabla\phi\|_\infty^2\|v\|_2.
```

The heat-scale bounds

```math
\|\nabla\phi\|_\infty\le C_\phi r_T^{-1},
\qquad
\|\Delta\phi\|_\infty\le C_\phi r_T^{-2}
```

are part of the cutoff derivative ledger. Hence

```math
\|R^{cut}\|_{H^{-1}}^2
\le \eta D_j(t)+C_\eta Loss^{legal}_{cut}(t).
```

The legal cutoff loss is lower-order on the terminal packet family and sums to `o_N(1)` after the packet selection. Thus

```math
\|R^{cut}\|_{L_t^2H_x^{-1}}^2
\le \eta\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
```

### 4. Off-packet term

The off-packet term is supported outside the terminal heat-tube collar or in shell-separated interactions. Terminal localization and the Littlewood-Paley tail imply

```math
\sum_{j>N}\|R^{off}_j\|_{L_t^2H_x^{-1}}^2=o_N(1).
```

The bounded overlap of the tile atlas prevents the off-packet leakage from being counted with unbounded multiplicity.

## Summation

By the triangle inequality in `L_t^2H_x^{-1}` and the four component estimates,

```math
\|R\|_{L_t^2H_x^{-1}}^2
\le C\left(
\|R^{comm}\|_{L_t^2H_x^{-1}}^2
+\|R^{press}\|_{L_t^2H_x^{-1}}^2
+\|R^{cut}\|_{L_t^2H_x^{-1}}^2
+\|R^{off}\|_{L_t^2H_x^{-1}}^2
\right).
```

Choose `M` so `c_M` is absorbed and choose `\eta` below the available dissipation margin. This proves `ResidualPair.A`.

## Duality to `WeightedAdjRes.A`

Let

```math
a_T=g_T^{-1}\int_{I_T}\langle R,
\psi_T\rangle\,dt
=\int_{I_T}\langle R,\chi_T\rangle\,dt.
```

For any finitely supported `c` with `\|c\|_{\ell^2}=1`,

```math
\sum_T c_Ta_T
=
\int_I\left\langle R,
\sum_Tc_T\chi_T\right\rangle dt.
```

By Cauchy-Schwarz and `WeightedAdjBessel.A`,

```math
\left|\sum_T c_Ta_T\right|^2
\le
\|R\|_{L_t^2H_x^{-1}}^2
\left\|\sum_Tc_T\chi_T\right\|_{L_t^2H_x^1}^2
\le C\|R\|_{L_t^2H_x^{-1}}^2.
```

Taking the supremum over unit `\ell^2` coefficient families gives

```math
\sum_T|a_T|^2
\le C\|R\|_{L_t^2H_x^{-1}}^2.
```

Combining with `ResidualPair.A` proves `WeightedAdjRes.A`.

## Boundary of the result

This note proves the residual-to-adjoint-pairing implication and gives the component estimates under their exact packet-frame licenses. The pressure term remains the decisive live license if the principal packet equation is not built in the projected solenoidal class.
