# MPP GainStop Stopping-Time Theorem Note

## Status

Superseded target note. Current live status: discharged by
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`.

This note isolates the stopping-time theorem needed by `ParentKernel.A` in the
weighted principal-flow adjoint route.

Normalization lock: any constant `g_T` shorthand below is read through the live
time-dependent amplitude `g_T(t)=e^{\Gamma_T(t)}` and
`\chi_T(t)=g_T(t)^{-1}\psi_T(t)`.  Residual charge is the weighted integral
`|\int g_T(t)^{-1}\langle R,\psi_T\rangle dt|^2`.

Route role:

```math
CoeffStop.A
+
GainStop.A
+
QuietEdgeBesselContraction.A
\Longrightarrow
ParentKernel.A
\Longrightarrow
LemmaB.SourceDrain.
```

## Target

For a child tile `T`, prove:

```math
\boxed{
\textbf{GainStop.A:}
\quad
2\Gamma_T>2h_T-\eta_0
\Longrightarrow
\left[
\text{weighted residual charge}
\ \vee\
\text{earlier source-pulse ancestor}
\right].
}
```

The stopping rule is:

```math
\boxed{
\text{When }2\Gamma_T>2h_T-\eta_0,\text{ stop the child edge and apply the
residual/ancestor split.}
}
```

After stopping, all surviving inherited parent-kernel edges satisfy

```math
2\Gamma_T\le2h_T-\eta_0.
```

Thus

```math
g_T^2e^{-2h_T}\le e^{-\eta_0},
```

which feeds quiet-edge contraction.

## Definitions

For `t\in I_T=[t_-,t_+]`, define

```math
\Gamma_T(t)
:=
\int_t^{t_+}
\lambda_{\max}^{+}(A_k(X_T(s),s))\,ds,
```

```math
h_T(t):=\nu 2^{2j}(t_+-t),
```

and

```math
g_T(t):=e^{\Gamma_T(t)}.
```

Let `\psi_T` solve the backward adjoint equation and set the normalized adjoint
amplitude

```math
a_T(t):=
g_T(t)^{-1}
\left|
\langle u_j(t),\psi_T(t)\rangle
\right|.
```

Fix the active threshold `A_*`.  The child tile is active if

```math
a_T(t_+)^2\ge A_*.
```

Define the first crossing time

```math
\tau_T
:=
\inf\{t\in I_T:\ a_T(t)^2\ge A_*/4\}.
```

## Adjoint Representation

The adjoint identity gives, for every `t\in I_T`,

```math
a_T(t_+)
\le
a_T(t)
+
g_T(t)^{-1}
\left|
\int_t^{t_+}
\langle R,\psi_T\rangle\,ds
\right|.
\tag{Rep}
```

This identity is the whole proof mechanism.

## Case 1: Large Residual

If

```math
g_T(\tau_T)^{-1}
\left|
\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle\,ds
\right|
\ge
\frac12 a_T(t_+),
```

then, since `a_T(t_+)^2\ge A_*`,

```math
A_*
\le
4
g_T(\tau_T)^{-2}
\left|
\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle\,ds
\right|^2.
```

This is weighted residual charge.  Summing such stopped tiles gives

```math
\sum_T A_*
\le
4
\sum_T
g_T^{-2}
\left|
\int_{I_T}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C_{\mathrm{WAR}}
\int\sum_{q>N}D_q+o_N(1),
```

using `WeightedAdjRes.A`.

## Case 2: Small Residual

If

```math
g_T(\tau_T)^{-1}
\left|
\int_{\tau_T}^{t_+}\langle R,\psi_T\rangle\,ds
\right|
<
\frac12 a_T(t_+),
```

then `(Rep)` implies

```math
a_T(\tau_T)\ge\frac12 a_T(t_+).
```

Since `a_T(t_+)^2\ge A_*`,

```math
a_T(\tau_T)^2\ge A_*/4.
```

So the packet was already active at the earlier time `\tau_T<t_+`.  The heat
cylinder centered at `(X_T(\tau_T),\tau_T)` with scale `2^{-j}` is an earlier
active source-pulse ancestor.

Thus:

```math
\text{small residual}
\Longrightarrow
\text{earlier source-pulse ancestry}.
```

First-pulse pruning removes this case from the inherited kernel of the selected
first terminal pulse.

## ParentKernel Consequence

The high-gain condition

```math
2\Gamma_T>2h_T-\eta_0
```

says strain gain nearly cancels heat damping or exceeds it on the edge.  Such an
edge cannot be kept in the quiet contractive kernel.  `GainStop.A` says it is
instead charged or promoted to earlier ancestry.

After pruning all gain-stop edges, every surviving inherited edge is quiet:

```math
2\Gamma_T\le2h_T-\eta_0.
```

Then quiet-edge Bessel contraction gives

```math
\sum_{T:P\prec T}g_T^2S(P\to T)
\le
(1-\delta)S(P).
```

This is `ParentKernel.A`.

## Coefficient-Stop Extension

The same stopping-time proof also discharges coefficient-stopped tiles from
`mpp-coefficient-stopping-for-strain-gauged-packets-note-20260504.md`.

A coefficient-stopped tile is one with

```math
\mathcal C(T)
:=
\int_{I_T}
\left[
r_T^2\|\nabla^2b_k(t)\|_{L^\infty(Q_T^*)}
+
r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}
\right]\,dt
>
\varepsilon_M.
```

Define `\sigma_T` by

```math
\int_{\sigma_T}^{t_+}
\left[
r_T^2\|\nabla^2b_k(t)\|_{L^\infty(Q_T^*)}
+
r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)}
\right]\,dt
=
\varepsilon_M.
```

Such a tile is not allowed inside the Bessel packet frame before stopping.  Stop
it and apply the adjoint identity only on `[\sigma_T,t_+]`:

```math
g_T^{-1}\langle w_j(t_+),\psi_T(t_+)\rangle
=
\langle w_j(\sigma_T),\chi_T(\sigma_T)\rangle
+
g_T^{-1}
\int_{\sigma_T}^{t_+}\langle R,\psi_T\rangle\,dt.
```

The same dichotomy holds:

```math
\boxed{
\text{coefficient-stopped tile}
\Longrightarrow
\text{weighted residual charge}
\ \vee\
\text{earlier source-pulse ancestor}.
}
```

Thus coefficient stopping is not a discard rule.  It is a routing rule: bad
coefficients either expose residual creation paid by `WeightedAdjRes.A`, or they
show that the selected child packet had earlier active ancestry and must be
removed by first-pulse pruning.

## Non-Circularity Boundary

`GainStop.A` does not assume `SOURCE.NO-PULSE.A` or Lemma B.  It uses only the
normalized adjoint representation, the active threshold, coefficient stopping,
`WeightedAdjRes.A`, and first-pulse pruning.  The ancestor conclusion is a
stopping-time output, not a claim that source pulses are impossible.

## Verdict

`GainStop.A` is the concrete next theorem under `ParentKernel.A`:

```math
\text{adjoint representation}
=
\text{earlier amplitude}
+
\text{weighted residual}.
```

Large residual gives charge.  Small residual gives earlier amplitude above
threshold.  That earlier amplitude defines the ancestor tile.
