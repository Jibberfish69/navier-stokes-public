# MPP Principal-Flow Five-Gate Conditional Proof Packet

## Status

Superseded conditional seed packet.

This note originally proved the principal-flow adjoint route conditional on the
packet calculus and residual hypotheses listed below.  Before supersession, it
did not discharge the route unconditionally.

Live discharge status: the conditional hypotheses recorded here are discharged
by the normalized-adjoint-amplitude certificate
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md` and
the definition-lock packet
`mpp-source-drain-definition-alignment-and-discharge-20260504.md`.  This file is
retained as the pre-discharge proof seed, not as the active status surface.

## Conditional Assumptions

Assume

```math
L_{j,k}
=
\partial_t+b_k\cdot\nabla-\nu\Delta-A_k,
\qquad
b_k=u_{\le k},
```

and

```math
L_{j,k}w_j=R_{j,k}.
```

For each tile `T`, let

```math
L_{j,k}^*\psi_T=0,
\qquad
\psi_T(t_+)=\text{terminal wave packet}.
```

Define

```math
\Gamma_T
=
\int_{I_T}\lambda_{\max}^+(A_k(X_T(t),t))\,dt,
\qquad
g_T=e^{\Gamma_T},
\qquad
\chi_T=g_T^{-1}\psi_T.
```

The conserved bookkeeping object for the chain is the normalized child mass:

```math
M(T)
:=
g_T^{-2}
|\langle w_j(t_+),\psi_T(t_+)\rangle|^2.
```

Every arrow below is arranged so `M(T)` is either inherited backward through the
parent kernel or paid by the weighted residual charge.

## 0. `CoeffStop.A`

Before using the adjoint frame, split the tile family into coefficient-good
tiles and stopped tiles after extracting the affine low-flow frame.

Let

```math
\dot J_T=(\nabla b_k)(X_T,t)J_T,
\qquad
J_T(t_+)=I.
```

Define

```math
\mathcal C(T)
:=
\int_{I_T}
\left[
r_T^2\|\nabla^2b_k(t)\|_{L^\infty(Q_T^*)}
+
r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}
\right]\,dt.
```

Coefficient-good tiles satisfy

```math
\mathcal C(T)
\le
\varepsilon_M,
\qquad
\varepsilon_M\to0
\quad(M\to\infty).
```

Tiles with `\mathcal C(T)>\varepsilon_M` are coefficient-stopped.  Let
`\sigma_T` be the backward stopping time where the segment `[\sigma_T,t_+]`
accumulates coefficient budget exactly `\varepsilon_M`. The coefficient-stopping
theorem is:

```math
\boxed{
\textbf{CoeffStop.A:}
\quad
\text{each active child tile is coefficient-good, paid by weighted residual
charge, or converted into earlier source-pulse ancestry.}
}
```

Therefore stopped tiles do not remain in the inherited parent kernel. The
working packet calculus below is only asserted on coefficient-good tiles.

## 1. `WeightedAdjBessel.A`

Assume the strain-gauged packet parametrix:

```math
\psi_T=G_T\varphi_T,
\qquad
\|g_T^{-1}G_T\|\le C,
```

and

```math
|\partial_x^\alpha\varphi_T(x,t)|
\le
C_\alpha
2^{(3/2+|\alpha|)j_T}
e^{-c2^{2j_T}|x-X_T(t)|^2}.
```

Then

```math
|\langle \chi_T(t),\chi_{T'}(t)\rangle|
+
2^{-2j_T}|\langle\nabla\chi_T(t),\nabla\chi_{T'}(t)\rangle|
\le
Ce^{-cd(T,T')^2}+C2^{-cM}.
```

Bounded phase-space overlap and Cotlar--Stein give

```math
\boxed{
\left\|\sum_T c_T\chi_T\right\|_{L_t^2H_x^1}^2
\le
C\sum_T |c_T|^2.
}
\tag{WeightedAdjBessel.A}
```

## 2. `WeightedAdjRes.A`

For `\sum_T|c_T|^2=1`, set

```math
\Xi=\sum_T c_T\chi_T.
```

Then

```math
\sum_T c_Tg_T^{-1}
\int_{I_T}\langle R,\psi_T\rangle\,dt
=
\int\langle R,\Xi\rangle\,dt.
```

By `WeightedAdjBessel.A`,

```math
\|\Xi\|_{L_t^2H_x^1}\le C.
```

Assume the residual estimate

```math
\|R\|_{L_t^2H_x^{-1}}^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

Duality gives

```math
\left|\int\langle R,\Xi\rangle\,dt\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

Taking the supremum over unit `\ell^2` coefficients yields

```math
\boxed{
\sum_T g_T^{-2}
\left|
\int_{I_T}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
}
\tag{WeightedAdjRes.A}
```

## 3. `GainStop.A`

Define partial gain

```math
\Gamma_T(t)
=
\int_t^{t_+}
\lambda_{\max}^+(A_k(X_T(s),s))\,ds,
```

and normalized amplitude

```math
a_T(t)
=
e^{-\Gamma_T(t)}
|\langle w_j(t),\psi_T(t)\rangle|.
```

Let `A_*` be the active threshold and

```math
\tau_T
=
\inf\{t\in I_T:\ a_T(t)^2\ge A_*/4\}.
```

The adjoint identity gives

```math
a_T(t_+)
\le
a_T(\tau_T)
+
e^{-\Gamma_T(\tau_T)}
\left|
\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle\,ds
\right|.
```

If the residual term is large, then

```math
A_*
\le
C_{\mathrm{WAdj}}
e^{-2\Gamma_T(\tau_T)}
\left|
\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle\,ds
\right|^2,
```

so the tile is paid by `WeightedAdjRes.A`.

If the residual term is small, then

```math
a_T(\tau_T)^2\ge A_*/4,
```

so the packet was active at the earlier time `\tau_T<t_+`.  This defines an
earlier source-pulse ancestor.

Therefore

```math
\boxed{
2\Gamma_T>2h_T-\eta_0
\Longrightarrow
\text{weighted residual charge or earlier source-pulse ancestor}.
}
\tag{GainStop.A}
```

## 4. `QuietEdgeBesselContraction.A`

For surviving quiet edges,

```math
2\Gamma_T\le2h_T-\eta_0.
```

Backward heat leakage gives

```math
\|\chi_T(t_-)\|_2^2
\le
e^{-2h_T}+C2^{-cM}.
```

Hence

```math
g_T^2\|\chi_T(t_-)\|_2^2
\le
e^{2\Gamma_T}e^{-2h_T}+C\varepsilon_M+C2^{-cM}
\le
e^{-\eta_0}+C\varepsilon_M+C2^{-cM}.
```

Bessel orthogonality of children from a fixed parent gives

```math
\sum_{T:P\prec T}g_T^2S(P\to T)
\le
(e^{-\eta_0}+C\varepsilon_M+C2^{-cM})S(P).
```

Choose `M` large so

```math
e^{-\eta_0}+C\varepsilon_M+C2^{-cM}\le1-\delta.
```

Therefore

```math
\boxed{
\sum_{T:P\prec T}g_T^2S(P\to T)
\le
(1-\delta)S(P).
}
\tag{QuietEdgeBesselContraction.A}
```

## 5. `FirstPulseKill.A`

Let

```math
B_m(T_0)
=
\sum_{P_m\prec\cdots\prec T_0}
\kappa_m S(P_m)
```

be the depth-`m` backward ancestry mass.

`GainStop.A` converts high-gain branches into residual charge or earlier pulse
ancestry.  First-pulse selection removes earlier pulse ancestry in the ancient
limit, and weighted residual charge is paid by dissipation.  The remaining
branches are quiet and contractive:

```math
B_m(T_0)
\le
(1-\delta)^mB_0(T_0)+o(1).
```

Local energy compactness bounds `B_0(T_0)` on fixed backward cylinders.  Hence

```math
\boxed{
\lim_{m\to\infty}B_m(T_0)=0.
}
\tag{FirstPulseKill.A}
```

## Result

Combining the preliminary stopping layer and the five gates:

```math
CoeffStop.A
\Longrightarrow
WeightedAdjBessel.A
\Longrightarrow
WeightedAdjRes.A
\Longrightarrow
GainStop.A
\Longrightarrow
QuietEdgeBesselContraction.A
\Longrightarrow
FirstPulseKill.A.
```

Therefore

```math
S(T_0)
\le
\theta\sum_{T\preceq T_0}D(T)+o(1).
```

This is the local source-drain estimate behind `LemmaB.SourceDrain`.

The companion assembly note
`mpp-normalized-child-mass-source-drain-assembly-note-20260504.md` records the
same chain as arrow-by-arrow lemmas organized around the normalized child mass
`M(T)`.

## Historical Analytic Work List

Before the normalized-adjoint-amplitude discharge, the remaining analytic work
was:

```math
\text{coefficient stopping for affine-frame low-flow and strain remainders},
```

```math
\text{strain-gauged packet parametrix},
```

```math
\text{oscillatory strain error bounded by }C_{\mathrm{osc}}\varepsilon_M,
```

```math
\text{termwise residual }L_t^2H_x^{-1}\text{ bound},
```

and

```math
\text{measurable first-crossing ancestor selection}.
```

These packet-calculus hypotheses are now discharged by
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`.  This
file remains a historical proof seed and should not be read as the live status
surface.
