---
theorem_id: forward-gold-overlap-bath-free-periodic-beltrami-not-evasion-20260706
status: exact-branch-kill-free-periodic-beltrami-cell-is-not-same-fluid-evasion
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - FreePeriodicBeltramiCell.NotEvasionClass
  - PeriodicBeltramiNeutralizer.ModelOnly
  - SameFluidWKBBath.CouplingStillOpen
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fine-sparse-beltrami-self-drift-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-localized-anisotropic-defect-leray-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-terminal-frequency-escape-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-field-admission-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-no-supplier-trichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-persistent-wkb-is-construction-surface-20260706.md
completion_truth: >-
  Exact branch kill only. The free periodic Beltrami neutralizer is not a
  producing same-fluid no-eviction counterexample. A constant-eigenvalue
  Beltrami field solves unforced Navier-Stokes by pure viscous decay and can
  have nonzero pressure Hessian, so it remains a valid obstruction to the
  shortcut that fine high-Re WKB cells self-evict by projected turnover. But as
  a standalone periodic cell it is not the coupled overlap bath: it has no
  external producer strain row, its cell-periodic total vortex-stretching
  production is zero, and on R^3 the unlocalized periodic field has infinite
  energy. Once the cell is coupled to a producer strain S, active Beltrami
  pressure service satisfies S:Q_n = D_t log lambda; carrier-neutral cells have
  S:K=0, while active service forces carrier-scale drift through the WKB
  log-room / refresh / custody rows. Once the cell is localized to finite
  energy, cutoff/Hodge and Leray pressure-law defects enter the already filed
  localization and Reynolds-certificate splits. Once an actual high-frequency
  same-solution nonzero moment is admitted, the terminal Sobolev/Field consumer
  applies; if admission or legality fails, the branch routes to Pack/Part or
  construction/exclusion. Thus the exact periodic Beltrami cell kills the
  self-drift shortcut but does not kill the confinement constant. This proves no
  construction or exclusion of the near-uniform same-fluid WKB bath, no crowd
  theorem, no fixed positive confinement constant, and no MPP closure.
---

# Free periodic Beltrami is not the evasion class

## 1. Kill question

The Beltrami self-drift obstruction left a tempting construction:

```text
use the exact periodic Beltrami neutralizer itself as the no-eviction crowd.
```

This note tests that construction as an evasion class.

It fails. The free periodic Beltrami cell is a model showing that projected
self-turnover need not evict a fine WKB pressure cell. It is not, by itself, a
same-fluid producing overlap bath.

## 2. Exact free cell

Let \(b\) be divergence-free and Beltrami:
\[
  \nabla\times b=\lambda b,
  \qquad
  -\Delta b=\lambda^2 b .
  \tag{FPB.1}
\]

Then
\[
  (b\cdot\nabla)b
  =
  \nabla {|b|^2\over2},
  \qquad
  \mathbb P((b\cdot\nabla)b)=0.
  \tag{FPB.2}
\]

Therefore
\[
  u(t)=e^{-\nu\lambda^2t}b
  \tag{FPB.3}
\]
solves Navier-Stokes with pressure
\[
  p(t)=-{1\over2}e^{-2\nu\lambda^2t}|b|^2.
  \tag{FPB.4}
\]

The cell can carry nonzero pressure Hessian. This is exactly why it killed the
fast-self-drift shortcut.

## 3. Why it is not a producing counterexample

The free cell has no coupled producer strain row. It is an exact solution by
itself, not a pressure bath attached to the same record-producing packet.

It also has zero cell-periodic net vortex-stretching production. Since
\(\omega=\lambda u\),
\[
  \int_{\mathbb T^3}\omega\cdot S\omega\,dx
  =
  \lambda^2\int_{\mathbb T^3} u\cdot(u\cdot\nabla)u\,dx
  =
  {\lambda^2\over2}\int_{\mathbb T^3} u\cdot\nabla |u|^2\,dx
  =
  0.
  \tag{FPB.5}
\]

So the exact periodic neutralizer is not a standalone record-financing
producing class with no eviction. It is a neutral pressure-service model cell.

