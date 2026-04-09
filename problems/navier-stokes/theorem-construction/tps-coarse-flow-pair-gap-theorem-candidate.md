# TPS Coarse-Flow Pair-Gap Theorem Candidate

## Purpose

This note isolates one sharpened version of the remaining dynamic burden inside
`TPS-ns-good-set`.

The point is to replace a direct attack on unary selector labels by a
coarse-flow pair-gap theorem with a uniform-in-time exclusion consequence.

## Coarse flow and transverse pair-gap

Let `u_{\le J}` denote a smooth low-frequency truncation of the live velocity,
and let `X_{\le J}(a,t)` be the associated coarse Lagrangian flow:

```math
\partial_t X_{\le J}(a,t)=u_{\le J}(X_{\le J}(a,t),t),
\qquad
X_{\le J}(a,0)=a.
\tag{CF.1}
```

Fix a good active-pair set

```math
G_J^{pair}:=\{(a,b)\in G_J\times G_J:\ b\sim a\},
\tag{CF.2}
```

with selector-neighbor scale `\ell_J` and measurable transverse bundle
`a\mapsto N_a` as in `TPS-ns-good-set`.

Define the coarse transverse separation functional

```math
\Phi_J(t)
:=
\operatorname*{ess\,inf}_{(a,b)\in G_J^{pair}}
\frac{|\Pi_{N_a}(X_{\le J}(b,t)-X_{\le J}(a,t))|}{\ell_J}.
\tag{CF.3}
```

This is the pair-gap quantity one wants to keep uniformly away from the shadow
scale.

## Coarse linearized flow

Let `W_{\le J}(t,a)` solve

```math
\partial_t W_{\le J}(t,a)
=
\nabla u_{\le J}(X_{\le J}(a,t),t)\,W_{\le J}(t,a),
\qquad
W_{\le J}(0,a)=I.
\tag{CF.4}
```

Assume the transported transverse cone remains coherent on the good set, so
that the coarse pair displacement stays in the selector-transverse sector up to
a negligible cone error.

Assume moreover that the symmetric coarse strain on that sector satisfies

```math
v^\top
\operatorname{Sym}\!\big(
\Pi_{N_a}\nabla u_{\le J}(X_{\le J}(a,t),t)\Pi_{N_a}
\big)v
\ge
\big(\lambda_J(t)-\varepsilon_J(t,a)\big)|v|^2
\tag{CF.5}
```

for every `v\in N_a`, with

```math
\varepsilon_J^*(t):=\operatorname*{ess\,sup}_{a\in G_J}\varepsilon_J(t,a),
\qquad
\int_0^{T_J}\varepsilon_J^*(t)\,dt<\infty.
\tag{CF.6}
```

## Coarse pair-gap growth

### Proposition TPS-coarse-gap-growth. Initial Separation Plus Integrated Coarse Strain

Assume the coarse transverse strain lower bound `(CF.5)`-`(CF.6)` and the
selector-good-set initial separation `|\Pi_{N_a}(b-a)|\gtrsim \ell_J` on the
good active graph. Then every good active pair obeys the Gronwall lower bound

```math
|\Pi_{N_a}(X_{\le J}(b,t)-X_{\le J}(a,t))|
\ge
|\Pi_{N_a}(b-a)|
\exp\!\Big(\int_0^t(\lambda_J(s)-\varepsilon_J^*(s))\,ds\Big)
\tag{CF.7}
```

outside the negligible cone-failure set.

In particular, since `|a-b|\simeq \ell_J` on the good active graph,

```math
\Phi_J(t)
\ge
c_0
\exp\!\Big(\int_0^t(\lambda_J(s)-\varepsilon_J^*(s))\,ds\Big)
\tag{CF.8}
```

for some selector constant `c_0>0`.

So the coarse normalized pair-gap stays uniformly positive on `[0,T_J]` once
the integrated coarse strain dominates the error ledger.

### Corollary TPS-coarse-gap-growth-log. Scalarized Logarithmic Pair-Strain Form

For a good active pair `(a,b)`, define the coarse pair distance

```math
d_J^{coarse}(a,b,t):=|X_{\le J}(a,t)-X_{\le J}(b,t)|.
\tag{CF.8a}
```

Assume the initial separation

