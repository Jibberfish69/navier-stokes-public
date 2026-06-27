---
theorem_id: forward-gold-stopped-visible-silent-exchange-root-reserve-direct-audit-20260627
status: direct-audit-installed-stopped-compensator-valid-reduces-to-selected-weighted-root-reserve
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped visible-silent-exchange compensator
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - StoppedVisibleSilentExchangeCompensatorRootReserve.A
  - StoppedFullExchangeActionCarleson.A
  - TopStrainLogExchangeRootReserve.A
  - NativeBirthChargePacking.A
  - MonotoneLaminarAdjointSelectedCapacityGain.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-multicurrency-invisible-child-to-stopped-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-full-exchange-native-reserve-pivot-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-selected-exponent-gap-root-reserve-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-top-strain-log-exchange-root-reserve-laminar-dual-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-laminar-ancestry-reserve-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
---

# Stopped visible/silent/exchange root reserve direct audit

This note audits the current relay hinge:

```text
StoppedVisibleSilentExchangeCompensatorRootReserve.A
```

The stopped visible/silent/exchange compensator is the right combined object.
It is not yet the proof of the Gold action bound.  Its local decomposition
leaves exactly one continuous root-reserve theorem.

## 1. What the stopped compensator already combines

On a stopped parent \(S\), the augmented parent-drop estimate is:

```math
\sum_{S'\in ch_{\rm stop}(S)}A(S')
\sum_{S'\in ch_{\rm stop}(S)}B(S')
\le
B(S)
+C\Xi(S)
+R_{\rm stop}(S)
+R_{\rm legal}(S),
\tag{1}
```

where

```math
\Xi(S):=\Omega_S^{strain/ex}+D_S^{vis/rad}.
\tag{2}
```

The terms in `(1)` have the following checked roles.

The pressure-visible quotient is paid by the stopped Schur / DtN / Rellich /
Carleman currency:

```math
A_{\rm qvis}^{stop}(S)
\le
C\langle U_S,\mathsf S^{stop}_SU_S\rangle
+R_{\rm legal}(S).
\tag{3}
```

The Schur-silent selected branch is paid locally by the source-origin normal
form:

```math
dA_{\rm sel}^{silent}
\le
C\,d\Omega^{top\text{-}strain/ex}
+C\,dD^{vis/rad}
+dR^{legal}.
\tag{4}
```

The unpaid reselection jump side is absorbed by the stopped selector BV/coarea
estimate:

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}\Xi(S)
+R_{\rm legal}(P).
\tag{5}
```

Thus the stopped compensator removes the false split between invisible-child
observability and reselection no-exit.  Both become faces of the same stopped
same-material packet.

## 2. Telescoping leaves one theorem

Sum `(1)` over the stopped tree under \(P\).  The capacity terms telescope and
`(5)` absorbs the unpaid jump part into the same exchange ledger.  The required
remaining estimate is:

```math
\sum_{S\subseteq P}
\bigl(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\bigr)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{6}
```

This is the continuous root-reserve theorem behind the stopped compensator.
It is `StoppedFullExchangeActionCarleson.A`, equivalently the selected
compression/root reserve in stopped coordinates.

## 3. Hilbert geometry is a consumer unless the root carrier is original-history

The visible/silent/exchange Hilbert lift gives a clean consumer structure.  If
one has a fixed original-history carrier \(Z\) with nested increments, then
Bessel/Pythagoras gives:

```math
\sum_{Q\subseteq P}
\|\Delta_QZ\|_{\mathcal H_{vis}\oplus\mathcal H_{sil}\oplus\mathcal H_{ex}}^2
\le
\|Z_P\|_{\mathcal H}^2
+R_{\rm legal}(P).
\tag{7}
```

Together with a selector readout

```math
|\Delta_Q\log\rho_{\rm sel}|
\le
C\|\Delta_QZ\|_{\mathcal H}+e_Q,
\tag{8}
```

and paid selector errors, this yields the selected-density martingale
reverse-Holder gain.

The noncircular issue is the root norm:

```math
\|Z_P\|_{\mathcal H}^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{9}
```

Choosing \(Z\) from the future selected descendant density proves `(8)` but
makes `(9)` the desired selected reserve in Hilbert coordinates.  Choosing
\(Z\) only from raw original-history visible/silent/exchange sources keeps the
carrier noncircular, but the installed raw ledgers give only the zeroth moment.

## 4. Half-tail test

The abstract critical tail is:

```math
\nu_\ell={2^{-\ell}\over \ell+1}.
\tag{10}
```

It satisfies:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty.
\tag{11}
```

This tail is compatible with:

- visible quotient payment on pressure-visible pieces;
- silent-source routing into exchange on selected silent pieces;
- selector BV jump payment relative to full exchange;
- complete-frame trace-free orientation payment;
- laminar ancestry after paid nonlaminar exits;
- raw material strain/viscosity ledgers.

Therefore `(6)` cannot follow from those support anchors alone.  It needs a
strict weighted reserve:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
\tag{12}
```

or an equivalent strict good-lambda recurrence:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{13}
```

## 5. Correct live theorem after the audit

The stopped visible/silent/exchange compensator is a valid assembly theorem:
it combines visible boundary currency, silent-source exchange routing, and
reselection jumps into one stopped same-material object.

The proof-bearing theorem still open is the selected-weighted root reserve:

```text
NativeBirthChargePacking.A
```

or equivalently:

```text
TopStrainLogExchangeRootReserve.A
MonotoneLaminarAdjointSelectedCapacityGain.A
SelectedCriticalStrainCapacityGoodLambda.A / WeightBeatingTailLaw.A
```

Plainly, the remaining job is not another boundary detector and not another
selector-crossing estimate.  It is to prove that every retained selected
high-ratio birth is lower-band carry, visible same-history birth, or paid/legal,
with no fourth branch:

```math
\text{unpaid selected high-ratio upward birth attached to source channels but
not packable into finite original-history root reserve.}
\tag{14}
```

## 6. Result

`StoppedVisibleSilentExchangeCompensatorRootReserve.A` reduces Gold to `(6)`.
It does not prove `(6)` by itself.

The current Gold wall is exactly the selected weighted same-material root
reserve:

```math
\sum_{Q\in T}A(Q)<\infty,
```

with \(A(Q)\) carrying the selected first-ratio / top-strain-log exchange
action and with root reserve finite from original smooth data, not from the
future selected tail.
