---
theorem_id: forward-gold-no-retained-nonendpoint-invisible-square-bill-reduction-20260629
status: nonendpoint-no-survivor-reduction-installed; strict-gold-terminal-storage-open
created: 2026-06-29
problem: navier-stokes
route: forward-gold affine Schur accretivity edge / MPP participation law
supports:
  - SignedHighHighCurrentSquareAdmission.A
  - SameCarrierInvisibleSquareRefinementAdmission.A
  - BoundedBelowSameMaterialServiceStorage.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-high-parent-current-admission-identity-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-output-bellman-upcrossing-storage-proof-plan-20260628.md
completion_truth: >-
  This proves the retained nonendpoint no-survivor reduction after first-entry,
  return, motion, viscosity, legal, and stop are removed. It does not claim strict
  Gold closure: the terminal full-packet no-atom/no-jump storage remains the
  forward Gold producer, while endpoint failure is consumed only in the
  same-witness CM pass-or-exit branch.
---

# No retained nonendpoint invisible square bill

## Statement

Work in the full-output one-point selector for the original
pressure-viscosity-incompressibility-velocity packet. Let \(P\) be a stopped
same-material parent packet and let

\[
dq_i=b_i\,dt+dR_i,
\qquad c_i=b_i^+,
\]

after the full pressure-Hodge, cutoff/collar, material-frame, low/high routing,
viscosity, legal, and stop decomposition has already been made. Split

\[
V_i=\{q_i^+\ge \eta\nu^{-1}c_i\},
\qquad
Z_i=\{q_i^+<\eta\nu^{-1}c_i\}.
\]

Assume a retained selected bill on \(Z_i\) remains after first-entry Bessel
novelty, return, motion, viscosity, legal, and stop have been removed. If the
bill is not on the same-witness terminal endpoint face, then it cannot survive
as an unpaid invisible square bill.

Equivalently,

\[
\text{retained nonendpoint invisible square bill}
\Longrightarrow
\text{first-entry, Schur-current, return, motion, viscosity, legal, stop, or endpoint.}
\]

After the listed nonendpoint channels are removed, no retained nonendpoint
survivor remains.

## Proof

The visible part is already paid. On \(V_i\),

\[
\nu^{-1}\int_{V_i}c_i^2\,dt
\le
\eta^{-1}\int_{V_i}q_i^+c_i\,dt,
\]

so any survivor lies in \(Z_i\), where the selected square is large relative to
the admitted current response.

Choose a minimal retained survivor \(B\subset Z_i\). Minimal means deleting any
retained child destroys the alleged order-one selected bill. The direction read
by \(B\) is not allowed to be merely a raw catalogue direction. If its paid
current component is zero, its first positive production is first-entry novelty
relative to the paid parent-current span and is Bessel-paid. Since first-entry is
removed, the direction has already entered the paid current. The current has
therefore been updated,

\[
m\mapsto m+\delta a,
\qquad
G^{-1}m\mapsto G^{-1}m+\delta G^{-1}a,
\]

and repeated production in that coordinate is retained Schur current work.

If the second read is the same unchanged current read, minimality is contradicted:
the selected family has counted the same original parent-current read twice
without changing the pressure-viscosity-incompressibility history. Thus a true
survivor must move to a strict active subblock. Density selection gives

\[
B_0\supset B_1\supset B_2\supset\cdots,
\qquad
|I_{B_{n+1}}|\le \lambda |I_{B_n}|,
\qquad
\Omega_{B_{n+1}}\ge c\,\Omega_{B_n},
\]

with \(0<\lambda<1\), no first-entry novelty, no return, no motion, no viscosity
payment, no legal loss, and no stop.

The nested retained carriers have a limit time \(t_\infty\). If
\(t_\infty<T_*\), the original solution is smooth on a compact neighborhood of
the limit carrier. The full selected packet

\[
D_B=(S,\Pi_B^{act}\nabla_A^2p)
\]

is therefore bounded in ordinary smooth norms there, and the scale-critical bill
on shrinking heat cylinders vanishes:

\[
\Omega_{B_n}
\lesssim
\|S\|_{L^\infty}^2|Q_{B_n}|^{4/5}
+
\|\nabla_A^2p\|_{L^\infty}^2|Q_{B_n}|^{8/5}
\longrightarrow0.
\]

This contradicts \(\Omega_{B_{n+1}}\ge c\Omega_{B_n}\) for an order-one retained
bill. Hence the descent cannot accumulate at an interior time. Its only possible
limit is \(t_\infty=T_*\), the same-witness endpoint face.

Therefore every retained invisible square survivor after first-entry, return,
motion, viscosity, legal, and stop have been removed is forced onto the
same-witness endpoint face. The retained nonendpoint survivor is impossible.

## Exact scope

This is the no-survivor reduction for the nonendpoint invisible bill. It relies
on the carrier-typed admission/update correction: the one-point current is the
net full-output stress, not positive input-colored clipping.

It does not prove strict forward Gold closure by itself. The endpoint branch is
still the terminal full-packet no-atom/no-jump storage problem in the strict Gold
lane, or the same-witness CM endpoint-face consumer in the pass-or-exit lane.
