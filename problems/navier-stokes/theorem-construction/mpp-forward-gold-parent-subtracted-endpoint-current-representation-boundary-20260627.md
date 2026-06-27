---
theorem_id: forward-gold-parent-subtracted-endpoint-current-representation-boundary-20260627
status: representation-conditional-fresh-innovation-carleson-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - ParentSubtractedDynamicEndpointCurrentRepresentation.A
  - OriginalHistoryParentPredictableFreshInnovationCarleson.A
  - StoppedRoutedParticipationCurrentCarleson.A
  - RoutedEndpointSourceDivergenceForm.A
  - CriticalFreshSourceTentCarleson.A
---

# Parent-subtracted dynamic endpoint current representation: boundary

## 1. Target

The stopped \(Tb/BMO\) route was blocked unless testing defects are charged to original-history ledgers. The relay pivot is to avoid an arbitrary elliptic right inverse chosen after endpoint mass is known. Instead, build the routed endpoint current from original-history dynamic increments.

The desired representation is:

```math
\nu^S_{end}
=
D_A J^S_{end}+\nu^S_{stop}+\nu^S_{legal},
\tag{1}
```

where \(J^S_{end}\) is a parent-subtracted stopped current assembled from parent-known dynamic innovations:

```math
J^S_{end}
=
J^S_{comm}+J^S_{cov}+J^S_{frame}+J^S_{turn}+J^S_{ex}-J^S_{par,pred}.
\tag{2}
```

Here:

- \(J^S_{comm}\): material commutator innovation;
- \(J^S_{cov}\): covector transport innovation;
- \(J^S_{frame}\): frame/selector rotation innovation;
- \(J^S_{turn}\): turnstile or entry/exit innovation;
- \(J^S_{ex}\): top-strain exchange/service innovation;
- \(J^S_{par,pred}\): inherited parent-predictable transported component.

The key noncircular condition is that every term in `(2)` is defined before descendant selected-tail readout.

## 2. Formal identity

At the level of bookkeeping, one can write a telescoping endpoint identity:

```math
\nu^S_{end}(Q')-\mathsf T_{Q\to Q'}\nu^S_{end}(Q)
=
D_A\Bigl(J^S_{dyn}(Q,Q')-J^S_{par,pred}(Q,Q')\Bigr)
+Err_{stop/legal}.
\tag{3}
```

This is just the material-history version of subtracting the transported parent prediction from the child endpoint object.

If `(3)` is valid with \(J^S_{dyn}\) built from commutator/covector/frame/turnstile/exchange increments, then endpoint mass is represented as a divergence/current term plus paid stop/legal terms.

## 3. What this would prove

If the current satisfies a stopped square-packing estimate,

```math
\sum_{Q\subseteq Q_0}\|J^S_{end}(Q)\|^2\mathcal R(Q)
\le C\mathcal R(Q_0)+C R_{legal}(Q_0),
\tag{4}
```

then stopped current testing can replace the earlier failed arbitrary \(Tb\) testing route. One obtains

```math
\|T_S\nu^S_{end}\|_{L^2(Q_0,\mathcal R)}^2
\lesssim
\sum_{Q\subseteq Q_0}\|J^S_{end}(Q)\|^2\mathcal R(Q)
+Stop(Q_0)+R_{legal}(Q_0).
```

This would feed the selected log-amplification Carleson theorem without defining the current from future selected-tail mass.

## 4. Direct obstruction

The identity `(3)` is formal unless the parent-predictable term is fixed before the child selected endpoint is inspected. Otherwise one can hide the bad child mass inside the subtraction term:

```math
J^S_{par,pred}:=J^S_{dyn}-D_A^{-1}\nu^S_{end,bad},
```

which is circular.

Thus the representation requires a strict predictability theorem:

```math
J^S_{par,pred}(Q,Q')\in\mathcal F_Q,
```

where \(\mathcal F_Q\) is the parent stopped history sigma-field / deterministic material data before child selection.

Additionally, `(4)` is not implied by the identity. It requires Carleson packing of the fresh innovation current:

```math
\sum_{Q\subseteq Q_0}\|J^S_{dyn}(Q,Q')-J^S_{par,pred}(Q,Q')\|^2\mathcal R(Q)
\le C\mathcal R(Q_0)+C R_{legal}(Q_0).
\tag{5}
```

This is the real analytic content.

## 5. Exact missing theorem pair

The representation route reduces to:

```text
ParentPredictableEndpointProjection.A
```

Statement:

The inherited parent endpoint transport \(J^S_{par,pred}\) is measurable with respect to the parent stopped history and is fixed before descendant selected-tail readout.

and

```text
OriginalHistoryParentPredictableFreshInnovationCarleson.A
```

Statement:

The parent-subtracted fresh endpoint innovation current satisfies the stopped Carleson square bound:

```math
\sum_{Q\subseteq Q_0}
\|J^S_{dyn}(Q,Q')-J^S_{par,pred}(Q,Q')\|^2\mathcal R(Q)
\le C\mathcal R(Q_0)+C R_{legal}(Q_0).
```

Both must be proved from original same-material commutator, covector, frame, turnstile, exchange, stop, and legal ledgers.

## 6. Result

`ParentSubtractedDynamicEndpointCurrentRepresentation.A` is not closed by the formal telescoping identity. It is conditionally correct if parent predictability and fresh innovation Carleson packing are installed.

The current live edge sharpens to:

```math
\boxed{
\text{ParentPredictableEndpointProjection.A}
+
\text{OriginalHistoryParentPredictableFreshInnovationCarleson.A}.
}
```

Without those, the endpoint current can be chosen after seeing the child selected endpoint mass, which would reproduce the circularity that broke the arbitrary stopped \(Tb\) route.