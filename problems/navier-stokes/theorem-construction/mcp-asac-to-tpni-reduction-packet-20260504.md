# ASAC.A to TPNI.A reduction packet

## Status

Conditional theorem-facing reduction. This note formalizes the exact role of `ASAC.A` in the signed source route and reduces its hard compactness endpoint to `TPNI.A`, subject to packet normal form, source localization, and no-incoming license hypotheses.

## Route placement

The spending route is

```math
ASAC.A
\Longrightarrow SignedLocalSource.A
\Longrightarrow SOURCE.NO\text{-}PULSE.A
\Longrightarrow AWG.A
\Longrightarrow (Jump_{avg}\Rightarrow\bot).
```

Together with the downstream averaged terminal-tail assembly, this is consumed by the `PCTP.hard / TTU.A` branch.

## Exact ASAC target

Let

```math
u_j=\Delta_j u,
\qquad
a_k=\Delta_k u,
\qquad
S_k=\frac12(\nabla a_k+\nabla a_k^T),
```

and expand the active high shell into wave packets

```math
\nu_j=\sum_{P\in\mathcal P_j}c_P e_P\phi_P.
```

For each low donor scale `k<j-M`, define the positive alignment density

```math
A_{j,k}(t)
:=2^{2j}\sum_{P\in\mathcal P_j}
\bigl(\langle S_k(x_P,t)e_P,e_P\rangle\bigr)_+|c_P(t)|^2.
```

The target theorem is: for every `\theta>0`, on terminal tails,

```math
\boxed{
\int_I\sum_{j>N}\sum_{k<j-M}W_{j,k}^{\sigma}A_{j,k}(t)\,dt
\le
\theta\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
}
\tag{ASAC.A}
```

## Packet normal form gate

The exact packet normal form needed before spending `ASAC.A` is

```math
2^{2j}\langle\mathcal C_j(S_k,u_j),u_j\rangle
=A_{j,k}^{+}-A_{j,k}^{-}+Err_{j,k},
```

with

```math
\sum_{j,k}\int_I|Err_{j,k}|\,dt
\le \varepsilon\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
```

Then `A^-` is discarded in the one-sided upper bound, and `ASAC.A` implies

```math
\int_I G_N^{lift,\sigma}(t)\,dt
\le
(\theta+\\varepsilon)\int_I\sum_{q>N}D_q(t)\,dt+o_N(1).
```

After choosing `\theta+\varepsilon` below the viscosity absorption margin, this gives `SignedLocalSource.A`.

## Carleson form

Tile the positive packet contribution into active tiles `T` with coefficient `c_T`, time interval `I_T`, and

```math
\alpha_T=(\langle S_k e_T,e_T\rangle)_+.
```

The positive-alignment tile Carleson theorem is

```math
\boxed{
\sum_{T\subset\Omega}\alpha_T |c_T|^2 |I_T|
\le
C|\Omega|+\theta\int_{\Omega}\sum_{q>N}D_q.
}
\tag{PATC.A}
```

For terminal active-window unions or stopping regions `\Omega`, `PATC.A` implies `ASAC.A` after summing the admissible lifted packet family and absorbing packet errors.

## Reduction to TPNI.A

Assume `PATC.A` fails. Then there is a terminal sequence of positive-alignment tile families whose normalized positive alignment mass stays bounded below while the dissipation payment and legal errors stay below the required absorption threshold.

Choose a maximal bad tile and rescale on its heat scale:

```math
v_m(y,s)=r_m u(x_m+r_my,t_m+r_m^2s),
\qquad r_m\to0.
```

After packet normalization and compactness, the bad sequence yields an ancient frozen-strain tangent packet solving

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi=\nu\Delta v,
\qquad \nabla\cdot v=0,
```

with nonzero normalized active mass. If the terminal selection also supplies the no-incoming source/high-frequency license, this contradicts:

```math
\boxed{TPNI.A:
\text{no finite-energy terminal tangent packet may have both no incoming mass and nonzero normalized active mass.}}
```

Therefore

```math
TPNI.A+NoIncomingLicense.A+Compactness/Tether
\Longrightarrow PATC.A
\Longrightarrow ASAC.A.
```

## Conclusion

The precise reduction is

```math
PacketNormalForm.A
+ TPNI.A
+ SourceTether.A
+ LimitPass.A
\Longrightarrow ASAC.A.
```

## Claimed status

Conditional reduction only. No discharge claim for `ASAC.A`; the open
mathematical content is packet normal form, terminal parent/no-parent
pinning, source tether, and limit pass.  The frozen-strain rigidity input
behind `TPNI.A` is superseded on the first-pulse route by
`mpp-native-tpni-adjoint-parent-drain-20260506.md`, which proves:

```text
TerminalTangentParentDrain.A
+ TerminalTangentNoParent.A
=> TPNI.A.
```

The support pins and final contradiction are assembled in
`mpp-asac-parent-drain-assembly-20260506.md`, which proves:

```text
PacketNormalForm.A
+ SourceTether.A
+ LimitPass.A
+ TerminalTangentNoParent.A
+ TPNI.A
=> ASAC.A.
```
