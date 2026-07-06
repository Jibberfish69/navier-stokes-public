---
theorem_id: forward-gold-k3-two-tube-lifetime-tv-reduction-20260705
status: exact-conditional-two-tube-lifetime-tv-reduction-not-duration-cap
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant / goal item 1 (K3 lifetime transport)
target_object:
  - K3.TwoTubeLifetimeTVReduction
  - TimeCancellation.NO_in_TV_currency
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-combined-instantaneous-eviction-floor-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kill-integral-crow-reduction-20260705.md
completion_truth: >-
  Exact conditional lifetime reduction on the leading-order two-tube
  profile, not a duration cap and not a full-family constant. If an
  episode is represented a.e. in time by the instantaneous two-tube
  profile and the geometric-exit tax is measured as total variation of
  the full eviction vector E=(tau_y,tau_n,B_d) on the same producing
  arclength measure, then the pointwise floor E >= sigma/3 integrates to
  Production_+ <= 3 * TV_Evict. Direction reversal, oscillation, and
  signed time cancellation cannot erase this tax because total variation
  counts the path length of geometric exit rather than endpoint
  displacement. What remains open is the duration/budget problem: a
  two-tube profile could still persist if the total geometric-exit
  variation is not itself bounded or consumed by the record economy.
  Remaining gates: curve-profile persistence, off-profile/core
  corrections, high-Re neutral-edge timing, custody/return-race budget,
  crowd/bath interaction, and octave composition. No per-encounter cap,
  confinement-constant decision, or MPP closure is claimed.
---

# K3 two-tube lifetime total-variation reduction

## 1. Currency

The combined instantaneous floor is

\[
\mathcal E(x,t)\ge \frac13\,\sigma_+(x,t)
\tag{K3TV.1}
\]

on the producing half of the leading-order two-tube profile, with

\[
\mathcal E^2=|\tau_y|^2+|\tau_n|^2+B_d^2.
\]

Here \(\mathcal E\) is a geometric-exit rate: axis rotation plus normal
curve leakage. The right lifetime currency for this rate is total
variation, not net displacement.

## 2. Conditional episode class

Consider an episode \(0\le t\le T\) for which, at a.e. time, the
active producing region is represented by the leading-order two-tube
profile with parameters \(d(t),\beta(t),\gamma(t),\Gamma(t)\), and
arclength measure \(ds\). Define

\[
\mathrm{Prod}_+(T)
:=
\int_0^T\int_{\mathrm{prod}(t)}
\sigma_+(s,t)\,ds\,dt,
\]

and

\[
\mathrm{TV}_{\rm evict}(T)
:=
\int_0^T\int_{\mathrm{prod}(t)}
\mathcal E(s,t)\,ds\,dt.
\]

The same measure is used on both sides. This is the same-packet
requirement in its simplest two-tube form.

## 3. Integrated consequence

Integrating (K3TV.1) immediately gives

\[
\boxed{
\mathrm{Prod}_+(T)\le 3\,\mathrm{TV}_{\rm evict}(T)
}
\tag{K3TV.2}
\]

for every such episode.

No sign choice appears in (K3TV.2). If the eviction vector reverses
direction later, the total variation still counts both motions. Thus
time-cancellation and re-posing by reversal do not erase the tax inside
this two-tube total-variation currency.

## 4. What this does not buy

This is not a per-encounter cap. It controls production by total
geometric motion, but it does not by itself bound that total motion.
A long-lived high-Re episode could still keep paying and keep producing
unless another mechanism consumes or caps the TV budget. That remaining
mechanism is exactly the high-Re return-race / custody / sideband-crowd
economy already named in the goal ledger.

It is also not a full-field theorem. It assumes the active producing
region stays represented by the leading-order two-tube profile and that
the composition ledger accepts \(\mathrm{TV}_{\rm evict}\) as the tax
currency on the same packet.

## 5. Four-sentence result

The two-tube instantaneous vector floor integrates cleanly in total
variation. On any leading-order two-tube episode,
\(\mathrm{Prod}_+\le 3\,\mathrm{TV}_{\rm evict}\). This kills
time-cancellation inside that TV currency because reversal adds path
length instead of subtracting it. The remaining K3 burden is not
cancellation; it is bounding or consuming the total eviction variation
through duration, high-Re timing, custody, crowds, and composition.
