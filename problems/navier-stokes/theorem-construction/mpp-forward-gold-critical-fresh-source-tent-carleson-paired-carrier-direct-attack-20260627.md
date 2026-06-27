---
theorem_id: forward-gold-critical-fresh-source-tent-carleson-paired-carrier-direct-attack-20260627
status: direct-attack-reduces-critical-fresh-tent-to-weighted-paired-carrier-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source tent
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - CriticalFreshSourceTentCarleson.A
  - FreshSourceCriticalScaleMemoryBound.A
  - FreshNativeRootUpperBound.A
refined_hinge:
  - FreshSourceWeightedPairedCarrierBound.A
  - SameMaterialFactorizedTwoScaleFreshSourceCarleson.A
  - SameMaterialDERplusEPFreshSourceRoute.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627.md
  - problems/navier-stokes/thread-trajectories/assess-stirling-for-ns-binomials.yaml
  - problems/navier-stokes/theorem-construction/mcp-centerendpointprojectiondefecttoannulartail-a-globalsamepacketfullclockfromoriginaldata-a-9d0ed185c8.md
  - problems/navier-stokes/theorem-construction/mcp-fullmovingsamematerialservicecarrierthetanl1-a-globalsamepacketfullclockfromoriginaldata-a-cee9b9b065.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-payback-physical-frame-completion-boundary-20260625.md
  - problems/navier-stokes/scale-memory-hardy-volterra-working-note.md
  - problems/navier-stokes/theorem-construction/weighted-tail-flux-lifted-j-sum-audit.md
  - problems/navier-stokes/theorem-construction/middle-band-flux-gap-kernel-theorem.md
  - problems/navier-stokes/theorem-construction/far-corona-carleson-direct-attack.md
  - problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-storage-harmonic-pressure-endpoint-policy-hardstop-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-lp-upgrade-component-seed-assembly-20260621.md
---

# Critical fresh source tent Carleson paired-carrier direct attack

The current hinge is
`CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A`.
The previous note isolated the missing estimate:

```math
\sum_{Q\subset P}w(Q)\|F_Q\|_{\mathcal H_{raw}}^2
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P),
\tag{1}
```

where `F_Q` is the fresh original-history visible/silent/exchange source
increment after spent-source projection and paid branch removals.  This note
attacks `(1)` directly through the scale-memory surfaces.

## 1. What the source refs contribute

The annular payback and center-endpoint projection notes prove attachment:
a terminal center defect is dominated by the tail of the same transported
annular stress/strain carrier.  In formula form, they give a measure domination
of the shape

```math
\mu_{center}((T^*-\theta,T^*])
\le
C\int_{T^*-\Theta(\theta)}^{T^*}\rho_A(t)\,dt.
\tag{2}
```

This is important, but it is conditional on the annular carrier being genuinely
integrable.  The full moving same-material service carrier note records the
surviving estimate:

```math
\int_0^{T^*}\Theta_N(t)\,dt<\infty.
\tag{3}
```

The global full-clock equivalence note confirms the scale: a proof of `(3)`
from original smooth data has continuation strength.  So center-to-annulus
attachment is a consumer/support result for the fresh tent theorem, not the
producer of `(1)`.

## 2. Why endpoint or Hardy upgrades alone are not the producer

The old endpoint hard-stop note gives the same warning in terminal-time
coordinates.  Finite endpoint measure control allows the pulse

```math
a_m(s)=a\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s),
\qquad \tau_m\downarrow0,
\tag{4}
```

which has finite `L^1` mass and infinite Hardy or `L^p`, `p>1`, cost.  The
endpoint `L^p` assembly works only after full-packet order-lock admission plus
same-packet channel super-`L^1` bounds.  Those are not installed as independent
producers.

Therefore the fresh tent theorem should not be rerouted to a raw endpoint
anti-atom or endpoint `L^p` upgrade.  Endpoint language is useful only after the
full same-material packet has already supplied the missing critical weight.

## 3. Scale-memory form of the fresh tent estimate

The fresh source theorem has the same structure as the one-sided scale-memory
surface.  Write the lower-prefix fresh source primitive as

```math
T_r(x,t)
=
\int_0^{r/c_1} z_{fresh}(\ell,x,t){d\ell\over\ell},
\tag{5}
```

where `z_fresh` is the original-history visible/silent/exchange source density
after paid removals and spent-source projection.  The exact scale derivative is

```math
r\partial_rT_r(x,t)=z_{fresh}(r/c_1,x,t).
\tag{6}
```

The tent estimate is a square/Carleson statement for the pairing of a retained
same-material active-scale carrier against this accumulated prefix:

```math
B_r(t)=\langle \Sigma_r^{fresh}(t),T_r(t)\rangle,
\qquad
\int_0^{T^*}\int B_r(t)^2{dr\over r}dt
\le C_N(u_0)+R_{legal}.
\tag{7}
```

