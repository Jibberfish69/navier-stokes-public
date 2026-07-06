---
theorem_id: forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706
status: strict-reduction-reynolds-edge-to-refresh-payer-middle-row-or-high-re-cascade
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - ReynoldsEdge.RefreshDichotomy
  - LowReRefresh.ORDER-ONE-PAYER
  - MiddleReRefresh.EXPLICIT-ROW
  - HighReFineSparseCascade.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-no-side-economy-routing-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reuse-tracking-floor-kelvin-supply-ledger-20260706.md
completion_truth: >-
  Strict reduction only. Combine the supercritical-residual scale split with the
  Reynolds-edge condition. For a residual at active length ell=theta D, support
  fraction phi, and normalized size eta=delta_D/s, the residual energy ratio is
  phi eta^2 theta^2 and the producer-clock persistence number is Re_D theta^2.
  At the supercritical threshold eta~beta^(-4/5), a q=4/5-hiding residual has
  phi theta^2 <= C beta^(12/5). If Re_D theta^2 < 1, the residual must be
  refreshed about (Re_D theta^2)^(-1) times per producer clock or it is not a
  producer-clock pressure bath. The required same-packet refresh work has ratio
  at least phi beta^(-8/5)/Re_D; the theta factor cancels. Hence
  Re_D <= c phi beta^(-8/5) gives an order-one refresh payer, while
  Re_D >= C phi beta^(-12/5) is the true persistent high-Re fine/sparse cascade
  branch. The remaining middle corridor has an explicit refresh row
  phi beta^(-8/5)/Re_D between beta^(4/5) and 1. This note proves no exclusion
  of the high-Re branch, no routing theorem for the middle row, and no MPP
  closure.
---

# Reynolds-edge refresh dichotomy for fine/sparse overlap residuals

## 1. Object

The supercritical-residual split says that an affine-subtracted residual with
active length
\[
  \ell=\theta D
  \tag{RED.1}
\]
and support fraction \(\phi\) has kinetic energy
\[
  E_{\rm res}
  \sim
  \phi\,\delta_D^2\ell^2D^3.
  \tag{RED.2}
\]

Relative to producer energy \(E_{\rm prod}(D)\sim s^2D^5\),
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \sim
  \phi\eta^2\theta^2,
  \qquad
  \eta:={\delta_D\over s}.
  \tag{RED.3}
\]

At the supercritical transport threshold
\[
  \eta\sim\beta^{-4/5},
  \tag{RED.4}
\]
the residual energy ratio is
\[
  \phi\theta^2\beta^{-8/5}.
  \tag{RED.5}
\]

The \(q=4/5\) hiding condition is therefore
\[
  \phi\theta^2\lesssim \beta^{12/5}.
  \tag{RED.6}
\]

The Reynolds-edge question is what happens when such a fine/sparse residual is
too viscous to persist on the producer clock.

## 2. Persistence number

Let
\[
  \operatorname{Re}_D:={sD^2\over\nu}.
  \tag{RED.7}
\]

The residual's producer-clock persistence number is
\[
  P_{\rm pers}
  :=
  {s\ell^2\over\nu}
  =
  \operatorname{Re}_D\theta^2.
  \tag{RED.8}
\]

If
\[
  P_{\rm pers}\gg1,
  \tag{RED.9}
\]
the fine residual can live for one producer clock without repeated
same-packet rebuilding. If
\[
  P_{\rm pers}\lesssim1,
  \tag{RED.10}
\]
it dissipates on a shorter clock and must be refreshed about
\[
  P_{\rm pers}^{-1}
  =
  (\operatorname{Re}_D\theta^2)^{-1}
  \tag{RED.11}
\]
times per producer clock, or else it is not a producer-clock pressure bath.

## 3. Refresh cost and the cancellation

Under the no-side-economy routing rule, rebuilding the residual inside the
retained same-packet chain must be paid by same-packet work, admitted
throughput, or an explicit routed residue. It cannot be imported as free
entrance reserve.

Each refresh costs at least the residual kinetic energy scale. Therefore the
same-packet refresh work over one producer clock has ratio
\[
  {W_{\rm refresh}\over E_{\rm prod}(D)}
  \gtrsim
  {E_{\rm res}/E_{\rm prod}(D)\over \operatorname{Re}_D\theta^2}.
  \tag{RED.12}
\]