```math
d_J^{coarse}(a,b,0)\ge c_0\ell_J
\qquad\text{for every }(a,b)\in G_J^{pair},
\tag{CF.8b}
```

and the scalarized one-sided logarithmic strain bound

```math
\int_0^t
\frac{
\big(u_{\le J}(X_{\le J}(a,s),s)-u_{\le J}(X_{\le J}(b,s),s)\big)
\cdot
\big(X_{\le J}(a,s)-X_{\le J}(b,s)\big)
}{
|X_{\le J}(a,s)-X_{\le J}(b,s)|^2
}\,ds
\ge
\Lambda_J(t)-\mathcal E_J^{pair}(a,b,t),
\tag{CF.8c}
```

with

```math
\mathcal E_J^*(t)
:=
\operatorname*{ess\,sup}_{(a,b)\in G_J^{pair}}\mathcal E_J^{pair}(a,b,t).
\tag{CF.8d}
```

Then

```math
d_J^{coarse}(a,b,t)
\ge
c_0\ell_J\,\exp\!\big(\Lambda_J(t)-\mathcal E_J^*(t)\big),
\tag{CF.8e}
```

and hence

```math
\Phi_J(t)\ge c_0\,\exp\!\big(\Lambda_J(t)-\mathcal E_J^*(t)\big).
\tag{CF.8f}
```

This is the cleanest scalarized replacement for any residual label-growth
burden on the coarse-flow branch.

The high-frequency component `u_{>J}` does **not** enter `(CF.8c)` directly.
It enters only through the actual-versus-coarse deviation estimate `\delta_J`
below, via the bridge note
[tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md).

## Actual-versus-coarse deviation

To compare the coarse flow to the full Lagrangian flow `X`, assume a
coarse-flow deviation bound

```math
\delta_J(t)
:=
\operatorname*{ess\,sup}_{a\in G_J}|X(a,t)-X_{\le J}(a,t)|.
\tag{CF.9}
```

Then every good active pair satisfies

```math
|\Pi_{N_a}(X(b,t)-X(a,t))|
\ge
\ell_J\,\Phi_J(t)-2\delta_J(t).
\tag{CF.10}
```

### Proposition TPS-shadow-exclusion. Uniform Pair-Gap Excludes The Shadow Tube

If

```math
\inf_{0\le t\le T_J}
\big(
\ell_J\,\Phi_J(t)-2\delta_J(t)
\big)
>
2\sigma_J.
\tag{CF.11}
```

then every good active pair stays outside the selector shadow tube on the whole
interval `[0,T_J]`.

**Proof skeleton.**
If some good active pair entered the shadow tube, then for some
`t_*\in[0,T_J]` one would have
`|X(b,t_*)-X(a,t_*)|\le 2\sigma_J`. But `(CF.10)` gives
`|X(b,t_*)-X(a,t_*)|\ge \ell_J\Phi_J(t_*)-2\delta_J(t_*)`, contradicting
`(CF.11)`.

### Corollary TPS-shadow-exclusion-envelope. The Exact Scale Hinge

Assume there is a lower envelope `e_J(t)` and a constant `c_\Phi>0` such that

```math
\Phi_J(t)\ge c_\Phi e_J(t)
\qquad\text{for all }0\le t\le T_J,
\tag{CF.11a}
```

and let

```math
\Delta_J:=\sup_{0\le t\le T_J}\delta_J(t).
\tag{CF.11b}
```

If

```math
c_\Phi \ell_J \inf_{0\le t\le T_J} e_J(t)-2\Delta_J
>
2\sigma_J,
\tag{CF.11c}
```

then every good active pair avoids the shadow tube on `[0,T_J]`.

Equivalently,

```math
\inf_{0\le t\le T_J}\Phi_J(t)
>
\frac{2\sigma_J+2\Delta_J}{\ell_J}.
\tag{CF.11d}
```

So the selector theorem may treat
`\ell_J^{-1}(2\sigma_J+2\Delta_J)` as the exact dimensionless shadow threshold
for the normalized coarse pair-gap.

## Theorem candidate

```math
\boxed{\text{TPS-ns-coarse-pair-gap}}
```

Assume:

1. `TPS-ns-good-set` holds through the measurable-good-set package
   `(GS.1)`-`(GS.7)`;
