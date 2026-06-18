# MPP LCI.A Uniform Lower-Carrier Finite-Parameter Closure Note

## Status

Theorem-facing closure note.

Role: close the lower-carrier Gronwall step uniformly across the finite list of
parameter instances now required by the receiver route, while keeping the
transported-center package as the remaining analytic supplier.

This note does **not** prove the transported-center package itself. It proves
that once the relevant transported-center ledgers are supplied, the lower
carrier `LCI.B -> LCI.A` step is closed uniformly for the required enlarged
depths and thicknesses.

## Required Parameter Set

Set

```math
\delta_\ast:=\delta+\delta_{seg},
\qquad
\Delta_{halo}:=\delta+5\Lambda_{\delta,\rho}^{halo}.
\tag{ULCI.0}
```

The required finite lower-carrier set is

```math
\mathscr P_{\rm req}
:=
\left\{
(N,m,\delta),\,
(N,m,\delta_\ast),\,
(N+4,N+4,\Delta_{halo}),\,
(N+4,N+4,\delta+\Lambda_{\delta,\rho}^{halo}),\,
(N+2,N+2,\Delta_{halo})
\right\}.
\tag{ULCI.1}
```

The third entry is the widened receiver return `(EOC.27)` / `WRR.A`. The
fourth and fifth entries are the conservative FEI-return lower-carrier reads
already identified in the lower-carrier program.

For

```math
\mathfrak p=(n,\mu,\Delta)\in\mathscr P_{\rm req},
\tag{ULCI.2}
```

write

```math
\mathcal G_{\mathfrak p}(t)
:=
\mathcal G_{n,\mu,\rho,\psi}^{low,\Delta}(t),
\qquad
\mathcal D_{\mathfrak p}(t)
:=
\mathcal D_{n,\mu,\rho,\psi}^{low,\Delta}(t),
\tag{ULCI.3}
```

and

```math
\Gamma_{\mathfrak p}^{low}(t)
:=
1+
\sum_{q=0}^{\mu}
\left|U_q(\cdot,t)\right|_{L^\infty(\mathcal C_{\rho,\psi}^{\Delta}(t))}.
\tag{ULCI.4}
```

Let `\mathfrak A_{\mathfrak p}^{ctr}` and
`\Omega_{\mathfrak p}^{osc}` denote the anchored-center ledger and oscillation
coefficient associated to the same lower-carrier parameter instance
`\mathfrak p`.

## Theorem `ULCI.A` (Uniform finite-parameter lower-carrier closure)

Assume the finite transported-cover hypotheses needed to apply `LCI.B2d` and
`LCI.C` for every `\mathfrak p\in\mathscr P_{\rm req}`. Assume also:

```math
\Gamma_\sharp\in L^\infty(I),
\tag{ULCI.5}
```

```math
G_{0,\ast}
:=
\max_{\mathfrak p\in\mathscr P_{\rm req}}
\mathcal G_{\mathfrak p}(t_0)
<\infty,
\tag{ULCI.6}
```

and, for every `\mathfrak p\in\mathscr P_{\rm req}`,

```math
\mathfrak A_{\mathfrak p}^{ctr}\in L^2(I),
\qquad
\Omega_{\mathfrak p}^{osc}\in L^2(I).
\tag{ULCI.7}
```

Then

```math
\sup_{\mathfrak p\in\mathscr P_{\rm req}}
\sup_{t\in I}
\mathcal G_{\mathfrak p}(t)
<\infty
\tag{ULCI.8}
```

and

```math
\sup_{\mathfrak p\in\mathscr P_{\rm req}}
\left\|\Gamma_{\mathfrak p}^{low}\right\|_{L^1(I)}
<\infty.
\tag{ULCI.9}
```

## Proof

Fix one common `0<\varepsilon<\nu`; for instance
`\varepsilon=\nu/2`. For each parameter instance `\mathfrak p`, Corollary
`LCI.B2d` gives

```math
\frac{d}{dt}\mathcal G_{\mathfrak p}(t)
+
(\nu-\varepsilon)\mathcal D_{\mathfrak p}(t)
\le
\mathfrak B_{\mathfrak p}^{coef,\varepsilon}(t)
\mathcal G_{\mathfrak p}(t)
\quad\text{for a.e. }t\in I,
\tag{ULCI.10}
```

where

```math
\mathfrak B_{\mathfrak p}^{coef,\varepsilon}(t)
:=
C_{\mathfrak p,\varepsilon}
\Big[
\big(1+\Gamma_\sharp(t)\big)
\big(1+\mathfrak A_{\mathfrak p}^{ctr}(t)
+\Omega_{\mathfrak p}^{osc}(t)\big)
+1+\mathfrak A_{\mathfrak p}^{ctr}(t)^2
+\Omega_{\mathfrak p}^{osc}(t)^2
\Big].
\tag{ULCI.11}
```

By `(ULCI.5)` and `(ULCI.7)`,