Using (RED.3) gives
\[
  {W_{\rm refresh}\over E_{\rm prod}(D)}
  \gtrsim
  {\phi\eta^2\theta^2\over \operatorname{Re}_D\theta^2}
  =
  {\phi\eta^2\over \operatorname{Re}_D}.
  \tag{RED.13}
\]

At the supercritical threshold \(\eta\sim\beta^{-4/5}\),
\[
  {W_{\rm refresh}\over E_{\rm prod}(D)}
  \gtrsim
  {\phi\beta^{-8/5}\over \operatorname{Re}_D}.
  \tag{RED.14}
\]

The fine-scale factor \(\theta^2\) cancels. Chopping finer does not make the
refresh tax disappear; it shortens the residual's lifetime by the same factor
that it reduces the residual's energy.

## 4. Three Reynolds zones

Equation (RED.14) gives the low-Re payer zone. If
\[
  \operatorname{Re}_D\lesssim \phi\beta^{-8/5},
  \tag{RED.15}
\]
then
\[
  W_{\rm refresh}\gtrsim E_{\rm prod}(D).
  \tag{RED.16}
\]
The Reynolds edge pays an order-one producer-scale refresh bill.

The persistent high-Re branch begins when the residual can last for one
producer clock while staying in the \(q=4/5\) hiding row. Combining
(RED.6) with \(P_{\rm pers}\gg1\) gives
\[
  \operatorname{Re}_D
  \gg
  {\phi\over\beta^{12/5}}.
  \tag{RED.17}
\]
Above this threshold, the note does not exclude a fine/sparse high-Re pressure
bath. That is the genuine construction/exclusion branch.

Between the two thresholds,
\[
  \phi\beta^{-8/5}
  \ll
  \operatorname{Re}_D
  \ll
  \phi\beta^{-12/5},
  \tag{RED.18}
\]
the refresh bill is neither constant nor the original \(q=4/5\) row. It is the
explicit intermediate row
\[
  R_{\rm refresh}
  \sim
  {\phi\beta^{-8/5}\over \operatorname{Re}_D}.
  \tag{RED.19}
\]
At the high end of the corridor this row is \(\sim\beta^{4/5}\); at the low
end it is \(\sim1\). It must be routed through the bath-recursion ledger,
weighted residue routing, or producer suppression. It is not a hidden free
pressure bath.

## 5. Side-economy and reuse escape

The refresh lower bound is a same-packet statement. A claimed rebuild from
outside the retained chain is not a counterexample to (RED.14); it is a
side-economy term and routes through the no-side-economy/tail/Silver package.

A claimed rebuild by already-present holder geometry is likewise not free. It
is the reuse-tracking branch: Kelvin fixes circulation, so sustained supply
growth must be approach, geometry-work, transport-in, own amplification, or
viscosity. Those channels are already exported to reuse/Gate-8/high-Re
composition, not counted as pressure-bath reserve.

Thus the only remaining unpriced branch after this note is an actual
fine/sparse high-Re same-fluid construction, or an external side-economy/reuse
route already named elsewhere.

## 6. Consequence for the overlap-bath front

The Reynolds-edge bridge is now split:

1. low Reynolds:
   \[
     \operatorname{Re}_D\lesssim\phi\beta^{-8/5}
   \]
   gives an order-one refresh payer;
2. middle Reynolds:
   \[
     \phi\beta^{-8/5}\ll\operatorname{Re}_D\ll\phi\beta^{-12/5}
   \]
   gives the explicit row
   \[
     R_{\rm refresh}\sim\phi\beta^{-8/5}/\operatorname{Re}_D;
   \]
3. high Reynolds:
   \[
     \operatorname{Re}_D\gg\phi\beta^{-12/5}
   \]
   is the genuine fine/sparse cascade construction/exclusion branch.

This does not decide the high-Re branch. It prevents the Reynolds edge from
remaining a single vague escape word.

## 7. State

This is a strict reduction of the Reynolds-edge branch.

It proves no high-Re cascade exclusion, no construction, no finite weighted
routing theorem for the middle row, no producer suppression theorem, and no
MPP closure.

No W1 repair, F4 pass, F5 pass, manuscript completion, or MPP closure is
claimed.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
