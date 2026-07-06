---
theorem_id: forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706
status: strict-reduction-subcell-high-re-edge-typed-not-a-constant
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureSource.SubcellRoomThreshold
  - LocalReynolds.Requires Re_R >> beta^(-4/5)
  - ViscousEdgeBridge.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-curvature-subscale-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-time-persistence-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-same-packet-raw-allocation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
completion_truth: >-
  Strict reduction and threshold obstruction, not a dense-crowd theorem and not
  a confinement-constant decision. The producer-curvature note left the
  subcell/high-Re branch as the condition that a pressure-source cell can sit
  below the producer curvature radius while remaining above the viscous clock.
  Combining the curvature condition D/R <= beta^(2/5) with the persistence
  condition nu/(sD^2) << 1 gives the exact dimensionless threshold
  Re_R=sR^2/nu >> beta^(-4/5). Above that threshold, producer curvature does
  not force an order-one pressure-row payer: one can choose a high-Re subcell
  and stay inside the q=4/5 row. Below that threshold, the local subcell
  construction fails, but that failure is not itself an order-one energy floor;
  it is a viscous/admissibility edge that still needs allocation to
  record-ladder currency, a global pressure construction, or an exclusion.
  Follow-up same-packet raw allocation obstruction checks that raw same-field
  charging still gives only beta^(4/5) of local producer currency; the needed
  allocation is Gate-8 no-recount allocation or a compensator/residue.
  Follow-up supercritical residual scale split adds a distinct Reynolds edge:
  q=4/5 hiding for coherent residual scale theta<=beta^(6/5) requires at least
  Re_D>>beta^(-8/5), and producer-clock persistence requires
  Re_D>>beta^(-12/5).
---

# Overlap bath: subcell Reynolds threshold obstruction

## 1. Kill question

The producer-curvature note reduces the local pressure-source branch to a scale
choice. A pressure cell of scale \(D\) must satisfy two conditions:
\[
  {D\over R}\lesssim \beta^{2/5}
  \tag{SRT.1}
\]
to keep the curvature cross Hessian inside the supplied pressure row, and
\[
  {\nu\over sD^2}\ll1
  \tag{SRT.2}
\]
to persist on the producer clock.

The kill question is whether failure of this subcell room condition already
gives the confinement constant.

The checked answer is negative. It gives a clean threshold, not a constant.

## 2. Exact threshold

Write the viscous length at strain clock \(s\) as
\[
  \ell_\nu:=\left({\nu\over s}\right)^{1/2}.
  \tag{SRT.3}
\]

The persistence condition is
\[
  D\gg \ell_\nu.
  \tag{SRT.4}
\]

The curvature-taming condition is
\[
  D\lesssim R\beta^{2/5}.
  \tag{SRT.5}
\]

A subcell satisfying both exists exactly when
\[
  \ell_\nu\ll R\beta^{2/5}.
  \tag{SRT.6}
\]

Squaring and rewriting gives
\[
  {sR^2\over \nu}\gg \beta^{-4/5}.
  \tag{SRT.7}
\]

Thus the branch is controlled by the local Reynolds number
\[
  \operatorname{Re}_R:={sR^2\over\nu}.
  \tag{SRT.8}
\]

The precise condition is
\[
  \operatorname{Re}_R\gg \beta^{-4/5}.
  \tag{SRT.9}
\]

## 3. Above the threshold

If
\[
  \operatorname{Re}_R\gg\beta^{-4/5},
  \tag{SRT.10}
\]
then there is scale room:
\[
  \ell_\nu\ll D\lesssim R\beta^{2/5}.
  \tag{SRT.11}
\]

The producer-curvature cross term obeys
\[
  |K_{\rm curv}|\lesssim s{D\over R}\sqrt H\lesssim H,
  \tag{SRT.12}
\]
and the pressure-source cell has relative drift
\[
  \beta^{2/5}+{\nu\over sD^2}=o(1)
  \tag{SRT.13}
\]
on one producer clock.

