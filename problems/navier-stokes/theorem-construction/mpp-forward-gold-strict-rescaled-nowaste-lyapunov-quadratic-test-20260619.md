# MPP Forward Gold Strict Rescaled No-Waste Lyapunov Quadratic Test

Date: 2026-06-19

## Status

Direct quadratic/local-energy Lyapunov test complete.  A strict rescaled
no-waste theorem cannot be obtained by taking the local energy identity,
projecting away pressure, and choosing a better quadratic cutoff.  The pressure
can be moved, but the scale-critical localized convection/projection
commutator remains unsigned and is exactly the unweighted action that the gold
route is trying to control.

This note does not rule out every possible nonlinear or nonlocal Lyapunov
functional.  It rules out the currently available quadratic/local-energy
family as an independent supplier.

## 1. Target inequality

The recurrence notes show that a surviving heat-scale terminal packet forces
infinitely many unit log-time action quanta.  A strict no-waste Lyapunov
functional would close that branch by proving

```math
-{d\over ds}L(s)
\ge
c\,\mathcal A_R(s)
-
\mathcal R_{\rm legal}(s),
\tag{SLQ.1}
```

with

```math
\inf_s L(s)>-\infty,
\qquad
\int_{s_0}^{\infty}\mathcal R_{\rm legal}(s)\,ds<\infty.
\tag{SLQ.2}
```

Then infinitely many slabs with

```math
\int_{J_k}\mathcal A_R(s)\,ds\ge c_\eta>0
\tag{SLQ.3}
```

would contradict finite total drop of \(L\).

The tested question here is whether `(SLQ.1)` follows from the natural
quadratic localized functionals available from the Navier-Stokes local energy
balance.

## 2. Rescaled equation and quadratic candidate

Use terminal self-similar variables

```math
s=-\log(T-t),
\qquad
y={x-x_\ast\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\qquad
q(s,y)=(T-t)p(t,x).
\tag{SLQ.4}
```

Then

```math
\partial_s v
+(v\cdot\nabla)v
+\nabla q
+{1\over2}y\cdot\nabla v
+{1\over2}v
=
\nu\Delta v,
\qquad
\nabla\cdot v=0.
\tag{SLQ.5}
```

Let \(A_s\) be a positive self-adjoint localized operator, possibly with Leray
projection built in, and define

```math
L_A(s)
=
{1\over2}\langle v,A_s v\rangle.
\tag{SLQ.6}
```

This includes fixed cutoffs, moving heat-scale packets, projected cutoffs,
Gaussian weights, and finite-rank localized quadratic packet energies.

## 3. Exact derivative identity

Differentiating `(SLQ.6)` using `(SLQ.5)` gives

```math
{d\over ds}L_A(s)
=
{1\over2}\langle v,\partial_sA_s v\rangle
-\nu\langle\nabla v,A_s\nabla v\rangle
+\nu\,\operatorname{Comm}_{A_s,\nabla}(v)
-\mathcal C_A(v)
-\mathcal P_A(v)
-\mathcal G_A(v).
\tag{SLQ.7}
```

Here

```math
\mathcal C_A(v)
=
\langle (v\cdot\nabla)v,A_s v\rangle,
\tag{SLQ.8}
```

```math
\mathcal P_A(v)
=
\langle\nabla q,A_s v\rangle,
\tag{SLQ.9}
```

and

```math
\mathcal G_A(v)
=
\left\langle
{1\over2}y\cdot\nabla v+{1\over2}v,
A_s v
\right\rangle.
\tag{SLQ.10}
```

If \(A_sv\) is divergence-free, then \(\mathcal P_A(v)=0\).  This is the
pressure-corrected advantage.  The remaining obstruction is not the explicit
pressure term.  It is the pair

```math
\mathcal C_A(v)
\quad\text{and}\quad
\operatorname{Comm}_{A_s,\nabla}(v),
\tag{SLQ.11}
```

together with the dilation term \(\mathcal G_A(v)\) and the operator-motion
term \(\frac12\langle v,\partial_sA_s v\rangle\).

## 4. Full-space quadratic energy is not the answer

For \(A_s=I\) on a decaying whole-space field, incompressibility cancels
convection and pressure:

```math
\mathcal C_I(v)=0,
\qquad
\mathcal P_I(v)=0.
\tag{SLQ.12}
```

The exact identity becomes

```math
{d\over ds}{1\over2}\|v\|_2^2
=
-\nu\|\nabla v\|_2^2
+{1\over4}\|v\|_2^2.
\tag{SLQ.13}
```

The term \(\frac14\|v\|_2^2\) is the parabolic scaling growth of the
backward terminal normalization.  It has the wrong sign for a monotone
terminal budget.  Multiplying by \(e^{-s/2}\) removes that growth, but returns
to the physical discounted energy ledger:

```math
{d\over ds}\left(e^{-s/2}{1\over2}\|v\|_2^2\right)
=
-e^{-s/2}\nu\|\nabla v\|_2^2.
\tag{SLQ.14}
```

