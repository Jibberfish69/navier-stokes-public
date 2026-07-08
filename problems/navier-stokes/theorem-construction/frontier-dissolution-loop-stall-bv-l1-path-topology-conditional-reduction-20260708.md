---
theorem_id: frontier-dissolution-loop-stall-bv-l1-path-topology-conditional-reduction-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop
status: strict-conditional-reduction-no-deletion
target_claim: A common local-BV certificate topology would supply the W9 compact shift hull
open_walls:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-surplus-certificate-closed-graph-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-path-uniform-row-moduli-codex-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-w3-not-terminal-window-room-codex-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-gap-c-legal-clauses-not-standing-routeout-codex-gate-20260708.md
---

# Conditional BV path-topology reduction for the W9 residue

The prior gates refuted the direct bridge \(W3+W7+W8\Rightarrow W9\): the
checked sources give static row compactness, fixed-packet service persistence,
and payment/admission data, but not a shift-continuous material-time certificate
path. This note records a positive conditional reduction: exactly what extra
path theorem would make the W9 shift-hull construction work.

This is not a new frontier wall. It is an attackable sufficient theorem for the
surviving W9 burden.

## Physical sentence

The same retained Navier-Stokes packet must not merely have admissible snapshots.
Its pressure law, material ancestry, cover, tower, service, selector, and
surplus-payer rows must move through material time with one common finite
variation/tightness control, while the certified terminal window has enough room
for the shifts being tested.

Without that one path control, the certificate can be compact at isolated
material times and still fail to be a compact material-time object.

## Abstract path lemma

Let \(X\) be a compact metric certificate-state space. Its coordinates are the
same datum/fixed viscosity, pressure-law/Reynolds row, material ancestry row,
finite cover, differentiated tower row, stable service/selector labels, and
same-packet surplus-payer legal coordinates. Let \(d\) be a product metric on
these coordinates.

Let \(Z_j:I_j\to X\) be the certified material-time paths extracted from actual
retained windows. Suppose that for every \(S<\infty\), every shifted path
\[
  Y_{j,a}(s)=Z_j(s+a),
  \qquad s\in[-S,S],
\]
with \(a+[-S,S]\subset I_j\), satisfies:

1. the values lie in the compact state space \(X\);
2. \(\operatorname{Var}_{[-S,S]}(Y_{j,a};d)\le M_S\) for a bound independent of
   \(j,a\);
3. the selected windows have enough interior room for all fixed shifts being
   tested;
4. the surplus-payer rows are carried as nonnegative finite measures or
   lower-semicontinuous nonnegative defect coordinates, with terminal-window
   no-escape.

Then the shifted family is precompact in \(L^1_{\rm loc}(\mathbb R;X)\), where
the distance on \([-S,S]\) is
\[
  D_S(Y,Y')=\int_{-S}^{S} d(Y(s),Y'(s))\,ds .
\]

Proof. On each fixed \([-S,S]\), compactness of \(X\) plus the uniform variation
bound gives Helly compactness for metric-valued bounded-variation maps:
after passing to a subsequence, \(Y_{j_n,a_n}\) converges pointwise at continuity
points of the limit and in \(L^1([-S,S];X)\). Diagonalizing over integer
windows gives \(L^1_{\rm loc}\) compactness.

For any \(L^1_{\rm loc}\) path \(Y\), fixed material-time shifts are continuous
in this topology:
\[
  D_S(\tau_hY,\tau_hY')
  =
  \int_{-S+h}^{S+h} d(Y(r),Y'(r))\,dr
  \le D_{S+|h|}(Y,Y')
\]
after enlarging the window, and \(D_S(\tau_hY,Y)\to0\) as \(h\to0\) by the
ordinary continuity of translations in \(L^1_{\rm loc}\). Thus every fixed
\(\tau_h\) is continuous on the path space.

If \(Y=\lim_n\tau_{a_n}Z_{j_n}\) lies in the \(L^1_{\rm loc}\) shift hull and
the windows have the corresponding interior room, then
\[
  \tau_h(\tau_{a_n}Z_{j_n})=\tau_{a_n+h}Z_{j_n}
\]
is still a shifted actual certificate path. Continuity of \(\tau_h\) gives
\(\tau_hY\) in the same hull. Hence the hull is invariant under fixed
material-time shifts.

Finally, if the zero-surplus graph is expressed by carried nonnegative
measure/defect coordinates and terminal-window no-escape, the zero-surplus
closed-graph lemma applies in this same path topology. Limit paths remain
certified zero-surplus paths, modulo the declared legal defects.

Therefore, the following conditional implication is proved:
\[
\begin{aligned}
&\text{common compact certificate state space}\\
&+\text{uniform local BV/tightness for all certificate rows}\\
&+\text{terminal-window interior room}\\
&+\text{surplus-payer measure lift and lsc defect closure}\\
&\Longrightarrow
\texttt{CertifiedMaterialTimeShiftHullCompactness.A}
+
\texttt{ZeroSurplusCertificateClosedGraph.A}.
\end{aligned}
\tag{BVH.1}
\]

Together with the already filed abstract shift-hull lemma, (BVH.1) implies
`MaterialTimeCertificateFlowInvariance.A`.

## Source comparison

This conditional reduction does not delete W9 from the current frontier.

W3 supplies selected service persistence on a fixed packet/collar, conditional
on the same-field \(H^1\)/strong-\(L^3\) payment row. It does not supply uniform
local BV for pressure law, ancestry, cover, tower, payer, and terminal-window
coordinates.

W7 supplies retained graph passage through a critical compactness limit, or
typed row-loss route-out. It does not supply dynamic \(L^1_{\rm loc}\) path
compactness or a shift action on the closure.

W8 supplies finite parent-weighted selected first-admission / order-locked
payment. It does not supply one common variation measure for all certificate
coordinates through material time.

The exact remaining W9 producer is therefore no longer just "some topology." It
is the following single attackable input:

For the retained critical-height branch, construct one common compact
certificate-state space and prove uniform local BV/tightness in material time
for the pressure-law, ancestry, finite-cover, tower, service/selector, surplus
payer, and terminal-window coordinates, with carried nonnegative payer defects
and no terminal-window escape; or route failure through the already typed
stop/legal/selector/Pack/Part/Field defects.

DELETED: none.
CERTIFICATE: A common compact certificate-state space plus uniform local BV/tightness for all W9 rows would give an \(L^1_{\rm loc}\) compact shifted path hull with continuous material-time shifts, and with payer-measure lift/lower-semicontinuity plus terminal-window no-escape would imply the W9 closed certificate graph; the checked W3/W7/W8 sources do not supply that uniform BV/tightness or terminal-window input.
REMAINING: W3, W7, W8, W9.