```math
\mathfrak B_{\mathfrak p}^{coef,\varepsilon}\in L^1(I)
\qquad
(\mathfrak p\in\mathscr P_{\rm req}).
\tag{ULCI.12}
```

Because `\mathscr P_{\rm req}` is finite, define

```math
\mathfrak B_\ast(t)
:=
\sum_{\mathfrak p\in\mathscr P_{\rm req}}
\mathfrak B_{\mathfrak p}^{coef,\varepsilon}(t).
\tag{ULCI.13}
```

Then `\mathfrak B_\ast\in L^1(I)` and

```math
\mathfrak B_{\mathfrak p}^{coef,\varepsilon}(t)
\le
\mathfrak B_\ast(t)
\qquad
(\mathfrak p\in\mathscr P_{\rm req}).
\tag{ULCI.14}
```

Gronwall applied to `(ULCI.10)` gives

```math
\mathcal G_{\mathfrak p}(t)
\le
\mathcal G_{\mathfrak p}(t_0)
\exp\left(
\int_{t_0}^{t}
\mathfrak B_{\mathfrak p}^{coef,\varepsilon}(s)\,ds
\right).
\tag{ULCI.15}
```

Therefore

```math
\mathcal G_{\mathfrak p}(t)
\le
G_{0,\ast}
\exp\left(
\|\mathfrak B_\ast\|_{L^1(I)}
\right)
\qquad
(\mathfrak p\in\mathscr P_{\rm req},\ t\in I).
\tag{ULCI.16}
```

This proves `(ULCI.8)`.

For the lower-carrier readout, apply `LCI.C` to each parameter instance:

```math
\Gamma_{\mathfrak p}^{low}(t)
\le
1+
C_{\mathfrak p}
\mathcal G_{\mathfrak p}(t)^{1/2}.
\tag{ULCI.17}
```

Set

```math
C_\ast:=\max_{\mathfrak p\in\mathscr P_{\rm req}} C_{\mathfrak p}.
\tag{ULCI.18}
```

Using `(ULCI.16)`,

```math
\Gamma_{\mathfrak p}^{low}(t)
\le
1+
C_\ast
G_{0,\ast}^{1/2}
\exp\left(
\frac12\|\mathfrak B_\ast\|_{L^1(I)}
\right).
\tag{ULCI.19}
```

Thus

```math
\left\|\Gamma_{\mathfrak p}^{low}\right\|_{L^1(I)}
\le
|I|
\left[
1+
C_\ast
G_{0,\ast}^{1/2}
\exp\left(
\frac12\|\mathfrak B_\ast\|_{L^1(I)}
\right)
\right],
\tag{ULCI.20}
```

uniformly in `\mathfrak p`. This proves `(ULCI.9)`.

## Repo-Native Supply of `(ULCI.7)`

For each parameter instance `\mathfrak p=(n,\mu,\Delta)`, the transported-center
package supplies `(ULCI.7)` through the same three theorem families:

```math
EOC.A_{\mathfrak p}
\Longrightarrow
\Omega_{\mathfrak p}^{osc}\in L^2(I),
\tag{ULCI.21}
```

```math
AFD.A_{\mathfrak p}
+
AFD.B_{\mathfrak p}
\Longrightarrow
RCF.2_{\mathfrak p},
\tag{ULCI.22}
```

where `AFD.B` denotes the installed affine-defect-to-first-rung bridge applied
at the same parameter instance.

and

```math
RCF.A_{\mathfrak p}
\Longrightarrow
\mathfrak A_{\mathfrak p}^{ctr}\in L^2(I).
\tag{ULCI.23}
```

