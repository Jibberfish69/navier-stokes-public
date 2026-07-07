---
theorem_id: forward-gold-c0-return-fibre-before-clipping-admission-direct-test-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / return-fibre before-clipping admission
status: strict-reduction-and-routeout-test-not-forward-bill-proof
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - ReturnFibreBeforeClippingActiveDensityProjection.A
  - SameEdgeSelectedReturnInverseWeightCapacity.A
  - SameEdgeSelectedReturnAdmissionToLinearBV.A
  - BeforeClippingActiveDensityComparison.A
  - FullExchangeCriticalDepletionStorage.A
  - TerminalFirstTimeRungNoResidue.A
  - ParentOwnedPositiveRecordBillCurrency.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-inverse-weight-capacity-parent-active-entropy-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selected-return-inverse-weight-capacity-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selected-return-admission-same-edge-bill-currency-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tower-feedback-entropy-l1-attempt-20260630.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-active-potential-terminal-survivor-dichotomy-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-owned-half-tail-clay-cm-consumption-20260707.md
  - problems/navier-stokes/agent-contract.yaml
completion_truth: >-
  Strict reduction and route-out test only. This note does not prove
  ReturnFibreBeforeClippingActiveDensityProjection.A,
  BeforeClippingActiveDensityComparison.A, FullExchangeCriticalDepletionStorage.A,
  ParentOwnedPositiveRecordBillCurrency.A, epsilon_* > 0, c_0 > 0, or the
  Millennium problem. It proves the exact test that the retained selected-return
  branch must pass before it can count as same-edge first-ratio bill currency:
  every retained selected return interval must already be a bounded-overlap
  fibre of the parent active measure before child clipping, with inverse-weight
  mass dominated by the same before-clipping selected density. If this holds,
  the existing inverse-weight and entropy reductions give the bill branch. If it
  fails, the branch is selector/face/chart/stopped-line custody failure,
  recount/overlap failure, active-density comparison failure, full-exchange
  storage failure, terminal no-residue failure, legal/stop, or the already
  installed Clay CM terminal Part/Field route-out after same-witness admission.
---

# Return-fibre before-clipping admission direct test

## 1. Same physical object

The object is one retained selected return of the same parent Navier-Stokes
packet before positive or negative child clipping. The return interval \(I\)
comes from the same stopped material score

```math
P_R=\Gamma_R Z^S .
\tag{RFA.1}
```

The fixed stopped-score calculation gives a square bill for that same parent
history. For a retained selected return interval \(I\),

```math
\Delta_I=\Delta_I^-P_R,
\qquad
A_I=\int_I w^{-1}\,d\sigma,
\qquad
H_I={|I|^2\over A_I}.
\tag{RFA.2}
```

The square currency is

```math
\sum_{I\in\mathcal I_{\rm ret}(P)}
H_I\left({\Delta_I\over |I|}\right)^2
\le S_{\rm root}(P).
\tag{RFA.3}
```

This does not yet pay the selected linear return. The Cauchy conversion needs

```math
\sum_{I\in\mathcal I_{\rm ret}(P)}A_I
\le
C_N\mathcal R(P)+Legal(P)+Stop(P)+RouteOut(P).
\tag{RFA.4}
```

Physically, `(RFA.4)' says that the selected return intervals are not chosen
after the future positive readout. They were already visible as fibres of the
parent active measure before clipping.

## 2. The direct admission test

Define the before-clipping return-fibre test as follows. For every retained
selected return interval \(I\in\mathcal I_{\rm ret}(P)\), there must be a
parent-known active fibre

```math
F_I\subset \mathfrak S_{P,\tau}
\tag{RFA.5}
```

with the same parent selector, primitive face, chart/projector license,
stopped-line ancestry, and full-exchange/root bill address as the stopped square
currency, such that

```math
\sum_{I\in\mathcal I_{\rm ret}(P)}{\bf 1}_{F_I}\le C_N
\tag{RFA.6}
```

and

```math
A_I
\le
C_N\int_{F_I}R_{P,\tau}^+\,d\mathfrak m_{P,\tau}
+Paid_I+Legal_I+Stop_I+RouteOut_I .
\tag{RFA.7}
```

This is `ReturnFibreBeforeClippingActiveDensityProjection.A'. It is not a
notation change. It is the statement that inverse-weight return mass is already
mass of the same parent before-clipping active density.

## 3. If the test passes, the bill branch follows

Assume `(RFA.5)'--`(RFA.7)' and the parent active thickness/entropy source:

```math
\sup_{\tau<T_*}\mathfrak m_{P,\tau}(\mathfrak S_{P,\tau})
+
\sup_{\tau<T_*}
\int_{\mathfrak S_{P,\tau}}\Phi(R_{P,\tau}^+)\,d\mathfrak m_{P,\tau}
\le C_N(u_0)\mathcal R(P)+Paid(P).
\tag{RFA.8}
```

Then bounded overlap gives

