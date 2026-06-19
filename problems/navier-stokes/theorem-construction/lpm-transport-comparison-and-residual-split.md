# LPM Transport Comparison And Residual Split

## Status

Candidate theorem-facing strengthened-sufficient route for the exact-potential
simple-top branch.

Role: record one overstrong transport-comparison route to `(LPM.19)`.

Audit correction: this note is **not** the honest first localized-projector
supplier theorem. The honest local dynamics packet is now recorded in
[localized-projector-moment-dynamics-and-moment-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-dynamics-and-moment-closure.md),
which shows that the pair moment evolves by an averaged projector law with a
nonlinear moment term. So the present note should be read only as a strengthened
sufficient route, contingent on an extra target-identification theorem for the
raw tensor `S_J^N`.

## Purpose

An overstrong sufficient route would reduce the localized projector-moment
branch to the single normalized operator-concentration wall

```math
\int_{\mathcal G_J}
M_J^2
\frac{\|S_J^N-\widetilde S_J\|_{\mathrm{op}}^2}{(g_J^{str})^2}\,d\mu_J
=
o_J(1).
\tag{LPM.19}
```

This note isolates the transport-comparison theorem that would prove `(LPM.19)`
once one has:

1. an initial fit for `D_J:=S_J^N-\widetilde S_J`, and
2. a residual split whose three weighted spacetime pieces are small.

## Transported Strip Setup

Let `I=[t_0,t_1]`. Realize the transported selector-good strip by a fixed
reference parameter space `(\Omega_J,\bar\mu_J)` together with time-dependent
fields

```math
S_J^N(\omega,t),\qquad
\widetilde S_J(\omega,t),\qquad
M_J(\omega,t),\qquad
g_J^{str}(\omega,t)>0,
\qquad (\omega,t)\in \Omega_J\times I.
\tag{C.0}
```

Write

```math
D_J:=S_J^N-\widetilde S_J,
\qquad
w_J:=\frac{M_J^2}{(g_J^{str})^2}.
\tag{C.0a}
```

This fixed-reference presentation is the honest way to write the transported
selector-good family when differentiating weighted `L^2` quantities. It avoids
hidden moving-domain terms.

## Proposition `LPM-C`

### Candidate Theorem LPM.C

Assume there is a measurable family of linear operators
`\mathcal A_{J,t}` on symmetric tensors such that

```math
\partial_t S_J^N=\mathcal A_{J,t}[S_J^N]+E_J^{cg},
\qquad
\partial_t \widetilde S_J=\mathcal A_{J,t}[\widetilde S_J]+E_J^{lpm},
\tag{C.1}
```

so

```math
\partial_t D_J=\mathcal A_{J,t}[D_J]+R_J,
\qquad
R_J:=E_J^{cg}-E_J^{lpm}.
\tag{C.1a}
```

Assume further:

```math
\int_{\Omega_J}
w_J(\omega,t_0)\,\|D_J(\omega,t_0)\|_F^2\,d\bar\mu_J(\omega)
=
o_J(1),
\tag{C.2}
```

```math
\int_{t_0}^{t_1}\!\!\int_{\Omega_J}
w_J(\omega,t)\,\|R_J(\omega,t)\|_F^2\,d\bar\mu_J(\omega)\,dt
=
o_J(1),
\tag{C.3}
```

```math
\sup_{(\omega,t)\in \Omega_J\times I}
\bigl|\partial_t\log w_J(\omega,t)\bigr|
\le C_w,
\tag{C.4}
```

and

```math
\bigl\langle X,\mathcal A_{J,t}[X]\bigr\rangle_F
\le
C_A\|X\|_F^2
\qquad
\text{for every symmetric }X\text{ and every }t\in I.
\tag{C.5}
```

Then

```math
\sup_{t\in I}
\int_{\Omega_J}
w_J(\omega,t)\,\|D_J(\omega,t)\|_F^2\,d\bar\mu_J(\omega)
=
o_J(1).
\tag{C.6}
```

In particular,

```math
\sup_{t\in I}
\int_{\Omega_J}
w_J(\omega,t)\,\|D_J(\omega,t)\|_{\mathrm{op}}^2\,d\bar\mu_J(\omega)
=
o_J(1),
\tag{LPM.19}
```

because `\|D_J\|_{\mathrm{op}}\le \|D_J\|_F`.

### Proof

Differentiate the weighted energy:

```math
\partial_t\!\bigl(w_J\|D_J\|_F^2\bigr)
=
(\partial_t w_J)\|D_J\|_F^2
+
2w_J\bigl\langle D_J,\mathcal A_{J,t}[D_J]\bigr\rangle_F
+
2w_J\langle D_J,R_J\rangle_F.
\tag{C.7}
```

Using `(C.4)`, `(C.5)`, and `2\langle D,R\rangle\le \|D\|^2+\|R\|^2`,

```math
\partial_t\!\bigl(w_J\|D_J\|_F^2\bigr)
\le
(C_w+2C_A+1)\,w_J\|D_J\|_F^2
+
w_J\|R_J\|_F^2.
\tag{C.8}
```

Integrate `(C.8)` over `\Omega_J`, apply Gronwall on `I`, and insert `(C.2)`
and `(C.3)`. This gives `(C.6)`, hence `(LPM.19)`. ∎

## Residual Split For The Localized Projector-Moment Tensor

To make the residual split exact, write the localized projector-moment tensor
against a fixed reference packet measure. For each `\omega\in\Omega_J`, let
`\bar\nu_{J,\omega}` be a fixed finite measure on the local pair packet
parameter space `\mathcal P_J(\omega)`, and write

