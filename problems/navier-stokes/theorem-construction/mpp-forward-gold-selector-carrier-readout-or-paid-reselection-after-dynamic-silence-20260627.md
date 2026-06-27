---
theorem_id: forward-gold-selector-carrier-readout-or-paid-reselection-after-dynamic-silence-20260627
status: selector-readout-closed-relative-to-stopped-full-exchange-action-not-root-carleson
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / parent-predictable source carrier
attacks_hinge:
  - SelectorCarrierNondegeneracyOrPaidReselection.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - CriticalFreshSourceTentCarleson.A
refines:
  - ZeroCostDynamicSilentFreshnessRigidity.A
  - MovingSelectorVariationCarleson.A
  - SelectorStratumCrossingVariationBound.A
  - StoppedAffineTransitionLiftedMartingaleDifference.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-dynamic-silent-freshness-rigidity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-locked-selector-variation-bridge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-reselection-root-reserve-convergence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-transition-predictable-weight-martingale-lock-20260627.md
effect: >-
  Converts the moving-selector half-tail loophole into a stopped dichotomy:
  inside a parent-known selector chart, selected log amplification is a
  Lipschitz readout of the parent-predictable visible/silent/exchange carrier
  innovation; when the chart, label, order-lock gap, or pressure-Hodge coordinate
  changes, the event is a reselection/stratum-crossing charge paid by the stopped
  full-exchange action. This closes the selector readout obstruction only
  relative to StoppedFullExchangeActionCarleson.A. It does not prove the root
  original-history carrier packing.
---

# Selector carrier readout or paid reselection after dynamic silence

The dynamic silent-source note changed the target.  A source may be invisible at
one frozen time, and a silent/gauge component may persist as inherited parent
transport.  The fresh quotient is the relevant object:

```text
selected silent fresh action
  is either charged by projected commutator/covector/frame/turnstile motion
  or is inherited parent transport and gives zero fresh quotient.
```

That removes one zero-cost loophole.  The next selector loophole is different:
the selected label may move while the fixed physical carrier has no Hilbert
increment.  This note isolates the correct dichotomy.

## 1. Stopped selector chart

Let \(S\) be a stopped retained root or stopped interval.  Its parent-known
selector data are

```math
Y_S(t)
=
\bigl(
\sigma_S(t),\chi_S(t),\Phi_S(t),\xi_{PH,S}(t),
\Pi_{A,S}(t),\gamma_{ol,S}(t),\Gamma_S(t)
\bigr).
\tag{1}
```

The stopping rule declares a paid stop whenever any of the following changes
without a visible ledger entry:

```text
selected carrier label,
cutoff/collar coordinate,
pressure-Hodge projection coordinate,
order-lock or tie gap,
finite rung label,
parent material frame.
```

On a no-stop child chain below \(S\), \(Y_S(t)\) remains inside one selector
chamber.  In that chamber the selected log-density is a smooth finite-dimensional
readout of the parent-predictable carrier:

```math
\log\rho_{\rm sel}(Q)
=
F_S\!\left(Z_Q^S,Y_S\right)+r_Q^S,
\qquad
|r_Q^S|\le e_Q^S.
\tag{2}
```

The order-lock/tie-gap lower bound on the chamber gives

```math
\|D_ZF_S\|_{\mathcal H_{\rm lift}^\ast}
\le C_S,
\tag{3}
```

where \(C_S\) is admissible only while the same stopped chart is active.  If the
constant would blow up because a gap closes, the stopping rule has fired.

## 2. Fixed-chart readout