```math
\begin{aligned}
\sum_I A_I
&\le
C_N\sum_I\int_{F_I}R_{P,\tau}^+\,d\mathfrak m_{P,\tau}
+Paid+Legal+Stop+RouteOut\\
&\le
C_N\int_{\mathfrak S_{P,\tau}}R_{P,\tau}^+\,d\mathfrak m_{P,\tau}
+Paid+Legal+Stop+RouteOut\\
&\le
C_N\mathcal R(P)+Paid+Legal+Stop+RouteOut.
\end{aligned}
\tag{RFA.9}
```

So `(RFA.4)' follows. Combining with the square-to-linear bridge already gives

```math
\texttt{SameEdgeSelectedReturnAdmissionToLinearBV.A}.
\tag{RFA.10}
```

In the moving-driver first-ratio package, this is a bill branch:

```math
\begin{gathered}
\texttt{ReturnFibreBeforeClippingActiveDensityProjection.A}\\
+\texttt{BeforeClippingActiveDensityComparison.A}\\
+\texttt{FullExchangeCriticalDepletionStorage.A}\\
\Longrightarrow
\texttt{SameEdgeSelectedReturnInverseWeightCapacity.A}\\
\Longrightarrow
\texttt{SameEdgeSelectedReturnAdmissionToLinearBV.A}.
\end{gathered}
\tag{RFA.11}
```

## 4. If the test fails, the branch is not retained bill currency

The negation of the return-fibre test has only concrete physical forms.

First, the interval is not attached to the same parent selector, primitive face,
chart/projector license, stopped line, or full-exchange/root bill address. Then
the selected return is not the retained same-edge event. It routes to selector
drift, wrong-face return, chart/projector service, stopped-line failure, paid
rotation, legal, stop, or the existing same-edge custody failure surface.

Second, the fibres exist but have unbounded overlap:

```math
\sum_I{\bf 1}_{F_I}=\infty
\quad\hbox{on a positive parent set}.
\tag{RFA.12}
```

Then the same parent event is being counted as many selected returns. This is a
recount/finite-menu failure, not a free retained positive channel.

Third, the fibres have bounded overlap but `(RFA.7)' fails. Then the
inverse-weight mass is not dominated by the same before-clipping parent active
density. This is exactly failure of the active-density comparison coordinate,
not a proof of selected bill currency:

```math
\neg\texttt{BeforeClippingActiveDensityComparison.A}
\quad\hbox{or its return-fibre subclause}.
\tag{RFA.13}
```

Fourth, the active-density comparison exists but the parent full-exchange clock
does not have strict no-self-feeding storage:

```math
\neg\texttt{FullExchangeCriticalDepletionStorage.A}.
\tag{RFA.14}
```

Then the branch has not supplied the bounded-below same-parent depletion needed
to absorb the selected active density.

Fifth, the failed fibre projection concentrates at the terminal endpoint. In the
TFE split this is the no-residue failure

```math
\neg\texttt{TerminalFirstTimeRungNoResidue.A}.
\tag{RFA.15}
```

As a support-only Gold branch this remains a terminal forward obstruction. Once
the same terminal atom is promoted as the terminal obstruction of a
Clay-admissible finite breakdown, the installed same-witness CM bridge consumes
it as

```math
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{RFA.16}
```

## 5. Physical conclusion

The return-fibre test is the point where the future selected return is forced
back into the original parent packet. The same fluid may show many positive or
negative return events after selection, but only the ones that were already
parent fibres before clipping can be spent as first-ratio bill currency.

Thus the branch split is:

```math
\begin{array}{ll}
\text{same before-clipping parent fibre + bounded overlap + dominance}
  &\Rightarrow \text{bill},\\[1mm]
\text{no same parent fibre / wrong face / wrong chart / unstopped edge}
  &\Rightarrow \text{custody, legal, stop, or service route-out},\\[1mm]
\text{unbounded fibre overlap}
  &\Rightarrow \text{recount / finite-menu failure},\\[1mm]
\text{bounded fibre but no dominance by parent active density}
  &\Rightarrow \text{active-density comparison failure},\\[1mm]
\text{no strict full-exchange storage}
  &\Rightarrow \text{full-exchange source failure},\\[1mm]
\text{terminal no-residue failure}
  &\Rightarrow \text{terminal atom, then CM Part/Field after admission}.
\end{array}
\tag{RFA.17}
```

## 6. What remains

This note does not construct the before-clipping parent active density from
arbitrary Navier-Stokes data. It makes the next theorem smaller and typed:

```math
\begin{aligned}
&\texttt{BeforeClippingSelectedLogCarrier.A}\\
&+\texttt{StoppedParentLogCarrierExponentialBMO.A}\\
&+\texttt{TerminalFirstTimeRungNoResidue.A}\\
&+\texttt{FullExchangeNoSelfFeedingStorage.A}
\Longrightarrow
\texttt{BeforeClippingActiveDensityComparison.A},\\
&\texttt{BeforeClippingActiveDensityComparison.A}
+\texttt{ReturnFibreBeforeClippingActiveDensityProjection.A}\\
&\Longrightarrow
\texttt{SameEdgeSelectedReturnInverseWeightCapacity.A}.
\end{aligned}
\tag{RFA.18}
```

The remaining original-data burden is therefore not the old square-to-linear BV
gap. It is the same-parent before-clipping active-density/full-exchange
construction with strict feedback margin, plus the return-fibre admission that
keeps the selected return from being chosen after the fact.
