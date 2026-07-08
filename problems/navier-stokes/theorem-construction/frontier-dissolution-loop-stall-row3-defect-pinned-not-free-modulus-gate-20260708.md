---
theorem_id: frontier-dissolution-loop-stall-row3-defect-pinned-not-free-modulus-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop
status: row3-defect-gate-partial-no-deletion
target_claim: W9 clauses 2-5 are free path-modulus rows because pressure, ancestry, cover, and tower defects vanish or are legally carried on certified paths
open_walls:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-surplus-certificate-closed-graph-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-same-law-tower-defect-fork-20260706.md
---

# Gate on Row 3 defect-pinned rows

Cross-wall failure sentence: W7 is not identical to W9 clauses 2-5, because W7
is retained graph passage/admission through a critical limit, while W9 clauses
2-5 require pressure-law, material-ancestry, finite-cover, and tower defect
coordinates to live in one compact material-time path topology with controlled
legal carriage or typed failure.

Physical sentence: an actual smooth Navier-Stokes window has the pressure law,
material ancestry, finite cover, and differentiated tower it has; the W9
question is whether those rows remain controlled as material-time paths after
passing to the compact certificate hull, where Reynolds stress, transport
current, cover, and derivative-tower defects may appear.

## Source check

The W9 shift-hull note lists the rows explicitly: actual pressure law with
Reynolds defect vanished or legally carried; material ancestry with transport
defect vanished or legally carried; finite/readout-compatible cover data; and
differentiated same-law tower data with derivative graph and flux defects
vanished or legally carried.

The four WKB fork sources are closedness criteria, not free path-modulus
theorems:

1. The pressure-law fork says weak passage creates a Reynolds defect \(R\).
   The ordinary pressure law is recovered only if
   \(\mathbb P\operatorname{div}R=0\) with compatible pressure service, or if
   \(R\) is carried as an admitted same-solution certificate. The file proves no
   legal carriage theorem for the positive energy ballast through ancestry,
   cover, and tower.
2. The ancestry fork says material ancestry closes only through strong enough
   flow/velocity compactness, or through a transport-current defect
   \(A=J-u\rho\) carried as a legal original-participation certificate. Its
   variation-floor clause says nonzero carried same-packet current defect has
   nonzero relative-motion action; singular current needs added legal
   ancestry mass/current or is Part-side failure.
3. The finite-cover fork says cover data persists only after the profile
   measures lift to a compact closed finite-cover certificate with a uniform
   chart bound, compact chart parameters, closed membership, closed readout
   compatibility, and closed overlap. It proves no uniform finite-cover theorem
   for actual Navier-Stokes WKB packets.
4. The tower fork says the differentiated tower closes only when derivative
   graph defects \(G_\alpha\) and nonlinear flux defects \(R_\alpha\) vanish or
   are legally carried as same-solution tower certificates. It proves no
   tower-defect vanishing theorem or legal carriage theorem for actual
   Navier-Stokes WKB packets.

## Gate result

Row 3 is accepted only for prelimit actual certified windows: on a smooth
actual window, the law/ancestry/tower relations are genuine relations of the
same field, and cover changes can be treated as certified cover data.

It is refuted as a W9 deletion or free path-modulus theorem. "Vanished or
legally carried" is a pointwise closed-graph fork unless the legal carried
defect is also put into the common compact path topology with uniform local
BV/tightness or another shift-continuous modulus. The checked fork sources name
defect-vanishing, legal carriage, Pack/Part/Field failure, or Field consumer
routes; they do not prove finite material-time variation of the carried
Reynolds, transport, cover, or tower defect coordinates, and they do not build
the W9 action on the closure.

The bankable conditional row is:

\[
\begin{aligned}
&\text{pressure/ancestry/cover/tower defects vanish or are carried as legal
certificate coordinates}\\
&+\text{those coordinates have uniform local path tightness/BV in the common
certificate topology}\\
&\Longrightarrow
\text{clauses 2-5 close along the W9 shifted path hull.}
\end{aligned}
\]

The second line is still the missing W9 path-regularity input.

DELETED: none.
CERTIFICATE: Row 3 is accepted only on prelimit actual certified windows: the actual pressure law, material ancestry, finite cover, and differentiated tower relations are genuine there. It is refuted as a deletion because the checked pressure, ancestry, cover, and tower fork sources give pointwise closedness criteria or legal-carriage/failure alternatives, not a uniform material-time path modulus; legally carried Reynolds, transport, cover, and tower defects still need finite carried variation/tightness in the common W9 certificate topology and the action on the closure.
REMAINING: W3, W7, W8, W9.
