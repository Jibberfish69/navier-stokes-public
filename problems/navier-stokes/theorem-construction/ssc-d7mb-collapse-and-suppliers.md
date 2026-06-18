# SSC D7mb Collapse And Suppliers

## Status

Active theorem-facing companion note for the measurable-derivative
Cauchy--Green route on the exact-potential simple-top branch.

Role: compress the `D.7mb` residual-budget route to one integrated collapse
proposition plus honest supplier lemmas.

## Purpose

Write the next theorem-facing cut for `PSJ+` in a form that is both compact and
faithful to the on-disk algebra, while keeping the post-`RPC.3` handoff
visibly downstream:

```math
\texttt{InitCollapse + MixCollapse-Honest + DriftCollapse-Honest}
\Longrightarrow
\texttt{SSC-D7mb-collapse}
\Longrightarrow
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}
\Longrightarrow
\texttt{RPC.3}
\Longrightarrow
\texttt{downstream SG.4/BR.lambda2/continuation export}.
\tag{SDC.0}
```

The key correction is that the integrated collapse must use the squared
`D.7mb10` residual packet, not the unsquared sum of `L^1` budgets.
In this square-budget reading, `MixCollapse-Honest` is the hard supplier.
`InitCollapse` and `DriftCollapse-Honest` are supporting suppliers for the
same `SSC-D7mb-collapse` packet, not alternate route primitives.

## Pointwise `D.7mb` Packet

Let

```math
\Pi_J^{ref}:=P_J^{CG},
\qquad
\Pi_J^{top}:=P_{J,\top}^{seg},
\tag{SDC.1}
```

and keep one selector-good atom-free strip on the exact-potential simple-top
branch. Define the pointwise `D.7mb10` residual packet

```math
\eta_J^{mb}(t,a,b)
:=
|m_J(t_0,a,b)|
+
\eta_{J,\mathrm{mix}}^{mb}(t,a,b)
+
\eta_{J,\mathrm{drift}}^{mb}(t,a,b),
\tag{SDC.2}
```

where

```math
\eta_{J,\mathrm{mix}}^{mb}(t,a,b)
:=
2\int_{t_0}^t
\Bigl|
Q_J^{top}(s)\,(W_J^N(s,a))^*S_J^N(s,a)W_J^N(s,a)\,n_J(a,b,s)
\Bigr|\,ds,
\tag{SDC.3}
```

and

```math
\eta_{J,\mathrm{drift}}^{mb}(t,a,b)
:=
3\int_{t_0}^t
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds.
\tag{SDC.4}
```

Proposition `D.7mb` gives the pointwise projector estimate

```math
\bigl\|\Pi_J^{ref}(t,a)-\Pi_J^{top}(a,b,t)\bigr\|_F^2
\le
\frac{2\,\eta_J^{mb}(t,a,b)^2}{\operatorname{gap}_J^{CG}(t,a)^2}.
\tag{SDC.5}
```

## Weighted Square Supplier Budgets

The integrated theorem-facing collapse should therefore use the weighted square
budgets

```math
\mathcal R_{J,2}^{init}
:=
\int_{\mathcal G_J}
M_J^2\,|m_J(t_0,a,b)|^2\,d\mu_J,
\tag{SDC.6}
```

```math
\mathcal R_{J,2}^{mix}
:=
\int_{\mathcal G_J}
M_J^2\,\bigl(\eta_{J,\mathrm{mix}}^{mb}\bigr)^2\,d\mu_J,
\tag{SDC.7}
```

```math
\mathcal R_{J,2}^{drift}
:=
\int_{\mathcal G_J}
M_J^2\,\bigl(\eta_{J,\mathrm{drift}}^{mb}\bigr)^2\,d\mu_J.
\tag{SDC.8}
```

These are the honest integrated descendants of the three `D.7mb` strip
budgets.

## Proposition `SSC-D7mb-collapse`

### Candidate Theorem SDC.A

Assume the full hypothesis package of `D.7mb` on the exact-potential simple-top
branch, and assume the Cauchy--Green gap floor

```math
\operatorname{gap}_J^{CG}(t,a)\ge \gamma_0>0
\qquad\text{on }\mathcal G_J.
\tag{SDC.9}
```

Then there exists a universal constant `C>0` such that

```math
\int_{\mathcal G_J}
M_J^2
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2\,d\mu_J
\le
\frac{C}{\gamma_0^2}
\Bigl(
\mathcal R_{J,2}^{init}
+
\mathcal R_{J,2}^{mix}
+
\mathcal R_{J,2}^{drift}
\Bigr).
\tag{SSC-D7mb}
```

