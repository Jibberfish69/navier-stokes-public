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

### Proposition CF-bundle-coercive. Coarse Expanding-Plane Coherence Implies `(CF.5)`

Write the coarse strain tensor in Eulerian form and along the coarse flow as

```math
S_{\le J}(x,t)
:=
\operatorname{Sym}\nabla u_{\le J}(x,t),
\qquad
S_{\le J}(a,t)
:=
S_{\le J}(X_{\le J}(a,t),t).
\tag{CF.6a}
```

For the live three-dimensional route, let `E_{\le J}^{+}(x,t)` denote the
rank-two spectral plane of `S_{\le J}(x,t)` associated to its two largest
eigenvalues, let `Q_{\le J}^{+}(x,t)` be the orthogonal projector onto
`E_{\le J}^{+}(x,t)`, and let

```math
\lambda_{2,\le J}(x,t)
:=
\lambda_{\min}\!\big(S_{\le J}(x,t)\big|_{E_{\le J}^{+}(x,t)}\big).
\tag{CF.6b}
```

Assume there exist a coarse rate `\Lambda_J(t)\ge 0` and a spectral defect
`\varepsilon_J^{spec}(t,a)\ge 0` such that

```math
\lambda_{2,\le J}(X_{\le J}(a,t),t)
\ge
\Lambda_J(t)-\varepsilon_J^{spec}(t,a)
\qquad\text{for a.e. }(t,a)\in[0,T_J]\times G_J.
\tag{CF.6c}
```

Let

```math
M_J(t)
:=
\operatorname*{ess\,sup}_{a\in G_J}
\big\|S_{\le J}(X_{\le J}(a,t),t)\big\|_{\mathrm{op}},
\tag{CF.6d}
```

and quantify the selector-bundle angle defect by

```math
\vartheta_J(a,t)
:=
\big\|
\big(I-Q_{\le J}^{+}(X_{\le J}(a,t),t)\big)P_{N_a}
\big\|_{\mathrm{op}}.
\tag{CF.6e}
```

Assume

```math
\vartheta_J(a,t)\le \theta_J(a,t).
\tag{CF.6f}
```

Then for every `v\in N_a`,

```math
v^\top
\operatorname{Sym}\!\big(
P_{N_a}\nabla u_{\le J}(X_{\le J}(a,t),t)P_{N_a}
\big)v
\ge
\big(
\Lambda_J(t)-\varepsilon_J^{spec}(t,a)-2M_J(t)\theta_J(a,t)^2
\big)|v|^2.
\tag{CF.6g}
```

Hence `(CF.5)` holds with the explicit identification

```math
\lambda_J(t):=\Lambda_J(t),
\qquad
\varepsilon_J(t,a)
:=
\varepsilon_J^{spec}(t,a)+2M_J(t)\theta_J(a,t)^2.
\tag{CF.6h}
```

**Proof skeleton.**
Fix a unit `v\in N_a` and decompose it relative to the spectral splitting
`v=v_++v_-` with
`v_+:=Q_{\le J}^{+}(X_{\le J}(a,t),t)v` and
`v_-:=(I-Q_{\le J}^{+}(X_{\le J}(a,t),t))v`. Since
`Q_{\le J}^{+}(X_{\le J}(a,t),t)` is a spectral projector of the symmetric
matrix `S_{\le J}(X_{\le J}(a,t),t)`,
the mixed terms vanish:

```math
\langle S_{\le J}(X_{\le J}(a,t),t)v,v\rangle
=
\langle S_{\le J}(X_{\le J}(a,t),t)v_+,v_+\rangle
+
\langle S_{\le J}(X_{\le J}(a,t),t)v_-,v_-\rangle.
```

By `(CF.6c)`,
`\langle S_{\le J}(X_{\le J}(a,t),t)v_+,v_+\rangle\ge (\Lambda_J-\varepsilon_J^{spec})|v_+|^2`,
while `(CF.6d)` gives
`\langle S_{\le J}(X_{\le J}(a,t),t)v_-,v_-\rangle\ge -M_J|v_-|^2`. The angle control
`(CF.6f)` implies `|v_-|\le \theta_J` and `|v_+|^2=1-|v_-|^2\ge 1-\theta_J^2`,
so

