# Localized Projector-Moment Dynamics And Moment Closure

## Status

Candidate theorem-facing audit and reduction note for the exact-potential
simple-top branch.

Role: replace the overstrong direct transport-comparison to `S_J^N` by the
exact averaged projector dynamics of `\widetilde S_J` and the corresponding
moment-closure supplier.

## Audit Result

The direct `LPM.19` route

```math
\|\widetilde S_J-S_J^N\|_{\mathrm{op}}/g_J^{str}\to 0
\tag{LPMC.0}
```

is a **strengthened sufficient route**, not the honest first theorem wall on the
localized projector-moment branch.

The reason is structural:

1. `S_J^N=\frac12(A_J^N+A_J^{N,*})` is the raw symmetric cocycle-side strain
   block on the normal bundle;
2. `\widetilde S_J` is a localized nonnegative average of rank-one pair
   projectors and therefore is positive semidefinite, with trace equal to the
   local packet mass;
3. the pair projectors evolve by an averaged Riccati-type law, so
   `\widetilde S_J` does **not** automatically satisfy the same principal
   evolution as the raw tensor `S_J^N`.

So the honest local theorem task is not “prove `\widetilde S_J` follows the same
linear flow as `S_J^N`,” but rather:

```math
\text{derive the exact averaged projector evolution of }\widetilde S_J
\quad+\quad
\text{close its nonlinear moment term against the top slot.}
\tag{LPMC.1}
```

## Localized Projector-Moment Tensor

Use the exact localized projector-moment construction from `PSJ+.1`. On a fixed
transported packet window, write

```math
\widetilde S_J(x,t)
:=
\int_{\mathcal P_J(x)}
a_J(x,p,t)\,P_J(x,p,t)\,d\bar\nu_{J,x}(p)
+
\mathrm{Tail}_J(x,t),
\tag{LPMC.2}
```

where:

```math
P_J(x,p,t)=e_J(x,p,t)\otimes e_J(x,p,t)
\tag{LPMC.3}
```

is the transported pair projector,
`\bar\nu_{J,x}` is a fixed reference packet measure, and any time-dependent
packet density has been absorbed into `a_J`. On the exact `PSJ+.1`
realization one may choose `\mathrm{Tail}_J\equiv 0`; see
[exact-psj-plus-1-construction-eliminates-localization-tail.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-psj-plus-1-construction-eliminates-localization-tail.md).

Let

```math
m_J(x,t):=
\int_{\mathcal P_J(x)} a_J(x,p,t)\,d\bar\nu_{J,x}(p).
\tag{LPMC.4}
```

On the simple-top branch, let `S_J^{seg}(x,t)` be the symmetric segment strain
tensor with top spectral projector

```math
N_J(x,t):=P_{J,\top}^{seg}(x,t),
\qquad
\lambda_{J,1}^{seg}(x,t):=\lambda_1(S_J^{seg}(x,t)).
\tag{LPMC.5}
```

## Exact Averaged Projector Evolution

The pair-projector ODE from `PSJ+.25` is

```math
\partial_t P_J
=
[\Omega_J^{seg},P_J]
+
S_J^{seg}P_J+P_JS_J^{seg}
-2\,\operatorname{tr}(S_J^{seg}P_J)\,P_J
+
E_J^{pair}.
\tag{LPMC.6}
```

Define the nonlinear projector moment

```math
\mathcal M_J(x,t)
:=
\int_{\mathcal P_J(x)}
a_J(x,p,t)\,
\operatorname{tr}\!\bigl(S_J^{seg}(x,t)P_J(x,p,t)\bigr)\,
P_J(x,p,t)\,d\bar\nu_{J,x}(p).
\tag{LPMC.7}
```

### Proposition `LPM-Dyn`

For `\widetilde S_J` from `(LPMC.2)`,

```math
\partial_t\widetilde S_J
=
[\Omega_J^{seg},\widetilde S_J]
+
S_J^{seg}\widetilde S_J
+
\widetilde S_J S_J^{seg}
-2\,\mathcal M_J
+
R_J^{coeff}
+
R_J^{pair}
+
R_J^{tail},
\tag{LPMC.8}
```

where

```math
R_J^{coeff}
:=
\int_{\mathcal P_J(x)}
(\partial_t a_J)\,P_J\,d\bar\nu_{J,x},
\tag{LPMC.9}
```

