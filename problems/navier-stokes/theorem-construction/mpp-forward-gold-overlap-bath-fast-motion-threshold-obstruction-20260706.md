---
theorem_id: forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706
status: strict-reduction-faster-than-producer-label-sharpened-to-beta-threshold
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureSource.FastMotionThreshold
  - OrderOneFloor.Requires omega/s >= beta^(-4/5)
  - ExactMatrix.SupercriticalMotionOrConstruction.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-fast-direction-tracking-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-time-dependent-collar-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-curvature-subscale-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-same-packet-raw-allocation-obstruction-20260706.md
completion_truth: >-
  Strict reduction and threshold computation, not a dense-crowd theorem and not
  a confinement-constant decision. The previous notes left "faster-than-
  producer forced tracking" as a possible pressure-row payer. This note prices
  that phrase. In the fixed shear-cell bank, tracking a pressure Hessian K whose
  direction changes at rate omega costs power omega |K|D^5, so over one
  producer clock the work is (omega/s)|K|D^5. With |K|~s^2 beta^(4/5), this is
  (omega/s) beta^(4/5) E_prod. Therefore merely faster-than-producer motion is
  not enough. An order-one floor requires omega/s >= c beta^(-4/5), equivalently
  a supercritical fast-motion demand. The installed local-affine and pressure
  notes do not force that rate; they only allow it. The remaining pressure-row
  branch is now sharper: prove the exact matrix forces supercritical motion,
  prove such motion is impossible/admissibility-failing in the real field, or
  exhibit a summability-valid construction below the threshold. Follow-up
  subcell Reynolds threshold obstruction types admissibility failure as
  Re_R=sR^2/nu not exceeding beta^(-4/5); that failure still needs a
  record-ladder allocation, producer-suppression bridge, or construction
  exclusion. Follow-up same-packet raw allocation obstruction says raw same-field
  charging remains beta^(4/5) of local producer currency, so the allocation
  branch is Gate-8 no-recount allocation or compensator, not raw energy
  co-presence.
---

# Overlap bath: fast-motion threshold obstruction

## 1. Kill question

The fast-direction note killed producer-clock direction tracking as an
order-one floor. It left a phrase:
\[
  |\dot K|\gg s|K|.
  \tag{FMT.1}
\]

That phrase is too coarse. The kill question is whether any motion faster than
the producer clock restores the confinement floor, or whether only a much
faster threshold can do it.

The checked answer is the second one.

## 2. Fixed-bank tracking law

Use the fixed finite shear-cell bank from the fast-direction note:
\[
  K(t)=\sum_m c_m(t)K_m,
  \qquad
  \sum_m|\dot c_m(t)|\lesssim |\dot K(t)|.
  \tag{FMT.2}
\]

Let
\[
  \omega:={|\dot K|\over |K|}.
  \tag{FMT.3}
\]

Changing one coefficient by \(dc\) costs \(|dc|D^5\). Hence the tracking power
for the whole bank is
\[
  P_{\rm track}
  \lesssim
  |\dot K|D^5
  =
  \omega |K|D^5.
  \tag{FMT.4}
\]

Over one producer clock \(s^{-1}\),
\[
  W_{\rm track}
  \lesssim
  {\omega\over s}|K|D^5.
  \tag{FMT.5}
\]

This is the exact threshold law.

## 3. Overlap substitution

For the overlap pressure row,
\[
  |K|\sim s^2\beta^{4/5}.
  \tag{FMT.6}
\]

The producer energy at the same scale is
\[
  E_{\rm prod}\sim s^2D^5.
  \tag{FMT.7}
\]

Therefore
\[
  {W_{\rm track}\over E_{\rm prod}}
  \lesssim
  {\omega\over s}\beta^{4/5}.
  \tag{FMT.8}
\]

Thus tracking becomes order one only at the threshold
\[
  {\omega\over s}
  \gtrsim
  \beta^{-4/5}.
  \tag{FMT.9}
\]

Producer-clock motion has \(\omega/s\sim1\) and costs only
\(\beta^{4/5}E_{\rm prod}\). A ten-times-producer motion is still cheap when
\(\beta\ll1\). The needed motion is supercritical by the full reciprocal
pressure exponent.

## 4. Same threshold from affine-shape motion

The local-affine dynamic note writes an overlap strain as
\[
  A(t)=G(t)S(t),
  \qquad
  G=s\beta^{4/5},
  \qquad |S|=1.
  \tag{FMT.10}
\]

If the shape \(S(t)\) moves at rate \(\Omega\), then
\[
  |\dot A|\sim G\Omega.
  \tag{FMT.11}
\]

The pressure-source row costs
\[
  E_{\rm ph}
  \sim
  |\dot A|D^5
  \sim
  s\beta^{4/5}\Omega D^5.
  \tag{FMT.12}
\]

Relative to \(E_{\rm prod}\sim s^2D^5\),
\[
  {E_{\rm ph}\over E_{\rm prod}}
  \sim
  {\Omega\over s}\beta^{4/5}.
  \tag{FMT.13}
\]

So shape motion of the overlap strain has the same threshold:
\[
  {\Omega\over s}\gtrsim \beta^{-4/5}
  \tag{FMT.14}
\]
is needed for an order-one payer.

## 5. What this kills

This kills "faster than producer" as a sufficient description of a remaining
floor. The remaining branch is not ordinary fast tracking. It is the
supercritical fast-motion theorem:
\[
  \omega\gtrsim s\beta^{-4/5}
  \tag{FMT.15}
\]
forced by the exact matrix.

The installed local-affine note says such motion is locally allowed after the
pressure Hessian is chosen. The installed pressure-source notes say the cost is
linear in the demanded Hessian speed. None of those installed notes forces
(FMT.15).

## 6. What remains

This is not a dynamic bath construction and not a dense-crowd theorem.

The remaining pressure-row burdens are:

- prove the exact matrix forces the supercritical rate
  \(\omega/s\gtrsim\beta^{-4/5}\);
- or prove that any such supercritical demand violates the Reynolds threshold
  \(\operatorname{Re}_R\gg\beta^{-4/5}\) in a way that pays the record ladder or
  suppresses the producer;
- or exhibit a summability-valid dynamic bath schedule with
  \(\omega/s=o(\beta^{-4/5})\);
- and in every case, decide same-packet allocation of pressure-service work
  into record-ladder currency through Gate-8 no-recount allocation or a
  compensator/residue.

## 7. Four-sentence result

Faster-than-producer tracking only matters after a beta threshold. If a supplied
pressure Hessian of size \(K\) turns at rate \(\omega\), the fixed shear-bank
cost over one producer clock is
\[
  W_{\rm track}\lesssim(\omega/s)|K|D^5.
\]
With \(|K|\sim s^2\beta^{4/5}\), this is
\[
  (\omega/s)\beta^{4/5}E_{\rm prod}.
\]
Thus an order-one floor requires \(\omega/s\gtrsim\beta^{-4/5}\); the remaining
question is supercritical fast motion, the Reynolds-edge bridge, Gate-8
allocation/compensator, or construction/exclusion.
