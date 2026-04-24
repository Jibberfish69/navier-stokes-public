# MPP LCI.A Halo-Gradient Carrier Return Note

## Status

Theorem-facing companion note.

Role: close the pulled-back `\nabla_xU_1` halo carrier residue exposed by
`OFP.C1e4`, using the already-installed widened receiver return and
anchored-center ledger.

This note does **not** close the thickened collar consumer
`CSP.A_{\delta+\delta_{seg}}`. It only supplies the segment-geometry input
needed before that consumer is spent.

## Setup

Retain the halo-shell setup from `HSP.1`--`HSP.6e`. In particular,

```math
M_\sharp:=\|\Gamma_\sharp\|_{L^\infty(I)},
\qquad
R_{\rho}^{halo,\ast}:=M_\sharp\rho,
\tag{U2H.0}
```

and

```math
\mathcal C_{\rho,\psi}^{halo,\delta}(t)
:=
\left\{
x:\ d_{\rho,\psi}(x,t)<2\delta+R_{\rho}^{halo,\ast}
\right\}.
\tag{U2H.0a}
```

Assume `2\le m\le N`. Define the pulled-back halo-gradient carrier as in
`OFP.C1e2`:

```math
\mathfrak U_{2,\rho}^{halo,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{0<|r|\le\rho}
\sup_{0\le\theta\le1}
\left|
\nabla_xU_1(X(a^j+\theta r,t),t)
\right|.
\tag{U2H.1}
```

## Theorem `U2H.A` (Pulled-back `\nabla_xU_1` halo carrier from widened receiver return)

Assume the widened receiver return

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty,
\tag{EOC.27}
```

and the anchored-center ledger

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I).
\tag{U2H.2}
```

Then

```math
\boxed{
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I).
}
\tag{U2H.A}
```

### Proof

For every `a=a^j+\theta r` in the label halo, the bounded pack-side gauge gives

```math
X(a,t)\in B(c_j(t),R_{\rho}^{halo,\ast}).
\tag{U2H.3}
```

Here `c_j(t)=X(a^j,t)=\Phi(a^j,t)` is the transported center. As in
`OFP.10cf` and the halo-shell setup, the center satisfies
`d_{\rho,\psi}^{raw}(c_j(t),t)<\delta`; the support shell has the larger
`2\delta` slack. Therefore `(U2H.3)` puts the sample point in the halo shell:

```math
X(a^j+\theta r,t)
\in
\mathcal C_{\rho,\psi}^{halo,\delta}(t).
\tag{U2H.4}
```

The lower-order halo-shell carrier is

```math
\Gamma_{N,m,\rho,\psi}^{halo,sh}(t)
:=
1+
\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{halo,\delta}(t))}.
\tag{HSP.6e}
```

Because `m\ge2` and `U_2` is the rung carrying `\nabla_xU_1` up to the fixed
tower-tensor identification,

```math
\mathfrak U_{2,\rho}^{halo,ctr}(t)
\le
C\,\Gamma_{N,m,\rho,\psi}^{halo,sh}(t).
\tag{U2H.5}
```

By `HSP.B2`,

```math
\Gamma_{N,m,\rho,\psi}^{halo,sh}(t)
\le
C_{m,\rho,\psi,\delta,I}
\left(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{halo,sh}(t)
\right).
\tag{HSP.8e}
```

By `HSP.B3`,

```math
\Omega_{N,m,\rho,\psi}^{halo,sh}(t)^2
\le
C_{N,m,\lambda}
\mathfrak e_{N,2R_{\delta,\rho}^{halo}}^{Eul,ctr}(t).
\tag{HSP.8h}
```

This is where the hypothesis `m\le N` is used.

The widened receiver return `(EOC.27)` is exactly `(HSP.Bc0)\equiv(FEI.Bc0)`,
so `FEI.Bc` gives

```math
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}\in L^1(I),
\qquad
\Lambda_{\delta,\rho}^{halo}=2R_{\delta,\rho}^{halo}.
\tag{U2H.6}
```

Thus `(HSP.8h)` gives
`\Omega_{N,m,\rho,\psi}^{halo,sh}\in L^2(I)`. Since `I` is finite,

```math
\Omega_{N,m,\rho,\psi}^{halo,sh}\in L^1(I).
\tag{U2H.7}
```

Combining `(U2H.2)`, `(U2H.7)`, and `(HSP.8e)` yields

```math
\Gamma_{N,m,\rho,\psi}^{halo,sh}\in L^1(I).
\tag{U2H.8}
```

Finally `(U2H.5)` gives `(U2H.A)`. ∎

## Corollary `U2H.B` (The segment-thickness residue closes from the widened return)

Assume, in addition to the hypotheses of `U2H.A`, that

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak U_{1,\rho}^{halo,ctr}\in L^1(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty.
\tag{U2H.9}
```

Then `OFP.C1e2` gives

```math
\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I),
\tag{U2H.10}
```

and `OFP.C1e1` gives

```math
P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\rho\,\mathfrak L_{F,\rho}^{halo,ctr}(t).
\tag{U2H.11}
```

Consequently there is a finite fixed segment thickness

```math
\delta_{seg}
:=
\rho\|\Gamma_\sharp\|_{L^\infty(I)}
+
\rho^2\|\mathfrak L_{F,\rho}^{halo,ctr}\|_{L^\infty(I)}
\tag{U2H.12}
```

such that

```math
\Gamma_\sharp(t)\rho
+
\rho P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\delta_{seg}
\qquad\text{for a.e. }t\in I.
\tag{OFP.10cb}
```

Thus

```math
(EOC.27)
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\quad\text{plus }(U2H.9)
\Longrightarrow
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\Longrightarrow
(OFP.10cb),
\tag{U2H.13}
```

provided the already-separated first-rung and initial deformation-gradient
inputs in `(U2H.9)` are present.

## Honest Boundary

This note spends the widened receiver return `(EOC.27)` and the anchored-center
ledger to close the pulled-back halo-gradient carrier. It does **not** prove
`(EOC.27)` itself; the widened-receiver return note identifies that input with
`WRR.A`, the enlarged `LCI.B` instance. It also does **not** prove the
thickened collar consumer

```math
CSP.A_{\delta+\delta_{seg}}.
\tag{U2H.14}
```

After `U2H.A`, the segment-thickness side is handled. The next receiver-side
obligation is the thickness-sensitive lower-carrier cell `WTL.C`,

```math
\Gamma_{N,m,\rho,\psi}^{low,\delta+\delta_{seg}}\in L^1(I),
\tag{U2H.15}
```

equivalently `LCI.A_{\delta+\delta_{seg}}`; `(FCI.5f)` remains the parallel
source-side frozen-family burden. Together these feed `WTC.A`, hence the
thickened consumer `CSP.A_{\delta+\delta_{seg}}`.
