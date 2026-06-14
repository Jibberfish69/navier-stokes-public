# MPP AdjBessel Strain-Gauge Packet Calculus Note

## Status

Superseded target note. Current live status: discharged by
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`.

This note isolates `WeightedAdjBessel.A`, the first packet-calculus gate in the
principal-flow adjoint route.  It now has a required preliminary layer:
`CoeffStop.A`.  Once this stopped packet frame is valid,
`ResidualPair.A` is expected to be mostly Calderon--Zygmund / commutator
bookkeeping in the resulting coordinates.

The active route now uses weighted adjoint Bessel as the primary theorem.  It
drops uniform `G_T` control and sends strain amplification into the parent
kernel from the start.

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
PrincipalFlowAdjoint.A.
```

## Operator Setup

Use the principal packet operator

```math
L_{j,k}:=\partial_t+b_k\cdot\nabla-\nu\Delta-A_k,
\qquad
b_k=u_{\le k},
```

with localized packet equation

```math
L_{j,k}w_j=R_{j,k}.
```

For a positive-alignment tile `T`, choose terminal wave-packet data
`\psi_T(t_+)` adapted to the child packet and solve

```math
L_{j,k}^*\psi_T=0,
```

that is,

```math
-\partial_t\psi_T-b_k\cdot\nabla\psi_T-\nu\Delta\psi_T-A_k^*\psi_T=0.
```

The unweighted Bessel bound would be, for arbitrary `\sum_T|c_T|^2=1`:

```math
\boxed{
\left\|\sum_T c_T\psi_T\right\|_{L_t^2H_x^1}^2
\le C.
}
\tag{AdjBessel.A}
```

The active target is instead the weighted version recorded below.

## Coefficient Stopping Layer

Before proving the adjoint Bessel estimate, split the tile family into
coefficient-good tiles and stopped tiles.

The frame follows both the low-flow center and the linearized low flow:

```math
\dot X_T=b_k(X_T,t),
\qquad
\dot J_T=(\nabla b_k)(X_T,t)J_T,
\qquad
J_T(t_+)=I.
```

After this affine extraction, the coefficient budget is

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

Working tiles satisfy

```math
\mathcal C(T)
\le
\varepsilon_M,
\qquad
\varepsilon_M\to0
\quad(M\to\infty).
```

Tiles with `\mathcal C(T)>\varepsilon_M` are stopped at the backward time
`\sigma_T` where the terminal segment accumulates exactly `\varepsilon_M` of
coefficient budget.  Those stopped tiles must be discharged by the same
residual-charge / earlier-ancestry dichotomy used in `GainStop.A`. The dedicated
theorem surface is
`mpp-coefficient-stopping-for-strain-gauged-packets-note-20260504.md`.

The adjoint packet calculus below is only asserted on coefficient-good tiles.

## Strain Gauge

Let `X_T(t)` follow the low flow:

```math
\dot X_T(t)=b_k(X_T(t),t).
```

Let `J_T(t)` follow the linearized low flow:

```math
\dot J_T(t)=(\nabla b_k)(X_T(t),t)J_T(t),
\qquad
J_T(t_+)=I.
```

Let `G_T(t)` solve

```math
\dot G_T(t)=\mathcal A_T(t)G_T(t),
\qquad
G_T(t_+)=I,
```

where `\mathcal A_T` is the sign/transposed central strain matrix needed to
cancel the `A_k^*(X_T(t),t)` term in the adjoint equation.  The growth factor is
controlled by

```math
\|G_T(t)\|+\|G_T(t)^{-1}\|
\le C_G
\exp\left(C\int_{I_T}|A_k(X_T(\tau),\tau)|\,d\tau\right).
```

Write

```math
\psi_T(x,t)=G_T(t)\varphi_T(x,t).
```

Then `\varphi_T` solves an adjoint affine heat-transport equation whose
remaining coefficients are only the affine low-flow remainder

```math
b_k(x,t)-b_k(X_T(t),t)-\nabla b_k(X_T(t),t)(x-X_T(t))
```

and the oscillatory strain coefficient

```math
A_k(x,t)-A_k(X_T(t),t).
```

On a `j`-scale packet,

```math
|x-X_T(t)|\le C_T2^{-j}.
```

Since `k<j-M`, the affine-frame remainders are controlled by

```math
|A_k(x,t)-A_k(X_T(t),t)|
\le C_A
r_T\|\nabla A_k(t)\|_{L^\infty(Q_T^*)},
```

and

```math
|b_k(x,t)-b_k(X_T,t)-\nabla b_k(X_T,t)(x-X_T)|
\le C_b
r_T^2\|\nabla^2b_k(t)\|_{L^\infty(Q_T^*)}.
```

Coefficient stopping must turn these into a perturbation bounded by
`C_{stop}\varepsilon_M` in the heat-scale packet calculus.

