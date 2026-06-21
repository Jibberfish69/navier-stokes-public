---
theorem_id: forward-gold-bodyiv-return-recurrence-defect-decomposition-20260621
status: decomposition-proved-unweighted-return-modulus-not-produced
logical_landing_node: bodyiv_return_recurrence_defect_decomposition
edge_effect: "Runs a recurrence/descent test on the Body-IV heat-scale return obstruction. The exact finite-dimensional deformation algebra gives a clean alternative: repeated positive deformation return either changes the endpoint metric/condition number, is balanced by signed negative return on the same material geometry, or is hidden by eigenframe/selector/collar drift. Thus bounded endpoint geometry plus compact selector graph does not by itself forbid infinite return action; it converts it into signed saturation/no-free-Zeno/no-waste or charged Body-IV geometry defect. This proves a useful decomposition but does not produce the missing unweighted terminal return modulus."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-return-terminal-ac-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-deformation-path-action-equivalence-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-deformation-convexity-square-reserve-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-selector-graph-defect-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-component-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Body-IV Return Recurrence Defect Decomposition

Date: 2026-06-21

## 0. Aim

The heat-scale return attempt reduced the transported-selector branch to

```math
\boxed{
\text{unweighted same-carrier deformation/strain terminal modulus}
}
\tag{BRR.1}
```

or a charged Body-IV geometry defect.

This note tries a recurrence/descent argument on the same object.  The question
is whether infinitely many order-one heat-scale returns can occur while the
same material carrier, endpoint metric, and selector graph stay bounded.

The result is an exact decomposition, not a proof of `(BRR.1)`.

## 1. Deformation algebra

Let

```math
\dot F=B F,
\qquad
B=\nabla u(X(a,t),t),
\qquad
\operatorname{tr}B=0,
\tag{BRR.2}
```

and write

```math
S={1\over2}(B+B^T),
\qquad
\Omega={1\over2}(B-B^T).
\tag{BRR.3}
```

Set

```math
C=F^TF.
\tag{BRR.4}
```

Then

```math
\dot C
=
F^T(B^T+B)F
=
2F^TSF.
\tag{BRR.5}
```

Incompressibility gives

```math
\det F=1,
\qquad
\det C=1.
\tag{BRR.6}
```

Let the logarithmic singular values of \(F\) be

```math
\ell_1(t)\ge \ell_2(t)\ge \ell_3(t),
\qquad
\ell_1+\ell_2+\ell_3=0.
\tag{BRR.7}
```

The endpoint heat-scale geometry is bounded exactly when

```math
\sup_t\max_i|\ell_i(t)|<\infty
\tag{BRR.8}
```

on the selected material carrier, up to the accepted cutoff/gauge constants.

## 2. Positive return action and endpoint growth

For a material line \(q(t)=F(t)\xi\),

```math
{d\over dt}\log |q(t)|
=
\langle S e(t),e(t)\rangle,
\qquad
e(t)={q(t)\over |q(t)|}.
\tag{BRR.9}
```

Thus a selected positive stretching event has the form

```math
A_+(I,e)
=
\int_I[\langle S e,e\rangle]_+\,dt.
\tag{BRR.10}
```

If the same material line and direction class is retained, then

```math
A_+(I,e)
\le
\left[
\log |F(t_1)\xi|-\log |F(t_0)\xi|
\right]_+
+
A_-(I,e),
\tag{BRR.11}
```

where

```math
A_-(I,e)
=
\int_I[\langle S e,e\rangle]_-\,dt.
\tag{BRR.12}
```

So positive return action on a retained line has only two destinations:
endpoint logarithmic stretch or a negative signed partner on the same line.

## 3. Endpoint-bounded recurrence forces signed cancellation

If endpoint geometry stays bounded as in `(BRR.8)`, then summing `(BRR.11)`
over a terminal chain gives

```math
\sum_k A_+(I_k,e_k)
\le
C_{\rm end}
+
\sum_k A_-(I_k,e_k)
+
\mathcal H_{\rm switch},
\tag{BRR.13}
```

