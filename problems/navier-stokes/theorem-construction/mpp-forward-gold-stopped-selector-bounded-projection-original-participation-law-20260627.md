---
theorem_id: forward-gold-stopped-selector-bounded-projection-original-participation-law-20260627
status: projection-clause-proved-original-storage-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - OriginalHistoryRoutedCurrentEnergyFinite.A
  - EnergyStableRoutedCurrentProjection.A
  - StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A
  - OriginalParticipationStorageCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-energy-original-history-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-energy-stable-routed-current-projection-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-routed-current-energy-subledger-full-clock-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-finiteness-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-generator-energy-boundary-20260627.md
effect: >-
  Sharpens the corrected Gold hinge into one noncircular projection theorem.
  The stopped selector is proved to be a bounded parent-known projection of the
  original Navier-Stokes participation law in the original material metric
  before scalar selected readout.  The unpaid mathematical clause is original
  participation storage / active-weight domination, not a scalar primitive
  packet.  Partial, not Gold closed.
---

# Stopped selector as bounded projection of the original participation law

Gold is the stopped routed-current energy inequality before selected readout.

The source must first be carried as the same-material current

```math
\nu^S
=
D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal}.
\tag{1}
```

The theorem to prove is

```math
\mathcal E_{\rm route}(P)
=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{2}
```

No later scalar selected record is allowed to supply `(2)`.  Fixed returns,
strict resets, selected log amplification, parent drop, persistent affine/root
quotient payment, and full-clock finiteness are readouts of the same current
after `(2)` is proved.

## 1. Projection formulation

Let \(\mathfrak D_{\rm NS}\) be the original Navier-Stokes participation-law
differential on the same material history.  Its original material metric is
written

```math
|\mathfrak D_{\rm NS}|_{\rm part}^2\,d\sigma
=
\Theta_{\rm part}^{\rm orig}.
\tag{3}
```

The stopped selector is admissible for Gold exactly when there is a finite
parent-known route map

```math
\mathcal R_S:
\mathfrak D_{\rm NS}
\longmapsto
(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma)
\tag{4}
```

such that, before scalar selected readout,

```math
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)d\sigma
\le
C\,\Theta_{\rm part}^{\rm orig}
+dR_{\rm legal}
+dStop.
\tag{5}
```

This is the precise form of

```text
StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A.
```

The active weight \(w\) is part of the original material metric pulled back to
the stopped route.  It is not a selected log gain, selected critical norm, or
future child-tail density inserted after the selected readout.

## 2. Why finite parent-known projection is already the right local operator

The existing finite-route projection note supplies the operator-level theorem:
on a stopped selector chart, pressure-Hodge projection, carrier transport,
turnstile, exchange, covector, and connection coordinates are finite
parent-known linear maps from the original material differential.  In a fixed
route chart this gives

```math
\|\mathcal R_S v\|_{\rm route}^2
\le
C_R\|v\|_{\rm part}^2.
\tag{6}
```

Here is the actual proof of `(6)`, in the original material metric.  On each
retained stopped chart \(K_\kappa\), the original participation differential is
a vector in the finite-rank material bundle

```math
V_\kappa
=
\left\{
\mathfrak D_{\rm NS}
\right\}
```

with inner product \(g_{{\rm part},\kappa}\).  The stopped route coordinates
form another finite-rank bundle

```math
W_\kappa
=
\left\{
(\partial_\sigma Z,T_\sigma,E_\sigma,C_\sigma)
\right\}
```

with weighted inner product \(g_{{\rm route},\kappa}=w\,\widetilde g_\kappa\).
The active weight \(w\) is part of this pulled-back material metric.  The
stopping rule keeps \(K_\kappa\) inside a compact aperture/order-lock/material
metric class; if that compactness fails, the interval has exited the retained
chart and is recorded in \(dStop+dR_{\rm legal}\).

For \(\theta\in K_\kappa\), the selector map is a matrix of parent-known
material operations,

```math
L_\kappa(\theta):
(V_\kappa,g_{{\rm part},\kappa})
\longrightarrow
(W_\kappa,g_{{\rm route},\kappa}).
```

Its entries are the stopped pressure-Hodge readout, material-frame/covector
readout, collar-turnstile readout, exchange readout, and connection readout.
They depend continuously on the same transported material packet and on the
parent-known stopped selector chart.  Since \(K_\kappa\) is compact,

```math
C_\kappa
:=
\sup_{\theta\in K_\kappa}
\left\|
g_{{\rm route},\kappa}^{1/2}
L_\kappa(\theta)
g_{{\rm part},\kappa}^{-1/2}
\right\|_{\rm op}^2
<\infty .
\tag{7}
```

Thus, pointwise on that stopped chart,

```math
w\left(
|\partial_\sigma Z|^2
 +|T_\sigma|^2
 +|E_\sigma|^2
 +|C_\sigma|^2
\right)
\le
C_\kappa |\mathfrak D_{\rm NS}|_{\rm part}^2 .
\tag{8}
```

There are only finitely many retained stopped selector charts at fixed
continuation depth, so \(C=\max_\kappa C_\kappa\) is uniform.  Summing the
chart-local estimate and adding the declared chart-exit, collar, stop, and legal
remainders gives exactly

```math
w\left(
|\partial_\sigma Z|^2
 +|T_\sigma|^2
 +|E_\sigma|^2
 +|C_\sigma|^2
\right)d\sigma
\le
C\,\Theta_{\rm part}^{\rm orig}
+dR_{\rm legal}
+dStop .
\tag{9}
```