Hence, if

```math
\mathcal R_{J,2}^{init}
+
\mathcal R_{J,2}^{mix}
+
\mathcal R_{J,2}^{drift}
=
o_J(1),
\tag{SDC.10}
```

then `SSC` follows:

```math
\int_{\mathcal G_J}
M_J^2
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2\,d\mu_J
=
o_J(1).
\tag{SSC}
```

### Proof

By `(SDC.5)` and `(SDC.9)`,

```math
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2
\le
\frac{2}{\gamma_0^2}
\bigl(
|m_J(t_0)|
+
\eta_{J,\mathrm{mix}}^{mb}
+
\eta_{J,\mathrm{drift}}^{mb}
\bigr)^2.
\tag{SDC.11}
```

Use `(x+y+z)^2\le 3(x^2+y^2+z^2)` and integrate against `M_J^2\,d\mu_J`. This
gives `(SSC-D7mb)`. The implication `(SDC.10) => (SSC)` then follows by substitution. ∎

## Corollary To The Angular Ledger

Once `RefObs` is available from the audited projector-first note
[exact-potential-angular-ledger-discharge.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-discharge.md),
`SSC` yields

```math
\int_{\mathcal G_J} M_J^2\Xi_J^{ang}\,d\mu_J
\le C_{ang}
\mathcal E_{J,M}^{obs}+o_J(1),
\tag{SDC.12}
```

hence `D.7mr2`, then `RPC.3`, then the downstream handoff

```math
\texttt{D.7mr2}
\Longrightarrow
\texttt{RPC.3}
\Longrightarrow
\texttt{SG.4B}
\Longrightarrow
\texttt{SG.4}
\Longrightarrow
\texttt{BR.lambda2}
\Longrightarrow
\texttt{continuation}.
\tag{SDC.13}
```

From `RPC.3` onward this note is only reading off the downstream export. The
live simple-top burdens remain upstream at `PSJ+`: close
`PTC-Lin + PTC-Shape => D.7mq` and force the selector-strain supplier on the
active strip. The more explicit post-`RPC.3` handoff is recorded in
[sg4-and-br-lambda2-handoff.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sg4-and-br-lambda2-handoff.md).

## Supplier 1: Initial Alignment

The initialization supplier is

```math
\mathcal R_{J,2}^{init}=o_J(1).
\tag{InitCollapse}
```

This is the endpoint / entrance-data side of the strip packet.

## Supplier 2: Mixed Top-Slot Leakage

This is the hard supplier:

```math
\mathcal R_{J,2}^{mix}=o_J(1).
\tag{MixCollapse}
```

The naive route

```math
\bigl|Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J\bigr|
\le C_{mix}
|S_J^N|\,|Q_J^{top}\Pi_J^{ref}|_F
\tag{SDC.14}
```

is **not** currently justified on disk and should not be used as theorem-facing
input without an extra operator domination theorem.

The honest installed reduction is the sharper `D.7md` / `D.7me` split. Define

```math
\eta_{J,\mathrm{mix}}^{self}(t,a,b)
:=
\int_{t_0}^t
\frac{
\mu_1^{CG}(s,a)\,
\bigl|
\langle p_J(s,a),B_J^N(s,a)n_J(a,b,s)\rangle
\bigr|
+
\mu_2^{CG}(s,a)\,|B_J^N(s,a)|_{\mathrm{op}}
}{
\operatorname{gap}_J^{CG}(s,a)
}
\,|m_J(s,a,b)|\,ds,
\tag{SDC.15}
```

```math
\eta_{J,\mathrm{mix}}^{comm}(t,a,b)
:=
\int_{t_0}^t
\frac{\mu_2^{CG}(s,a)}{\operatorname{gap}_J^{CG}(s,a)}
\bigl\|[\mathcal C_J^N(s,a),B_J^N(s,a)]\bigr\|_{\mathrm{op}}\,ds.
\tag{SDC.16}
```

Then `D.7me6` gives the pointwise reduction

```math
\eta_{J,\mathrm{mix}}^{mb}(t,a,b)
\le C_{SDC,17}
\eta_{J,\mathrm{mix}}^{self}(t,a,b)
+
\eta_{J,\mathrm{mix}}^{comm}(t,a,b).
\tag{SDC.17}
```

So an honest theorem-facing mixed-leakage supplier is:

### Lemma `MixCollapse-Honest`

If