```math
R_J^{pair}
:=
\int_{\mathcal P_J(x)}
a_J\,E_J^{pair}\,d\bar\nu_{J,x},
\tag{LPMC.10}
```

```math
R_J^{tail}:=\partial_t\mathrm{Tail}_J.
\tag{LPMC.11}
```

#### Proof

Differentiate `(LPMC.2)` against the fixed reference measure:

```math
\partial_t\widetilde S_J
=
\int (\partial_t a_J)\,P_J\,d\bar\nu_{J,x}
+
\int a_J\,\partial_t P_J\,d\bar\nu_{J,x}
+
\partial_t\mathrm{Tail}_J.
\tag{LPMC.12}
```

Insert `(LPMC.6)`. Since `\Omega_J^{seg}` and `S_J^{seg}` are independent of the
packet parameter `p` inside the localized packet,

```math
\int a_J[\Omega_J^{seg},P_J]\,d\bar\nu_{J,x}
=[\Omega_J^{seg},\widetilde S_J-\mathrm{Tail}_J],
\tag{LPMC.13}
```

and similarly for the bilinear terms. Absorb the explicit tail commutator and
bilinear corrections into `R_J^{tail}`; equivalently, if one defines
`\widetilde S_J` without a separate tail term, then `(LPMC.11)` is literally the
entire tail contribution. The remaining nonlinear term is exactly
`\mathcal M_J`. This yields `(LPMC.8)`. ∎

## Moment Closure From Projector Concentration

Assume the localized concentration packet `PSJ+.6` on the same window:

```math
\frac{1}{m_J(x,t)}
\int_{\mathcal P_J(x)}
a_J(x,p,t)\,
d_{\mathrm{proj}}\!\bigl(P_J(x,p,t),N_J(x,t)\bigr)^2
\,
d\bar\nu_{J,x}(p)
\le
\varepsilon_J(x,t).
\tag{LPMC.14}
```

Recall from `PSJ+.7` that

```math
\bigl\|
\widetilde S_J-m_JN_J
\bigr\|_{\mathrm{op}}
\le
\sqrt2\,m_J\,\varepsilon_J^{1/2}.
\tag{LPMC.15}
```

### Proposition `LPM-MC`

Under `(LPMC.14)`,

```math
\bigl\|
\mathcal M_J-\lambda_{J,1}^{seg}\widetilde S_J
\bigr\|_{\mathrm{op}}
\le
4\,\|S_J^{seg}\|_{\mathrm{op}}\,m_J\,\varepsilon_J^{1/2},
\tag{LPMC.16}
```

and consequently

```math
\bigl\|
\mathcal M_J-\lambda_{J,1}^{seg}m_JN_J
\bigr\|_{\mathrm{op}}
\le
C\,\|S_J^{seg}\|_{\mathrm{op}}\,m_J\,\varepsilon_J^{1/2}.
\tag{LPMC.17}
```

#### Proof

First,

```math
\mathcal M_J-\lambda_{J,1}^{seg}\widetilde S_J
=
\int a_J\,
\Bigl(
\operatorname{tr}(S_J^{seg}P_J)-\lambda_{J,1}^{seg}
\Bigr)
P_J\,d\bar\nu_{J,x}.
\tag{LPMC.18}
```

Because `(S_J^{seg}-\lambda_{J,1}^{seg}I)N_J=0`,

```math
\operatorname{tr}(S_J^{seg}P_J)-\lambda_{J,1}^{seg}
=
\operatorname{tr}\!\bigl((S_J^{seg}-\lambda_{J,1}^{seg}I)(P_J-N_J)\bigr).
\tag{LPMC.19}
```

Using `|\operatorname{tr}(AB)|\le \|A\|_{\mathrm{op}}\|B\|_*` and
`\|P_J-N_J\|_*\le \sqrt2\,\|P_J-N_J\|_F`,

```math
\Bigl|
\operatorname{tr}(S_J^{seg}P_J)-\lambda_{J,1}^{seg}
\Bigr|
\le
2\,\|S_J^{seg}\|_{\mathrm{op}}\,
\|P_J-N_J\|_F.
\tag{LPMC.20}
```

Hence