```math
\langle S_{\le J}(X_{\le J}(a,t),t)v,v\rangle
\ge
(\Lambda_J-\varepsilon_J^{spec})(1-\theta_J^2)-M_J\theta_J^2.
```

Since `\Lambda_J-\varepsilon_J^{spec}\le M_J`, the quadratic error is bounded by
`2M_J\theta_J^2`, yielding `(CF.6g)`.

### Corollary CF-bundle-coercive-int. Minimal Integrated Coarse Closure Packet

Define

```math
\varepsilon_J^{spec,*}(t)
:=
\operatorname*{ess\,sup}_{a\in G_J}\varepsilon_J^{spec}(t,a),
\qquad
\theta_J^*(t)
:=
\operatorname*{ess\,sup}_{a\in G_J}\theta_J(a,t).
\tag{CF.6i}
```

If

```math
\int_0^{T_J}\Lambda_J(t)\,dt\to+\infty,
\qquad
\int_0^{T_J}\varepsilon_J^{spec,*}(t)\,dt=o_J(1),
\qquad
\int_0^{T_J}M_J(t)\theta_J^*(t)^2\,dt=o_J(1),
\tag{CF.6j}
```

then `(CF.5)`-`(CF.6)` hold with

```math
\varepsilon_J^*(t)
\le
\varepsilon_J^{spec,*}(t)+2M_J(t)\theta_J^*(t)^2,
\tag{CF.6k}
```

so the entire coarse bundle burden is reduced to a spectral floor for
`\lambda_{2,\le J}` together with quadratic angle control of `N_a` against the
coarse expanding plane `E_{\le J}^{+}`.

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

### Corollary CF-pair-strain-segment. Segmentwise Spectral Coherence Implies `(CF.8c)`

For a good active pair `(a,b)`, write

```math
y_a(t):=X_{\le J}(a,t),
\qquad
y_b(t):=X_{\le J}(b,t),
\qquad
e_{a,b}(t):=\frac{y_b(t)-y_a(t)}{|y_b(t)-y_a(t)|},
\tag{CF.8g}
```

and parametrize the transported coarse segment by

```math
\gamma_{a,b}(\theta,t)
:=
(1-\theta)y_a(t)+\theta y_b(t),
\qquad
0\le \theta\le 1.
\tag{CF.8h}
```

Assume there exists a pointwise coarse log-rate `\lambda_J^{seg}(t)\ge 0` such
that for almost every `(t,\theta)` and every good active pair,

```math
\lambda_{2,\le J}(\gamma_{a,b}(\theta,t),t)
\ge
\lambda_J^{seg}(t)-\varepsilon_J^{seg}(a,b,\theta,t),
\tag{CF.8i}
```

with

```math
\big\|
\operatorname{Sym}\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)
\big\|_{\mathrm{op}}
\le
M_J(t),
\tag{CF.8j}
```

and the pair direction stays close to the local coarse expanding plane:

```math
\big|
\big(I-Q_{\le J}^{+}(\gamma_{a,b}(\theta,t),t)\big)e_{a,b}(t)
\big|
\le
\theta_J^{seg}(a,b,\theta,t).
\tag{CF.8k}
```

Define the segment error ledger

```math
\overline{\varepsilon}_J^{pair}(a,b,t)
:=
\int_0^1 \varepsilon_J^{seg}(a,b,\theta,t)\,d\theta
+
2M_J(t)\int_0^1\theta_J^{seg}(a,b,\theta,t)^2\,d\theta.
\tag{CF.8l}
```

Then the exact logarithmic pair-strain integrand obeys

```math
\frac{
\big(u_{\le J}(y_a(t),t)-u_{\le J}(y_b(t),t)\big)
\cdot
\big(y_a(t)-y_b(t)\big)
}{
|y_a(t)-y_b(t)|^2
}
\ge
\lambda_J^{seg}(t)-\overline{\varepsilon}_J^{pair}(a,b,t),
\tag{CF.8m}
```