So in the high-Reynolds subcell regime, curvature and persistence do not restore
an order-one pressure-row payer. The pressure row remains at
\[
  E_{\rm ph}\lesssim \beta^{4/5}E_{\rm prod}(D)
  \tag{SRT.14}
\]
at the pressure-cell scale.

## 4. Below the threshold

If
\[
  \operatorname{Re}_R\lesssim\beta^{-4/5},
  \tag{SRT.15}
\]
then every curvature-taming cell
\[
  D\lesssim R\beta^{2/5}
  \tag{SRT.16}
\]
sits at or below the viscous clock:
\[
  {\nu\over sD^2}\gtrsim1.
  \tag{SRT.17}
\]

That kills the local cheap-subcell construction. It does not by itself prove an
order-one energy floor. At the minimal persistent scale
\[
  D\sim\ell_\nu=R\operatorname{Re}_R^{-1/2},
  \tag{SRT.18}
\]
the pressure-source energy relative to a producer packet of radius \(R\) is
\[
  {E_{\rm ph}(D)\over E_{\rm prod}(R)}
  \sim
  \beta^{4/5}\left({D\over R}\right)^5
  =
  \beta^{4/5}\operatorname{Re}_R^{-5/2}.
  \tag{SRT.19}
\]

This expression is not a uniform positive constant in the small-\(\beta\)
regime. The subcell failure is therefore a viscous/admissibility edge, not a
completed confinement-floor proof.

## 5. What this kills

This kills the loose phrase "subcell/high-Re admissibility" as an undefined
remaining branch. The branch has the exact threshold
\[
  \operatorname{Re}_R\gg\beta^{-4/5}.
  \tag{SRT.20}
\]

It also kills a shortcut: one cannot claim that failure of the subcell condition
alone pays the constant in the current energy currency. A further bridge is
needed from
\[
  \operatorname{Re}_R\lesssim\beta^{-4/5}
  \tag{SRT.21}
\]
to Gate-8 no-recount allocation/compensator, viscous suppression of the
producing packet, or impossibility of a global pressure construction.

## 6. What remains

The pressure row now has five typed exits:

- high-Re subcell room:
  \(\operatorname{Re}_R\gg\beta^{-4/5}\), where the local pressure bath remains
  cheap and the exact matrix must be decided by Gate-8 no-recount
  allocation/compensator, supercritical motion, or construction;
- Reynolds-edge bridge:
  \(\operatorname{Re}_R\lesssim\beta^{-4/5}\), where the local subcell fails but
  a proof must still convert that failure into record-ladder payment or
  producer suppression;
- Gate-8 no-recount allocation or compensator:
  raw same-field energy charging remains \(\beta^{4/5}\) of local producer
  currency;
- fine/sparse residual high-Re edge:
  q-row hiding of a coherent supercritical residual forces
  \(\theta\lesssim\beta^{6/5}\), so its own actuation needs
  \(\operatorname{Re}_D\gg\beta^{-8/5}\), and producer-clock persistence needs
  \(\operatorname{Re}_D\gg\beta^{-12/5}\);
- global construction/exclusion:
  a nonlocal pressure bath that avoids the local subcell model, or a proof that
  no such bath is compatible with the true field.

## 7. Four-sentence result

The pressure subcell exists exactly when the viscous length fits below the
curvature-taming scale:
\[
  \left({\nu\over s}\right)^{1/2}\ll R\beta^{2/5}.
\]
Equivalently,
\[
  \operatorname{Re}_R={sR^2\over\nu}\gg\beta^{-4/5}.
\]
Above that threshold, producer curvature and persistence stay inside the cheap
\(q=4/5\) pressure row. Below it, the local subcell construction fails, but the
failure is only a Reynolds-edge obstruction until it is allocated to
record-ladder payment, producer suppression, or a global construction/exclusion.
The later residual scale split adds a stronger hiding demand for coherent
supercritical residuals: staying in the \(q=4/5\) row at
\(\theta\lesssim\beta^{6/5}\) requires the high-Re cascade edge
\(\operatorname{Re}_D\gg\beta^{-8/5}\), or
\(\operatorname{Re}_D\gg\beta^{-12/5}\) on the producer clock.