This controls only

```math
\int e^{-s/2}\|\nabla v\|_2^2\,ds,
\tag{SLQ.15}
```

not the unweighted action needed in `(SLQ.1)`.

## 5. Localized quadratic energy restores the unsigned critical flux

If \(A_s\) localizes the terminal packet, the full-space cancellation in
`(SLQ.12)` is broken.  For a scalar cutoff \(A=\chi\), the convective term is

```math
\mathcal C_\chi(v)
=
{1\over2}\int |v|^2 v\cdot\nabla\chi\,dy.
\tag{SLQ.16}
```

This term has no sign.  It is controlled by the local cubic currency:

```math
|\mathcal C_\chi(v)|
\le
C_\chi\int_{\operatorname{supp}\nabla\chi}|v|^3\,dy.
\tag{SLQ.17}
```

The pressure-corrected projected version replaces `(SLQ.16)` by a projected
localized commutator, but the size remains scale-critical:

```math
|\mathcal C_A(v)|
+|\operatorname{Comm}_{A_s,\nabla}(v)|
\le
C_A
\int_{\operatorname{collar}(A_s)}
\left(|v|^3+|q|^{3/2}+|S(v)|^{5/2}\right)\,dy.
\tag{SLQ.18}
```

Thus the direct quadratic identity gives only

```math
-{d\over ds}L_A(s)
=
\nu\langle\nabla v,A_s\nabla v\rangle
-\text{unsigned critical flux}
+\text{dilation/operator terms}.
\tag{SLQ.19}
```

It does not give `(SLQ.1)` unless the unsigned critical flux is already
dominated by dissipation plus legal residual.

## 6. The exact missing domination theorem

A quadratic/local-energy Lyapunov proof would require

```math
|\mathcal C_A(v)|
+|\operatorname{Comm}_{A_s,\nabla}(v)|
+|\mathcal G_A(v)|
+{1\over2}|\langle v,\partial_sA_s v\rangle|
\le
\theta\nu\langle\nabla v,A_s\nabla v\rangle
+\mathcal R_{\rm legal}(s)
+\mathcal D_{\rm visible}(s),
\tag{SLQ.20}
```

with \(\theta<1\), summable legal residual, and a visible defect term that is
already consumed by CM Pack/Part/Field or by a proved forward reserve.

But `(SLQ.20)` is exactly the missing supplier in another form:

```math
\boxed{
\text{ProjectedLocalizedFluxCommutatorCoercivity.A}
}
\tag{SLQ.21}
```

or equivalently

```math
\boxed{
\text{unweighted normalized CKN/source-square/critical-strain reserve.}
}
\tag{SLQ.22}
```

Without `(SLQ.20)`, the quadratic identity is a visibility identity, not a
coercive no-waste theorem.

## 7. Direct dyadic obstruction

The same dyadic heat-scale stack that defeats material stress summability and
CKN packing defeats the quadratic Lyapunov route.  Let \(r_j=2^{-j}\), and let
each selected scale have order-one normalized collar flux:

```math
\int_{J_j}
\int_{\operatorname{collar}(A_j)}
\left(|v_j|^3+|q_j|^{3/2}+|S(v_j)|^{5/2}\right)
\ge c_0.
\tag{SLQ.23}
```

Then the unweighted flux count diverges:

```math
\sum_j
\int_{J_j}
\int_{\operatorname{collar}(A_j)}
\left(|v_j|^3+|q_j|^{3/2}+|S(v_j)|^{5/2}\right)
=\infty.
\tag{SLQ.24}
```

The corresponding physical measures remain weighted by powers of \(r_j\):

```math
\sum_j r_j^2\mathcal C(Q_j)<\infty
\tag{SLQ.25}
```

for the CKN cubic-pressure currency, and

```math
\sum_j r_j\,W_j^{\rm ren}<\infty
\tag{SLQ.26}
```

for the material stress-work currency.  A quadratic local energy functional
does not remove these weights.  It merely rewrites them as collar flux or
projection commutator terms.

## Verdict

The strict no-waste Lyapunov supplier remains open, but its quadratic/local
energy version is exhausted:

```math
\boxed{
\text{quadratic pressure-corrected local energy}
\Rightarrow
\text{unsigned critical commutator visibility, not coercive drop.}
}
\tag{SLQ.27}
```

To close the heat-scale branch, the proof still needs one of:

```math
\boxed{
\text{ProjectedLocalizedFluxCommutatorCoercivity.A}
\quad\text{/}\quad
\text{UnweightedActionFinite.A}
\quad\text{/}\quad
\text{NormalizedCKNCarleson.A}
\quad\text{/}\quad
\text{SelectedCriticalStrainCarleson.A}
\quad\text{/}\quad
\text{SourceSquareReserve.A}
\quad\text{/}\quad
\text{compact no-waste recurrent-profile rigidity.}
}
\tag{SLQ.28}
```

So the no-waste route is not dead.  The specific shortcut "choose a better
localized quadratic pressure-corrected energy" is not enough from current
inputs.
