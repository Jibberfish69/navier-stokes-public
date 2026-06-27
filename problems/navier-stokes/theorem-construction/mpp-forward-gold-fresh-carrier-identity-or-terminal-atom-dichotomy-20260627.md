---
theorem_id: forward-gold-fresh-carrier-identity-or-terminal-atom-dichotomy-20260627
status: dichotomy-pressure-test-sharpens-entry-bridge-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh same-carrier entry
logical_landing_node: fresh_same_carrier_identity_and_overrun_tail_ui
refines_hinge:
  - FreshSameCarrierIdentityAndOverrunTailUI.A
  - FreshSameCarrierIdentity.A
  - FreshOverrunSameCarrierTailUI.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-same-carrier-overrun-ordering-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-identity-vs-global-root-reserve-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-identity-production-clause-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-failure-split-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-tail-ui-production-normal-form-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-nested-core-tightness-endpoint-ui-bridge-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-source-step-primitive-square-wave-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-source-curve-pass-or-partfield-exit-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-cm-service-certification-recheck-20260620.md
edge_effect: >-
  Tests the stronger identity-or-terminal-atom idea. The terminal source-curve
  side is already installed after same-witness admission and uniform service
  certification. The identity side is not installed. The remaining noncircular
  bridge is pre-terminal mismatch evacuation: a retained positive fresh carrier
  mismatch must be charged to legal/reselection/donor material, identified with
  the selected positive native trilinear carrier, or forced into the terminal
  selected source-curve atom.
downstream_consequence: >-
  Do not treat FreshSameCarrierIdentity.A as a generic estimate and do not keep
  spawning supplier languages. The next proof-bearing object is the mismatch
  evacuation dichotomy. Once it gives identity, the bounded source-square branch
  is paid and the overrun side is exactly FreshOverrunSameCarrierTailUI.A; if
  the retained mismatch or overrun source collapses to the terminal source curve,
  the CM Part/Field consumer is already installed after same-witness admission.
---

# Fresh Carrier Identity Or Terminal Atom Dichotomy

## Status

This note does not prove `FreshSameCarrierIdentityAndOverrunTailUI.A`. It tests
the sharper idea that should replace another supplier search.

The live hinge currently says:

```math
\text{FreshSameCarrierIdentity.A}
\quad\text{then}\quad
\text{FreshOverrunSameCarrierTailUI.A}.
\tag{ITA.1}
```

The better formulation is an entry dichotomy:

```math
\boxed{
\text{fresh carrier identity}
\quad\text{or}\quad
\text{retained fresh mismatch becomes the terminal source-curve atom.}
}
\tag{ITA.2}
```

The second side is not an unproved CM theorem. The terminal source-curve
consumer is already installed after same-witness admission and uniform service
certification. The first side, and the entry into the second side, remain open.

## 1. What identity means here

The identity target is not the already-closed local invisible-child lower edge.
That local edge says a retained selected birth cannot have zero pressure-visible,
zero silent/exchange, zero projector, zero annular, zero viscous/radius, and
zero native source coordinate while still carrying selected action.

The open identity is branch-specific. The lower fresh visible/silent/exchange
source and the upper active queue must be identified, after localization,
projection, packet selection, same-fluid restriction, lifting/weighting, and
positive-part extraction, with the selected positive native trilinear carrier

```math
\Pi_j^+(t)
=
\int_{\Omega_j(t)} |w_j|^2\alpha_j^+\,dx,
\qquad
\alpha_j^+
=
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+.
\tag{ITA.3}
```

The ordering audit records that this identity is not installed. It also records
why the order matters: the overrun branch is not the correct object until the
actual selected carrier in `(ITA.3)` has been identified.

## 2. What is already paid after identity

Once `(ITA.3)` is the actual selected carrier, the source-square split gives a
real payment on the bounded coefficient part. For fixed `K`,

```math
\Omega_{j,K}^{bd}
=
\Omega_j\cap\{\alpha_j^+\le K\nu r_j^{-2}\},
\qquad
\Omega_{j,K}^{over}
=
\Omega_j\cap\{\alpha_j^+>K\nu r_j^{-2}\}.
\tag{ITA.4}
```

On the bounded branch,

```math
\Pi_{j,K}^{bd}(t)
\le
K\nu r_j^{-2}\int_{\Omega_j(t)}|w_j|^2\,dx
\le
K T_{j-C_0}(t)+Legal_j(t).
\tag{ITA.5}
```

So the bounded branch is not a live Gold obstruction after identity. The only
same-carrier product obstruction is the selected overrun source