## Packet Stability Target

On coefficient-good tiles, prove that the gauged packet solves

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
affine heat part gives

```math
|\partial_x^\alpha H_T(t,t_+)\varphi_T(t_+)|
\le
C_\alpha r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right).
```

The Duhamel term is bounded by `C_D\varepsilon_M`, so the gauged packet remains
in the `j`-frequency collar and heat tube:

```math
|\partial_x^\alpha\varphi_T(x,t)|
\le C_\alpha'
r_T^{-3/2-|\alpha|}
\exp\left(-c\frac{|x-X_T(t)|^2}{r_T^2}\right).
```

All perturbative errors generated by the affine low-flow remainder,
`A_k(x,t)-A_k(X_T(t),t)`, and cutoff transport must be bounded by
`C_{stop}\varepsilon_M` after coefficient stopping and after choosing the shell
gap `M` large.

## TT* / Cotlar Target

For gauged packets, prove almost-orthogonality:

```math
|\langle\varphi_T(t),\varphi_{T'}(t)\rangle|
\le C_{TT}
\exp(-c\,d(T,T')^2).
```

For gradients:

```math
\int_{I_T\cap I_{T'}}
\langle\nabla\varphi_T,\nabla\varphi_{T'}\rangle\,dt
\le C_{TT}'
\exp(-c\,d(T,T')^2).
```

Cotlar--Stein then gives

```math
\left\|\sum_Tc_T\varphi_T\right\|_{L_t^2H_x^1}^2
\le
C\sum_T|c_T|^2.
```

## Weighted Bessel Target

For each tile define the positive strain gain

```math
\Gamma_T
:=
\int_{I_T}\lambda_{\max}^{+}(A_k(X_T(t),t))\,dt,
\qquad
g_T=e^{\Gamma_T}.
```

Define the normalized adjoint packet

```math
\chi_T:=g_T^{-1}\psi_T.
```

The primary Bessel theorem is:

```math
\boxed{
\left\|
\sum_T c_T\chi_T
\right\|_{L_t^2H_x^1}^2
\le
C\sum_T|c_T|^2.
}
\tag{WeightedAdjBessel.A}
```

This avoids requiring `\sup_T g_T<\infty`.

After the strain gauge `\psi_T=G_T\varphi_T`, the definition of `g_T` gives

```math
\|G_T(t)\|\le g_T,
```

so

```math
\chi_T=(g_T^{-1}G_T)\varphi_T
```

has bounded matrix amplitude.  The remaining packet calculus is performed on
`\varphi_T` and the normalized packets `\chi_T`.

The dual residual estimate becomes:

```math
\boxed{
\sum_T
g_T^{-2}
\left|
\int_{I_T}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
}
\tag{WeightedAdjRes.A}
```

The representation formula then gives a normalized parent-or-charge inequality.
Define normalized child mass

```math
M(T):=
g_T^{-2}
|\langle u_j(t_+),\psi_T(t_+)\rangle|^2.
```

The adjoint identity gives

```math
g_T^{-1}\langle u_j(t_+),\psi_T(t_+)\rangle
=
\langle u_j(t_-),\chi_T(t_-)\rangle
+
g_T^{-1}\int_{I_T}\langle R,\psi_T\rangle\,dt.
```

Therefore

```math
M(T)
\le
(1+\varepsilon)
|\langle u_j(t_-),\chi_T(t_-)\rangle|^2
+
C_\varepsilon g_T^{-2}
\left|
\int_{I_T}\langle R,\psi_T\rangle\,dt
\right|^2.
```

Decompose the backward-face projection into parent packets:

```math
|\langle u_j(t_-),\chi_T(t_-)\rangle|^2
\le
\sum_{P\prec T}\kappa(P,T)M(P),
```

where

```math
\kappa(P,T):=
|\langle \phi_P,\chi_T(t_-)\rangle|^2.
```

Thus:

```math
M(T)
\le
(1+\varepsilon)
\sum_{P\prec T}\kappa(P,T)M(P)
+
C_\varepsilon Charge(T).
```

## Uniform Growth Gate As Optional Shortcut

To transfer back from `\varphi_T` to `\psi_T`, it is sufficient to prove

```math
\boxed{
\sup_T\|G_T\|\,\|G_T^{-1}\|\le C.
}
```

A sufficient condition is

```math
\boxed{
\int_{I_T}|A_k(X_T(t),t)|\,dt\le C.
}
\tag{GT}
```

This is the decisive strain-amplification condition for the optional unweighted
`AdjBessel.A`; it is not required by the primary weighted route.

This is now only an optional shortcut.  The main route no longer depends on
proving `(GT)`.

## Parent Kernel Gate

The live burden is `ParentKernel.A` for the actual amplified transfer

```math
K(P,T)
:=
g_T^2
|\langle\phi_P,\chi_T(t_-)\rangle|^2.
```

