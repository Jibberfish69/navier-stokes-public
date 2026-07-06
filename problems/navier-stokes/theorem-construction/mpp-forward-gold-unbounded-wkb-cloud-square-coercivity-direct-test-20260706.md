---
theorem_id: forward-gold-unbounded-wkb-cloud-square-coercivity-direct-test-20260706
status: direct-square-coercivity-fails-by-uniform-fragmentation
created: 2026-07-06
problem: navier-stokes
route: forward-gold / terminal WKB admission / unbounded-count atomic cloud
target_object:
  - UnboundedWKBCloudSquareCoercivity.A
  - AtomicWKBUnboundedCountCloudBranch
  - AtomicWKBFragmentationDefect.A
  - AtomicWKBNeighborhoodCarrierAdmission.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-atomic-wkb-prelimit-quantization-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-many-cell-wkb-quantization-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-domination-to-same-carrier-spacetime-ui-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-no-spreading-l2-transfer-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-to-source-square-upgrade-direct-test-20260621.md
completion_truth: >-
  Failed direct proof and strict reduction only. The unbounded-count WKB atomic
  cloud carries a positive total selected moment, but that is an L1 fact. If
  the cloud splits over M_j effective cells with cell moments A_{j,b}>=0 and
  total sum at least a_*/2, then uniform fragmentation
  A_{j,b}=a_*/(2M_j) preserves the total moment while max_b A_{j,b}->0 and
  sum_b A_{j,b}^2=a_*^2/(4M_j)->0. Therefore total cloud moment plus the
  many-cell WKB parameter window does not produce a count-free same-carrier
  square reserve. This blocks the cheap square-coercivity rescue of the
  unbounded-count atomic branch. It does not refute a genuine Navier-Stokes
  no-free-fragmentation theorem, a same-carrier source-square domination
  theorem, a uniform L2 transfer theorem, or admission of the whole shrinking
  cloud as a profile-level terminal witness. It proves no WKB construction or
  exclusion and no MPP closure.
---

# Unbounded WKB cloud square-coercivity direct test

## 1. Target

The many-cell WKB quantization obstruction left the surviving atomic branch in
the unbounded-count case:
\[
  M_j=N_{\rm eff}(j)\to\infty,
  \qquad
  \sum_{b=1}^{M_j} A_j(P_{j,b})\ge {a_\ast\over2}.
  \tag{UC.1}
\]

Here the \(P_{j,b}\) are actual effective same-solution packet cells inside
the shrinking atomic phase tube, and \(A_j(P_{j,b})\ge0\) is the selected
positive WKB moment carried by that cell.

The question is whether the unbounded cloud itself forces a square reserve:
\[
  \sum_{b=1}^{M_j} A_j(P_{j,b})^2\ge c>0
  \tag{UC.2}
\]
or an equivalent same-carrier \(L^2\) / source-square reserve with a
count-independent lower bound.

## 2. Moment algebra

The lower bound (UC.1) is an \(L^1\) statement. For nonnegative numbers with
fixed total mass \(A_j\), the smallest possible square sum occurs when the
mass is evenly spread:
\[
  \sum_{b=1}^{M_j} A_j(P_{j,b})^2
  \ge
  {A_j^2\over M_j},
  \tag{UC.3}
\]
and this bound is sharp.

Take the uniform fragmentation model
\[
  A_j(P_{j,b})={a_\ast\over2M_j},
  \qquad
  1\le b\le M_j.
  \tag{UC.4}
\]
Then
\[
  \sum_{b=1}^{M_j} A_j(P_{j,b})={a_\ast\over2},
  \tag{UC.5}
\]
but
\[
  \max_b A_j(P_{j,b})={a_\ast\over2M_j}\to0,
  \qquad
  \sum_{b=1}^{M_j} A_j(P_{j,b})^2
  =
  {a_\ast^2\over4M_j}\to0.
  \tag{UC.6}
\]

So the same model that defeats packet atomization also defeats the direct
per-cell square reserve.

## 3. Compatibility with the WKB survivor

This is not an artificial splitting outside the WKB branch. The many-cell
parameter window requires
\[
  N_{\rm eff}\gtrsim\beta^{-12/5}
  \tag{UC.7}
\]
to avoid the cutoff/Hodge localization payer. The fixed-density support branch
is even more strongly unbounded:
\[
  N_{\rm eff}\sim\theta^{-3},
  \qquad
  \theta\lesssim\beta^{6/5}.
  \tag{UC.8}
\]

Thus \(M_j\to\infty\) is exactly the surviving beta-small WKB cloud regime.
The direct square calculation gives no count-free lower bound there:
\[
  \sum_b A_{j,b}^2
  \lesssim
  {1\over N_{\rm eff}}
  \lesssim
  \beta^{12/5}
  \to0
  \tag{UC.9}
\]
under uniform cloud fragmentation.

## 4. Relation to the existing source-square wall

The June source-square bridge already separated the consumer from the
producer. If a square-controlled same-carrier density \(G_j\) satisfies
\[
  a_j\le C_{\rm car}G_j+\ell_j,
  \qquad
  \sup_j\int G_j^2<\infty,
  \tag{UC.10}
\]
then the source-square bridge gives the spacetime uniform-integrability
consumer. The missing piece is production and same-carrier identification.

The square no-spreading note says the same thing in transfer language: linear
mass/current preservation is not enough; the donor-to-receiver map needs a
uniform \(L^2\) transfer bound.

The unbounded WKB cloud supplies only the linear total moment (UC.1). It does
not supply (UC.10), a uniform \(L^2\) transfer bound, or a count-free lower
bound on \(\sum_bA_{j,b}^2\).

## 5. What remains

The unbounded-count atomic WKB branch is now narrower:
\[
\begin{array}{ll}
\text{cloud-level admission}
  &\text{admit the shrinking phase-tube cloud as a terminal witness},\\[1mm]
\text{no-free-fragmentation}
  &\text{prove the actual NS cloud cannot realize uniform fragmentation},\\[1mm]
\text{strong square theorem}
  &\text{produce a same-carrier }L^2\text{ or source-square density not equal}\\
  &\text{to the naive per-cell moment square},\\[1mm]
\text{fragmentation defect}
  &\text{accept positive limiting atom with no prelimit packet or square reserve}.
\end{array}
\tag{UC.11}
\]

The terminal Sobolev Field readout is not contradicted by this failure. That
consumer uses the linear total WKB moment \(\phi D^3|K|\) after same-solution
witness admission. The square route tested here was a possible producer
substitute for admission; it is not the Sobolev consumer itself.

## 6. State

This note proves a failed direct proof and a strict reduction. From total
unbounded-cloud moment alone, square coercivity does not follow. The uniform
fragmentation model preserves the WKB atomic moment while making every packet
moment and the naive per-cell square reserve vanish.

It proves no no-free-fragmentation theorem, no same-carrier source-square
domination theorem, no uniform \(L^2\) transfer theorem, no cloud-profile
admission theorem, no general `ActualWKBCarrierExtraction.A`, no WKB
construction/exclusion theorem, no F4/F5 pass, no manuscript completion, and no
MPP closure.
