---
theorem_id: forward-gold-parent-subtracted-dynamic-silent-fresh-innovation-carleson-20260627
status: producer-sharpened-open-dynamic-silence-must-be-parent-subtracted
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / parent-predictable fresh innovation
attacks_hinge:
  - OriginalHistoryParentPredictableFreshInnovationCarleson.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
  - DynamicSilentCommutatorCarleson.A
  - PredictableRootWeightMartingaleRealization.A
requires_before_spend:
  - PrimitivePLSDriverToSignedCommutatorIdentity.A
  - StoppedFullExchangeActionCarleson.A
source_surfaces:
  - /Users/thomasbirnie/.codex/attachments/34269b9a-4b1f-467e-9aa1-7ec0dd3a4f25/pasted-text.txt
  - system/meta/research-os/proof-relay/state.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dynamic-silent-source-to-predictable-transition-innovation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-dynamic-silent-freshness-rigidity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-dynamic-silent-selected-amplification-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-carrier-readout-or-paid-reselection-after-dynamic-silence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-square-packing-from-derivative-bv-assembly-20260627.md
effect: >-
  Moves the dynamic silent-source improvement from a static or local
  classification into the current parent-predictable producer.  A source may be
  silent at one frozen time.  If the same material packet keeps that source
  selected through the material clock, the fresh part must be a
  parent-subtracted commutator/covector/turnstile innovation with original-history
  Carleson packing.  Coherent inherited silent transport is not counted as fresh
  payment; it routes to record/return.
---

# Parent-subtracted dynamic silent fresh-innovation Carleson

## 1. Placement

The useful improvement is:

```text
silent at one time is allowed;
silent through the material clock is expensive.
```

That sentence should not reopen the old static pressure-Hodge observability
problem.  The local silent-source correction is already consumed as support for
the routed current, and the stopped branch gates have been assembled
conditionally from derivative BV.  The current producer is the common-root,
parent-predictable fresh-innovation Carleson theorem:

```text
OriginalHistoryParentPredictableFreshInnovationCarleson.A
```

with stopped full-exchange action paying chart crossings.  The dynamic silent
identity belongs there.

## 2. Dynamic identity

For a boundary-flat pressure-Hodge silent source,

```math
f_Q=\mathcal L_Aw_Q,
\qquad
w_Q|_{\partial A_Q}=0,
\qquad
\partial_{\nu_A}w_Q|_{\partial A_Q}=0.
\tag{1}
```

At one frozen time this may be boundary-invisible.  Along the material flow,

```math
D_tf_Q
=
\mathcal L_A(D_tw_Q)+[D_t,\mathcal L_A]w_Q.
\tag{2}
```

The commutator has the charged material terms:

```math
[D_t,\mathcal L_A]w_Q
=
\mathcal C_{\rm strain}(\nabla u,\nabla_A^2 w_Q)
+\mathcal C_{\rm frame}(\nabla_A\nabla u,\nabla_A w_Q)
+\mathcal C_{\rm metric}(D_tA,w_Q).
\tag{3}
```

In frozen symbol form, pressure-Hodge silence is

```math
\xi^T Z\xi=0,
\qquad
D_t\xi=-(\nabla u)^T\xi.
\tag{4}
```

Preserving silence gives

```math
0=D_t(\xi^TZ\xi)
=-2\xi^T(\nabla u)Z\xi+\xi^T(D_tZ)\xi.
\tag{5}
```

Thus persistent selected silence forces exchange/covector/frame motion.  But
`(5)` alone is not yet a Gold payment.  The forced motion may be coherent
parent transport.  It becomes a square-packed producer only after the
parent-predictable part is subtracted.

## 3. Parent-subtracted theorem