where \(\mathcal H_{\rm switch}\) is the cost of changing the retained material
line, eigenframe, cutoff, or selector graph between intervals.

Therefore an infinite sequence of positive return quanta has this exact
alternative:

```math
\boxed{
\sum_k A_+(I_k,e_k)=\infty
\Longrightarrow
\begin{cases}
\text{endpoint metric/condition number blows up,}\\
\text{or } \sum_k A_-(I_k,e_k)=\infty,\\
\text{or } \mathcal H_{\rm switch}=\infty.
\end{cases}
}
\tag{BRR.14}
```

This is the recurrence/descent statement.  Repeated positive geometry return
cannot stay as a free one-sided endpoint-bounded event.  It either changes the
metric endpoint, requires signed negative return, or changes the carrier/frame.

## 4. What the alternatives mean in the four-body loop

The first branch,

```math
\text{endpoint metric/condition number blows up,}
\tag{BRR.15}
```

is a Body-IV geometry defect.  The heat-scale packet is not returned with
uniform ellipticity.

The second branch,

```math
\sum_k A_-(I_k,e_k)=\infty,
\tag{BRR.16}
```

is not a contradiction by itself.  It is the signed-saturation branch: positive
selected return is balanced by a negative/current/drain partner.  It closes
only if the negative partner is retained on the same terminal ledger or is
charged by the existing legal/signed donor machinery.  The finite branch is
paid; the infinite terminal branch is the no-free Zeno/signed-saturation wall.

The third branch,

```math
\mathcal H_{\rm switch}=\infty,
\tag{BRR.17}
```

is exactly selector/frame/collar drift.  A finite or compact selector graph
closes by subsequence extraction, so infinite switching is the already isolated
unbounded selector-complexity or carrier-drift defect.

Thus Body-IV recurrence does not produce the missing reserve.  It routes the
failure:

```math
\boxed{
\text{infinite positive deformation return}
\Rightarrow
\text{Body-IV metric defect}
\ \vee\
\text{signed-saturation/Zeno branch}
\ \vee\
\text{selector/frame drift defect.}
}
\tag{BRR.18}
```

## 5. Why this is not enough for gold closure

The decomposition `(BRR.18)` is useful, but it does not prove terminal absolute
continuity.  The endpoint-cancellation loop remains lawful:

```math
S(t)=S_0\quad(0<t<\tau),
\qquad
S(t)=-S_0\quad(\tau<t<2\tau),
\tag{BRR.19}
```

with \(S_0=\operatorname{diag}(2,-1,-1)\).  The endpoint deformation can
return to identity while the positive selected action on changing directions is
nonzero.

In the decomposition, this loop is not invisible.  It is recorded as signed
partner use plus selector/eigenframe choice.  But ruling it out requires one of
the already isolated producers:

```math
\boxed{
\text{TerminalFullCycleSaturation.A}
\quad\text{or}\quad
\text{NoFreeTerminalZenoDonorChain.A}
\quad\text{or}\quad
\text{StrictFourBodyNoWasteLyapunov.A}
\quad\text{or}\quad
\text{MinimalZenoProfileProduction.A.}
}
\tag{BRR.20}
```

## 6. Verdict

The recurrence/descent attempt proves a genuine structural alternative:

```math
\boxed{
\text{repeated unweighted Body-IV return cannot remain endpoint-bounded,
same-frame, and one-sided.}
}
\tag{BRR.21}
```

But the alternative lands exactly on the known live branches:

```math
\boxed{
\text{metric/geometry defect}
\quad\vee\quad
\text{signed-saturation terminal Zeno}
\quad\vee\quad
\text{selector/frame drift}.
}
\tag{BRR.22}
```

So Body-IV recurrence supplies defect routing, not the unweighted return
modulus.  The gold producer remains a same-carrier no-waste/terminal-trace
theorem, a saturation theorem that pays the infinite signed branch, or a
profile-production theorem for the residual Zeno branch.