This proves `StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A` at
the operator level.

It is a projection in the literal bundle sense.  Let
\(\iota_\kappa:W_\kappa\hookrightarrow V_\kappa\) be the canonical retained
route inclusion into the original same-material participation packet, and let
\(\mathcal R_{S,\kappa}=L_\kappa\) on the stopped chart.  The retained route
coordinates are normalized so that

```math
\mathcal R_{S,\kappa}\iota_\kappa=I_{W_\kappa}.
\tag{10}
```

Therefore

```math
P_{S,\kappa}:=\iota_\kappa\mathcal R_{S,\kappa}
\quad\text{satisfies}\quad
P_{S,\kappa}^2=P_{S,\kappa},
\tag{11}
```

and its norm is bounded by the same compact-chart constant, up to the uniformly
bounded inclusion norm of \(\iota_\kappa\).  The stopped selector is therefore a
bounded projection of the original participation-law packet before scalar
selected readout.

Route changes are not free.  The differential of the route map has the form

```math
\partial_\sigma(\mathcal R_S\mathfrak D_{\rm NS})
=
\mathcal R_S(\partial_\sigma\mathfrak D_{\rm NS})
+(\partial_\sigma\mathcal R_S)\mathfrak D_{\rm NS},
\tag{12}
```

and the second term is also a parent-known finite matrix applied to the same
original material differential.  Its coordinates are exactly the
turnstile/exchange/covector/connection motion already present in `(2)`.  If the
selector changes stratum, loses aperture, changes order-lock, or crosses a stop
boundary, that term is charged to \(dStop\), \(dR_{\rm legal}\), or the listed
route coordinates.  Therefore there is no extra return/reset currency outside
the current.

The operator side is closed.  The remaining Gold wall is the separate storage
claim that the original participation metric itself has finite stopped
original-history mass.

## 3. Original storage clause

The needed original-history storage statement is:

```math
\Theta_{\rm part}^{\rm orig}
\le
-d\mathfrak M_P
+dR_{\rm legal}
+dStop,
\qquad
\mathfrak M_P\ge0,
\qquad
\mathfrak M_P(\operatorname{root}P)\le C(u_0).
\tag{8}
```

Equivalently,

```math
\int_{\operatorname{Hist}(P)}
\Theta_{\rm part}^{\rm orig}
\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{9}
```

Combining `(5)` and `(9)` proves `(2)`.

This clause is the noncircular meaning of "original-history finite."  It cannot
be imported from the downstream full material clock recovered after selected
first-ratio action.  The admissible sources are original same-material
participation storage, dynamic silent/exchange commutator coercivity, covector
and turnstile service, reset/order-lock derivative structure, and legal/stop
losses.

In the existing local language, `(8)` is the same unpaid mathematical content as

```text
OriginalScaleMemoryStorageCoercivity.A
/ DynamicSilentExchangeCommutatorCarleson.A
/ GaugeReducedAnnularDerivativeDensityControl.A,
```

but now it is attached to the whole stopped routed current \(J^S\), not to a
scalar selected-potential packet.

## 4. The proof once `(5)` and `(8)` are installed

The projection estimate `(5)` is now proved by `(7)`--`(12)`.  Assume the
storage clause `(13)`.  Then

```math
\begin{aligned}
\mathcal E_{\rm route}(P)
&=
\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|T_\sigma|^2
+|E_\sigma|^2
+|C_\sigma|^2
\right)                                      \\
&\le
C\int_{\operatorname{Hist}(P)}
\Theta_{\rm part}^{\rm orig}
+R_{\rm legal}(P)+Stop(P)                    \\
&\le
C(u_0)+R_{\rm legal}(P)+Stop(P).
\end{aligned}
\tag{15}
```

After `(10)`, the rest of the Gold chain is bookkeeping for the same current:

```text
stopped routed-current square packing
-> fixed return / strict reset as derivative-BV faces
-> selected log amplification
-> parent drop
-> finite full material clock
-> H^s continuation.
```

## 5. Noncircularity pressure test

Any apparent proof of `(2)` must pass three tests.

First, the stopped route must be chosen from parent-known material data.  A
route selected after seeing descendant positive tail can encode the selected
tail into \(w\) or \(\mathcal R_S\), so it is circular.

Second, the active weight must be the original participation metric pulled back
to the stopped route.  A weight defined by selected log amplification or by the
future selected first-ratio square function is downstream data.

Third, route motion must stay inside the current packet.  An increment
orthogonal to the fixed selected readout either remains in the original
participation current through turnstile/exchange/covector/connection motion, or
it is a stop/legal/reselection loss.  It is not a free scalar oscillation.

## 6. Result

The corrected live Gold theorem is now:

```text
StoppedSelectorBoundedProjectionOfOriginalParticipationLaw.A [proved here]
+ OriginalParticipationStorageCoercivity.A [separate storage clause]
=> OriginalHistoryRoutedCurrentEnergyFinite.A.
```

The first clause is proved by finite parent-known routed projection in the
original material metric.  The second clause is still open: prove the original
participation storage / active-weight domination for the whole current \(J^S\)
before selected readout.

Partial, not Gold closed.  The useful next mathematical attack is not another
selected scalar payment; it is `(8)` for the coupled same-material
participation current.
