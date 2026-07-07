---
theorem_id: forward-gold-c0-live-prong-delamination-is-highfreq-log-endpoint-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / live prong (rigidity) — the two E4 escapes collapse to one, which collapses to high-frequency log-endpoint tightness of the record's null-Lagrangian mass
status: TWO REAL REDUCTIONS + EXACT LEAK LOCALIZATION, NOT A PROOF; subordinate to the shrink-map, sharpens the E4 residue
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-E4-record-closedness-compensated-compactness-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-what-any-proof-must-supply-target-spec-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-scale-covariance-filter-irreversibility-only-lever-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-alignment-lag-first-ratio-storage-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hs-lp-heat-flow-continuum-ontology-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-physical-synthesis-shrink-map-20260707.md
completion_truth: >-
  Two real physics-first reductions and an exact localization of the leak; NOT a
  proof of c_0. (R1) The temporal-atom escape is not independent of the ownership
  escape: a record is a one-way irreversible event, irreversibility in this fluid
  is produced by viscous dissipation and the four-body ratchet (both in B), so a
  record concentrated in vanishing material time pays a viscous/four-body bill
  atom (contradiction with B->0) UNLESS it is parentless -- i.e. temporal atom =>
  ownership/delamination. (R2) On the SIGNED core, delamination is governed by
  the null-Lagrangian factorization det grad u = (1/3) div(u cof grad u), Piola
  div-free cof; the Field/coherence bill gives strong low-frequency convergence,
  so by strong-times-weak the COHERENT (low-frequency) part of the signed record
  passes to the weak limit with no defect. LEAK (named, not pushed past): the
  record is carried by the HIGH-FREQUENCY tail (the cascade is the flux of
  null-Lagrangian mass to infinite frequency); there the coherence gift does not
  reach (record modes stay only weakly convergent) and cof/det weak-continuity is
  endpoint-marginal (strict above L^3, marginal at it). So delamination = the
  record's null-Lagrangian mass escaping to infinite frequency, and the bills
  control that escape only up to the logarithmic l^2->l^1 gap -- the SAME enemy
  nu_l = 2^{-l}/(l+1). The live prong and the log half-tail are one wall. Second
  open row: the actual record is the POSITIVE part [det grad u]_+, only
  lower-semicontinuous under weak limits (can drop mass), so signed passage does
  not deliver the positive one-way record -- positive-part admission is a distinct
  residue and is where a detached positive defect can live. NET: c_0 = strict
  high-frequency log-endpoint tightness of the signed record's null-Lagrangian
  mass, PLUS positive-part admission; both open, both at the log/high-frequency
  endpoint; both escape the scale-covariance filter only as rigidity, not as
  quantitative estimates. No FullTower retention, material-time Liouville, WLF.60,
  c_0, or MPP closure is proved.
---

# The live prong: delamination is high-frequency log-endpoint tightness

Physics-first. This does not prove `c_0`. It reduces the two open E4 escapes to
one, reduces that one to a named high-frequency tightness statement, and shows it
is the same log endpoint the alignment/service coordinates already isolated.

## 0. The object and the live prong

One incompressible viscous irreversible Navier-Stokes history. The live `c_0`
prong (not a quantitative estimate, which the scale-covariance filter kills, but a
rigidity): a normalized sequence of retained relay windows with unit record
`R(W_j)=1` and vanishing bills `B(W_j)→0` must converge to a zero-bill,
**positive-record** limit object, which the zero-bill kernel forbids
(`B=0 ⟹ R=0`). The gap is whether the positive record actually **passes** to the
limit. E4 left two escapes: a temporal record atom, and parent delamination.

## 1. Reduction R1 — temporal atom ⟹ ownership

A record is a **one-way** event: reserve moved down one scale and did not return.
In this fluid the arrow of time is carried **only** by dissipation (viscous heat)
and the four-body ratchet — both are terms of `B`. So a record crammed into
vanishing material time is an irreversible event at an instant, and it must pay a
**viscous or four-body bill atom** at that instant, contradicting `B→0` — *unless*
the record is not carried by the material flow, i.e. a parentless spike.

