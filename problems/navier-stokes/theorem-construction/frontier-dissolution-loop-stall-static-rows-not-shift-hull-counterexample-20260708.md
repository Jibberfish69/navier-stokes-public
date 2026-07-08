---
id: frontier-dissolution-loop-stall-static-rows-not-shift-hull-counterexample-20260708
date: 2026-07-08
status: obstruction-counterexample-no-deletion
cycle_state: rule-6-stop-active
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A + arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
tested_certificate: W7 row closedness plus W8 payer coordinate implies W9 shift hull
result: refuted-as-deletion
---

# Static row closedness does not build the W9 shift hull

## Physical sentence

The same retained Navier-Stokes packet can have legal record rows at each
material-time slice and a carried zero-payer coordinate, while its labels,
defects, or service readout oscillate too fast in material time to form one
compact shift-continuous certificate path. Pointwise row legality is not yet a
material-time trajectory.

## Cross-wall attempt

Open frontier: W3, W7, W8, W9.

Attempted cross-wall certificate: W7's retained row-graph closedness plus W8's
Gate2 / payer coordinate consumes W9, because the certificate is just the
record's legal rows read along material time.

Failure in one sentence: W7 and W8 give pointwise/static row and payer
closedness, while W9 requires compactness of paths in material time plus
continuous fixed shifts/action on the closure.

## Source check

The W9 shift-hull source assumes certified paths
\[
Z_j:I_j\to X
\]
and requires the shifted family to be compact in
\[
C_{\rm loc}(\mathbb R;X)
\]
or in a weak certificate-path topology where fixed shifts are continuous. Only
then does the abstract shift-hull lemma prove
`MaterialTimeCertificateFlowInvariance.A`.

The zero-surplus source proves a closed graph only after every payer is carried
as a nonnegative finite measure or lower-semicontinuous defect coordinate on
the compact certificate state space, with terminal-window no-escape. It does
not construct the path topology.

The B3 audit states the gap directly: the checked WKB/certificate notes give
static compactness criteria, but they do not install a material-time
semigroup/action on the lifted certificate family.

The W7 retained-row obstruction is also static. It asks for pressure source,
pressure row, material-frame rows, material-time rows, and positive VPI service
to pass through a critical compactness limit, or for the lost row to be paid or
routed out. That is the right row-passage theorem, but it is not yet a uniform
material-time modulus or cocycle law for the whole path.

## Abstract counterexample

Let
\[
X=S^1,
\qquad
\mathcal G=X,
\]
and let every state be a legal row state with zero payer. Define continuous
actual certificate paths on each compact interval by
\[
Z_n(t)=e^{int}.
\]

Every time-slice lies in the closed legal graph \(\mathcal G\). The zero-payer
coordinate is closed and identically zero. The state space \(X\) is compact.
Thus the static row and payer tests all pass.

But the family \(\{Z_n\}\) is not precompact in
\[
C([-T,T];S^1)
\]
for any \(T>0\). Uniform convergence would imply equicontinuity. For every
\(\delta>0\), choose \(n\) and \(h\) with \(0<|h|<\delta\) and \(nh=\pi\). Then
\[
d(Z_n(t+h),Z_n(t))=2
\]
at suitable \(t\). No common material-time modulus exists.

Therefore compact state-space closedness plus pointwise row legality plus zero
payer does not imply `CertifiedMaterialTimeShiftHullCompactness.A`. It also
does not produce the material-time action on the compactified certificate
family. A proof of W9 needs a real time-regularity input: uniform
local-BV/tightness, equicontinuity, or an explicit defect-cocycle law for the
law, ancestry, cover, tower, service, selector, payer, and terminal-window
coordinates, with typed route-out when that time-regularity fails.

## Gate result

This counterexample is not a Navier-Stokes counterexample. It is a proof that
the proposed deletion certificate is too weak: static W7/W8 coordinate closure
cannot be the certificate for W9. The Navier-Stokes theorem still has to supply
the uniform material-time path regularity/cocycle or route failure through the
standing legal/stop/selector/Pack/Part/Field defects.

DELETED: none.
CERTIFICATE: Static W7 row-graph closedness plus W8 payer-coordinate closure cannot imply W9: compact pointwise certificate states and zero payer do not give a compact shift-continuous path hull. The counterexample \(Z_n(t)=e^{int}\) in \(X=S^1\) has closed legal rows and zero payer at every time but no compact \(C_{\rm loc}\) shift hull, so W9 still requires a uniform material-time modulus/BV/cocycle or a typed route-out for its failure.
REMAINING: W3, W7, W8, W9.
