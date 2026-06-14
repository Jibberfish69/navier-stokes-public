# MPP Coefficient Stopping For Strain-Gauged Packets Note

## Status

Superseded target note. Current live status: discharged by
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`.

This note adds the preliminary layer needed before `WeightedAdjBessel.A`. The
point is to prevent the adjoint packet calculus from hiding uncontrolled
coefficient remainders inside harmless constants.

The correction is important: central strain growth and affine low-flow
distortion are not stopped by crude first-derivative bounds. They are built into
the principal packet frame. The coefficient-stopping budget only measures the
remainders left after the low flow is linearized and the central strain is
gauged out.

Normalization lock: any constant `g_T` shorthand below is read through the live
time-dependent amplitude `g_T(t)=e^{\Gamma_T(t)}` and
`\chi_T(t)=g_T(t)^{-1}\psi_T(t)`.  Residual charge is the weighted integral
`|\int g_T(t)^{-1}\langle R,\psi_T\rangle dt|^2`.

Route role:

```math
CoeffStop.A
\Longrightarrow
WeightedAdjBessel.A
\Longrightarrow
WeightedAdjRes.A
\Longrightarrow
ParentOrCharge.A
\Longrightarrow
ParentKernel.A
\Longrightarrow
FirstPulseKill.A
\Longrightarrow
LemmaB.SourceDrain.
```

This is still a supplier route for `SOURCE.NO-PULSE.A`; it is not the governing
contrapositive primitive by itself.

## Tile Setup

Fix a child tile

```math
T=(j,k,Q_T,I_T),
\qquad
r_T=2^{-j},
\qquad
I_T=[t_-,t_+],
```

with `k<j-M`. Let

```math
b_k=u_{\le k}
```

and let the packet center follow the low flow:

```math
\dot X_T(t)=b_k(X_T(t),t).
```

Use the affine packet frame following the linearized low flow:

```math
\dot J_T(t)=(\nabla b_k)(X_T(t),t)J_T(t),
\qquad
J_T(t_+)=I.
```

Gauge out the central strain:

```math
\dot G_T(t)=\mathcal A_T(t)G_T(t),
\qquad
\mathcal A_T(t)=A_k(X_T(t),t),
```

and write

```math
\psi_T=G_T\varphi_T.
```

Define

```math
\Gamma_T
=
\int_{I_T}\lambda_{\max}^+(A_k(X_T(t),t))\,dt,
\qquad
g_T=e^{\Gamma_T}.
```

The packet calculus only has to control the coefficient remainders

```math
b_k(x,t)-b_k(X_T(t),t)-\nabla b_k(X_T(t),t)(x-X_T(t))
```

and

```math
A_k(x,t)-A_k(X_T(t),t).
```

## Coefficient Budget

Let `Q_T^*` be a fixed enlargement of the heat tube. Define

```math
\mathcal C(T)
:=
\int_{I_T}
\left[
r_T^2\|\nabla^2 b_k(t)\|_{L^\infty(Q_T^*)}
+
r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}
\right]\,dt.
```

Fix a threshold `\varepsilon_M` with

```math
\varepsilon_M\to0
\qquad
(M\to\infty).
```

A tile is coefficient-good when

```math
\mathcal C(T)\le\varepsilon_M.
```

If

```math
\mathcal C(T)>\varepsilon_M,
```

define the backward coefficient-stopping time `\sigma_T\in(t_-,t_+)` by

```math
\int_{\sigma_T}^{t_+}
\left[
r_T^2\|\nabla^2 b_k(t)\|_{L^\infty(Q_T^*)}
+
r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}
\right]\,dt
=
\varepsilon_M.
```

Only the stopped segment

```math
[\sigma_T,t_+]
```

enters the stopped-tile adjoint identity.

## Good Segment Packet Estimate

On a coefficient-good segment, the gauged packet solves

```math
(-\partial_t-b_k\cdot\nabla-\nu\Delta)\varphi_T
=
\mathcal E_T\varphi_T,
```

with

```math
\|\mathcal E_T\|_{L_t^1(H_x^1\to H_x^{-1})}
\le
C\varepsilon_M.
```

Duhamel gives

```math
\varphi_T(t)
=
H_T(t,t_+)\varphi_T(t_+)
+
\int_t^{t_+}H_T(t,s)\mathcal E_T(s)\varphi_T(s)\,ds,
```

where `H_T` is the affine heat propagator associated to `(X_T,J_T)`. The
affine heat propagator gives Gaussian packet bounds

```math
|\partial_x^\alpha H_T(t,t_+)\varphi_T(t_+)|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right).
```

The Duhamel term is bounded by `C_D\varepsilon_M`, so

```math
|\partial_x^\alpha\varphi_T(x,t)|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right).
```

Thus

```math
\chi_T=g_T^{-1}\psi_T
```

has the same packet bounds, since `g_T^{-1}G_T` is bounded by the strain-gain
normalization.

This gives `WeightedAdjBessel.A` on the coefficient-good family.

## Disposition Of Coefficient-Stopped Tiles

For a coefficient-stopped tile, use the adjoint identity only on the stopped
segment `[\sigma_T,t_+]`:

```math
g_T^{-1}\langle w_j(t_+),\psi_T(t_+)\rangle
=
\langle w_j(\sigma_T),\chi_T(\sigma_T)\rangle
+
g_T^{-1}
\int_{\sigma_T}^{t_+}\langle R,\psi_T\rangle\,dt.
```

Let `A_*` be the active threshold at `t_+`.

If

```math
g_T^{-1}
\left|
\int_{\sigma_T}^{t_+}\langle R,\psi_T\rangle\,dt
\right|
\ge
\frac12
g_T^{-1}|\langle w_j(t_+),\psi_T(t_+)\rangle|,
```

then

```math
A_*
\le C_{res}
g_T^{-2}
\left|
\int_{\sigma_T}^{t_+}\langle R,\psi_T\rangle\,dt
\right|^2.
```

So the stopped tile is paid by `WeightedAdjRes.A`.

If the residual term is smaller, then

```math
|\langle w_j(\sigma_T),\chi_T(\sigma_T)\rangle|^2
\ge c_A
A_*.
```

So the packet was already active at the earlier time `\sigma_T`. The heat
cylinder centered at

```math
(X_T(\sigma_T),\sigma_T)
```

with radius `r_T` is an earlier source-pulse ancestor.

Therefore every coefficient stop gives

```math
\boxed{
\text{coefficient stop}
\Longrightarrow
\text{weighted residual charge}
\ \vee\
\text{earlier source-pulse ancestor}.
}
```

## Surviving Tiles

Only coefficient-good tiles remain in the quiet parent kernel. For these tiles,

```math
\mathcal C(T)\le\varepsilon_M.
```

Then the packet parametrix is valid, the normalized packets satisfy Bessel
almost-orthogonality, and quiet edges contract. If

```math
h_T:=\nu r_T^{-2}|I_T|
```

and

```math
2\Gamma_T\le2h_T-\eta_0,
```

then

```math
g_T^2\|\chi_T(t_-)\|_2^2
\le
e^{-\eta_0}+C\varepsilon_M+C2^{-cM}.
```

Choose `M` large so

```math
e^{-\eta_0}+C\varepsilon_M+C2^{-cM}\le1-\delta.
```

Then

```math
\sum_{T:P\prec T}g_T^2S(P\to T)
\le
(1-\delta)S(P).
```

## Final Coefficient-Stopping Theorem

```math
\boxed{
\textbf{CoeffStop.A:}
\quad
\text{every active child tile is either coefficient-good and eligible for the
weighted packet calculus, paid by weighted residual charge, or converted into
an earlier source-pulse ancestor.}
}
```

Once installed, the remaining chain runs cleanly:

```math
CoeffStop.A
\Longrightarrow
WeightedAdjBessel.A
\Longrightarrow
WeightedAdjRes.A
\Longrightarrow
GainStop.A
\Longrightarrow
ParentKernel.A
\Longrightarrow
FirstPulseKill.A.
```
