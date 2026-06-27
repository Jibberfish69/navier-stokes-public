---
theorem_id: forward-gold-root-defect-carrier-stable-compactness-synthesis-20260627
status: root-defect-tightness-sharpened-to-carrier-stable-compactness-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - RootDefectTightnessFromOriginalHistory.A
  - StoppedPredictableRootGeometryCompensator.A
  - PredictableRootWeightMartingaleRealization.A
  - StoppedAffineQuotientTransitionSquarePacking.A
refines_to:
  - RootDefectCarrierStableCompactness.A
  - SameCarrierBadProfileExtraction.A
  - ActiveWeightBlowupProjectionCompactness.A
  - ZeroCostSelectedResetRigidity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-root-geometry-compensator-direct-proof-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-weight-bad-profile-compactness-tightness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-high-weight-tube-escape-charge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-selected-reset-rigidity-after-tightness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-cost-dynamic-silent-freshness-rigidity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-fixed-connection-angle-drift-compensator-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-snell-compensator-realization-20260627.md
effect: >-
  Replaces the loose phrase RootDefectTightnessFromOriginalHistory.A with a
  single carrier-stable compactness theorem. High-weight tube escape is already
  paid under the stopped first-exit derivative representation, and zero-cost
  selected reset rigidity is already closed after tightness extraction. The
  remaining nonconsumer work is to prove that a normalized parent-subtracted
  root defect has a same-carrier, nonzero lifted limit unless carrier mismatch,
  connection drift, active-weight escape, selector/collar change, or legal loss
  has already paid it.
---

# Root defect carrier-stable compactness synthesis

The current square-packing wall is not Bessel.  The Bessel consumer is already
proved once the root Hilbert geometry and martingale split exist.  The real
producer is the root defect compactness theorem that constructs that geometry
from original same-material history.

The sharper theorem is:

```text
RootDefectCarrierStableCompactness.A.
```

It is the compactness heart of:

```text
RootDefectTightnessFromOriginalHistory.A
  -> StoppedPredictableRootGeometryCompensator.A
  -> PredictableRootWeightMartingaleRealization.A
  -> StoppedAffineQuotientTransitionSquarePacking.A.
```

Partial, not Gold closed.

## 1. Normalized bad root defect

Assume the stopped root-geometry compensator fails.  Then there is a sequence
of stopped roots \(P_n\) and transition families \(\mathscr E_n\) with

```math
\mu_n^{root}(\mathscr E_n)
:=
\int dA_{P_n}^{wt}
+\int dA_{P_n}^{conn}
+\sum_{e\in\mathscr E_n}
\int H_{e^-}\|D_e\|_{\mathcal H_{lift}}^2
=1,
\tag{1}
```

while every allowed original-history charge tends to zero:

```math
\int d\Lambda_{P_n}^{root}
+R_{legal}(P_n)+Stop(P_n)\to0.
\tag{2}
```

Here \(D_e\) is the parent-subtracted fresh quotient in the lifted
visible/silent/exchange packet, and \(d\Lambda^{root}\) contains log-scale
derivative, turnstile, exchange, covector, frame, collar, selector, and legal
charges.

The compactness theorem must turn `(1)`--`(2)` into a nonzero same-carrier
zero-cost limit.  The rigidity notes can kill that limit, but only after it has
actually been extracted.

## 2. Escape is already a charged branch

The active-weight half-tail can try to vanish into shrinking high-weight tubes:

```math
H_{e_\ell^-}\simeq 2^\ell,
\qquad
\|D_{e_\ell}\|^2\simeq {2^{-\ell}\over \ell+1}.
\tag{3}
```

The no-free high-weight tube note proves the right estimate once reset edges are
parent-announced first-exit derivative intervals with stopped bounded-overlap
witnesses:

```math
\sum_{e\in\mathcal E_{esc}}
\int H_e\|D_e^{fresh}\|^2
\le
C_N\int_{\operatorname{Hist}(P)}
w\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\right)
+CR_{legal}(P).
\tag{4}
```

Thus high-weight escape is not the remaining free alternative inside the
stopped first-exit branch.  In a normalized sequence satisfying `(2)`, the mass
of the escape family tends to zero.

## 3. Carrier mismatch is not a third branch