For a retained transition edge \(e:Q\to Q'\) inside the stopped chart, use the
parent-predictable split

```math
\Delta_e Z^S
=
B_e+D_e+R_e,
\tag{4}
```

where \(B_e\) is inherited parent transport, \(D_e\) is orthogonal fresh
innovation in the parent-predictable lifted Hilbert geometry, and \(R_e\) is
legal/collar/selector soft residual.

Subtracting `(2)` between \(Q\) and \(Q'\), and using `(3)`, gives

```math
\left|
\Delta_e^{fixed}\log\rho_{\rm sel}
\right|
\le
C_S\|D_e\|_{\mathcal H_{\rm lift}}
+C_S\|R_e\|_{\mathcal H_{\rm lift}}
+e_e^S.
\tag{5}
```

The inherited term \(B_e\) does not appear in `(5)`: it is parent-predictable
record/return, not fresh selected amplification.  In the silent component this
is exactly the content of `ZeroCostDynamicSilentFreshnessRigidity.A`.  In the
visible/exchange components it is the same stopped affine-transition split.

Squaring and summing inside one stopped chart yields

```math
\sum_{e\subset S}
\left|
\Delta_e^{fixed}\log\rho_{\rm sel}
\right|^2\mathcal R(e)
\le
C_S
\sum_{e\subset S}
\|D_e\|_{\mathcal H_{\rm lift}}^2\mathcal R(e)
+C_SR_{\rm legal}(S)
+C_S\sum_{e\subset S}|e_e^S|^2\mathcal R(e).
\tag{6}
```

Thus the fixed-chart part is a consumer of the parent-predictable carrier
square function.  It is not an independent selector theorem.

## 3. Moving-label part

The countertest against the unfrozen Hilbert lift is sharp: two fixed carriers
may have

```math
\Delta Z^{C_1}=0,
\qquad
\Delta Z^{C_2}=0,
\tag{7}
```

while a selector switch from \(C_2\) to \(C_1\) creates

```math
\left|\Delta\log\rho_{\rm sel}\right|
=
\left|\log(1/\varepsilon)\right|.
\tag{8}
```

Therefore the moving-label term must be separated:

```math
\Delta_e\log\rho_{\rm sel}
=
\Delta_e^{fixed}\log\rho_{\rm sel}
+
\Delta_e^{lab}\log\rho_{\rm sel}.
\tag{9}
```

The label term is paid precisely by the stopped selector packet variation:

```math
\sum_{e\subset P}
\left|
\Delta_e^{lab}\log\rho_{\rm sel}
\right|^2\mathcal R(e)
\le
C\,\mathcal E_{\rm ol}(P)
+C\,\Lambda_{\rm sel}(P)
+C\,(K_{\rm sel}+K_C^+)(P)
+R_{\rm legal}(P).
\tag{10}
```

The order-locked selector variation bridge identifies `(10)` as the correct
replacement for a naked moving-selector bound.  The selector-stratum BV closure
then routes the unhidden crossing cost to stopped full exchange:

```math
\mathcal E_{\rm ol}(P)+\Lambda_{\rm sel}(P)+(K_{\rm sel}+K_C^+)(P)
\le
C_N
\sum_{S\subseteq P}
\bigl(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\bigr)
+R_{\rm legal}(P).
\tag{11}
```

Thus reselection is not free amplification.  It is either absent inside the
fixed stopped chart or charged to the same stopped full-exchange action.

## 4. Combined stopped estimate

Combining `(6)`, `(10)`, and `(11)` gives the relative readout theorem:

```text
SelectorCarrierNondegeneracyOrPaidReselection.A
```

in the following precise form:

```math
\sum_{e\subset P}
\left|
\Delta_e\log\rho_{\rm sel}
\right|^2\mathcal R(e)
\le
C
\sum_{e\subset P}
\|D_e\|_{\mathcal H_{\rm lift}}^2\mathcal R(e)
+C_N
\sum_{S\subseteq P}
\bigl(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\bigr)
+R_{\rm legal}(P).
\tag{12}
```

If the stopped full-exchange action is Carleson and the fresh innovations have
the root parent-predictable Bessel/Carleson bound, then `(12)` supplies the
selector-correct square function needed by the stochastic-exponential BMO
consumer.

## 5. What this does not prove

This note does not prove

```text
OriginalHistorySelectedLogAmplificationCarleson.A.
```

It removes one false obstruction: selected label motion cannot recreate the
half-tail without either being fixed-chart carrier motion or paying stopped
reselection/full-exchange cost.

The remaining noncircular producer is now narrower:

```text
OriginalHistoryParentPredictableFreshInnovationCarleson.A
```

For every retained stopped root \(P\), construct from original same-material
history, before terminal selected readout:

```text
1. a common parent-predictable lifted Hilbert geometry;
2. parent-known active weights H_{e^-};
3. parent affine spans P_{e^-};
4. fresh innovations D_e after inherited transport is removed;
5. accretive stopped testing data for the original-history source transform.
```

and prove

```math
\sup_{P'\subseteq P}
{1\over\mathcal R(P')}
\sum_{e\subset P'}
\int H_{e^-}(t)\|D_e(t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)+{R_{\rm legal}(P')\over\mathcal R(P')}.
\tag{13}
```

Together with the stopped full-exchange action bound in `(11)`, `(13)` gives
the selector-correct Hilbert/BMO producer.  Without `(13)`, the route is still
conditional.

## 6. Result

The selector readout obstruction is closed relative to stopped full exchange and
parent-predictable fresh-innovation packing:

```text
fixed stopped chart -> carrier innovation readout;
moving chart/label/gap -> paid reselection/full-exchange action.
```

The live Gold wall is therefore not the static invisible source and not a free
moving selector label.  It is the common-root, parent-predictable Carleson
packing of original-history fresh innovations, plus the stopped full-exchange
action bound that pays chart crossings.