2. the coarse transverse strain lower bound `(CF.5)` holds on the good set;
3. the coarse/full deviation satisfies

```math
\sup_{0\le t\le T_J}\delta_J(t)=o(\ell_J);
\tag{CF.12}
```

One exact source of `(CF.12)` is recorded separately in
[tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md):
any time-integrable high-frequency velocity tail, and in particular the dyadic
gain package `HFG`, feeds directly into this deviation bound. More precisely,
if

```math
\mathcal H(T_J)
:=
\sum_{k\ge 0}2^{\frac32 k}\|\Delta_k\omega\|_{L_t^1L_x^2(0,T_J)}<\infty,
```

then

```math
\sup_{0\le t\le T_J}\delta_J(t)
\lesssim
\exp\!\big(C\mathcal H(T_J)\big)\,2^{-J}\mathcal H(T_J),
```

so `(CF.12)` follows whenever this tail is `o(\ell_J)`.

4. the uniform-in-time exclusion condition

```math
\inf_{0\le t\le T_J}
\left[
c_0\ell_J
\exp\!\Big(\int_0^t(\lambda_J(s)-\varepsilon_J^*(s))\,ds\Big)
-2\delta_J(t)
\right]
\gg
\sigma_J
\tag{CF.13}
```

holds, equivalently the hypothesis of `TPS-shadow-exclusion`.

Then the good active pairs avoid the shadow tube on the whole time interval
`[0,T_J]`, and therefore the only contribution to `E_J^{ns}(\sigma_J)` comes
from the vanishing bad bulk and the negligible cone/linearization exception
sets already isolated in `TPS-ns-good-set`.

So `(TPS.4i)` follows.

The infimum-in-time bad set here is an honest measurable selector object: the
time-slice shadow tube and the full infimum-in-time bad set admit Borel and
rational-time descriptions as recorded in
[tps-shadow-tube-measurability-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-tube-measurability-lemma.md).

## Corollary TPS-ns-coarse-pair-gap-HFG

Assume, in addition to the measurable-good-set package `(GS.1)`-`(GS.7)` and
the coarse transverse strain lower bound `(CF.5)`, that the dyadic
high-frequency gain quantity

```math
\mathcal H(T_J)
:=
\sum_{k\ge 0}2^{\frac32 k}\|\Delta_k\omega\|_{L_t^1L_x^2(0,T_J)}
```

is finite on `[0,T_J]`.

Assume also the scale relation

```math
\inf_{0\le t\le T_J}
\left[
c_0\ell_J
\exp\!\Big(\int_0^t(\lambda_J(s)-\varepsilon_J^*(s))\,ds\Big)
-C\,\exp\!\big(C\mathcal H(T_J)\big)\,2^{-J}\mathcal H(T_J)
\right]
\gg
\sigma_J.
\tag{CF.14}
```

Then `(TPS.4i)` follows.

### Proof

The bridge note
[tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md)
gives

```math
\sup_{0\le t\le T_J}\delta_J(t)
\le
C\,\exp\!\big(C\mathcal H(T_J)\big)\,2^{-J}\mathcal H(T_J).
\tag{CF.15}
```

Insert `(CF.15)` into the uniform-in-time exclusion condition `(CF.13)`. The
scale relation `(CF.14)` is exactly the resulting lower bound. So
`TPS-ns-coarse-pair-gap` applies and yields `(TPS.4i)`.

## Meaning

This theorem does not solve the dynamic problem, but it isolates the cleanest
uniform-in-time closure gate presently visible:

```math
\boxed{
\text{initial selector separation + integrated coarse transverse strain + small high-frequency deviation}
}
```

```math
\boxed{
\Longrightarrow
\text{uniform pair-gap lower bound on the good set}
\Longrightarrow
\text{shadow-tube exclusion.}
}
```

That is the sharpest coarse-flow reformulation of the current `GS.15` /
`GS.21` burden.

The broader source-backed frontier for this route is recorded in
[tps-dynamic-source-fit-and-open-frontier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-dynamic-source-fit-and-open-frontier.md).
The main conclusion there is that the most plausible first attack is exactly
the coarse-field bundle theorem `CF-bundle-coercive`: prove selector-local
bundle coercivity for the smoothed field `u_{\le J}`, then absorb the full
high-frequency remainder through the `\delta_J` bridge.