```math
\int_{\mathcal G_J}
M_J^2\bigl(\eta_{J,\mathrm{mix}}^{self}\bigr)^2\,d\mu_J=o_J(1)
\quad\text{and}\quad
\int_{\mathcal G_J}
M_J^2\bigl(\eta_{J,\mathrm{mix}}^{comm}\bigr)^2\,d\mu_J=o_J(1),
\tag{SDC.18}
```

then `\mathcal R_{J,2}^{mix}=o_J(1)`.

This is the sharpest on-disk reduction of the hard supplier. Any carrier-based
shortcut must still prove an extra theorem that dominates the off-axis forcing by
projector-angle error.

## Supplier 3: Strain Drift

The drift supplier is

```math
\mathcal R_{J,2}^{drift}=o_J(1).
\tag{DriftCollapse}
```

An honest sufficient form is:

### Lemma `DriftCollapse-Honest`

Assume `g_J^{str}\ge \gamma_0>0` on `\mathcal G_J`. If

```math
\int_{\mathcal G_J}
M_J^2
\left(
\int_{t_0}^t
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|\,ds
\right)^2
d\mu_J
=
o_J(1),
\tag{SDC.19}
```

then `\mathcal R_{J,2}^{drift}=o_J(1)`.

If one prefers an `L^1`-type drift hypothesis, an additional uniform strip-size
or Jensen-type control is needed to pass from `(SDC.19)` to `\mathcal R_{J,2}^{drift}`.

## Corollary `D.7mm` Collapses The `D.7mb` Suppliers

The square-budget route above is compatible with the installed bootstrap packet.
The point is that `D.7mm` already controls the three `D.7mb` supplier ledgers
once its bootstrap envelope is square-integrable on the selector-good family.

### Corollary `BootstrapCollapse-Honest`

Assume the hypotheses of Corollary `D.7mm` on `\mathcal G_J`, with
`\operatorname{gap}_J^{CG}\ge \gamma_0>0`, and define the weighted bootstrap
envelope

```math
\Lambda_J^{boot}(a)
:=
1+
K_J^{lin}(a)e^{K_J^{lin}(a)}.
\tag{SDC.20}
```

If

```math
\int_{\mathcal G_J}
M_J^2
\Bigl(
\Lambda_J^{boot}(a)\,\eta_J^{boot}(a,b)
\Bigr)^2
\,d\mu_J
=
o_J(1),
\tag{SDC.21}
```

then

```math
\mathcal R_{J,2}^{init}
+
\mathcal R_{J,2}^{mix}
+
\mathcal R_{J,2}^{drift}
=
o_J(1),
\tag{SDC.22}
```

hence `SSC-D7mb-collapse` yields `SSC`.

### Proof

By `(D.7mm2)`,

```math
|m_J(t_0,a,b)|\le \eta_J^{boot}(a,b),
\tag{SDC.23}
```

so

```math
\mathcal R_{J,2}^{init}
\le
\int_{\mathcal G_J} M_J^2\,\eta_J^{boot}(a,b)^2\,d\mu_J
\le
\int_{\mathcal G_J}
M_J^2
\Bigl(
\Lambda_J^{boot}\eta_J^{boot}
\Bigr)^2
d\mu_J.
\tag{SDC.24}
```

Next, Corollary `D.7ml` gives the pointwise forcing split

```math
\bigl|
Q_J^{top}(W_J^N)^*S_J^N W_J^N n_J
\bigr|
\le
\frac12 a_J^{lin}(t,a)\,|m_J(t,a,b)|
+
\frac12 a_J^{quad}(t,a)\,|m_J(t,a,b)|^2
+
\frac12 \Theta_J^{comm}(t,a,b),
\tag{SDC.25}
```

because `(D.7ml5)`-`(D.7ml6)` and `(D.7mf2)` are exactly the coefficients
appearing in `(D.7ml3)` after multiplying the fixed numerical factors `2` and
`3` into the displayed constant.
Multiplying `(SDC.25)` by `2` and integrating gives

```math
\eta_{J,\mathrm{mix}}^{mb}(t,a,b)
\le
\int_{t_0}^t a_J^{lin}(s,a)\,|m_J(s,a,b)|\,ds
+
\int_{t_0}^t a_J^{quad}(s,a)\,|m_J(s,a,b)|^2\,ds
+
\int_{t_0}^t \Theta_J^{comm}(s,a,b)\,ds.
\tag{SDC.26}
```

Now Corollary `D.7mm` gives
`\sup_{s\in I_0}|m_J(s,a,b)|\le 2e^{K_J^{lin}(a)}\eta_J^{boot}(a,b)`, so

