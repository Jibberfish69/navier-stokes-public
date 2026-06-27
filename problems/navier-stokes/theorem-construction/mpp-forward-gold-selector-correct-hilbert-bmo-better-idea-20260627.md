---
theorem_id: forward-gold-selector-correct-hilbert-bmo-better-idea-20260627
status: better-idea-installed-rellich-visible-sector-selector-correct-hilbert-bmo-route
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped primitive strict half-barrier
attacks_hinge:
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
  - InvisibleChildBlowupRigidity.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - MonotoneLaminarAdjointSelectedCapacityGain.A
refined_hinge:
  - StoppedSelectorCorrectHilbertBMOProducer.A
  - FixedCarrierVisibleSilentHilbertLift.A
  - IndependentRootHilbertCarrierBound.A
  - FullPacketOrderLockOrMovingSelectorVariationPayment.A
source_surfaces:
  - /Users/thomasbirnie/.codex/attachments/fecb99eb-1583-4598-99bb-fa5a4a66021b/pasted-text.txt
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-invisible-child-rigidity-closure-lock-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-zero-defect-descendant-rigidity-proof-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-source-origin-normal-form-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-silent-selected-density-hilbert-lift-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stochastic-exponential-selected-density-hilbert-bmo-lemma-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-visible-silent-exchange-root-reserve-direct-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
---

# Selector-correct Hilbert BMO better idea

## 1. Live object

The supplied object is the invisible child:

```math
A_
\infty>0,
\qquad
\mathsf S_\infty U_\infty=0.
\tag{1}
```

Plainly: the child has real selected critical-strain action, while the parent
pressure-Hodge boundary sees no Schur defect.

That object is still the right enemy, but the direct boundary-observability
reading is too strong.  The repo already reduced zero Schur defect to:

```math
\Pi_{PH}(\mu^{sel}_{\Sigma,\infty})=0
\quad\Longrightarrow\quad
A(\mu^{sel}_{\Sigma,\infty})=0,
\tag{2}
```

and the later silent-source notes show why a bare detector cannot be the whole
proof: boundary-flat pressure-Hodge sources exist.  So the better idea is not
"make Rellich see every source."  It is:

```text
Rellich/Carleman for the visible quotient,
source-origin classification for silent sources,
Hilbert orthogonality for the visible/silent/exchange carrier,
and paid moving-selector variation for label changes.
```

## 2. What the parallel attacks ruled out

The Lyapunov attack found no noncircular bounded-below storage in the installed
material.  Natural shell and coefficient storages have the right derivative sign
only when their lower bound already contains the continuation-depth record.

The extremal laminar-tree attack found that the stopped one-child half-tail still
survives.  After paid branches are removed, a minimal bad branch can keep

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty.
\tag{3}
```

The PDE/graph attack confirmed that the pressure/collar normal defect is already
graph-reduced.  The remaining tangent motion is the free-material primitive PLS
driver, and existing graph reductions supply attachment and payment routing, not
the strict half-barrier break.

Thus the next proof should not be another scalar local payment, another raw
Rellich detector, or another unweighted laminar tax.

## 3. Better object

Use the visible/silent/exchange Hilbert carrier, but in the selector-correct
form.  On a stopped retained tree, define an original-history carrier

```math
Z_Q\in
\mathcal H_{vis}
\oplus
\mathcal H_{sil}
\oplus
\mathcal H_{ex},
\tag{4}
```

where:

```text
H_vis = pressure-Hodge Schur/Rellich/Carleman visible quotient,
H_sil = boundary-flat pressure-potential bubble energy,
H_ex  = selected silent source origin / top-strain exchange carrier.
```

For a fixed selected carrier, write the multiplicative density ratio as

```math
r_Q={f_Q\over f_{par(Q)}}.
\tag{5}
```

The target readout is the stochastic-exponential increment law

```math
\log r_Q
=
\ell_Q(\Delta_Q Z)-\psi_Q+e_Q,
\qquad
\|\ell_Q\|\le C,
\tag{6}
```

with compensator \(\psi_Q\) enforcing conditional mean one, and with paid error

```math
\sup_{P}
{1\over \mathcal R(P)}
\sum_{Q\subseteq P}|e_Q|^2\mathcal R(Q)
<\infty.
\tag{7}
```

The original-history square function must be finite without defining \(Z\) from
the future selected tail:

```math
\sup_P
{1\over \mathcal R(P)}
\sum_{Q\subseteq P}
\|\Delta_QZ\|^2_{\mathcal H}
\mathcal R(Q)
\le C_N(u_0).
\tag{8}
```

Moving selector, cutoff, projection, carrier-label, or rung changes must be split
out:

```math
\Delta\log f_{sel}
=
\Delta^{fixed}\log f_{sel}
+
\Delta^{lab}\log f_{sel},
\tag{9}
```

with

```math
\sum_{Q\subseteq P}
|\Delta_Q^{lab}\log f_{sel}|^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{10}
```

## 4. Why this is better than another invisible-child detector

The invisible-child currencies in the prompt remain useful, but they have to be
placed in the right slots.

Carleman or Rellich should prove the visible-sector inequality:

```math
A_{vis}(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle+C R_{legal}(Q).
\tag{11}
```

Silent boundary-flat sources are handled by source origin, not by pretending the
boundary sees them:

```math
f\in \ker(\text{parent Schur trace})\cap \mathcal C_{sel}
\quad\Longrightarrow\quad
A_{sel}(f)
\le
C\Omega^{top\text{-}strain/ex}+C\mathcal S_{material}+R_{legal}.
\tag{12}
```

Selector movement is handled by `(10)`, not hidden inside the PDE carrier.

After `(6)`--`(10)`, the martingale step is already standard.  The discharged
stochastic-exponential lemma gives:

```math
f\in RH_{1+\varepsilon}(d\mathcal R),
\tag{13}
```

which supplies the strict good-lambda gain and beats the half-tail.  This is the
missing exponent that raw energy, pointwise sign, complete-frame orientation,
laminarity, and graph-compatible pressure/collar reduction do not create.

## 5. Refined theorem

The next nonduplicate hinge is:

```text
StoppedSelectorCorrectHilbertBMOProducer.A
```

Statement: on the stopped retained same-material tree, construct an
original-history visible/silent/exchange Hilbert carrier with fixed-carrier
stochastic-exponential readout `(6)`, root square-function bound `(8)`, and paid
moving-selector variation `(10)`.  The carrier must be finite from original
smooth data and legal/service ledgers, not from the future selected descendant
tail.

This theorem implies:

```math
\text{StoppedSelectorCorrectHilbertBMOProducer.A}
\Longrightarrow
\text{StochasticExponentialSelectedDensityHilbertBMO.A}
\Longrightarrow
\text{strict good-lambda half-barrier break}
\Longrightarrow
\text{StoppedPrimitivePLSStrictHalfBarrierBreak.A}.
\tag{14}
```

## 6. Result

The better idea is selector-correct Hilbert BMO: keep Rellich/Carleman as the
visible-sector tool, route silent sources into exchange, freeze or pay selector
movement, and use stochastic-exponential martingale BMO to manufacture the
strict exponent.  This attacks the invisible-child object from a stronger
currency than another scalar observability estimate.