```math
\widetilde S_J(\omega,t)
=
\int_{\mathcal P_J(\omega)}
a_J(\omega,p,t)\,\Pi_J(\omega,p,t)\,d\bar\nu_{J,\omega}(p)
+
\mathrm{Tail}_J(\omega,t).
\tag{C.9}
```

If a time-dependent packet measure is more natural, absorb its density relative
to a fixed reference measure into `a_J`; otherwise one misses a measure-drift
term when differentiating.

Assume the pair projectors satisfy the principal transport law

```math
\partial_t\Pi_J(\omega,p,t)
=
\mathcal A_{J,t}\!\bigl[\Pi_J(\omega,p,t)\bigr]
+
E_J^{pair}(\omega,p,t),
\tag{C.10}
```

and that `\mathcal A_{J,t}` is linear and commutes with integration in the
packet parameter `p`. Differentiating `(C.9)` then gives

```math
\partial_t\widetilde S_J
=
\int_{\mathcal P_J} (\partial_t a_J)\,\Pi_J\,d\bar\nu_J
+
\int_{\mathcal P_J} a_J\,\partial_t\Pi_J\,d\bar\nu_J
+
\partial_t\mathrm{Tail}_J.
\tag{C.11}
```

Substitute `(C.10)` and use linearity of `\mathcal A_{J,t}`:

```math
\partial_t\widetilde S_J
=
\mathcal A_{J,t}[\widetilde S_J]
+
\int_{\mathcal P_J} (\partial_t a_J)\,\Pi_J\,d\bar\nu_J
+
\int_{\mathcal P_J} a_J\,E_J^{pair}\,d\bar\nu_J
+
(\partial_t-\mathcal A_{J,t})[\mathrm{Tail}_J].
\tag{C.12}
```

So the effective localized-projector-moment forcing is

```math
E_J^{lpm}
:=
\int_{\mathcal P_J} (\partial_t a_J)\,\Pi_J\,d\bar\nu_J
+
\int_{\mathcal P_J} a_J\,E_J^{pair}\,d\bar\nu_J
+
(\partial_t-\mathcal A_{J,t})[\mathrm{Tail}_J].
\tag{C.13}
```

Accordingly, the discrepancy `R_J=E_J^{cg}-E_J^{lpm}` splits canonically as

```math
R_J=R_J^{dyn}+R_J^{coeff}+R_J^{tail},
\tag{C.14}
```

with

```math
R_J^{dyn}
:=
E_J^{cg}
-
\int_{\mathcal P_J} a_J\,E_J^{pair}\,d\bar\nu_J,
\tag{C.15}
```

```math
R_J^{coeff}
:=
-
\int_{\mathcal P_J} (\partial_t a_J)\,\Pi_J\,d\bar\nu_J,
\tag{C.16}
```

```math
R_J^{tail}
:=
-(\partial_t-\mathcal A_{J,t})[\mathrm{Tail}_J].
\tag{C.17}
```

## Supplier Lemmas

The single spacetime residual bound `(C.3)` follows from the three weighted
supplier estimates

```math
\int_{t_0}^{t_1}\!\!\int_{\Omega_J}
w_J\,\|R_J^{dyn}\|_F^2\,d\bar\mu_J\,dt
=
o_J(1),
\tag{C.18}
```

```math
\int_{t_0}^{t_1}\!\!\int_{\Omega_J}
w_J\,\|R_J^{coeff}\|_F^2\,d\bar\mu_J\,dt
=
o_J(1),
\tag{C.19}
```

```math
\int_{t_0}^{t_1}\!\!\int_{\Omega_J}
w_J\,\|R_J^{tail}\|_F^2\,d\bar\mu_J\,dt
=
o_J(1).
\tag{C.20}
```

Indeed, `\|R_J\|_F^2\le 3(\|R_J^{dyn}\|_F^2+\|R_J^{coeff}\|_F^2+\|R_J^{tail}\|_F^2)`.

So the strengthened route to `(LPM.19)` reduces to the four suppliers

```math
\boxed{
\texttt{InitialFit}
+
\texttt{DynamicsMatch}
+
\texttt{CoefficientDrift}
+
\texttt{LocalizationTail}
\Longrightarrow
\texttt{LPM.19}.
}
\tag{C.21}
```

## Interpretation

This note is now best read as a strengthened sufficient route rather than the
canonical localized-projector wall.

If one insists on the raw target `(LPM.19)`, the remaining theorem debt on this
route is:

1. one initial-fit theorem for `D_J(t_0)`,
2. one principal-dynamics comparison theorem,
3. one coefficient-drift theorem for the pair moment weights, and
4. one localization-tail theorem for the truncated projector-moment packet.

Once those are proved, `(LPM.19)` follows, and the already installed on-disk
supplier chain may then be applied:

```math
\texttt{LPM.19}
\Longrightarrow
\texttt{LPM.A}
\Longrightarrow
\texttt{PSS.B}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}
\Longrightarrow
\texttt{RPC.3}
\Longrightarrow
\texttt{SG.4B}
```

This is a conditional source-chain use of `(LPM.19)`: without the four theorem
debts above, the downstream `SG.4B` conclusion is not available from this
route.

But the honest first supplier theorem on the localized projector-moment branch
is no longer this one. It is the exact averaged projector dynamics plus the
moment-closure packet in
[localized-projector-moment-dynamics-and-moment-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-dynamics-and-moment-closure.md).
