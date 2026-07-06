---
theorem_id: forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706
status: strict-obstruction-carrier-neutral-beltrami-bath-cannot-supply-active-pressure-service
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - BeltramiMaterialPhase.ServiceIdentity
  - CarrierNeutralWKBBath.NO-ACTIVE-PRESSURE-SERVICE
  - ActiveService.ForcesCarrierScaleDrift
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fine-sparse-beltrami-self-drift-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-supercritical-motion-obstruction-20260706.md
completion_truth: >-
  Strict obstruction only. In the leading material WKB law, a Beltrami carrier
  wave vector k=lambda n transported by the producer strain S obeys
  D_t k=-S^T k, hence D_t log lambda=-n.S.n. A Beltrami pressure-Hessian cell
  has trace-free shape Q_n=I/3-n tensor n. Since S is trace-free,
  S:Q_n=-n.S.n=D_t log lambda. Therefore any positive Beltrami moment mixture
  K=sum_i w_i Q_{n_i} satisfies S:K=sum_i w_i D_t log lambda_i. In particular,
  a carrier-neutral bath supported on n.S.n=0 has S:K=0 and cannot supply the
  active scalar pressure-service channel. The same-shape affine service row has
  |S:K| comparable to s|K|, so it forces order-s carrier-scale drift on the
  weighted WKB population. This does not prove an energy floor or exclude a
  dynamic bath: the remaining branch is scale drift through the WKB window,
  refresh/reassembly/custody, an orthogonal rotation-only service channel, or a
  true construction/exclusion theorem. No dense-crowd theorem, no confinement
  constant, and no MPP closure are claimed.
---

# Beltrami material-phase service identity

## 1. Kill question

The many-cell WKB branch survived the static and local algebra tests.
Beltrami cells can kill projected self-turnover, and rotated Beltrami pressure
Hessians can span the trace-free local pressure-Hessian cone.

The next kill question is narrower:

\[
  \text{Can a material WKB Beltrami bath keep its carrier scale neutral while}
  \quad
  \text{supplying the active pressure-service component?}
  \tag{BMPS.1}
\]

The checked answer is no. Active pressure service and carrier-scale neutrality
are the same scalar with opposite descriptions.

## 2. Material WKB phase law

Let the producer frame have local incompressible strain \(S=S^T\),
\(\operatorname{tr}S=0\). For a high-frequency material phase
\(\varphi\), the WKB covector
\[
  k=\nabla\varphi=\lambda n,
  \qquad |n|=1,
  \tag{BMPS.2}
\]
obeys the affine material law
\[
  D_t k=-S^T k.
  \tag{BMPS.3}
\]

Therefore
\[
  D_t\log\lambda
  =
  {k\over |k|}\cdot {D_t k\over |k|}
  =
  -n\cdot S n.
  \tag{BMPS.4}
\]

So a carrier direction is scale-neutral exactly when
\[
  n\cdot S n=0.
  \tag{BMPS.5}
\]

## 3. Beltrami pressure moment

The Beltrami moment-matching note uses the trace-free shape
\[
  Q_n={1\over3}I-n\otimes n.
  \tag{BMPS.6}
\]

Pair it with the same producer strain \(S\). Since \(\operatorname{tr}S=0\),
\[
  S:Q_n
  =
  {1\over3}\operatorname{tr}S-n\cdot S n
  =
  -n\cdot S n.
  \tag{BMPS.7}
\]

Comparing (BMPS.4) and (BMPS.7) gives the identity
\[
  S:Q_n=D_t\log\lambda.
  \tag{BMPS.8}
\]

For a positive Beltrami mixture
\[
  K=\sum_i w_i Q_{n_i},
  \qquad w_i\ge0,
  \tag{BMPS.9}
\]
the same identity becomes
\[
  S:K
  =
  \sum_i w_i\,D_t\log\lambda_i.
  \tag{BMPS.10}
\]

