# Restricted CG Reference-Gap Persistence

## Status

Candidate theorem-facing exact-potential gap note.

Role: first selector-strain discharge surface on the exact-potential
Cauchy--Green branch.
This note isolates the honest Cauchy--Green reference-gap theorem and makes
explicit how it interacts with the three residual budgets from `D.7mb`.

## Purpose

Discharge the first exact selector-strain step:

```math
\boxed{
\text{reference CG simple-top at }t_0
+
\text{CG persistence budget}
\Longrightarrow
\text{uniform CG gap floor and projector persistence on the strip.}
}
\tag{CGR.0}
```

The key correction is this:

```math
\text{the three }D.7mb\text{ budgets control the selector-strain residual once a CG gap exists;}
\tag{CGR.0a}
```

they do **not** by themselves control the operator drift of
`\mathcal C_J^N(t)` away from `\mathcal C_J^N(t_0)`. The honest gap-persistence
packet therefore uses the reference Cauchy--Green persistence budget
`E_{J,t_0}^{CG}` from `D.7mk1`, then folds in the `D.7mb` strip
budgets to recover the projector comparison needed downstream.

## Exact Setup

Keep one exact-potential selector-good atom-free window `I_0=[t_0,t_1]`,
one transported good base point `a`, and one active pair `(a,b)`.
Let

```math
\mathcal C_J^N(t,a):=(W_J^N(t,a))^*W_J^N(t,a)
\tag{CGR.1}
```

be the restricted Cauchy--Green tensor on `N_a`, with entrance top gap

```math
g_0
:=
\lambda_1\!\bigl(\mathcal C_J^N(t_0,a)\bigr)
-
\lambda_2\!\bigl(\mathcal C_J^N(t_0,a)\bigr)
>0.
\tag{CGR.2}
```

Write `P_J^{CG}(t,a)` for the top spectral projector of `\mathcal C_J^N(t,a)`
and `P_{J,t_0}^{CG}(a):=P_J^{CG}(t_0,a)`.

Define the reference persistence budget at base time `t_0`

```math
E_{J,t_0}^{CG}(t,a)
:=
2\int_{t_0}^t
\bigl|W_J^N(s,a)\bigr|_{\mathrm{op}}^2\,|S_J^N(s,a)|\,ds,
\tag{CGR.3}
```

which is exactly `D.7mk1` with `\tau=t_0`.

Define the three residual budgets isolated by `D.7mb`:

```math
\eta_{J,0}^{mb}(a,b)
:=
|m_J(t_0,a,b)|,
\tag{CGR.4}
```

```math
\eta_{J,\mathrm{off}}^{mb}(t,a,b)
:=
2\int_{t_0}^t
\Bigl|
Q_J^{top}(s)\,(W_J^N(s,a))^*S_J^N(s,a)W_J^N(s,a)\,n_J(a,b,s)
\Bigr|\,ds,
\tag{CGR.5}
```

```math
\eta_{J,\mathrm{var}}^{mb}(t,a,b)
:=
3\int_{t_0}^t
\frac{
|\mathcal C_J^N(s,a)|\,|\partial_s S_J^N(s,a)|
}{
g_J^{str}(s,a)
}\,ds,
\tag{CGR.6}
```

and the combined strip residual packet

```math
\eta_J^{mb}(t,a,b)
:=
\eta_{J,0}^{mb}(a,b)
+
\eta_{J,\mathrm{off}}^{mb}(t,a,b)
+
\eta_{J,\mathrm{var}}^{mb}(t,a,b).
\tag{CGR.7}
```

## Exact Claim

### Candidate Theorem CGR.A

Assume on `I_0` that

```math
E_{J,t_0}^{CG}(t,a)\le \frac{g_0}{4}
\qquad\text{for every }t\in I_0.
\tag{CGR.8}
```

Then:

```math
\lambda_1\!\bigl(\mathcal C_J^N(t,a)\bigr)
-
\lambda_2\!\bigl(\mathcal C_J^N(t,a)\bigr)
\ge
\frac{g_0}{2}
\qquad\text{for every }t\in I_0,
\tag{CGR.9}
```

and

```math
\bigl\|
P_J^{CG}(t,a)-P_{J,t_0}^{CG}(a)
\bigr\|_F^2
\le
\frac{C_{CG,\mathrm{DK}}}{g_0^2}\,
E_{J,t_0}^{CG}(t,a)^2.
\tag{CGR.10}
```

Moreover, the `D.7mb` residual packet obeys