For a retained stopped edge \(e=Q\to Q'\), let

```math
q_e^{sil}
=
\mathcal C_\theta[Z_e^{sil}]
\tag{6}
```

be the silent/exchange affine transition read in the lifted visible/silent/exchange
Hilbert packet before scalar positive selected readout.  Let
\(H_{e^-}\) and the affine span \(\mathcal P_{e^-}\) be constructed from stopped
parent/root history.

The required split is:

```math
q_e^{sil}
=
B_e^{sil}+D_e^{sil}+R_e^{sil},
\tag{7}
```

where

```math
B_e^{sil}=\Pi_{\mathcal P_{e^-}}q_e^{sil},
\qquad
D_e^{sil}=(I-\Pi_{\mathcal P_{e^-}})q_e^{sil},
\qquad
D_e^{sil}\perp\mathcal P_{e^-}.
\tag{8}
```

The fresh term must have the dynamic representation

```math
D_e^{sil}
=
(I-\Pi_{\mathcal P_{e^-}})
\left[
\int_{I_e}
\Pi_{\rm sel}^{ex}[D_t,\mathcal L_A]w_e\,d\tau
+\operatorname{turnstile}_e
+\operatorname{covector}_e
+\operatorname{frame}_e
+\partial_\sigma Z_e
\right]
+R_e^{legal}.
\tag{9}
```

The producer estimate is the root Carleson packing:

```math
\boxed{
\sup_{P'\subseteq P}
{1\over\mathcal R(P')}
\sum_{e\subset P'}
\int H_{e^-}(t)\|D_e^{sil}(t)\|_{L_x^2(\mathcal H_{\rm lift})}^2\,dt
\le
C_N(u_0)+{R_{\rm legal}(P')\over\mathcal R(P')}.
}
\tag{10}
```

Call this component:

```text
ParentSubtractedDynamicSilentFreshInnovationCarleson.A
```

It is the dynamic-silent contribution to

```text
OriginalHistoryParentPredictableFreshInnovationCarleson.A.
```

## 4. Routing

The inherited part \(B_e^{sil}\) is not a fresh innovation.  It routes to the
fixed stopped-core record/return ledger:

```text
parent-predictable inherited silent transport
  -> stopped primitive channel
  -> record/return payment.
```

The fresh part \(D_e^{sil}\) routes to the reset/innovation ledger:

```text
parent-subtracted commutator/covector/frame/turnstile motion
  -> weighted fresh innovation
  -> critical reset or log-amplification Carleson payment.
```

Moving selector charts, pressure-Hodge coordinates, order-lock gaps, and label
crossings route to:

```text
StoppedFullExchangeActionCarleson.A.
```

Thus dynamic silence contributes to the same common-root producer as the visible
and exchange components.  It does not create a separate interior-energy reserve.

## 5. Noncircularity checks

The active weight \(H_{e^-}\), the affine span \(\mathcal P_{e^-}\), and the
projection in `(8)` must be parent-known before the terminal selected readout.
Choosing them from the future selected tail repackages the desired theorem.

The commutator in `(9)` must be the selected signed channel.  This requires the
driver identification:

```text
PrimitivePLSDriverToSignedCommutatorIdentity.A.
```

Without that theorem, `(9)` is only a material commutator identity, not a proof
that selected PLS action has entered the signed channel before positive
projection.

The global bound `(10)` must be proved from original material persistence,
commutator/covector/frame/turnstile channels, and legal/stop losses.  It cannot
be imported from `FullMaterialClockLedger.A` when that full clock is the
downstream conclusion of the same route.

The interior self-energy

```math
\mathcal H_Q(f)=\langle f,\mathcal L_{A,Q,D}^{-1}f\rangle
\tag{11}
```

is admissible only if it is bounded by the commutator ledger in `(10)`, or by an
already independent original-history ledger.  Otherwise it is just another name
for the hidden tail.

Entropy and selected-density square-function estimates are consumers after
`OriginalHistorySelectedLogAmplificationCarleson.A`.  They are not the producer
unless their proof constructs `(7)`--`(10)` from original history.

## 6. Result

The stronger theorem chain is:

```text
ParentSubtractedDynamicSilentFreshInnovationCarleson.A
+ PrimitivePLSDriverToSignedCommutatorIdentity.A
+ StoppedFullExchangeActionCarleson.A
  -> OriginalHistoryParentPredictableFreshInnovationCarleson.A
  -> OriginalHistorySelectedLogAmplificationCarleson.A
  -> CriticalFreshSourceTentCarleson.A
  -> stopped routed-current square-packing relay.
```

This note is not a Gold closure.  It sharpens the attached dynamic-silence idea
to the live producer and removes the false target: proving that a silent source
cannot exist.  The real target is proving that selected silent persistence has
no unpaid fresh quotient after inherited parent transport is removed, and that
the resulting commutator innovations pack Carleson from original history.