Equivalently, if \(W=\sum_i w_i\) and
\[
  \bar K={K\over W},
  \tag{BMPS.11}
\]
then
\[
  S:\bar K
  =
  \sum_i {w_i\over W}\,D_t\log\lambda_i.
  \tag{BMPS.12}
\]

The active strain projection of the pressure moment is the weighted mean
carrier log-scale drift.

## 4. Consequence for carrier-neutral baths

If every active carrier is scale-neutral,
\[
  D_t\log\lambda_i=0,
  \tag{BMPS.13}
\]
then (BMPS.10) gives
\[
  S:K=0.
  \tag{BMPS.14}
\]

Thus a bath made only from scale-neutral Beltrami carriers can supply
pressure-Hessian components orthogonal to \(S\), but it cannot supply the
scalar channel that changes the strain amplitude in the \(S\)-direction.

This is exactly the channel used by the same-shape affine pressure service. In
that row the required Hessian has the form, to leading order,
\[
  K_{\rm tf}\sim -sG\,\widehat S,
  \qquad
  \widehat S={S\over |S|},
  \qquad
  G=s\beta^{4/5}.
  \tag{BMPS.15}
\]

Hence
\[
  |S:K_{\rm tf}|\sim s\,|K_{\rm tf}|.
  \tag{BMPS.16}
\]

After normalization by the moment size \(W\sim |K_{\rm tf}|\), (BMPS.12) says
the weighted carrier population has mean log-scale drift of order
\[
  \left|\sum_i {w_i\over W}\,D_t\log\lambda_i\right|
  \sim s.
  \tag{BMPS.17}
\]

So the active pressure-service Beltrami bath cannot be a fixed-carrier neutral
bath. It must move its carrier scale on the producer clock.

## 5. What this kills

This kills the shortcut
\[
  \text{many-cell Beltrami moment matching}
  +
  \text{material carrier neutrality}
  \Rightarrow
  \text{active no-payer pressure service}.
  \tag{BMPS.18}
\]

The local moment cone is real, but the neutral cone is smaller. On the neutral
cone \(n\cdot S n=0\), every \(Q_n\) satisfies \(S:Q_n=0\). Positive mixtures
of those cells remain orthogonal to the active strain projection.

## 6. What remains

This is not a dense-crowd theorem and not a construction exclusion.

It relocates the WKB survivor. A producing WKB bath must choose one of these
doors:

- orthogonal pressure service with \(S:K=0\), which cannot be the same-shape
  amplitude-service row by itself;
- carrier-scale drift through the WKB window on the producer clock;
- refresh or reassembly of the carrier population, which is a custody /
  Gate-8 / compensator question;
- or an actual dynamic construction/exclusion theorem for a drifting WKB bath.

The identity also gives the right certification target for the next pass: price
carrier-scale drift through the already filed
\[
  \theta\lesssim\beta^{24/25},
  \qquad
  \beta^{-12/5}\lesssim N\lesssim\beta^{12/5}\theta^{-5},
  \qquad
  \operatorname{Re}_D\gg\theta^{-2}
  \tag{BMPS.19}
\]
window, with the fixed-density subbranch
\[
  \theta\lesssim\beta^{6/5},
  \qquad
  N\sim\theta^{-3}.
  \tag{BMPS.20}
\]

## 7. Four-sentence result

For a material WKB Beltrami carrier \(k=\lambda n\) in producer strain \(S\),
\[
  D_t\log\lambda=-n\cdot S n.
\]
The same carrier's trace-free Beltrami pressure shape is
\[
  Q_n={1\over3}I-n\otimes n,
\]
so \(S:Q_n=D_t\log\lambda\). Therefore a positive Beltrami mixture satisfies
\[
  S:K=\sum_i w_iD_t\log\lambda_i.
\]
Carrier-neutral cells cannot supply active pressure service; the active WKB
bath must drift in carrier scale, refresh/reassemble, serve only an orthogonal
channel, or become a real dynamic construction/exclusion problem.