```math
|m_J(t,a,b)|\le \eta_J^{mb}(t,a,b),
\tag{CGR.11}
```

and therefore

```math
\bigl\|
P_{J,\top}^{seg}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\frac{8\,\eta_J^{mb}(t,a,b)^2}{g_0^2}.
\tag{CGR.12}
```

Finally, the fixed-time reference projector satisfies

```math
\bigl\|
P_{J,\top}^{seg}(a,b,t)-P_{J,t_0}^{CG}(a)
\bigr\|_F^2
\le
\frac{2C_{CG,\mathrm{DK}}}{g_0^2}\,
E_{J,t_0}^{CG}(t,a)^2
+
\frac{16\,\eta_J^{mb}(t,a,b)^2}{g_0^2}.
\tag{CGR.13}
```

So the exact-potential selector-strain side splits honestly into:

```math
\text{CG persistence budget }E_{J,t_0}^{CG}
\Longrightarrow
\text{gap floor and reference-projector persistence},
\tag{CGR.14a}
```

followed by

```math
\text{the three }D.7mb\text{ strip budgets}
\Longrightarrow
\text{projector comparison to }P_{J,\top}^{seg}.
\tag{CGR.14b}
```

### Proof

By `D.7mk3` with `\tau=t_0`,

```math
\bigl\|
\mathcal C_J^N(t,a)-\mathcal C_J^N(t_0,a)
\bigr\|_{\mathrm{op}}
\le
E_{J,t_0}^{CG}(t,a).
\tag{CGR.15}
```

Weyl's inequality therefore gives

```math
\lambda_1\!\bigl(\mathcal C_J^N(t,a)\bigr)
\ge
\lambda_1\!\bigl(\mathcal C_J^N(t_0,a)\bigr)-E_{J,t_0}^{CG}(t,a),
\tag{CGR.16}
```

```math
\lambda_2\!\bigl(\mathcal C_J^N(t,a)\bigr)
\le
\lambda_2\!\bigl(\mathcal C_J^N(t_0,a)\bigr)+E_{J,t_0}^{CG}(t,a),
\tag{CGR.17}
```

so `(CGR.8)` implies `(CGR.9)`. The rank-one Davis--Kahan estimate then yields
`(CGR.10)`. This is exactly the perturbative content of `D.7mo`, rewritten at
the strip entrance `t_0`.

Next, `D.7mb8` is exactly `(CGR.11)` after the definition `(CGR.7)`. Since the
gap floor `(CGR.9)` gives
`\operatorname{gap}_J^{CG}(t,a)\ge g_0/2`, Proposition `D.7mb9` implies

```math
\bigl\|
P_{J,\top}^{seg}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\frac{2\,\eta_J^{mb}(t,a,b)^2}{(g_0/2)^2}
=
\frac{8\,\eta_J^{mb}(t,a,b)^2}{g_0^2},
```

which is `(CGR.12)`.

Finally,

```math
\bigl\|
P_{J,\top}^{seg}(a,b,t)-P_{J,t_0}^{CG}(a)
\bigr\|_F^2
\le
2\bigl\|
P_{J,\top}^{seg}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
+
2\bigl\|
P_J^{CG}(t,a)-P_{J,t_0}^{CG}(a)
\bigr\|_F^2,
\tag{CGR.18}
```

so `(CGR.10)` and `(CGR.12)` give `(CGR.13)`. ∎

## Interpretation

This is the exact first selector-strain note on the Cauchy--Green branch.

It proves the honest statement that the route needs:

1. a reference simple-top gap at `t_0`;
2. a Cauchy--Green persistence budget to keep that gap open;
3. the three `D.7mb` strip budgets to convert the gap floor into projector
   comparison.

That is stricter than the informal slogan “small `D.7mb` budgets preserve the
CG gap,” but it is the mathematically justified theorem supported by the
current on-disk reductions.

## Downstream Use

The next exact step is to compare a synchronized reference projector
`\Pi_J^{ref}` to `P_{J,\top}^{seg}` by combining:

1. entrance control of `\Pi_J^{ref}` against `P_{J,t_0}^{CG}`;
2. the gap-persistence and projector-persistence bounds `(CGR.9)`-`(CGR.10)`;
3. the strip residual comparison `(CGR.12)`-`(CGR.13)`;
4. one selector-strain bootstrap packet such as `D.7mp + D.7mo + D.7mm` or
   `D.7mf + D.7mk`.

That is written next in
[reference-projector-to-top-strain-comparison.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/reference-projector-to-top-strain-comparison.md).
