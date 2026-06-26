---
theorem_id: forward-gold-parabolic-service-absorption-decomposition-direct-test-20260626
status: direct-test-reduces-absorption-to-top-strain-log-exchange-coercivity
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: ParabolicServiceAbsorptionForParentDrop.A
refined_hinge: TopStrainLogExchangeRootReserve.A
equivalent_open_hinge:
  - SignedSmoothSamePacketCommutatorCoercivity.A
  - SelectedCriticalStrainCapacityGoodLambda.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-parabolic-observability-compactness-absorption-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-clock-closure-complete-frame-hodge-assembly-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-construction-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-coercivity-audit-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-coefficient-frame-clock-absorbed-by-strain-log-storage-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-base-transported-collar-clock-absorbed-by-frame-20260625.md
---

# Parabolic service absorption decomposition direct test

The current hinge is:

```text
ParabolicServiceAbsorptionForParentDrop.A
```

It asks whether the material parabolic service term in the selected-trace
observability estimate is absorbable into finite original-data reserve,
already finite nonselected losses, or legal residue:

```math
\sum_{Q\subseteq Q_0}\mathcal E_{\rm par}(Q)
\le
C_N\mathcal R_{\rm root}(Q_0)+R_{\rm legal}(Q_0).
\tag{PSA.1}
```

This note decomposes \(\mathcal E_{\rm par}\).  The result is that
`ParabolicServiceAbsorptionForParentDrop.A` is not a new independent theorem.
All easy pieces are already absorbed; the surviving piece is the top-strain
log/exchange clock, equivalently the signed smooth same-packet commutator
coercivity or the selected critical-strain good-lambda theorem.

## 1. Components of the material parabolic service

The selected-trace observability readout uses:

```math
\mathcal E_{\rm par}
=
\mathcal E_{vis/rad}
+\mathcal E_{coef/frame}
+\mathcal E_{collar/base}
+\mathcal E_{collar/higher}
+\mathcal E_{Hodge/projector}
+\mathcal E_{press/collar,normal}
+\mathcal E_{annular/interface}
+\mathcal E_{top\ strain/log}
+\mathcal E_{comm/exchange}.
\tag{PSA.2}
```

Each term is still part of the one transported pressure-viscosity-
incompressibility-velocity material packet.  The point is only to sort which
pieces are already finite and which piece is the active clock.

## 2. Already absorbed pieces

The viscous/radius piece is a strict nonselected loss:

```math
\mathcal E_{vis/rad}\subset dD_N^{vis/rad}.
\tag{PSA.3}
```

The pressure/collar normal defect is handled by the relaxed Schur/collar graph
split:

```math
\mathcal E_{press/collar,normal}
\subset
d\Omega_N^{rel.defect}
+dR_N^{legal}.
\tag{PSA.4}
```

The coefficient/frame clock is exactly strain-driven:

```math
\dot G=-2ASA^\top,
\qquad
\|G^{-1/2}\dot G G^{-1/2}\|_{op}
\le4\lambda_+(S).
\tag{PSA.5}
```

So coefficient-frame superheat is absorbed into the top-strain log storage.

The base transported collar clock is also strain/frame service.  For
\(\phi(X(a,t),t)=\psi(a)\),

```math
D_t\nabla_x\phi=-(\nabla_xu)^\top\nabla_x\phi,
\qquad
\left|D_t\log|\nabla_x\phi|\right|
\le2\lambda_+(S).
\tag{PSA.6}
```

So base collar position, normal, and first-gradient thickness variation are
again absorbed into top-strain log storage.

Projector-first Hodge removes pressure as a top-order dynamic variable:

```math
\mathbb P_A\partial_t v
=
\nu\mathbb P_A\operatorname{div}_a(G\nabla_av).
\tag{PSA.7}
```

The projector motion is driven by the material metric and \(B=\nabla u\circ X\);
its metric part is strain/frame service, and its normal/collar defect is
covered by `(PSA.4)` plus legal interface terms.