This is the continuous analogue of `(1)`.  The derivative identity `(6)` is
real structure, but it does not by itself prove `(7)`: a propagation or paired
carrier inequality is still missing.

## 4. What the weighted tail-flux audit buys

The useful new analytic handle is not a crude Hardy estimate.  The weighted
one-sided `j`-summation gives an explicit scale-gap kernel.  In the dyadic
notation of the tail-flux audit, the lifted term becomes

```math
\mathcal R_{j,lift}^{\sigma}(t)
=
\sum_{k>j+M}2^{-\sigma(k-j)}a_k(t)\mathcal D_k^{\uparrow}(t),
\tag{8}
```

where

```math
\mathcal D_k^{\uparrow}(t)
=
\sum_{\ell\ge k+4}2^{-\sigma(\ell-k)}D_\ell(t).
\tag{9}
```

After the selected square-theorem weight is summed in `j`, the remaining object
is the paired carrier

```math
\int_0^{T^*}
\sum_{k>N+M}2^k a_k(t)\mathcal D_k^{\uparrow}(t)\,dt.
\tag{10}
```

This is exactly the missing selected weight in a more rigid form.  The kernel
`2^{-sigma(k-j)}` is the structural gain; the residual `2^k` is the part that
still has to be paid by the full same-material packet.

## 5. Same-material fresh-source version

Transport `(10)` back to the current stopped carrier.  The next theorem is:

```text
FreshSourceWeightedPairedCarrierBound.A
```

Statement:

For every retained stopped root `P`, after spent-source projection,
selector/reselection payment, silent-source normal form, full-exchange refunds,
entrance/legal, subheat, and recirculation removals, the fresh original-history
visible/silent/exchange source increments admit a same-material paired carrier
bound

```math
\int_0^{T^*}
\sum_{k>N+M}2^k a_k^{fresh}(t)
\mathcal D_k^{\uparrow,fresh}(t)\,dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{11}
```

Here `a_k^{fresh}` is the lower/material fresh source amplitude and
`D_k^{up,fresh}` is the active upper packet stress/dissipation queue generated
by the same original material history.  Neither term may be defined from the
future selected descendant tail.

A continuous equivalent is a coupled two-scale theorem on the exact density

```math
\mathcal A_{\ell,r}^{fresh}(t)
=
\int \widetilde\Sigma_r^{fresh}(x,t)\,z_{fresh}(\ell,x,t)\,dx,
\qquad r\ge c_1\ell.
\tag{12}
```

The known far-corona surfaces show two possible proof routes:

```text
SameMaterialFactorizedTwoScaleFreshSourceCarleson.A
```

which is the same-material version of the factorized two-scale Hardy/Schur
route, or

```text
SameMaterialDERplusEPFreshSourceRoute.A
```

which is the operator route splitting the Volterra square into an exact
scale-derivative remainder plus the finite-band endpoint square.

Both are proof mechanisms for `(11)`.  Neither is installed yet for the stopped
visible/silent/exchange carrier.

## 6. Why this is sharper than the current hinge

`CriticalFreshSourceTentCarleson.A` says the selected-critical root measure is
finite.  `FreshSourceWeightedPairedCarrierBound.A` states where that critical
weight must be paid: in the paired lower-prefix / upper-active carrier before
terminal positive selection.

This avoids three false shortcuts:

```text
raw Bessel/nonuse:
  sees only sum ||F_Q||^2 and misses the selected weight;

endpoint anti-atom:
  reads failure after the full clock has already failed;

full-clock slogan:
  names the continuation-strength theorem without isolating the analytic place
  where the missing factor enters.
```

The paired carrier is smaller than the broad full-clock statement because it is
attached to the fresh-source component left after the stopped visible/silent
exchange and selector reductions.  It is still theorem-grade: it must use the
full pressure-viscosity-incompressibility-velocity packet, not a pressure-only,
viscosity-only, finite-jet, or endpoint-measure proxy.

## 7. Result

This direct attack does not prove `(1)`.  It narrows the next proof unit to:

```text
FreshSourceWeightedPairedCarrierBound.A.
```

Proving `(11)` would imply `CriticalFreshSourceTentCarleson.A`, hence
`FreshNativeRootUpperBound.A`, `StoppedSourceCarrierAndPaidReselection.A`, the
stopped martingale reverse-Holder gain, and the stopped primitive strict
half-barrier break.

Failure of `(11)` has the exact counterprofile: a same-material fresh
visible/silent/exchange lower-prefix source whose raw Bessel mass and endpoint
measure are finite, while the paired selected carrier `(10)` diverges.  That is
the next object to attack, not another local invisible-child, terminal atom, or
raw endpoint upgrade.