---
theorem_id: forward-gold-overlap-bath-time-dependent-collar-scaling-obstruction-20260706
status: strict-reduction-time-dependent-collar-scaling-floor-killed-exact-unforced-matrix-remains
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - OverlapBath.TimeDependentCollarFloor.NO-BY-SCALING
  - LocalizedAffinePacket.RetuningPower.CHEAP
  - ExactUnforcedGlobalMatrix.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-affine-jet-static-energy-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-affine-material-jet-insufficiency-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
completion_truth: >-
  Strict reduction and scaling obstruction, not a dense-crowd theorem and not a
  confinement-constant decision. After the local affine dynamic obstruction,
  the first global place to look is the time-dependent cutoff/Hodge collar.
  For a compact divergence-free localized affine packet of support scale D and
  strain size G=|A|, the older global-matching audit gives energy scale
  G^2 D^5. Because the localized packet and Hodge correction are linear in A,
  retuning the packet gives time-derivative power scale G |dot A| D^5. The
  affine pressure/convective work is at scale G^3 D^5, and viscous collar work
  is at scale nu G^2 D^3. For the overlap demand G=s beta^(4/5), D comparable
  to the producer scale, and retuning on the producer clock |dot A|~sG, the
  per-e-fold retuning cost is G^2D^5~beta^(8/5)E_prod; the A^2 and viscous
  collar terms are no larger in the high-Re overlap regime. Thus a generic
  time-dependent collar-matching cost does not restore an order-one floor. This
  is not an exact unforced Navier-Stokes construction. It leaves the narrower
  exact-matrix burden: unforced evolution, nonlocal pressure/Hodge interaction
  with signs, same-packet allocation, or an admissible dynamic bath schedule.
  Follow-up pressure-source scaling raises the pressure-Hessian retuning row to
  beta^(4/5)E_prod, still below an order-one floor.
---

# Overlap bath: time-dependent collar scaling obstruction

## 1. Kill question

The local affine dynamic note says the strain history \(A(t)\) is locally
Navier-Stokes-admissible. The static affine note says a trace-free overlap jet
has a compact divergence-free realization at energy \(O(G^2D^5)\).

The next possible floor is the time-dependent collar: perhaps changing the
compact realization in time forces an order-one matching cost even though the
center jet is locally legal.

This pass checks that possible floor at scaling level.

## 2. Localized affine packet as a linear operator

Fix support scale \(D\). Let \(T_D\) denote the standard cutoff plus
Hodge/Bogovskii correction from the localized affine global-matching audit:
\[
  u_A=T_D(A).
  \tag{OBTC.1}
\]

It is divergence-free, compactly supported at scale \(D\), and agrees with
\[
  A(x-x_0)
  \tag{OBTC.2}
\]
on the producer ball. The construction is linear in \(A\). Its scale bounds are
\[
  |u_A|\lesssim GD,\qquad
  |\nabla u_A|\lesssim G,\qquad
  |\nabla^2u_A|\lesssim G/D,
  \tag{OBTC.3}
\]
where \(G=|A|\). Hence
\[
  E_A:=\int |u_A|^2
  \lesssim
  G^2D^5.
  \tag{OBTC.4}
\]

## 3. Retuning power

For a time-dependent strain \(A(t)\),
\[
  \partial_tu_A=T_D(\dot A).
  \tag{OBTC.5}
\]

Thus
\[
  |\partial_tu_A|\lesssim |\dot A|D.
  \tag{OBTC.6}
\]

The work scale of retuning the packet is
\[
  P_{\rm tune}
  :=
  \int |u_A|\,|\partial_tu_A|
  \lesssim
  G|\dot A|D^5.
  \tag{OBTC.7}
\]

Over one relative retuning time
\[
  \tau_{\rm tune}\sim G/|\dot A|,
  \tag{OBTC.8}
\]
the accumulated retuning work is
\[
  W_{\rm tune}
  \lesssim
  G^2D^5.
  \tag{OBTC.9}
\]

So the time-dependent collar retuning cost is the same size as the cheap bath
energy itself. It is not an automatic order-one tax.

## 4. Spatial Navier-Stokes residual scales

