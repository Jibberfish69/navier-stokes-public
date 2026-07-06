---
theorem_id: forward-gold-k5-finite-energy-long-packet-routeout-obstruction-20260706
status: finite-energy-localization-alone-does-not-exclude-isolated-k5-edge
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / K5 high-Re edge route-out
target_object:
  - K5FiniteEnergyRouteOut.NO
  - K5LongPacketLeakageRatio.ZERO-LIMIT
  - K5ForcedContamination.RequiresDynamicOrGeometricFloor
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-sideband-trigger-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-high-re-edge-uniform-cap-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-edge-log-viscous-reynolds-split-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-lambda-edge-duffing-viscous-regate-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k5-endpoint-room-reynolds-length-obstruction-20260706.md
completion_truth: >-
  Checked obstruction to one route-out shortcut. The exact isolated K5 edge is
  not finite energy, but finite energy/localization alone does not force an
  order-one sideband, cutoff, or envelope tax. A long localized edge carrier
  eta_L(z)=a_L chi(z/L)e^{ikz}+conjugate has fixed packet energy and fixed
  carrier production after choosing |a_L|^2 L constant, while its envelope
  bandwidth is O(1/L), its first cutoff defect per unit carrier production is
  O(1/(kL)), and its quadratic derivative defect is O(1/(kL)^2). Thus the
  forced-contamination trigger tends to zero as L tends to infinity. This kills
  route-out by static finite-energy localization alone. Same-day endpoint-room
  follow-up shows the high-Re residence does not automatically repair this:
  integrated endpoint/envelope defect remains O(1/(kL)) relative to production,
  and endpoint contact is avoided through the residence if kL exceeds Re. It
  does not construct a retained Navier-Stokes edge packet and does not decide
  the confinement constant; it leaves a record-length cap, endpoint
  recirculation/nonlocal end influence, curve/core instability, crowd
  contamination, or a new unweighted high-Re mechanism as the remaining K5
  route-out burden.
---

# K5 finite-energy route-out: long packets defeat static localization

## 1. Question

The sideband-trigger obstruction left a route-out alternative:

\[
\text{prove that a real finite-energy field cannot realize the isolated
high-Re pure edge.}
\tag{FEL.1}
\]

This note checks the weakest version of that route-out: finite energy or static
localization by itself.

The kill condition is an explicit finite-energy packet family whose leakage
ratio tends to zero:

\[
{\text{localization / sideband defect}\over\text{carrier production}}\to0.
\tag{FEL.2}
\]

## 2. Long localized carrier

Let \(k\sim k_{\rm edge}\) be the Crow edge wavenumber and choose a smooth
cutoff \(\chi\in C_c^\infty(\mathbb R)\), with \(\chi=1\) on \([-1,1]\) and
support in \([-2,2]\). For \(L\gg k^{-1}\), set

\[
  \chi_L(z)=\chi(z/L),
  \qquad
  \eta_L(z)=a_L\chi_L(z)e^{ikz}+\overline{a_L}\chi_L(z)e^{-ikz}.
\tag{FEL.3}
\]

Normalize the packet by

\[
  |a_L|^2L=A^2.
\tag{FEL.4}
\]

Then the packet \(L^2\) size is fixed:

\[
  \int |\eta_L|^2\,dz\sim A^2.
\tag{FEL.5}
\]

The carrier production proxy also stays fixed:

\[
  \mathcal P_L
  \sim
  s\Pi\int |a_L\chi_L|^2\,dz
  \sim
  s\Pi A^2.
\tag{FEL.6}
\]

So this is not a vanishing-production witness.

## 3. Bandwidth and sideband scale

The Fourier transform of the positive carrier is

\[
  \widehat{a_L\chi_L e^{ikz}}(\xi)
  =
  a_LL\,\widehat\chi(L(\xi-k)).
\tag{FEL.7}
\]