Hence the conditional finite-parameter reduction is:

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right)
\Longrightarrow
ULCI.A.
\tag{ULCI.24}
```

This is the exact lower-carrier closure from the uniform transported-center
package.

## Non-Circular Graph Reading

The finite-parameter Gronwall theorem is honest as `(ULCI.24)`, but it should
not be used to pretend that base `EOC.A` has been proved from itself. For graph
assembly, separate the pre-`EOC.A` receiver parameters from the base readback.

Define

```math
\mathscr P_{\rm pre}
:=
\mathscr P_{\rm req}\setminus\{(N,m,\delta)\}.
\tag{ULCI.25}
```

Applying `(ULCI.10)`--`(ULCI.20)` with every occurrence of
`\mathscr P_{\rm req}` replaced by `\mathscr P_{\rm pre}` gives the restricted
finite-parameter statement `ULCI.A(\mathscr P_{\rm pre})`: the coefficient is

```math
\mathfrak B_{\rm pre}(t)
:=
\sum_{\mathfrak p\in\mathscr P_{\rm pre}}
\mathfrak B_{\mathfrak p}^{coef,\varepsilon}(t),
\qquad
\mathfrak B_{\rm pre}\in L^1(I),
\tag{ULCI.25a}
```

and the initial bound is

```math
G_{0,\rm pre}
:=
\max_{\mathfrak p\in\mathscr P_{\rm pre}}
\mathcal G_{\mathfrak p}(t_0)
<\infty.
\tag{ULCI.25b}
```

Thus, for `\mathfrak p\in\mathscr P_{\rm pre}`,

```math
\mathcal G_{\mathfrak p}(t)
\le
G_{0,\rm pre}
\exp\left(\|\mathfrak B_{\rm pre}\|_{L^1(I)}\right),
\tag{ULCI.25c}
```

and the readout `(ULCI.17)` gives the corresponding uniform
`L^1(I)` bound for `\Gamma_{\mathfrak p}^{low}`. In particular:

```math
(N,m,\delta_\ast)\in\mathscr P_{\rm pre}
\Longrightarrow
LCI.A_{N,m,\delta_\ast},
\tag{ULCI.26}
```

and

```math
(N+4,N+4,\Delta_{halo})\in\mathscr P_{\rm pre}
\Longrightarrow
(EOC.27).
\tag{ULCI.27}
```

Then, with the non-thickness slots of `WTC.1` retained, namely
`\Gamma_\sharp\in L^\infty(I)` and
`P_{F,\rho,\psi}^{\ast}\in L^1(I)`, and with the source-side ledger `(FCI.5f)`,

```math
LCI.A_{N,m,\delta_\ast}
+
\Gamma_\sharp\in L^\infty(I)
+
P_{F,\rho,\psi}^{\ast}\in L^1(I)
+
(FCI.5f)
\Longrightarrow
CSP.A_{\delta_\ast},
\tag{ULCI.28}
```

and, with the already-separated segment geometry `(OFP.10cb)`,

```math
(EOC.27)
+
CSP.A_{\delta_\ast}
+
(OFP.10cb)
\Longrightarrow
EOC.A_{N,m,\delta}.
\tag{ULCI.29}
```

Only after `(ULCI.29)` is available should the base transported-center return be
spent:

```math
EOC.A_{N,m,\delta}
+
AFD.A_{N,m,\delta}
+
AFD.B_{N,m,\delta}
+
RCF.A_{N,m,\delta}
\Longrightarrow
LCI.A_{N,m,\delta}.
\tag{ULCI.30}
```

This is the non-circular use of the uniform closure: the pre-`EOC.A` instances
supply the thickened consumer and widened return; the base instance is then
recovered through the enlarged-ball recombination and the transported-center
residual chain.

## Downstream Certificate

With base `LCI.A_{N,m,\delta}` in hand,

```math
LCI.A_{N,m,\delta}
+
(FCI.5f)
\Longrightarrow
CSP.A_\delta,
\tag{ULCI.31}
```

and the one-field route gives

```math
CSP.A_\delta
+
(FCI.5f)
\Longrightarrow
OFP.A.
\tag{ULCI.32}
```

Then

```math
OFP.A
+
CFI.B1
+
CFI.B2
\Longrightarrow
CFI.A.
\tag{ULCI.33}
```

Finally,

```math
CFI.A+\mathsf{End}_{NS}
\Longrightarrow
\text{no finite-time NS class exit}.
\tag{ULCI.34}
```

Here `\mathsf{End}_{NS}` is still the endpoint-exclusion matrix: the installed
entry is `(Part,Dead)`, while `(Pack,packing-detached)`, `(Field,Jump)`,
`tower-blown`, and the cross entries remain open.

## Exact Remaining Analytic Target

After this note, the lower-carrier Gronwall step itself is closed uniformly.
The non-smuggling supplier for the transported-center package is now isolated in
[mpp-lci-a-direct-transported-center-package-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-direct-transported-center-package-note.md).
That note records:

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
DTC.A_{\mathfrak p}
\Longrightarrow
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right).
\tag{ULCI.34a}
```

Equivalently, before the direct transported-center theorem is proved, the
transported-center package remains:

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm req}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right),
\tag{ULCI.35}
```

or, for the non-circular receiver assembly before base `EOC.A`,

```math
\bigwedge_{\mathfrak p\in\mathscr P_{\rm pre}}
\left(
EOC.A_{\mathfrak p}
\wedge
AFD.A_{\mathfrak p}
\wedge
AFD.B_{\mathfrak p}
\wedge
RCF.A_{\mathfrak p}
\right)
\tag{ULCI.36}
```

together with the base `AFD.A_{N,m,\delta}` / `AFD.B_{N,m,\delta}` and
`RCF.A_{N,m,\delta}` after `EOC.A_{N,m,\delta}` is obtained by `(ULCI.29)`.

After the direct transported-center package note, the sharper positive-estimate
target is:

```math
\boxed{
DTC.A_{\mathfrak p}
\quad
(\mathfrak p\in\mathscr P_{\rm req}).
}
\tag{ULCI.37}
```

This is the legitimate replacement for the disallowed receiver-loop shortcuts
`EOC.Ca`, `WRR.A`, and `U2H.A` when the goal is to feed the lower-carrier theorem
without hidden `LCI.A` / `CSP.A` inputs.
