---
theorem_id: frontier-dissolution-loop-stall-bv-state-not-cocycle-action-counterexample-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop
status: obstruction-counterexample-no-deletion
target_claim: Compact BV certificate-state rows define the W9 material-time action
open_walls:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-surplus-certificate-closed-graph-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-bv-l1-path-topology-conditional-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-static-rows-not-shift-hull-counterexample-20260708.md
---

# BV state compactness does not define the W9 material-time action

## Physical sentence

The same retained Navier-Stokes packet needs more than legal snapshots moving
with finite variation. The certified object must remember enough material-time
history, orientation, or path germ so that the same certificate state has one
lawful future under the shift being tested.

Without that cocycle data, the certificate state can be compact and BV, while
the proposed material-time action is not a function.

## Cross-wall attempt

Frontier opened: W3, W7, W8, W9.

Cross-wall candidate: W7 retained row-graph closedness plus W8 payer closure
plus local BV of the certificate rows defines the W9 material-time action on the
compact state closure.

Failure in one sentence: compact BV rows give compact paths only after a
path-valued hull is chosen; they do not make an instantaneous certificate state
carry a unique material-time future.

## Source check

The W9 shift-hull source assumes certified paths
\[
  Z_j:I_j\to X
\]
and a compact shifted family in a path topology where fixed shifts are
continuous. The proof of invariance then shifts paths:
\[
  \tau_h(\tau_a Z_j)=\tau_{a+h}Z_j.
\]

The zero-surplus source proves closedness of the zero-payer graph only after
the surplus payer is carried as nonnegative measure or lsc defect data on the
compact certificate state space, with terminal-window no-escape. It does not
define a material-time action on instantaneous states.

The B3 audit states the missing row as a material-time semigroup/action on the
lifted certificate family. It says the checked WKB/certificate notes give
static compactness criteria, not an installed action.

The conditional BV lemma proves a sufficient path-space route: one compact
certificate-state space plus uniform local BV/tightness for every row gives an
\(L^1_{\rm loc}\) compact shifted path hull with continuous fixed shifts. That
argument acts on paths, not on bare instantaneous states.

## Abstract counterexample

Let
\[
  X=S^1,
  \qquad
  \mathcal G=X,
\]
and let every state be legal with zero payer. Consider two actual certified
paths:
\[
  Z^+(t)=e^{it},
  \qquad
  Z^-(t)=e^{-it}.
\]

Both paths are uniformly Lipschitz and have uniformly bounded variation on
each compact material-time interval. Every time-slice lies in the closed legal
graph, and the payer coordinate is identically zero. Thus compact state
closedness, pointwise row legality, zero-payer closedness, and local BV all
hold.

At time \(0\), both histories have the same instantaneous certificate state:
\[
  Z^+(0)=Z^-(0)=1.
\]
If these data defined a material-time action
\[
  \Phi_h:X\to X
\]
on the instantaneous state closure, then for the same initial state \(1\) one
would need
\[
  \Phi_h(1)=e^{ih}
  \quad\text{and}\quad
  \Phi_h(1)=e^{-ih}.
\]
For \(h\notin\pi\mathbb Z\), this is impossible.

So the state closure is compact, the rows are BV, and the zero-payer graph is
closed, but there is no well-defined material-time action on the instantaneous
state space.

The obstruction disappears only after one changes the object. One can pass to
the path hull, where \(\tau_h\) acts by translation on whole histories, or one
can enlarge the state by a clock/orientation/path-germ/cocycle coordinate that
makes the future unique. Either move is exactly W9 content unless it is proved
from W3, W7, and W8.

## Gate result

This is not a Navier-Stokes counterexample. It is a counterexample to a deletion
certificate: W9 cannot be discharged by proving compact instantaneous
certificate states plus BV rows. The surviving W9 action row still needs a
path-valued compact shift hull, or a canonical same-fluid cocycle theorem that
makes the compact state closure carry a unique material-time action, together
with terminal-window room and zero-surplus closed graph data.

DELETED: none.
CERTIFICATE: Compact legal certificate states with zero payer and uniformly BV actual paths do not define the W9 material-time action on instantaneous state closure: in the model \(X=S^1\), \(Z^+(t)=e^{it}\) and \(Z^-(t)=e^{-it}\) share the state \(1\) at \(t=0\), but a time-\(h\) action would require \(\Phi_h(1)=e^{ih}\) and \(\Phi_h(1)=e^{-ih}\); therefore W9 still requires a path-valued shift hull or a proved canonical cocycle/path-germ coordinate.
REMAINING: W3, W7, W8, W9.
