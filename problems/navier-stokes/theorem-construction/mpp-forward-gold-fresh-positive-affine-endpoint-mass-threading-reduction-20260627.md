---
theorem_id: forward-gold-fresh-positive-affine-endpoint-mass-threading-reduction-20260627
status: conditional-reduction-sharpens-fresh-producer-to-positive-endpoint-threading-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold terminal full-packet / fresh positive endpoint producer
logical_landing_node: TerminalFullPacketNoResiduePayment.A
attacks_hinge:
  - TerminalFullPacketNoResiduePayment.A
  - FreshPotentialAverageKillAndPositiveTransfer.A
  - FreshPositiveStressSecondOrderExactness.A
refined_hinge:
  - FreshPositiveAffineEndpointMassKill.A
  - FreshMuNCarlesonEndpointThreading.A
  - FreshEndpointMassShellPairThreading.A
  - FreshTerminalNuNWindowSeedSynchronization.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-full-packet-fresh-potential-producer-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-retained-potential-average-positive-transfer-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-retained-positive-affine-endpoint-mass-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-retained-mun-carleson-endpoint-threading-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-retained-endpoint-mass-shell-pair-threading-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-endpoint-mass-from-shell-pair-commutator-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-positive-stress-signed-exactness-transfer-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-positive-endpoint-stress-observability-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-direct-finite-band-bilinear-8j11-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-finite-collar-seed-to-interval-control-proof-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-nun-window-seed-synchronization-direct-attempt-20260609.md
---

# Fresh positive affine endpoint-mass threading reduction

Status: conditional reduction, not a closure.

## Governing parent

The governing Gold hinge remains

```math
\texttt{TerminalFullPacketNoResiduePayment.A}.
```

The fresh-potential branch is a concrete producer under the unweighted
same-carrier visible-readout branch. It does not replace the full-packet
no-residue theorem.

## What the previous fresh note exposed

The fresh DER/AQK note reduced the fresh paired-carrier producer to the affine
quotient

```math
c_F^{fresh}
=
A_\kappa M_0^{fresh}
+
B_\kappa M_1^{fresh},
```

where

```math
M_0^{fresh}(t,x)
=
\int_J \widetilde Z^{fresh}(\sigma,t,x)\,d\sigma,
\qquad
M_1^{fresh}(t,x)
=
\int_J \sigma \widetilde Z^{fresh}(\sigma,t,x)\,d\sigma .
```

The target AQK estimate is

```math
\int_0^{T^*} H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt
+
C_*2^{-2\delta N}
+
R_{legal}.
\tag{AQK-fresh}
```

The installed signed scale descent supplies only first-order exactness:

```math
Y^{fresh}
=
\partial_\sigma\Psi^{fresh}
+
S^{spill}
+
E .
```

Pairing this against the affine quotient weight leaves the scale-average
potential

```math
\mathcal P_{avg}^{fresh}(t)
=
|J|^{-1}\int_J\Psi^{fresh}(\sigma,t)\,d\sigma .
```

So the signed branch is one scale derivative short unless it proves both a
weighted kill of this potential average and a signed-to-positive transfer to
the nonnegative fresh stress source.

## Retained-source audit

The retained direct attempts decide the correct branch order.

First, the potential-average route is not a hidden closure. The retained
potential-average attempt records that ordinary gauge normalization does not
kill the affine survivor, Poincare control spends the signed source square, and
no installed theorem transfers signed first-order exactness to the positive
endpoint stress carrier.

Second, positivity does give a real shrinkage. On the positive carrier,

```math
0\le c_F^{fresh}(t,x)
\le
{|J|\over |I|}M_0^{fresh}(t,x),
```

with

```math
M_0^{fresh}(t,x)
=
\int_J \widetilde Z^{fresh}(\sigma,t,x)\,d\sigma,
\qquad
\widetilde Z^{fresh}\ge0 .
```

Thus the positive branch asks for the fresh weighted endpoint theorem

```math
\int_0^{T^*} H_w(t)\|M_0^{fresh}(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt
+
C_*2^{-2\delta N}
+
R_{legal}.
\tag{EP-fresh}
```

This is the sharper positive-native producer for AQK. It is still open.