and therefore `(CF.8c)` holds with

```math
\Lambda_J(t)
:=
\int_0^t \lambda_J^{seg}(s)\,ds,
\qquad
\mathcal E_J^{pair}(a,b,t)
:=
\int_0^t
\overline{\varepsilon}_J^{pair}(a,b,s)\,ds.
\tag{CF.8n}
```

**Proof skeleton.**
By the fundamental theorem of calculus along the segment,

```math
u_{\le J}(y_b,t)-u_{\le J}(y_a,t)
=
\int_0^1
\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)\,(y_b-y_a)\,d\theta.
```

Taking the inner product with `e_{a,b}(t)` kills the antisymmetric part of
`\nabla u_{\le J}`, so the logarithmic pair-strain integrand is exactly the
segment average of the quadratic form
`e_{a,b}(t)^\top \operatorname{Sym}\nabla u_{\le J}(\gamma_{a,b}(\theta,t),t)e_{a,b}(t)`.
Apply the same spectral-plane decomposition used in `(CF.6g)` pointwise in
`\theta`, then integrate over `\theta\in[0,1]`.

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

It is also convenient to record the sharper pairwise deviation modulus

```math
D_J
:=
\operatorname*{ess\,sup}_{(a,b)\in G_J^{pair}}
\sup_{0\le t\le T_J}
\frac{
\big|
\big(X(a,t)-X(b,t)\big)
-\big(X_{\le J}(a,t)-X_{\le J}(b,t)\big)
\big|
}{\ell_J}.
\tag{CF.9a}
```

By the triangle inequality,

```math
D_J\le 2\ell_J^{-1}\sup_{0\le t\le T_J}\delta_J(t).
\tag{CF.9b}
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

### Corollary TPS-shadow-exclusion-closure. Exact Coarse Closure Criterion

Assume the normalized coarse gap lower bound

```math
\inf_{0\le t\le T_J}\Phi_J(t)\ge M_J,
\tag{CF.11e}
```

and the pairwise deviation modulus bound

```math
D_J\le D_J^{max}.
\tag{CF.11f}
```

If

```math
M_J-D_J^{max}
\gg
\frac{\sigma_J}{\ell_J\inf_{0\le t\le T_J}e_J(t)},
\tag{CF.11g}
```

then the good active pairs avoid the shadow tube on `[0,T_J]`.

This is the clean final hinge of the coarse-flow route: once the coarse
normalized pair-gap dominates the normalized shadow threshold after subtracting
the actual/coarse pairwise error, `TPS-shadow-exclusion` is automatic.

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

## Exact Remaining Coarse Burden

After `CF-bundle-coercive`, the open coarse-flow theorem is no longer a bare
request for `(CF.5)` or `(CF.8c)`.

The remaining honest packet is exactly one of the following two localized
statements.

1. Bundle version: prove a coarse second-eigenvalue floor `(CF.6c)` on an
   asymptotically full good set and a quadratic bundle-angle control
   `(CF.6f)` with the integrated defect ledger `(CF.6j)`.
2. Scalarized version: prove the same coarse second-eigenvalue floor along the
   transported pair segments `(CF.8i)` together with the pair-direction angle
   control `(CF.8k)`, so that the direct pair-strain inequality `(CF.8m)` holds.

Once either packet lands, the only remaining scale closure is the already-named
shadow threshold:

```math
\inf_{0\le t\le T_J}\Phi_J(t)
>
\frac{2\sigma_J+2\Delta_J}{\ell_J},
\tag{CF.16}
```

with `\Delta_J` supplied perturbatively by the bridge estimate `(HF.15)`.

The broader source-backed frontier for this route is recorded in
[tps-dynamic-source-fit-and-open-frontier.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-dynamic-source-fit-and-open-frontier.md).
The main conclusion there is that the most plausible first attack is exactly
the coarse-field bundle theorem `CF-bundle-coercive`: prove selector-local
bundle coercivity for the smoothed field `u_{\le J}`, then absorb the full
high-frequency remainder through the `\delta_J` bridge.
