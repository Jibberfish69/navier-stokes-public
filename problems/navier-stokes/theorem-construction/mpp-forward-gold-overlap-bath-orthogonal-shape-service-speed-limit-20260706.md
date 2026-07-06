---
theorem_id: forward-gold-overlap-bath-orthogonal-shape-service-speed-limit-20260706
status: strict-reduction-orthogonal-service-to-shape-speed-or-order-one-cost
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - OrthogonalPressureService.ShapeSpeedLimit
  - CheapWKBRow.ProducerFrameTooSlow
  - ProducerClockFrameHolding.OrderOneCost
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-fast-direction-tracking-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
completion_truth: >-
  Strict reduction only. Orthogonal pressure service means S:K=0 against the
  producer strain S. Write S=sigma Shat with |Shat|=1. The pressure-Hessian
  contribution K changes the strain amplitude at rate Shat:K and the strain
  shape at tangent speed |P_perp K|/sigma. Hence an orthogonal service row
  cannot change the producer amplitude, and it can rotate the producer strain
  frame at rate at most |K|/s when sigma~s. The cheap overlap/WKB pressure row
  has |K|~s^2 beta^(4/5), so it rotates the producer frame only at
  beta^(4/5)s. To hold or correct a producer-clock frame motion Omega~s, one
  needs |K|~s^2, whose pressure-source cost is |K|D^5~E_prod, an order-one
  payer. The same cheap row can still rotate its own small bath strain
  G=s beta^(4/5) on the producer clock; that is bath self-retuning, not
  producer-frame holding. This proves no global construction/exclusion, no
  Gate-8 allocation theorem, and no confinement constant.
---

# Orthogonal pressure-service shape-speed limit

## 1. Object

The material-phase service identity leaves one neutral-looking door:
\[
  S:K=0.
  \tag{OSS.1}
\]

Here \(S\) is the producer strain and \(K\) is the trace-free pressure-Hessian
service supplied by the WKB bath. This door cannot supply the same-shape
amplitude service. The remaining question is whether it can still hold the
producing geometry by pure shape or eigenframe motion.

The checked answer is scale-separated. Orthogonal service can move shape, but
its speed is the pressure-Hessian size divided by the strain size it is trying
to move.

## 2. Strain amplitude/shape split

Write the producer strain as
\[
  S=\sigma \widehat S,
  \qquad
  \sigma=|S|,
  \qquad
  |\widehat S|=1.
  \tag{OSS.2}
\]

For this note, isolate the pressure-Hessian service contribution \(K\) in the
strain equation. The sign convention is irrelevant for the norm estimates.
The contribution to the amplitude is
\[
  D_t\sigma\big|_K=\widehat S:K.
  \tag{OSS.3}
\]

The contribution to the unit strain shape is
\[
  D_t\widehat S\big|_K
  =
  {1\over\sigma}
  \left(K-(\widehat S:K)\widehat S\right)
  =
  {1\over\sigma}P_{\widehat S}^{\perp}K.
  \tag{OSS.4}
\]

Thus if the service is orthogonal to \(S\),
\[
  \widehat S:K=0,
  \tag{OSS.5}
\]
then it gives no amplitude service and only tangent shape service:
\[
  \left|D_t\widehat S\big|_K\right|
  =
  {|K|\over\sigma}.
  \tag{OSS.6}
\]

This is the exact shape-speed limit.

## 3. Producer-frame consequence

For the producer itself, \(\sigma\sim s\). A demanded producer-frame correction
or holding rate \(\Omega\) therefore requires
\[
  |K|\gtrsim s\Omega.
  \tag{OSS.7}
\]

The pressure-source row prices a Hessian of size \(|K|\) at
\[
  E_K\sim |K|D^5.
  \tag{OSS.8}
\]

Since the producer energy on the \(D\)-bank is
\[
  E_{\rm prod}\sim s^2D^5,
  \tag{OSS.9}
\]
the producer-frame shape service ratio is
\[
  {E_K\over E_{\rm prod}}
  \gtrsim
  {\Omega\over s}.
  \tag{OSS.10}
\]

Therefore producer-clock orthogonal holding,
\[
  \Omega\sim s,
  \tag{OSS.11}
\]
is an order-one pressure-source payer.

## 4. Cheap WKB row consequence

The cheap overlap/WKB pressure row has
\[
  |K|\sim s^2\beta^{4/5}.
  \tag{OSS.12}
\]

Against the producer strain \(\sigma\sim s\), (OSS.6) gives
\[
  \left|D_t\widehat S_{\rm prod}\big|_K\right|
  \lesssim
  s\beta^{4/5}.
  \tag{OSS.13}
\]

So the cheap orthogonal row can rotate the producer frame only on the slow
clock \(\beta^{4/5}s\). It cannot be the hidden producer-clock eigenframe
holder unless the real required correction is also that slow.

This matches the fast-motion threshold note from the pressure side:
\[
  {E_K\over E_{\rm prod}}
  \sim
  {\Omega\over s}.
  \tag{OSS.14}
\]
Here the amplitude of the moved object is the producer amplitude \(s\), so the
producer-clock threshold is exactly order one.

## 5. Bath self-retuning is different

The same Hessian can rotate a smaller overlap strain
\[
  G=s\beta^{4/5}
  \tag{OSS.15}
\]
at producer-clock speed, because
\[
  {|K|\over G}
  \sim
  {s^2\beta^{4/5}\over s\beta^{4/5}}
  =
  s.
  \tag{OSS.16}
\]

That is the already-filed direction-tracking result: a small bath can retune
its own supplied Hessian or strain shape on the producer clock inside the
\(q=4/5\) row.

But bath self-retuning is not producer-frame holding. To hold the producer's
own producing eigenframe, the divisor is \(s\), not \(G\).

## 6. Consequence for the survivor branch

The orthogonal-only WKB door now splits:
\[
  \hbox{orthogonal service}
  \Rightarrow
  \begin{cases}
  \hbox{slow producer-frame service } \Omega\lesssim s\beta^{4/5},\\
  \hbox{order-one payer for producer-clock service } \Omega\sim s,\\
  \hbox{bath self-retuning only},\\
  \hbox{or a construction proving slow service is enough.}
  \end{cases}
  \tag{OSS.17}
\]

So \(S:K=0\) is not a magic neutral holder of production. It is either too
slow to hold a producer-clock eviction, or it costs order-one producer
currency, or it remains a construction/exclusion question showing that the
needed correction rate is only slow.

## 7. What remains

This is not the confinement constant.

It does not prove that every producing field needs producer-clock orthogonal
shape service. It does not prove a Gate-8 allocation theorem for the order-one
shape service, and it does not exclude a dynamic WKB construction in which slow
orthogonal service is enough because the active geometry drifts slowly.

It removes only the free reading of the orthogonal door: a cheap
\(S:K=0\) pressure row cannot silently hold the producer frame at rate \(s\).

## 8. Four-sentence result

For \(S=\sigma\widehat S\), pressure service \(K\) changes the strain amplitude
by \(\widehat S:K\) and the strain shape by \(P_{\widehat S}^{\perp}K/\sigma\).
Thus an orthogonal service with \(S:K=0\) gives only shape motion, at speed
\(|K|/\sigma\). The cheap WKB row \(|K|\sim s^2\beta^{4/5}\) rotates the
producer strain frame only at speed \(s\beta^{4/5}\), while producer-clock
holding would require \(|K|\sim s^2\) and costs order-one producer energy.
The row can retune its own small bath shape on the producer clock, but that is
not free holding of the producer's producing frame.