**Therefore the temporal-atom escape is not independent: it collapses into the
ownership/delamination escape.** The two E4 escapes are one.

## 2. Reduction R2 — signed delamination is the null-Lagrangian factorization

The record's engine is exact (verified L1 identity):
```math
\det\nabla u=\tfrac13\,\partial_j\!\big(u_i\,\mathrm{cof}(\nabla u)_{ij}\big),
\qquad
\partial_j\,\mathrm{cof}(\nabla u)_{ij}=0\ \text{(Piola)} .
```
So the record is `div( u × [divergence-free tensor] )`. Weak passage of the record
= weak passage of `u·cof∇u`. The **Field/coherence bill** forces the retained
family to stay common-mode, giving **strong convergence of the low-frequency
part** of `u`. By strong-`×`-weak (strong low-frequency `u` against the
weakly-continuous cofactor), the **coherent (low-frequency) part of the signed
record passes to the limit with no defect.**

This is real, and it is *why* the incompressible record beats a generic cubic: the
divergence form plus the coherence gift carry the low modes for free.

## 3. The leak — the record lives where the gift does not reach

The record is **not** carried by the low modes. The cascade is precisely the flux
of null-Lagrangian (volume-distortion) mass **to ever-higher frequency**. At that
high-frequency tail:

- the coherence gift does not reach — the record's own modes stay only **weakly**
  convergent, not strongly;
- `cof`/`det` weak-continuity is **endpoint-marginal** — strict above `L³`,
  marginal exactly at `L³`, and the fluid lives at the endpoint.

Hence:

> **Delamination = the record's null-Lagrangian mass escaping to infinite
> frequency**, and the bills control that escape only up to the **logarithmic
> `ℓ²→ℓ¹` gap**.

That escape is the **same enemy** already named in the alignment/service
coordinates: the heat-scale half-tail `ν_ℓ = 2^{-ℓ}/(ℓ+1)` (`Σν_ℓ<∞` but
`Σ2^ℓν_ℓ=Σ1/(ℓ+1)=∞`). The live rigidity prong and the log half-tail are **one
wall**, in frequency-tightness form.

## 4. The second row — positive-part admission

Even the signed passage does not finish, because the actual record is the
**positive part** `[det∇u]_+`, and `[·]_+` is only **lower-semicontinuous** under
weak limits: mass can **drop**, not just pass. So a positive one-way record can
fail to be inherited by the limit field while surviving as a **detached positive
defect measure** — precisely the parentless spike of R1. Positive-part admission
is therefore a distinct residue, not covered by the null-Lagrangian (which is
signed), and it is where a detached positive defect lives.

## 5. Honest grade

- **PROVED (physics-first reductions):** R1 (temporal atom ⟹ ownership, because
  irreversibility is billed); R2 (signed record's coherent low-frequency part
  passes, via the null-Lagrangian divergence form + coherence gift).
- **LOCALIZED (the exact leak):** delamination = strict high-frequency tightness
  of the record's null-Lagrangian mass at the **logarithmic endpoint** — the same
  `ν_ℓ=2^{-ℓ}/(ℓ+1)` enemy; PLUS positive-part `[·]_+` admission (l.s.c. mass
  drop).
- **OPEN (the wall):** the strict log-endpoint frequency-tightness of the signed
  record, and the positive-part admission. Both escape the scale-covariance filter
  only as **rigidity** (an exact-identity contradiction on the limit object), not
  as any quantitative scale-covariant estimate — consistent with the filter.
- **UNIFICATION:** live prong = alignment lag = `H^s↔L^p` service borderline =
  the `ε_*=inf B/R>0` bill-record extraction = high-frequency log-endpoint
  tightness. One wall, now in its sharpest (frequency-tightness + positive-part)
  form.

No closure claimed. Filed is not cleared.