## Why endpoint mass is not already paid

The retained endpoint-mass notes show four nonclosed routes.

### 1. Shell-pair commutator threading

The absorbed shell-pair packet has signed commutator structure and lands on

```math
\varepsilon\nu D_N(t)+\mu_N(t),
\qquad
d\mu_N(t)=\widetilde\Lambda_N^\sharp(t)E_N(t)\,dt .
```

The endpoint mass is the nonnegative accumulated stress source

```math
M_0^{fresh}(t)=\int_J\widetilde Z^{fresh}(\sigma,t)\,d\sigma .
```

The retained attempt proves that the commutator packet does not dominate this
positive endpoint mass without another theorem. The fresh analogue is:

```math
\texttt{FreshEndpointMassShellPairThreading.A}.
```

### 2. Finite-band bilinear route

Cauchy on fixed scale windows reduces endpoint observability to a finite-band
endpoint square, and the direct bilinear route isolates the term

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
E_m(t)^{1/2}2^{-j/2}D_j(t).
```

The retained direct attempt shows this term is absorbable only after controlling
the finite-collar coefficient

```math
2^{-j}E_m(t)
```

on the same retained terminal interval. The conditional collar seed theorem is
installed, but it requires synchronized terminal-window smallness of the
upgraded coefficient measure. The fresh endpoint branch inherits this exact
unpaid synchronization burden:

```math
\texttt{FreshTerminalNuNWindowSeedSynchronization.A}.
```

### 3. Carleson / measure threading

The upgraded gradient bridge would accept a Carleson estimate of the form

```math
\mu_N^{fresh}(I)
\le
{\varepsilon_\mu\nu\over C}\int_I D_N(t)\,dt
+
C_{\mu,*}2^{-2\delta N}
+
R_{legal}(I).
```

The retained attempts show that using the upgraded bridge to prove this measure
bound and then feeding the measure bound back into endpoint observability is
circular on the current route. A fresh proof must supply the Carleson estimate
before using the endpoint theorem it is meant to feed:

```math
\texttt{FreshMuNCarlesonEndpointThreading.A}.
```

### 4. Coherent positive-stress packets

The Volterra and anti-coherence attempts show why endpoint observability cannot
be treated as a generic Littlewood-Paley or Volterra fact. Positive stress
packets can model the sharp lower-prefix Hardy worst case:

```math
\tau_{j,model}^{H^1}(x,t)=b_j(t)\Phi(x,t),
\qquad b_j(t)\ge0 .
```

This coherent case must be paid by same-window dissipation/Carleson control,
tethered to an installed Part/Field terminal packet, excluded by a genuine
strain-stress anti-coherence mechanism, or used to prove the lower-prefix
active-square theorem directly. For the fresh Gold branch, this is subordinate
to endpoint threading unless it is proved to imply `(EP-fresh)` for the same
selected carrier.

## Correct fresh hierarchy

The current hierarchy is:

```math
\texttt{TerminalFullPacketNoResiduePayment.A}
```

with subordinate producer

```math
\texttt{FreshPotentialAverageKillAndPositiveTransfer.A}
```

sharpened on the positive-native branch to

```math
\texttt{FreshPositiveAffineEndpointMassKill.A}.
```

That fresh endpoint theorem reduces to one of:

```math
\texttt{FreshMuNCarlesonEndpointThreading.A},
\qquad
\texttt{FreshEndpointMassShellPairThreading.A},
\qquad
\texttt{FreshTerminalNuNWindowSeedSynchronization.A},
```

or a full-packet compactness/rigidity theorem proving that a persistent
positive affine survivor creates a nonzero no-residue full-packet violation.

## Result

`FreshPositiveStressSecondOrderExactness.A` is not installed, and treating it
as closed would relabel the endpoint theorem rather than prove it.

The better noncircular producer is the fresh positive endpoint-mass branch:

```math
\texttt{FreshPositiveAffineEndpointMassKill.A}
```

with the first sharp child

```math
\texttt{FreshMuNCarlesonEndpointThreading.A}.
```

This preserves the full-packet parent and prevents the fresh potential branch
from becoming a detached scalar target.