```math
\int_{t_0}^t a_J^{lin}(s,a)\,|m_J(s,a,b)|\,ds
\le
2K_J^{lin}(a)e^{K_J^{lin}(a)}\,\eta_J^{boot}(a,b).
\tag{SDC.27}
```

Likewise,

```math
\int_{t_0}^t a_J^{quad}(s,a)\,|m_J(s,a,b)|^2\,ds
\le
4Q_J^{quad}(a)e^{2K_J^{lin}(a)}\,\eta_J^{boot}(a,b)^2
\le
\eta_J^{boot}(a,b),
\tag{SDC.28}
```

where the last step is exactly the bootstrap threshold `(D.7mm3)`.

Also, by `(D.7mm2)`,

```math
\int_{t_0}^t \Theta_J^{comm}(s,a,b)\,ds
\le
\eta_J^{boot}(a,b),
\tag{SDC.29}
```

and since `\Theta_J^{comm}` contains the whole drift integrand from `(D.7mf2)`,

```math
\eta_{J,\mathrm{drift}}^{mb}(t,a,b)
\le
\int_{t_0}^t \Theta_J^{comm}(s,a,b)\,ds
\le
\eta_J^{boot}(a,b).
\tag{SDC.30}
```

Therefore `(SDC.26)`-`(SDC.29)` imply

```math
\eta_{J,\mathrm{mix}}^{mb}(t,a,b)
\le C_{SDC,31}
\Lambda_J^{boot}(a)\,\eta_J^{boot}(a,b),
\tag{SDC.31}
```

and `(SDC.30)`-`(SDC.31)` imply

```math
\mathcal R_{J,2}^{mix}
+
\mathcal R_{J,2}^{drift}
\le C_{SDC,32}
\int_{\mathcal G_J}
M_J^2
\Bigl(
\Lambda_J^{boot}\eta_J^{boot}
\Bigr)^2
d\mu_J.
\tag{SDC.32}
```

Together with `(SDC.24)`, hypothesis `(SDC.21)` yields `(SDC.22)`. Applying
`SSC-D7mb-collapse` then gives `SSC`. ∎

### Corollary `Uniform-Klin + BootSmall => SSC`

Assume the hypotheses of `BootstrapCollapse-Honest`, and suppose in addition
that there is a uniform strip bound

```math
\sup_{\mathcal G_J}K_J^{lin}\le K_\ast<\infty.
\tag{SDC.33}
```

If

```math
\int_{\mathcal G_J}
M_J^2\,\eta_J^{boot}(a,b)^2\,d\mu_J
=
o_J(1),
\tag{SDC.34}
```

then `(SDC.21)` holds, hence `SSC`, `D.7mr2`, `RPC.3`, and the downstream
`SG.4 -> BR.lambda2 -> continuation` export.

#### Proof

By `(SDC.20)` and `(SDC.33)`,

```math
\Lambda_J^{boot}(a)
\le
1+K_\ast e^{K_\ast}
\qquad\text{on }\mathcal G_J.
\tag{SDC.35}
```

Therefore

```math
\int_{\mathcal G_J}
M_J^2
\bigl(\Lambda_J^{boot}(a)\eta_J^{boot}(a,b)\bigr)^2\,d\mu_J
\le
\bigl(1+K_\ast e^{K_\ast}\bigr)^2
\int_{\mathcal G_J}
M_J^2\,\eta_J^{boot}(a,b)^2\,d\mu_J.
\tag{SDC.36}
```

Now `(SDC.34)` implies `(SDC.21)`, so `BootstrapCollapse-Honest` applies. ∎

## Interpretation

This note does not move the frontier. It compresses the current `D.7mb` route to
the smallest honest theorem-facing packet:

1. one integrated collapse proposition `SSC-D7mb-collapse`;
2. one genuinely hard supplier `MixCollapse-Honest`;
3. one supporting entrance supplier `InitCollapse`;
4. one supporting drift supplier `DriftCollapse-Honest`;
5. one exact corollary showing the installed `D.7mm` bootstrap collapses the
   three supplier budgets under a weighted square envelope;
6. the already audited splice from `SSC` to `D.7mr2`.

The live simple-top burden is therefore still upstream under `PSJ+`: prove the
square-budget supplier package strongly enough to feed `SSC`, together with
`PTC-Lin + PTC-Shape => D.7mq`. The chain after `RPC.3` remains downstream
export through `SG.4`, `BR.lambda2`, and continuation.
