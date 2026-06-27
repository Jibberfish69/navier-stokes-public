---
theorem_id: forward-gold-parent-child-reset-critical-weight-countertest-20260627
status: parent-child-reset-countertest-reduces-to-critical-weighted-reset-carleson
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / parent-child reset stress test
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - ParentChildSelectedResetReserve.A
  - CriticalFreshSourceTentCarleson.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
refined_hinge:
  - CriticalWeightedParentChildResetCarleson.A
  - LogScaleResetDerivativeCarrierBound.A
  - ParentChildResetOrRepeatedCoreDichotomy.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-observability-reserve-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-root-reserve-authority-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-record-return-branch-routing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-escape-capacity-lower-bound-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
effect: >-
  Stress-tests the parent-child reset idea against the fresh orthogonal
  half-tail. Raw parent-state reset distance is too weak: it sees finite raw
  source/reset energy while selected action diverges. The reset theorem remains
  the right normal form only after the reset charge is critical-weighted and
  produced from original log-scale derivative / collar-turnstile / exchange
  structure.
---

# Parent-child reset critical-weight countertest

The parent-child reset idea is the right shape, but the charge cannot be raw.
Raw parent-state distance has the same defect as raw pressure-Hodge capacity:
it sees the zeroth moment, while Gold needs the first selected-ratio moment.

This note stress-tests:

```text
ParentChildSelectedResetReserve.A
```

against the half-tail and records the corrected theorem.

## 1. Raw reset distance fails

Suppose a child reset is measured by an unweighted parent-state distance:

```math
J_{\rm raw}(Q\to Q')
\simeq
\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{\rm raw}}^2
+J_{\rm selector/collar}^{raw}(Q\to Q')
+R_{\rm legal}(Q).
\tag{1}
```

This is not enough.  Take fresh orthogonal source directions \(e_\ell\) and set

```math
\|\Delta Z_\ell^{fresh}\|_{\mathcal H_{\rm raw}}^2
=
\nu_\ell
=
{2^{-\ell}\over \ell+1}.
\tag{2}
```

The raw reset sum is finite:

```math
\sum_\ell J_{\rm raw,\ell}
\lesssim
\sum_\ell\nu_\ell
<\infty.
\tag{3}
```

But the selected action is the first-ratio weighted sum:

```math
\sum_\ell A_\ell^{sel}
\simeq
\sum_\ell 2^\ell\nu_\ell
=
\sum_\ell {1\over \ell+1}
=\infty.
\tag{4}
```

This countertest uses genuinely fresh directions.  It does not violate spent
source projection or same-direction nonreuse.  Therefore the problem is not only
reuse.  The problem is the missing selected heat-scale weight.

The same test is the shrinking affine-core obstruction in abstract Hilbert
coordinates: each new child is fresh, raw cost is summable, and selected action
diverges.

## 2. Correct reset charge

The reset charge must be critical-weighted:

```math
J_{\rm crit}(Q\to Q')
\simeq
w(Q')
\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{\rm raw}}^2
+J_{\rm select/lock}^{crit}(Q\to Q')
+J_{\rm collar/turn}^{crit}(Q\to Q')
+R_{\rm legal}(Q),
\tag{5}
```

where \(w(Q')\) is the selected first-ratio / heat-scale weight.  The local
lower edge then reads:

```math
A_{\rm sel}^{fresh}(Q')
\le
CJ_{\rm crit}(Q\to Q')
+C\langle U_Q,\mathsf S_Q^{stop}U_Q\rangle
+C\Omega_Q^{strain/ex}
+CD_Q^{vis/rad}
+R_{\rm legal}(Q).
\tag{6}
```

With `(5)`, the half-tail countertest no longer passes locally:

```math
J_{\rm crit,\ell}
\simeq
2^\ell\nu_\ell
=
{1\over \ell+1}.
\tag{7}
```

So the issue moves to the root bound:

```math
\sum_{Q\subseteq P}\sum_{Q'\in ch_{\rm stop}(Q)}
J_{\rm crit}(Q\to Q')
\le
C_N(u_0)+R_{\rm legal}(P).
\tag{8}
```

Equation `(8)` is exactly the global producer in reset language.  It is the
same burden as `CriticalFreshSourceTentCarleson.A` /
`OriginalHistorySelectedLogAmplificationCarleson.A`, unless the critical weight
is generated from an independent original-history mechanism.

## 3. What this says about the better idea

The parent-child reset theorem should not be sold as a closure by itself.  It is
a proof normal form:

```text
no reset
  -> repeated-core record/return;

critical reset
  -> fresh weighted parent-child Carleson.
```

This is still useful because it prevents branch drift.  It says the shrinking
core branch is not an arbitrary capacity problem.  It is the critical weighted
fresh-reset part of the same original-history root reserve.

But the theorem is noncircular only after we prove where the weight comes from.

## 4. Plausible noncircular source of the weight

The current best source is not static state distance.  It is log-scale
derivative / turnstile motion.  A genuinely fresh selected child at a smaller
scale should force motion of the parent-child state in logarithmic scale:

```math
\Delta Z_{Q\to Q'}^{fresh}
\approx
\int_{\log r(Q')}^{\log r(Q)}
\partial_\sigma Z(\sigma)\,d\sigma
+\text{collar/turnstile}
+\text{exchange}
+\text{legal}.
\tag{9}
```

The needed theorem is:

```text
LogScaleResetDerivativeCarrierBound.A
```

in the form

```math
\sum_{Q\subseteq P}\sum_{Q'\in ch_{\rm stop}(Q)}
w(Q')
\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{\rm raw}}^2
\le
C
\int_{\mathcal C(P)}
\left(
|\partial_\sigma Z|^2
+|\mathrm{turnstile}_\sigma|^2
+|\mathrm{exchange}_\sigma|^2
\right)d\sigma dt
+R_{\rm legal}(P).
\tag{10}
```

Then the original-history estimate for the right side would give `(8)`.

This is the same mathematical family as the current paired-carrier / Volterra
route.  The reset charge must be generated before terminal selected-tail
formation, through scale derivative, collar-turnstile motion, same-material
exchange, or the DER/AQK paired-carrier mechanism.  Defining the critical norm
from the future selected descendants would be circular.

## 5. Result

The sharpened next hinge is:

```text
CriticalWeightedParentChildResetCarleson.A
```

Statement:

For a retained stopped laminar tree, after spent-source projection, silent-source
normal form, paid selector/reselection, repeated-core record/return removal, and
legal exits, every genuinely fresh parent-child selected reset carries a
critical weighted original-history charge, and the total such charge is
Carleson from the original smooth data.

Equivalently:

```math
\sum_{Q\subseteq P}\sum_{Q'\in ch_{\rm stop}(Q)}
J_{\rm crit}(Q\to Q')
\le
C_N(u_0)+R_{\rm legal}(P).
\tag{11}
```

This is the exact version of the parent-child reset idea that survives the
half-tail.  Raw reset distance, raw pressure-Hodge capacity, and raw fresh
Bessel geometry all fail the same test.