```math
 a_{j,K}^{fresh,over}(s)
=
C_{LP}r_j^{1/2}
\int_{\Omega_{j,K}^{fresh,over}(T+r_j^2s)}
|w_j|^2\alpha_j^+\,dx.
\tag{ITA.6}
```

The exact overrun production target is same-carrier tail uniform integrability:

```math
\boxed{
\lim_{L\to\infty}\sup_j
\int_{\{a_{j,K}^{fresh,over}>L\}}
 a_{j,K}^{fresh,over}(s)\,ds
=0.
}
\tag{ITA.7}
```

This implies endpoint UI, and hence the fixed-chain nested-core target, by the
installed tail-UI and nested-core measure bridges.

## 3. What failure of tail UI already means

Failure of `(ITA.7)` is not another supplier route. On the selected time
marginal it is exactly terminal concentration. In the square-wave normal form,
the bad source looks like

```math
 a_j(s)=\tau_j^{-1}{\bf 1}_{(-\tau_j,0]}(s),
\qquad \tau_j\downarrow0,
\tag{ITA.8}
```

so its cumulative source primitive converges to a Heaviside step at the terminal
face. The terminal source-curve lemma gives the measure statement:

```math
\neg\text{endpoint UI}
\Longrightarrow
\bar\mu(\{0\})>0.
\tag{ITA.9}
```

After same-witness admission and uniform service certification, this atom is
already consumed by the installed Part/Field service-topology theorem:

```math
\bar\mu(\{0\})>0
\Longrightarrow
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
\tag{ITA.10}
```

Before same-witness admission, `(ITA.9)` is only the exact forward obstruction
and readout. It is not `Exit(Q)` by itself.

## 4. The new pressure point: mismatch evacuation

The same-carrier identity recheck shows the real danger. Current controlled
objects may be source-square tails, signed stress residues, local-energy defect
measures, stress-current projections, or mode/gauge scores. None of those is
automatically the selected positive native carrier `(ITA.3)`.

Thus a failed identity should not be treated as another estimate to improve. It
is a carrier-typing mismatch. The proof should force every retained positive
mismatch into one of three places:

```math
\boxed{
\begin{array}{ll}
\text{identified:} & \text{it is the selected positive native carrier `(ITA.3)`;}\\[1mm]
\text{paid earlier:} & \text{it is legal/reselection/donor-chain/support charge;}\\[1mm]
\text{terminal:} & \text{it becomes the selected terminal source-curve atom.}
\end{array}}
\tag{ITA.11}
```

Call this missing statement

```math
\boxed{
\text{FreshCarrierMismatchEvacuationOrTerminalAtom.A}.}
\tag{ITA.12}
```

A minimal-counterexample reading explains why this is the right theorem. Choose
the first retained nonlegal positive mismatch after the local source-origin edge,
silent-source normal form, exchange refunds, selector/reselection payment, and
legal residues are removed. If this mismatch has mass on a nonterminal heat
subwindow, then it is still a fresh selected source event inside the same
material history. It must either be charged to an earlier legal/reselection or
donor-chain ledger, or be identified by the selected positive native carrier
score. If every such nonterminal window is evacuated, the only surviving
positive mismatch is terminal; the source-curve lemma then gives `(ITA.9)`.

The unproved part is the rigorous evacuation step across moving packets and
score changes. In the current repo language it is exactly the missing selected
positive polar saturation / retained signed-partner legal charge / no-free
terminal Zeno donor-chain control / score-comparison bridge.

## 5. Resulting next hinge

The hinge is sharper than the previous two-gate phrasing. The proof should next
attack

```text
FreshCarrierMismatchEvacuationOrTerminalAtom.A
```

Statement:

For the retained stopped fresh source branch after the paid reductions, any
positive lower-source / upper-queue carrier mismatch that is not legal, not a
paid reselection or donor-chain charge, and not identified with the selected
positive native trilinear carrier `(ITA.3)`, must concentrate in the selected
terminal source curve. After same-witness CM admission and uniform service
certification, that terminal atom gives the installed Part/Field face failure.
If the mismatch is evacuated instead, `FreshSameCarrierIdentity.A` holds and the
remaining forward Gold object is exactly `FreshOverrunSameCarrierTailUI.A` on
`(ITA.6)`.

This is still open. The gain is that the proof search is no longer allowed to
wander through broad CKN, source-square, endpoint, no-waste, mode, or pressure
suppliers unless they prove the mismatch evacuation theorem or the same-carrier
tail UI on the actual selected carrier.