Equivalently, in normalized-mass language the same gate is the contraction of
the inherited parent contribution after stopping-time pruning.

Define heat damping

```math
h_T:=\nu 2^{2j_T}|I_T|.
```

Split child edges into two classes.

### Quiet inherited edges

Quiet edges satisfy

```math
2\Gamma_T\le 2h_T-\eta_0.
```

Thus strain gain is strictly below heat damping:

```math
g_T^2e^{-2h_T}\le e^{-\eta_0}.
```

The normalized adjoint packet has backward heat leakage:

```math
\|\chi_T(t_-)\|_2^2
\le
e^{-2h_T}
+
C_M2^{-cM}.
```

Therefore

```math
K(P,T)
\le
e^{-\eta_0}
|\langle\phi_P,\widetilde\chi_T(t_-)\rangle|^2
+
C_M2^{-cM}.
```

Using Bessel / almost-orthogonality of the outgoing child packets,

```math
\sum_{T:P\prec T}
|\langle\phi_P,\widetilde\chi_T(t_-)\rangle|^2
\le
1+C2^{-cM}.
```

Hence

```math
\sum_{T:P\prec T}^{quiet}K(P,T)
\le
e^{-\eta_0}(1+C2^{-cM})S(P).
```

Choose `M` large so that

```math
e^{-\eta_0}(1+C2^{-cM})\le1-\delta.
```

This proves contraction for quiet inherited edges.

### Gain-stop edges

Gain-stop edges satisfy

```math
2\Gamma_T>2h_T-\eta_0.
```

These edges are removed from the inherited parent kernel by a stopping rule.
The required theorem is:

```math
\boxed{
\textbf{GainStop.A:}
\quad
2\Gamma_T>2h_T-\eta_0
\Longrightarrow
\text{residual charge occurs or an earlier source-pulse tile exists.}
}
```

The dedicated target surface is
`mpp-gainstop-stopping-time-theorem-note-20260504.md`.

Use the normalized adjoint identity:

```math
g_T^{-1}\langle u_j(t_+),\psi_T(t_+)\rangle
=
\langle u_j(t_-),\chi_T(t_-)\rangle
+
g_T^{-1}\int_{I_T}\langle R,\psi_T\rangle\,dt.
```

If the residual term is large, `WeightedAdjRes.A` charges it:

```math
g_T^{-2}
\left|
\int_{I_T}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C\int_T\sum_{q>N}D_q.
```

If the residual term is small, high gain means the packet crossed the active
threshold earlier inside `I_T`.  Let `\tau_T<t_+` be the first crossing time:

```math
g_T(\tau_T)^2
|\langle u_j(\tau_T),\psi_T(\tau_T)\rangle|^2
=
\text{active threshold}.
```

That crossing defines an earlier source-pulse tile.  First-pulse pruning removes
this case.

After pruning gain-stop edges, every surviving inherited edge is quiet.
Therefore:

```math
\sum_{T:P\prec T}g_T^2S(P\to T)
\le
(1-\delta)S(P).
```

This is `ParentKernel.A`.

## Combined Weighted Iteration

Weighted `AdjBessel.A` plus `ResidualPair.A` gives

```math
\sum_T
g_T^{-2}
\left|
\int_{I_T}\langle R,\psi_T\rangle\,dt
\right|^2
\le
C\int\sum_{q>N}D_q+o_N(1).
```

The parent inequality becomes

```math
M(T)
\le
(1+\varepsilon)
\sum_{P\prec T}\kappa(P,T)M(P)
+
C_\varepsilon Charge(T).
```

Choose `\varepsilon` so that

```math
(1+\varepsilon)\rho<1.
```

Then backward iteration gives

```math
M(T_0)
\le
C\sum_{T\preceq T_0}Charge(T)
+
\rho^m
\sum_{P_m\prec\cdots\prec T_0}M(P_m).
```

In a first-pulse ancient limit, prove

```math
\lim_{m\to\infty}
\rho^m
\sum_{P_m\prec\cdots\prec T_0}M(P_m)=0,
```

leaving

```math
M(T_0)
\le
C\int\sum_{q>N}D_q+o_N(1).
```

This is the drain estimate needed by Lemma B.

## Verdict

The solve path is now:

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

The historical conditional proof packet
`mpp-principal-flow-five-gate-conditional-proof-packet-20260504.md` records the
pre-discharge five-gate chain.  The live discharge is
`mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md`, which
settles coefficient stopping, the strain-gauged packet parametrix, oscillatory
strain error bounded by `C_{stop}\varepsilon_M`, termwise residual `L_t^2H_x^{-1}` control, and
measurable first-crossing ancestor selection using the time-dependent
normalized amplitude `\chi_T(t)=g_T(t)^{-1}\psi_T(t)`.