Its spectral width around \(k\) is \(O(L^{-1})\). More invariantly,

\[
  {\int (\xi-k)^2
     |\widehat{a_L\chi_L e^{ikz}}(\xi)|^2\,d\xi
   \over
   \int |\widehat{a_L\chi_L e^{ikz}}(\xi)|^2\,d\xi}
  =
  {1\over L^2}
  {\int \zeta^2|\widehat\chi(\zeta)|^2\,d\zeta
   \over
   \int |\widehat\chi(\zeta)|^2\,d\zeta}.
\tag{FEL.8}
\]

Thus any sideband trigger that prices separation from the carrier by a first
moment scales like \(L^{-1}\); any quadratic bandwidth trigger scales like
\(L^{-2}\).

This also corrects a possible misread of the previous sideband coordinate: for
a finite packet on \(\mathbb R\), all spectral mass is technically spread
around \(k\). The relevant trigger is not "not an exact atom"; it is the
separation or difference-frequency strength of that spread. That strength
vanishes as \(L\to\infty\).

## 4. Cutoff and Hodge defect scale

The envelope derivative is

\[
  \partial_z\chi_L={1\over L}\chi'(z/L).
\tag{FEL.9}
\]

Relative to the carrier derivative \(ik\chi_L\), the pointwise cutoff ratio is

\[
  {|\partial_z\chi_L|\over k|\chi_L|}
  \sim {1\over kL}
\tag{FEL.10}
\]

away from the fixed transition collar. Integrated against the packet amplitude,
the first cutoff defect satisfies

\[
  D_L^{(1)}
  \lesssim
  s\int |a_L|^2|\chi_L|\,|\partial_z\chi_L|\,dz
  \lesssim
  s|a_L|^2
  \sim
  {sA^2\over L}.
\tag{FEL.11}
\]

Therefore

\[
  {D_L^{(1)}\over \mathcal P_L}
  \lesssim {C\over L}.
\tag{FEL.12}
\]

A quadratic derivative defect is smaller:

\[
  D_L^{(2)}
  \lesssim
  s\int |a_L|^2|\partial_z\chi_L|^2\,dz
  \lesssim
  {sA^2\over L^2},
  \qquad
  {D_L^{(2)}\over\mathcal P_L}
  \lesssim {C\over L^2}.
\tag{FEL.13}
\]

The same scaling is the filament analogue of the localized Beltrami cell-count
split: localization defects are real in few-cell packets, but they are not an
order-one tax in the many-cell limit \(kL\to\infty\).

## 5. Consequence

Static finite energy does not route out the isolated K5 edge. For every
\(\varepsilon>0\), choose \(L\) large enough that

\[
  {1\over kL}<\varepsilon.
\tag{FEL.14}
\]

Then the packet has finite energy, fixed carrier production proxy, and
localization/sideband defect less than \(\varepsilon\) times production.

So the route-out theorem cannot be:

\[
\text{finite energy}
\quad\Longrightarrow\quad
\text{order-one sideband/cutoff tax}.
\tag{FEL.15}
\]

It must use something stronger:

1. a record-length cap \(kL\lesssim\operatorname{Re}\), or stronger;
2. endpoint recirculation or nonlocal end influence beating the \(1/(kL)\)
   scaling;
3. curve/core instability during the edge residence;
4. crowd contamination forced by the record geometry;
5. a new unweighted high-Re mechanism.

## 6. Four-sentence result

Finite energy alone does not exclude the isolated high-Re K5 edge. A long
localized carrier can keep fixed packet energy and fixed carrier-production
proxy while its bandwidth and cutoff defects scale like \(1/L\) or \(1/L^2\).
Thus localization creates sidebands, but not a fixed sideband tax. Any route-out
of the isolated edge has to be dynamic or geometric: a record-length cap,
endpoint recirculation/nonlocal end influence, curve/core instability, forced
crowd contamination, or a new unweighted high-Re mechanism.