The convective term obeys
\[
  |(u_A\cdot\nabla)u_A|\lesssim G^2D,
  \tag{OBTC.10}
\]
and therefore
\[
  P_{\rm conv}
  :=
  \int |u_A|\,|(u_A\cdot\nabla)u_A|
  \lesssim
  G^3D^5.
  \tag{OBTC.11}
\]

The affine pressure Hessian has size
\[
  |\nabla p|\lesssim (|\dot A|+G^2)D,
  \tag{OBTC.12}
\]
so the pressure work at this scaling is
\[
  P_{\rm press}
  \lesssim
  (G|\dot A|+G^3)D^5.
  \tag{OBTC.13}
\]

The collar viscosity gives
\[
  P_{\rm visc}
  :=
  \int |u_A|\,|\nu\Delta u_A|
  \lesssim
  \nu G^2D^3.
  \tag{OBTC.14}
\]

Equivalently, over a producer-clock time \(s^{-1}\),
\[
  W_{\rm visc}
  \lesssim
  \frac{\nu}{sD^2}G^2D^5.
  \tag{OBTC.15}
\]

This is the cheap bath energy multiplied by the local inverse Reynolds factor.

## 5. Overlap-bath substitution

For the overlap bath,
\[
  G=s\beta^{4/5}.
  \tag{OBTC.16}
\]

The producer energy at the same scale is
\[
  E_{\rm prod}\sim s^2D^5.
  \tag{OBTC.17}
\]

Therefore
\[
  E_A\lesssim G^2D^5
  =
  s^2\beta^{8/5}D^5
  \sim
  \beta^{8/5}E_{\rm prod}.
  \tag{OBTC.18}
\]

If the bath retunes on the producer clock,
\[
  |\dot A|\sim sG,
  \tag{OBTC.19}
\]
then one producer e-fold costs
\[
  W_{\rm tune}\lesssim G^2D^5
  \sim
  \beta^{8/5}E_{\rm prod}.
  \tag{OBTC.20}
\]

The quadratic affine terms contribute over the same clock
\[
  W_{\rm quad}
  \lesssim
  \frac{G^3D^5}{s}
  =
  \beta^{12/5}E_{\rm prod},
  \tag{OBTC.21}
\]
and the viscous collar work contributes
\[
  W_{\rm visc}
  \lesssim
  \frac{\nu}{sD^2}\,\beta^{8/5}E_{\rm prod}.
  \tag{OBTC.22}
\]

Thus the time-dependent collar does not turn the cheap overlap bath into an
order-one payer.

## 6. What this kills

This kills a second global shortcut: the confinement floor cannot be proved
from the mere fact that the local affine bath must be cut off, divergence-free
matched, and retuned in time. Those operations preserve the same cheap
\(\beta^{8/5}\) ratio at scaling level.

The note does not produce an unforced Navier-Stokes solution. It estimates the
cost of the compact time-dependent affine ansatz and its residuals.

## 7. What remains

The remaining overlap-bath burden is narrower. A successful floor theorem must
use a mechanism not present in the generic collar scaling:

- an exact unforced evolution obstruction for the time-dependent localized
  affine packet;
- a nonlocal pressure/Hodge sign or phase constraint not visible in the norm
  scaling;
- same-packet allocation that charges the bath work in record-ladder currency;
- an exact joint matrix that forces non-shallowing accumulated smallness;
- or a proof that every summability-valid bath schedule fails in the true
  field.

The opposite outcome remains available: an admissible dynamic bath construction
with the scaling above would be an exit-II candidate.

## 8. Four-sentence result

The time-dependent cutoff/Hodge collar does not restore the confinement floor
by scaling. A localized affine bath with strain size \(G\) and support scale
\(D\) has energy \(O(G^2D^5)\) and retuning power \(O(G|\dot A|D^5)\), so one
relative retune costs \(O(G^2D^5)\). For the overlap demand
\[
  G=s\beta^{4/5},
\]
that cost is \(\beta^{8/5}\) of the producer energy, with quadratic and viscous
collar terms no larger in the high-Re overlap regime. The remaining decision
is exact and material: unforced evolution, nonlocal pressure/Hodge structure,
same-packet allocation, or a real dynamic bath construction.