Thus all of these pieces reduce to:

```math
dD_N^{vis/rad}
+dR_N^{legal}
+d\Omega_N^{top\ strain/log}
+d\Omega_N^{comm/exchange}.
\tag{PSA.8}
```

## 3. Surviving piece

The complete-frame primitive payment routes positive primitive service into
wave-covector compression or collar-normal compression:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+[-n\cdot Sn]_+.
\tag{PSA.9}
```

Below heat rate this is absorbed by viscosity:

```math
e_j\lambda_+(S_{<j-C})
\mathbf 1_{\{\lambda_+(S_{<j-C})\le\delta2^{2j}\}}
\lesssim
\delta\,2^{2j}e_j.
\tag{PSA.10}
```

Above heat rate it is routed into the top-strain log storage:

```math
B_{j,\delta}
=
e_j
\left[
\log{\lambda_+(S_{<j-C})\over\delta2^{2j}}
\right]_+.
\tag{PSA.11}
```

The signed identity has the schematic form:

```math
{d\over dt}B_{j,\delta}
+
e_j\lambda_+(S_{<j-C})
\mathbf 1_{\{\lambda_+(S_{<j-C})>\delta2^{2j}\}}
=
\text{same-packet signed exchange}.
\tag{PSA.12}
```

This is the exact surviving issue.  The storage is nonnegative and the identity
has the correct packet orientation, but finite total superheat residence needs
the positive signed exchange to be controlled by a bounded-below same-packet
commutator/coercivity law:

```math
\mathcal I_m
+dX_{comm,m}
+c\,d[\log(1+\mathcal P_{N,m}^{mat})]_+
\le
\varepsilon dD_{Q,m}^{w}
+\varepsilon dD_{S,m}^{rad}
+dR^0_{comm,m}.
\tag{PSA.13}
```

This is the already isolated theorem
`SignedSmoothSamePacketCommutatorCoercivity.A`.

## 4. Consequence for parent-drop absorption

After the decomposition, `(PSA.1)` becomes:

```math
\sum_{Q\subseteq Q_0}\mathcal E_{\rm par}(Q)
\lesssim
\sum_{Q\subseteq Q_0}
\left(
dD_N^{vis/rad}(Q)
+dR_N^{legal}(Q)
+d\Omega_N^{top\ strain/log}(Q)
+d\Omega_N^{comm/exchange}(Q)
\right).
\tag{PSA.14}
```

The first two terms are finite/legal.  The last two are not new: they are the
same Gold wall already represented as:

```text
SignedSmoothSamePacketCommutatorCoercivity.A
```

or, in capacity-tail language,

```text
SelectedCriticalStrainCapacityGoodLambda.A / WeightBeatingTailLaw.A.
```

Therefore `ParabolicServiceAbsorptionForParentDrop.A` does not create a new
proof obligation.  It collapses back to the signed top-strain/log exchange
coercivity already known to be the active full-clock production line.

## 5. Result

The live Gold edge should not remain phrased as generic parabolic-service
absorption.  The exact unresolved object is:

```text
TopStrainLogExchangeRootReserve.A
```

Statement:

```math
\sum_{Q\subseteq Q_0}
\left(
d\Omega_N^{top\ strain/log}(Q)
+d\Omega_N^{comm/exchange}(Q)
\right)
\le
C_N\mathcal R_{\rm root}(Q_0)+R_{\rm legal}(Q_0),
\tag{PSA.15}
```

where \(\mathcal R_{\rm root}\) is finite from original smooth data and is not
the tail integral of the desired full clock.

Equivalently, prove the signed smooth same-packet commutator/coercivity
inequality `(PSA.13)` or the selected critical-strain capacity good-lambda
tail law.  Without one of these, the material-service term in selected-trace
observability reintroduces the full-clock theorem as an assumption.