The remaining mass must be carrier-stable.  If it is not, the failure is already
paid by the connection and selector/collar/covector ledgers.

The parent-fixed connection note gives the relevant charge:

```math
dA_P^{conn}
=
H_P^\ast\|\mathcal K_P^{new}\|_{\operatorname{op}}^2\,d\sigma dt
+dA_P^{sel/chart}
+dR_{legal,P}
+dStop_P.
\tag{5}
```

So a transition edge has only two outcomes:

```text
carrier-stable after parent transport
  -> keep it in the compactness subfamily;

carrier/frame/selector/collar/covector mismatch
  -> charge it to dA_P^{conn}, selector/chart, legal, or stop.
```

Since `(2)` sends those charges to zero, a positive fraction of the normalized
defect must survive on a subfamily transported into one parent-fixed carrier.
This is the content of:

```text
SameCarrierBadProfileExtraction.A.
```

It should not be treated as a new analytic estimate.  It is a stopping and
compactness statement for the parent connection: after discarding paid mismatch
edges, the remaining defect lives in one fixed parent lifted Hilbert space.

## 4. The actual compactness theorem

After escape and carrier mismatch have been removed, the exact theorem is:

```text
RootDefectCarrierStableCompactness.A.
```

Statement:

For every normalized bad sequence satisfying `(1)`--`(2)`, there is a stopped
subchain, parent transport, and active-weight rescaling such that

```math
H_{e_n^-}^{1/2}D_{e_n}
\rightharpoonup D_\infty
\quad\text{in one fixed } \mathcal H_{lift},
\tag{6}
```

with

```math
D_\infty\ne0,
\tag{7}
```

unless the lost mass is charged by one of

```text
dA^{wt}, dA^{conn}, dLambda^{root}, selector/collar/covector mismatch,
legal loss, or stop.
```

This is where the proof must prevent a false weak-limit loss.  If weak
convergence loses the unit mass by oscillation, that oscillation is frame,
covector, frequency, collar, or selector motion and belongs to `(5)` or
`dLambda^{root}`.  If it loses the mass by spatial/scale escape, `(4)` charges
it.  If it splits into infinitely many unrelated carriers, same-carrier
extraction charges all but a stable subfamily.

That is the compactness content still missing from the repo.

## 5. Rigidity after compactness

Once `(6)`--`(7)` are available, the contradiction is already supplied by the
zero-cost rigidity surfaces.

The vanishing charge `(2)` gives

```math
\partial_\sigma Z_\infty=0,\qquad
\operatorname{turnstile}_{\sigma,\infty}=0,\qquad
\operatorname{exchange}_{\sigma,\infty}=0,\qquad
\operatorname{covector}_{\sigma,\infty}=0,
\tag{8}
```

and the dynamic-silent freshness note also removes fresh silent commutator
motion after parent-predictable transport.

In the same parent carrier, the stopped transition coordinate is constant:

```math
\partial_\sigma q_\infty=0.
\tag{9}
```

The parent-subtracted fresh quotient is therefore

```math
D_\infty
=
(I-\Pi_{\mathcal P_-})
\left(q_\infty(\sigma_1)-q_\infty(\sigma_0)\right)
=0,
\tag{10}
```

contradicting `(7)`.

So the proof architecture is now:

```text
escape charge
+ carrier-stable compactness
+ zero-cost rigidity
  -> RootDefectTightnessFromOriginalHistory.A.
```

## 6. What this changes

The live theorem should no longer be described as three separate walls:

```text
active-weight upcrossing,
same-carrier extraction,
zero-cost selected reset rigidity.
```

The last is closed after tightness, and high-weight escape is conditionally
paid by first-exit derivative representation.  The single remaining producer is
the carrier-stable compactness theorem that prevents the normalized defect from
disappearing before rigidity can see it.

The next exact proof unit is:

```text
RootDefectCarrierStableCompactness.A:
  a normalized parent-subtracted root defect with vanishing original-history
  charges has a nonzero same-carrier lifted limit, or it already pays one of
  the root geometry ledgers.
```

Proving this would feed `RootDefectTightnessFromOriginalHistory.A`, then the
stopped root-geometry compensator, then the affine-quotient square-packing
chain.  The proof is still open at this compactness theorem.