On \(\mathbb R^3\), the unlocalized periodic cell also has infinite energy.
That alone keeps it from being a finite-energy whole-space counterexample.

## 4. What happens after coupling to the producer

The overlap bath needs service against the producer strain \(S\). For a
material Beltrami carrier \(k=\lambda n\),
\[
  D_t\log\lambda=-n\cdot S n .
  \tag{FPB.6}
\]

The Beltrami pressure shape is
\[
  Q_n={1\over3}I-n\otimes n,
  \tag{FPB.7}
\]
so, because \(\operatorname{tr}S=0\),
\[
  S:Q_n=-n\cdot Sn=D_t\log\lambda .
  \tag{FPB.8}
\]

For a positive mixture \(K=\sum_iw_iQ_{n_i}\),
\[
  S:K=\sum_iw_iD_t\log\lambda_i .
  \tag{FPB.9}
\]

Thus a carrier-neutral Beltrami population has \(S:K=0\). Active scalar
pressure service forces carrier-scale drift. The branch has left the free
periodic cell and entered the already named WKB log-room, refresh/reassembly,
bank-custody, or construction/exclusion rows.

## 5. What happens after localization

To make the periodic cell finite-energy on \(\mathbb R^3\), one must localize
it. The localization split already prices that move. If the envelope contains
few carrier wavelengths, cutoff/Hodge defects restore a self-drift payer. If it
contains many wavelengths, the object is the many-cell WKB bath, not the free
periodic cell.

The pressure-law row says the same thing in certificate language. A single
localized anisotropic Beltrami stress
\[
  R=\chi Q_n
  \tag{FPB.10}
\]
has
\[
  \mathbb P\,\operatorname{div}R\ne0
  \tag{FPB.11}
\]
unless it is canceled by other stresses, carried as a legal Reynolds
certificate, or routed to actual-law / tower certificate failure.

So finite-energy localization does not preserve the free-cell evasion. It
creates the already filed localization and Reynolds-certificate splits.

## 6. What happens after terminal admission

If the same-fluid WKB branch is actually admitted at terminal frequency with
nonzero retained moment,
\[
  \lambda_j\to\infty,
  \qquad
  \phi_jD_j^3|K_j|\ge c_0>0,
  \tag{FPB.12}
\]
then the Sobolev/Field consumer applies after witness admission. If the moment
vanishes or admission fails, the branch routes to high-factor source,
Pack/Part certificate failure, selected-carrier escape, or actual
construction/exclusion.

Thus terminal admission also leaves no free periodic Beltrami evasion class.

## 7. Branch kill

The exact free periodic Beltrami cell has only these roles:
\[
\begin{array}{ll}
\text{exact periodic cell}
  &\Rightarrow \text{self-drift shortcut killed, no coupled producing bath},\\[1mm]
\text{coupled active service}
  &\Rightarrow \text{carrier-scale drift / custody / construction rows},\\[1mm]
\text{finite-energy localization}
  &\Rightarrow \text{cutoff-Hodge or Reynolds-certificate rows},\\[1mm]
\text{terminal admitted nonzero moment}
  &\Rightarrow \text{Sobolev/Field route}.
\end{array}
\tag{FPB.13}
\]

Therefore the free periodic Beltrami neutralizer is not exit (ii). It is a
model obstruction to one proof shortcut, not a producing no-eviction
counterexample.

## 8. Four-sentence result

The exact periodic Beltrami cell solves Navier-Stokes by pure viscous decay and
can carry nonzero pressure Hessian, so it really does block the fast self-drift
argument. It is not the same-fluid overlap bath: as a free periodic cell it has
zero cell-periodic net stretching production and infinite whole-space energy.
When coupled to a producer strain, active service satisfies
\(S:Q_n=D_t\log\lambda\), so neutral carriers supply no active scalar service
and active carriers spend scale drift. Localization and terminal admission
route to the already filed cutoff/Reynolds-certificate and Field/Pack/Part
rows, leaving the actual near-uniform same-fluid WKB bath still open.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
