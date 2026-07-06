---
theorem_id: forward-gold-wkb-selector-force-full-balance-payment-split-20260706
status: exact-full-balance-split-selected-moment-paid-by-one-projected-ns-leg
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - SelectorBoundaryCommutator.FullBalanceSplit
  - SelectedAffineMoment.ProjectedNSLegExhaustion
  - MixedCancellationNotFree
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-commutator-hminusone-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-viscous-cancellation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-acceleration-impulse-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-moving-frame-variation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-nonlinear-stress-localization-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-defect-carriage-moment-floor-20260706.md
completion_truth: >-
  Exact mixed-balance split only. If a selected compact stress T has affine
  moment M_A(T) and its selector force is cancelled in the projected same-fluid
  balance by a sum of acceleration, viscosity, nonlinear transport, and carried
  defect legs, then pairing the full balance with the localized affine test
  gives M_A(T) as the sum of those four leg contributions. Therefore at each
  time one leg carries at least a fixed fraction of |M_A(T)|, and on an
  interval the same pigeonhole holds for either the signed integral or the
  rectified L1 service. The leg then routes to the already filed currency:
  endpoint impulse / frame variation, viscous dissipation, kinetic or collar
  stress, or defect moment / trace ballast / signed variation. This kills only
  the mixed-cancellation loophole; it proves no lower bound converting every
  leg into one uniform custody/tower currency, no WKB construction/exclusion,
  no confinement constant, and no MPP closure.
---

# Full selector-force balance splits into the priced legs

## 1. Question

The selector-force notes priced the elementary cancellation legs one at a time:
viscosity, acceleration, moving affine frame, nonlinear stress, and legal defect
carriage.

The remaining cheap reading is mixed cancellation:
\[
  \text{no single leg pays because the selected force is split among all legs.}
  \tag{FBS.1}
\]

This note checks that reading. Splitting the force cannot make the selected
affine moment disappear. It only sends a fixed fraction of the moment to at
least one already typed leg.

## 2. Full projected balance

Let \(T\) be a compact selected stress supported in \(B_D(X)\), and let
\[
  M_A(T)=\int T:A\,dx,
  \qquad A\in{\rm Sym}_0(3).
  \tag{FBS.2}
\]

Let
\[
  F_{\rm sel}:=\mathbb P\,\operatorname{div}T.
  \tag{FBS.3}
\]

Use the same divergence-free localized affine test \(\Psi_A\) as in the
selector floor:
\[
  \Psi_A=A(x-X)\text{ on }B_D(X).
  \tag{FBS.4}
\]

Then
\[
  M_A(T)=-\langle F_{\rm sel},\Psi_A\rangle .
  \tag{FBS.5}
\]

Assume the selected force is cancelled in a projected same-fluid balance:
\[
  F_{\rm sel}
  +F_{\rm acc}
  +F_{\rm visc}
  +F_{\rm nl}
  +F_{\rm def}
  =0 .
  \tag{FBS.6}
\]

Here the legs are the projected acceleration, viscous, nonlinear transport, and
carried-defect coordinates. The exact sign convention is irrelevant; define
their affine-test contributions by
\[
\begin{array}{rcl}
C_{\rm acc}&:=&\langle F_{\rm acc},\Psi_A\rangle,\\[1mm]
C_{\rm visc}&:=&\langle F_{\rm visc},\Psi_A\rangle,\\[1mm]
C_{\rm nl}&:=&\langle F_{\rm nl},\Psi_A\rangle,\\[1mm]
C_{\rm def}&:=&\langle F_{\rm def},\Psi_A\rangle .
\end{array}
\tag{FBS.7}
\]

Pairing (FBS.6) with \(\Psi_A\) and using (FBS.5) gives
\[
  M_A(T)
  =
  C_{\rm acc}+C_{\rm visc}+C_{\rm nl}+C_{\rm def}.
  \tag{FBS.8}
\]

Thus the selected affine moment is completely accounted for by the four
projected same-fluid legs.

## 3. Instantaneous pigeonhole

From (FBS.8),
\[
  |M_A(T)|
  \le
  |C_{\rm acc}|+|C_{\rm visc}|+|C_{\rm nl}|+|C_{\rm def}|.
  \tag{FBS.9}
\]

Therefore at least one leg satisfies
\[
  |C_\ell|\ge {1\over4}|M_A(T)|.
  \tag{FBS.10}
\]

This is the exact mixed-balance split. There is no fifth cancellation location.

## 4. Interval versions

For sign-coherent service on a time interval \(I\), integrate (FBS.8):
\[
  \int_I M_A(T(t))\,dt
  =
  \sum_\ell\int_I C_\ell(t)\,dt .
  \tag{FBS.11}
\]

If
\[
  \left|\int_I M_A(T(t))\,dt\right|=A_I,
  \tag{FBS.12}
\]
then at least one leg has
\[
  \left|\int_I C_\ell(t)\,dt\right|
  \ge {A_I\over4}.
  \tag{FBS.13}
\]

For rectified service, (FBS.9) gives
\[
  \int_I |M_A(T(t))|\,dt
  \le
  \sum_\ell\int_I |C_\ell(t)|\,dt,
  \tag{FBS.14}
\]
so one leg satisfies
\[
  \int_I |C_\ell(t)|\,dt
  \ge
  {1\over4}
  \int_I |M_A(T(t))|\,dt .
  \tag{FBS.15}
\]

Thus cancellation by rapid sign exchange is not invisible either; it routes to
the rectified variation version of one leg.

## 5. Leg currencies

The four legs are exactly the already filed currencies:
\[
\begin{array}{ll}
C_{\rm acc}
  &\Rightarrow \text{endpoint velocity impulse, }H^{-1}\text{ time variation,
    or moving-frame term},\\[1mm]
C_{\rm visc}
  &\Rightarrow \text{viscous }H^{-1}\text{-to-dissipation floor},\\[1mm]
C_{\rm nl}
  &\Rightarrow \text{interior kinetic stress, collar localization stress, or
    Reynolds-defect branch},\\[1mm]
C_{\rm def}
  &\Rightarrow \text{defect moment, PSD trace ballast, signed nuclear
    variation, or certificate failure}.
\end{array}
\tag{FBS.16}
\]

Therefore mixed cancellation does not create a new overlap-bath exit. It is an
infimum over the priced legs.

## 6. What remains open

This note does not convert the four currencies into one uniform confinement
constant. The still-open task is the hard one: prove that every leg that carries
a fixed fraction of the selected affine service is charged in the same
record-ladder currency with an order-one lower bound, or construct a real
same-fluid WKB bath where the currency escapes through one of those legs.

The note only removes the bookkeeping loophole where the selected force was
said to be distributed across the Navier-Stokes balance with no leg paying.

## 7. Four-sentence result

Pair the full projected same-fluid balance with the localized affine test used
in the selector floor. The selected affine moment decomposes as the sum of the
acceleration, viscous, nonlinear-stress, and carried-defect contributions.
Hence nonzero selected service forces at least one leg to carry a fixed
fraction, pointwise or after integration. Mixed cancellation is therefore not a
new WKB escape; it routes to endpoint/frame variation, viscous dissipation,
kinetic/collar/Reynolds stress, or defect variation/certificate failure.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
