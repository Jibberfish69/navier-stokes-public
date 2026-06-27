---
theorem_id: forward-gold-stopped-selector-transition-continuity-announceable-reset-20260627
status: conditional-structural-closure-under-finite-stopped-score-selector
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
attacks_hinge:
  - StoppedSelectorTransitionAbsoluteContinuity.A
  - AnnounceableResetStoppingTime.A
  - AnnounceableResetDerivativeRepresentation.A
---

# Stopped selector transition continuity and announceable reset

## Target

A strict reset must be an announced first crossing of a stopped selector
coordinate, not an after-the-fact child choice.

## Finite stopped-score model

Assume the stopped selector record is implemented by finitely many parent-known
scores

```math
s_a(\sigma,t,x),\qquad a\in\mathcal A_R,
```

built from transported material-frame, routed-current, aperture, order-lock, and
legal/stop data.  For a smooth same-material history, each score is absolutely
continuous in log scale:

```math
s_a(\sigma_1)-s_a(\sigma_0)
=\int_{\sigma_0}^{\sigma_1}\partial_\sigma s_a(\sigma)\,d\sigma.
\tag{1}
```

The material chain rule gives

```math
\partial_\sigma s_a
= L_a(\partial_\sigma Z)
+T_a(\operatorname{turnstile}_\sigma)
+E_a(\operatorname{exchange}_\sigma)
+C_a(\operatorname{covector}_\sigma)
+Err_a^{legal}.
\tag{2}
```

## First-exit reset

Let the stopped cone/order-lock be encoded by finitely many inequalities

```math
s_a(\sigma)-\theta_a>0,
\qquad
s_a(\sigma)-s_b(\sigma)-\theta_{ab}>0.
```

The reset scale is the first exit

```math
\tau_R=\inf\{\sigma>\sigma_0: \text{one stopped inequality hits }0\}.
\tag{3}
```

Continuity announces it from below by

```math
\tau_{R,n}=\inf\{\sigma>\sigma_0: \text{one stopped inequality is }\le 1/n\},
\qquad \tau_{R,n}\uparrow\tau_R.
\tag{4}
```

Thus the reset is parent-announceable.

For the active crossing coordinate \(q_e\), the reset innovation is

```math
D_e=q_e(\tau_R)-q_e(\sigma_0)+Err_e^{legal}.
\tag{5}
```

Using `(1)`--`(2)`,

```math
D_e=
\int_{\sigma_0}^{\tau_R}
(\partial_\sigma Z+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma+\operatorname{covector}_\sigma)_e\,d\sigma
+Err_e^{legal}.
\tag{6}
```

So the derivative endpoint identity is proved under the finite stopped-score
implementation.

## Failure mode

The statement is false for a future argmax/best-descendant selector.  If the
child record is chosen by reading the future selected tail, there is no
parent-known score, no announced first-exit time, and no endpoint identity.

## Result

Conditional structural closure:

```math
\boxed{
\text{finite parent-known stopped scores + first-exit reset}
\Rightarrow
\text{announceable reset derivative endpoints}.}
```

The remaining producer is now exactly:

```text
ResetWitnessIntervalBoundedOverlap.A / ResetSparsePackingFromOriginalHistory.A
```

which must show that these first-exit witness intervals/tubes pack Carleson in
the original same-material history.