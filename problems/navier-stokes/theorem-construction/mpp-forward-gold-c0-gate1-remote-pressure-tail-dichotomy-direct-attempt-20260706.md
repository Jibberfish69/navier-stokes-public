---
theorem_id: forward-gold-c0-gate1-remote-pressure-tail-dichotomy-direct-attempt-20260706
status: direct-attempt-fails-reduces-to-retained-field-envelope-exhaustion-or-routeout
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 remote pressure tail
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - RemoteTowerDifferencePressureTailSummabilityOrRouteOut.A
  - RetainedFieldEnvelopeExhaustsPressureIncrementSource.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/spine.md
proved_inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-increment-tail-dyadic-reduction-20260706.md
completion_truth: >-
  Direct attempt on the remote pressure-increment tail dichotomy. The attempt
  proves the absorption branch for remote tower differences that lie inside an
  enlarged retained Field envelope: after exhaustion, they are the same
  nonnegative Field/viscous currency and the dyadic pressure tail is absorbed.
  The attempt does not prove the outside-envelope branch from the allowed
  sources. The source says a localized or spatially varying participation
  defect is Field-visible once neighboring blocks are included, but it does not
  say every pressure-increment source outside the selected retained comparison
  component is automatically legal/Pack/Part/Field route-out. The remaining
  Gate 1 theorem is RetainedFieldEnvelopeExhaustsPressureIncrementSource.A:
  every tower-difference source contributing to the selected pressure increment
  is either included in the retained Field envelope under legal exhaustion, or
  it creates a concrete legal/collar/Pack/terminal-Part/Field face.
---

# Gate 1 remote pressure-tail dichotomy direct attempt

## 1. Physical target

The previous pressure-increment tail reduction showed that a surviving pressure
tail is sourced by tower differences somewhere else in the same field:

```math
\mathrm{Tail}^{press}
\sim
\sum_{\ell\ge0}(2^\ell L)^{-3}
\mathcal M_{N,h}(A_\ell),
\tag{RPT.1}
```

where each \(\mathcal M_{N,h}(A_\ell)\) is an ordinary retained rung times a
remote tower-difference mass.

So the question is no longer whether pressure can act from nowhere. It cannot.
The question is whether the remote tower differences that source the pressure
tail are part of the retained Field comparison, or whether they lie outside the
retained object.

## 2. Absorption branch: remote but retained

Let \(\Omega_M\) be the retained comparison component enlarged to include all
dyadic annuli \(A_\ell\) with \(2^\ell L\le M\). On this enlarged component the
Field energy contains the same nonnegative tower-difference masses:

```math
E^{Field}_{N,h}(\Omega_M)
\simeq
\sum_{k\le N}\lambda_k
\int_{\Omega_M}|\delta_hU_k|^2 .
\tag{RPT.2}
```

Using the dyadic estimate `(RPT.1)' and Cauchy/Young, for every \(\eta>0\),

```math
|\mathrm{Tail}^{press}_{\le M}|
\le
\eta\,dVisc_{N,h}(\Omega_M)
+C_{\eta,N,A_N}\,
dE^{Field}_{N,h}(\Omega_M).
\tag{RPT.3}
```

Here \(A_N\) denotes the retained ordinary-rung envelope used in the local
pressure-increment estimate. The exact constants are irrelevant to the
dichotomy; the point is that the source term is one ordinary rung times one
tower difference, hence every retained remote source is Field/viscous currency
after enlargement.

Thus, if the retained relay window includes the pressure-source annuli in its
Field envelope and

```math
dE^{Field}_{N,h}(\Omega_M)+dVisc_{N,h}(\Omega_M)\to0
\tag{RPT.4}
```

uniformly under the legal exhaustion, the remote pressure tail is absorbed.

## 3. Tail beyond the enlarged envelope

Let \(M\to\infty\). The unabsorbed part is not a local pressure term. It is
only the pressure effect of tower differences that remain outside every
retained enlarged Field envelope:

```math
\mathrm{Tail}^{press}_{>M}
\le
C_N
\sum_{\ell:\ 2^\ell L>M}
(2^\ell L)^{-3}\mathcal M_{N,h}(A_\ell).
\tag{RPT.5}
```

There are two possible readings.

First, if the annuli \(A_\ell\) are still part of the retained comparison
component, then they belong to the monotone Field envelope and `(RPT.3)' applies
after increasing \(M\). A nonzero limsup of `(RPT.5)' then means the retained
Field envelope was not actually exhausted.

Second, if the annuli are not part of the retained comparison component, then
the selected local record is being influenced by tower-difference material
outside the retained comparison object. That should be a legal/collar/Pack/
terminal-Part/Field route-out, but the allowed sources do not state this as an
installed theorem.

The source fact available is weaker. It says localized or spatially varying
participation defects are Field-visible once neighboring blocks are included:

```math
\text{a single bad local block is Field-visible once its neighbors are included.}
\tag{RPT.6}
```

This licenses the absorption branch when the neighbors are included. It does
not by itself say that all pressure-increment sources outside the retained
comparison component are automatically legal route-out.

## 4. Failed direct closure

The desired theorem was:

```math
\texttt{RemoteTowerDifferencePressureTailSummabilityOrRouteOut.A}.
\tag{RPT.7}
```

The direct proof splits it into:

```math
\begin{array}{ll}
\text{inside retained Field envelope:} &
\text{absorbed by }dE^{Field}+dVisc,\\[1mm]
\text{outside retained Field envelope:} &
\text{must be legal/collar/Pack/terminal-Part/Field route-out.}
\end{array}
\tag{RPT.8}
```

The first line is proved by `(RPT.3)'. The second line is not installed by the
allowed sources.

The exact remaining theorem is therefore:

```math
\texttt{RetainedFieldEnvelopeExhaustsPressureIncrementSource.A}.
\tag{RPT.9}
```

Statement. For every retained same-fluid relay sequence with \(R(W_j)=1\) and
\(B(W_j)\to0\), every remote tower-difference source that contributes through
the elliptic pressure kernel to the selected pressure increment is either:

```math
\begin{array}{ll}
\text{enveloped:} &
\text{contained in a legal monotone retained Field exhaustion and hence absorbed},\\[1mm]
\text{legal/stopped:} &
\text{a permitted cutoff, collar, or stopped contribution},\\[1mm]
\text{face failure:} &
\text{a concrete Pack, terminal Part, or Field route-out.}
\end{array}
\tag{RPT.10}
```

With `(RPT.9)', the remote pressure-tail theorem `(RPT.7)' follows, then
`RetainedPressureIncrementCZTailAdmission.A' follows, then Gate 1
`RetainedRelayFluxCutoffClosure.A' follows.

## 5. Consequence for c_0

This is still not a proof of \(c_0>0\). It is a strict reduction of the first
failed gate.

Physically, the pressure tail has now been forced into a same-field custody
question. A retained local relay may not borrow pressure force from remote
tower decoherence while keeping that remote decoherence outside the Field bill.
If it borrows from inside, the Field/viscous bills see it. If it borrows from
outside, the proof needs a route-out theorem saying that this is no longer the
same retained relay record.
