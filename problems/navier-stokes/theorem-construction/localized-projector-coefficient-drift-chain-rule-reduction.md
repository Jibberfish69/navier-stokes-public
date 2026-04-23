# Localized Projector Coefficient Drift Chain-Rule Reduction

## Status

Active theorem-facing audit note for the localized-projector exact-potential
subbranch.

Role: push the coefficient-drift slot to its honest local endpoint and isolate
the exact extra regularity needed to close it.

## Audit Result

The weighted coefficient-drift supplier

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
|\partial_t a_J(x,p,t)|^2\,d\bar\nu_{J,x}(p)\,dx\,dt
=
o_J(1)
\tag{LCD.0}
```

is **not** currently implied by the installed `PSJ+.1` construction alone.

The reason is exact: the localized packet weight

```math
w_{J,x,t}(a,b)
=
\chi_J(a,b,t)\,
\phi_r\!\bigl(x-m_{ab}(t)\bigr)\,
\psi_\rho\!\bigl(|X(t,a)-X(t,b)|\bigr)\,
\alpha\!\bigl(W_J(a,b,t)\bigr)
\tag{LCD.1}
```

is presently installed with `\chi_J`, `\phi_r`, `\psi_\rho`, and `\alpha` only
as bounded measurable / bounded cutoff data. Without a time-regularity upgrade
for the selector and confidence factors, `\partial_t a_J` is not even a
defined theorem-side object on the current packet.

So coefficient drift is now the honest local blocker on the localized-projector
route, unless one adds a strengthened packet with time-regularity.

## Strengthened Sufficient Route

Assume the localized projector-moment tensor is written without a separate
measure-drift term as

```math
a_J(x,p,t)
=
\chi_J(x,p,t)\,
\phi_r\!\bigl(x-m_J(x,p,t)\bigr)\,
\psi_\rho\!\bigl(\ell_J(x,p,t)\bigr)\,
\alpha\!\bigl(W_J(x,p,t)\bigr),
\tag{LCD.2}
```

where

```math
m_J(x,p,t):=m_{ab}(t)=\frac{X(t,a)+X(t,b)}{2},
\qquad
\ell_J(x,p,t):=|X(t,a)-X(t,b)|.
\tag{LCD.3}
```

Assume in addition:

1. `\chi_J` is absolutely continuous in time for `\bar\nu_{J,x}`-almost every
   packet point;
2. `\phi_r` and `\psi_\rho` are Lipschitz;
3. `\alpha` is Lipschitz on the range of `W_J`;
4. the pair midpoint `m_J`, pair length `\ell_J`, and confidence observable
   `W_J` admit time derivatives on the active packet.

## Proposition `LCD.A` (chain-rule decomposition of coefficient drift)

Under those strengthened hypotheses,

```math
\partial_t a_J
=
T_J^{sel}+T_J^{mid}+T_J^{len}+T_J^{conf},
\tag{LCD.4}
```

where

```math
T_J^{sel}
:=
(\partial_t\chi_J)\,
\phi_r(x-m_J)\,
\psi_\rho(\ell_J)\,
\alpha(W_J),
\tag{LCD.5}
```

```math
T_J^{mid}
:=
-\chi_J\,
\nabla\phi_r(x-m_J)\!\cdot\!\partial_t m_J\,
\psi_\rho(\ell_J)\,
\alpha(W_J),
\tag{LCD.6}
```

```math
T_J^{len}
:=
\chi_J\,
\phi_r(x-m_J)\,
\psi_\rho'(\ell_J)\,
\partial_t\ell_J\,
\alpha(W_J),
\tag{LCD.7}
```

```math
T_J^{conf}
:=
\chi_J\,
\phi_r(x-m_J)\,
\psi_\rho(\ell_J)\,
\alpha'(W_J)\,\partial_t W_J.
\tag{LCD.8}
```

Consequently,

```math
|\partial_t a_J|^2
\le
4\bigl(
|T_J^{sel}|^2+|T_J^{mid}|^2+|T_J^{len}|^2+|T_J^{conf}|^2
\bigr),
\tag{LCD.9}
```

and therefore `(LCD.0)` follows from the four weighted budgets

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
|T_J^{sel}|^2\,d\bar\nu_{J,x}\,dx\,dt=o_J(1),
\tag{LCD.10}
```

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
|T_J^{mid}|^2\,d\bar\nu_{J,x}\,dx\,dt=o_J(1),
\tag{LCD.11}
```

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
|T_J^{len}|^2\,d\bar\nu_{J,x}\,dx\,dt=o_J(1),
\tag{LCD.12}
```

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
|T_J^{conf}|^2\,d\bar\nu_{J,x}\,dx\,dt=o_J(1).
\tag{LCD.13}
```

### Proof

Differentiate `(LCD.2)` by the product and chain rules. The square bound
`(LCD.9)` is the elementary inequality
`|u_1+\cdots+u_4|^2\le 4(|u_1|^2+\cdots+|u_4|^2)`. Integrating against the
spacetime weight gives `(LCD.0)` from `(LCD.10)`-`(LCD.13)`. ∎

## Corollary `LCD.B` (Lipschitz-envelope version)

Assume the cutoff factors are uniformly bounded by `1`, and write

```math
L_{\phi,r}:=\|\nabla\phi_r\|_{L^\infty},
\qquad
L_{\psi,\rho}:=\|\psi_\rho'\|_{L^\infty},
\qquad
L_\alpha:=\|\alpha'\|_{L^\infty}.
\tag{LCD.14}
```

Then

```math
|\partial_t a_J|^2
\le
C\Bigl(
|\partial_t\chi_J|^2
+
L_{\phi,r}^2\,|\partial_t m_J|^2
+
L_{\psi,\rho}^2\,|\partial_t\ell_J|^2
+
L_\alpha^2\,|\partial_t W_J|^2
\Bigr),
\tag{LCD.15}
```

so `(LCD.0)` follows from the single weighted envelope budget

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
\Bigl(
|\partial_t\chi_J|^2
+
L_{\phi,r}^2\,|\partial_t m_J|^2
+
L_{\psi,\rho}^2\,|\partial_t\ell_J|^2
+
L_\alpha^2\,|\partial_t W_J|^2
\Bigr)\,d\bar\nu_{J,x}\,dx\,dt
=
o_J(1).
\tag{LCD.16}
```

## Exact Boundary

The strengthened route above is mathematically clean, but it is **not** yet
installed on the current localized-projector packet. In particular:

1. `\chi_J` is only present as a bounded measurable selector in `PSJ+.1`;
2. no time-regularity theorem for `\alpha(W_J)` is currently on disk;
3. no theorem currently exports the midpoint/length derivatives into the
   weighted packet ledger in the form `(LCD.16)`.

So the exact local truth is:

```math
\boxed{
\texttt{CoefficientDrift}
\text{ remains open under current packet assumptions.}
}
\tag{LCD.17}
```

What this note does close is the shape of the remaining theorem debt: any real
closure of coefficient drift must either

1. upgrade the packet to a time-regular selector / confidence family and prove
   `(LCD.16)`, or
2. redesign the localized projector packet so `a_J` is frozen or transported in
   a way that removes `\partial_t a_J` from the dynamics altogether.

That second route is now formalized in
[frozen-transported-localized-projector-packet-eliminates-coefficient-drift.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-transported-localized-projector-packet-eliminates-coefficient-drift.md).