```math
\bigl\|
\mathcal M_J-\lambda_{J,1}^{seg}\widetilde S_J
\bigr\|_{\mathrm{op}}
\le
2\,\|S_J^{seg}\|_{\mathrm{op}}
\int a_J\,\|P_J-N_J\|_F\,d\bar\nu_{J,x}.
\tag{LPMC.21}
```

Apply Cauchy-Schwarz and `\|P-N\|_F^2=2\,d_{\mathrm{proj}}(P,N)^2`:

```math
\int a_J\,\|P_J-N_J\|_F\,d\bar\nu_{J,x}
\le
\sqrt{
\Bigl(\int a_J\,d\bar\nu_{J,x}\Bigr)
\Bigl(\int a_J\,\|P_J-N_J\|_F^2\,d\bar\nu_{J,x}\Bigr)
}
\le
\sqrt2\,m_J\,\varepsilon_J^{1/2}.
\tag{LPMC.22}
```

Substituting `(LPMC.22)` into `(LPMC.21)` gives `(LPMC.16)`. Then

```math
\bigl\|
\mathcal M_J-\lambda_{J,1}^{seg}m_JN_J
\bigr\|_{\mathrm{op}}
\le
\bigl\|
\mathcal M_J-\lambda_{J,1}^{seg}\widetilde S_J
\bigr\|_{\mathrm{op}}
+
\lambda_{J,1}^{seg}
\bigl\|
\widetilde S_J-m_JN_J
\bigr\|_{\mathrm{op}},
\tag{LPMC.23}
```

and `(LPMC.15)` plus `\lambda_{J,1}^{seg}\le \|S_J^{seg}\|_{\mathrm{op}}`
give `(LPMC.17)`. ∎

## Honest Dynamics-Match Supplier

Combining `(LPMC.8)` and `(LPMC.16)` yields the closed residual-controlled
dynamics

```math
\partial_t\widetilde S_J
=
[\Omega_J^{seg},\widetilde S_J]
+
S_J^{seg}\widetilde S_J
+
\widetilde S_J S_J^{seg}
-2\,\lambda_{J,1}^{seg}\widetilde S_J
+
R_J^{mc}
+
R_J^{coeff}
+
R_J^{pair}
+
R_J^{tail},
\tag{LPMC.24}
```

with

```math
\|R_J^{mc}\|_{\mathrm{op}}
\le
4\,\|S_J^{seg}\|_{\mathrm{op}}\,m_J\,\varepsilon_J^{1/2}.
\tag{LPMC.25}
```

So the honest localized-projector `DynamicsMatch` supplier is:

```math
\boxed{
\texttt{Projector concentration }(PSJ+.6)
+
\texttt{CoefficientDrift}
+
\texttt{PairProjectorError}
+
\texttt{LocalizationTail}
\Longrightarrow
\text{closed residual-controlled projector-moment dynamics.}
}
\tag{LPMC.26}
```

## Consequence For The `LPM.19` Route

The direct raw-strain comparison route

```math
\|\widetilde S_J-S_J^N\|_{\mathrm{op}}/g_J^{str}\to 0
\tag{LPMC.27}
```

now has the correct status:

1. it is an overstrong sufficient route if one can separately normalize and
   identify the target object;
2. it is **not** the honest first supplier theorem forced by the localized
   projector-moment construction itself.

The canonical local wall on this subroute is therefore no longer a fake
same-principal-operator theorem for the pair moment versus raw `S_J^N`. It is
the moment-closure packet `(LPMC.26)`, centered on the exact projector
concentration theorem `PSJ+.6`.

## Interpretation

This note pushes the localized-projector route to its honest local endpoint.

What remains genuinely new on this subroute is:

1. the localized projector concentration theorem `PSJ+.6`;
2. coefficient drift control for the packet weights;
3. localization-tail control, unless one works in the exact tail-free `PSJ+.1`
   realization.

On the exact-potential subbranch using Proposition `PSJ+.5`, the pair
separation law is exact, so the pair-projector transport residual
`E_J^{pair}` vanishes identically; see
[exact-segment-transport-collapses-pair-projector-error.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-segment-transport-collapses-pair-projector-error.md).

Once those are on disk in weighted form, the localized projector-moment branch
has a closed dynamics packet without pretending that `\widetilde S_J` and the
raw cocycle-side strain block `S_J^N` are the same kind of tensor.
