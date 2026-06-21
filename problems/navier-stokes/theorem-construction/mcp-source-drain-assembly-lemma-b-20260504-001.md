# Source-drain assembly into `LemmaB.SourceDrain`

## Status

Local theorem note for the requested closure chain.

Claimed status: conditional branch-support assembly. The note assembles the packet-chain artifacts into the source-drain estimate once the stated component licenses are installed on the same tile atlas.

## Inputs

Use the chain

```math
CoeffStop.A
\Rightarrow AHP.A
\Rightarrow WeightedAdjBessel.A
\Rightarrow WeightedAdjRes.A
\Rightarrow GainStop.A
\Rightarrow ParentKernel.A
\Rightarrow FirstPulseKill.A.
```

For each child tile `T`, let `\psi_T` be the adjoint packet and set

```math
\chi_T=g_T^{-1}\psi_T.
```

Define normalized child mass

```math
M(T)=g_T^{-2}|\langle w_j(t_+(T)),\psi_T(t_+(T))\rangle|^2.
```

Define the weighted residual charge

```math
Charge(T)=g_T^{-2}\left|\int_{I_T}\langle R,
\psi_T\rangle dt\right|^2.
```

## Parent-or-charge inequality

The adjoint identity gives

```math
 g_T^{-1}\langle w_j(t_+),\psi_T(t_+)\rangle
=
\langle w_j(t_-),\chi_T(t_-)\rangle
+g_T^{-1}\int_{I_T}\langle R,\psi_T\rangle dt.
```

For any `\varepsilon>0`,

```math
M(T)
\le
(1+\varepsilon)|\langle w_j(t_-),\chi_T(t_-)\rangle|^2
+C_\varepsilon Charge(T).
```

Resolve the backward face into parent packets:

```math
|\langle w_j(t_-),\chi_T(t_-)\rangle|^2
\le
\sum_{P\prec T}\kappa(P,T)M(P),
```

with

```math
\kappa(P,T)=|\langle\phi_P,\chi_T(t_-)
\rangle|^2.
```

Thus

```math
M(T)
\le
(1+\varepsilon)\sum_{P\prec T}\kappa(P,T)M(P)
+C_\varepsilon Charge(T).
```

## Charge control

`WeightedAdjRes.A` gives

```math
\sum_T Charge(T)
\le
C\int_I\sum_{q>N}D_q(t)dt+o_N(1).
```

Bounded tree multiplicity localizes this estimate to the descendants feeding `T_0`:

```math
\sum_{T\preceq T_0} Charge(T)
\le
C\int_{Tree(T_0)}\sum_{q>N}D_q(t)dt+o_N(1).
```

## Parent-kernel contraction

Coefficient-stopped and gain-stopped edges are diverted into the residual charge or earlier source-pulse ancestry. The surviving inherited edges are quiet. `ParentKernel.A` gives a fixed `\rho<1` such that, generation by generation,

```math
\sum_{T:P\prec T}^{quiet}g_T^2S(P\to T)
\le \rho S(P).
```

Choose `\varepsilon>0` so

```math
(1+\varepsilon)\rho<1.
```

Let

```math
\rho_\varepsilon=(1+\varepsilon)\rho<1.
```

Iterating the parent-or-charge inequality for `m` generations gives

```math
S(T_0)
\le
C_\varepsilon\sum_{T\preceq T_0,\ depth<T_m}
\rho_\varepsilon^{depth(T)}Charge(T)
+ho_\varepsilon^m B_m(T_0).
```

Dropping the decaying weights in the charge sum yields

```math
S(T_0)
\le
C_\varepsilon\sum_{T\preceq T_0}Charge(T)
+ho_\varepsilon^m B_m(T_0).
```

## First-pulse removal of unpaid ancestry

`FirstPulseKill.A` gives

```math
B_m(T_0)
\le(1-\delta)^mB_0(T_0)+o(1)
```

in the first-pulse compactness limit. Hence

```math
\lim_{m\to\infty}\rho_\varepsilon^mB_m(T_0)=0.
```

Therefore

```math
S(T_0)
\le
C_\varepsilon\sum_{T\preceq T_0}Charge(T)+o(1).
```

Using the charge control gives

```math
S(T_0)
\le
C\int_{Tree(T_0)}\sum_{q>N}D_q(t)dt+o_N(1)+o(1).
```

After the normalization of the active source threshold and dissipation reserve used in the source-drain ledger, this is the branch estimate

```math
\boxed{
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)+o(1)
}
```

with `\theta<1` once the reserve constants and stopping thresholds are chosen in the ledger order.

## Conditional conclusion

The component chain yields

```math
\boxed{
CoeffStop.A+AHP.A+WeightedAdjBessel.A+WeightedAdjRes.A+GainStop.A+ParentKernel.A+FirstPulseKill.A
\Longrightarrow
LemmaB.SourceDrain.
}
```

The downstream branch-support implication is

```math
LemmaB.SourceDrain
\Rightarrow SOURCE.NO\text{-}PULSE.A
\Rightarrow Jump_{avg}\Rightarrow\bot
\Rightarrow PCTP.hard/TTU.A,
```

subject to the source-pulse and terminal-tail route licenses recorded in the repo.

## Boundary of the result

This assembly consumes the conditional theorem notes written for `AHP.A`, `WAB.A`, `WAR.A`, and `FPK.A`. It inherits their explicit licenses: affine packet-space error control, pressure-normalized or projected residual control, summable cutoff/off-packet ledgers, gain-stop/parent-kernel contraction, and first-pulse source-parent compactness. The live repo frontier for terminal promotion remains the CM witness bridge recorded in the proof-obligation matrix.