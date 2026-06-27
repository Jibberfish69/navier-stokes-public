---
theorem_id: forward-gold-routed-current-square-packing-branch-gates-audit-20260627
status: current-square-packing-open-return-and-reset-branch-gates-sharp
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / routed current square-packing
audits:
  - StoppedRoutedParticipationCurrentCarleson.A
  - StoppedRoutedCurrentSquarePacking.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedResetBVFromOriginalHistory.A
consumes_support:
  - SilentKernelSourceOriginNormalForm.A
  - AugmentedParentDropAfterSilentSource.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-martingale-local-step-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-participation-current-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-source-innovation-testing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-balance-law-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-stopped-pls-evolution-identity-not-installed-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-reset-overrun-carleson-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-affine-quotient-transition-square-packing-direct-attack-20260627.md
---

# Routed current square-packing branch gates

## 1. Current state

The pasted silent-source theorem is consumed as a local selected-source step.
It rules out a zero-cost selected boundary-flat pressure-Hodge carrier:

```math
\mathcal K_Q^{\rm sil}
\cap
\mathcal C_Q^{\rm sel}
\cap
\ker
\left(
\mathcal E_Q^{\rm top\text{-}ex}
+\mathcal S_Q^{\rm mat}
+R_Q^{\rm legal}
\right)
=\{0\}.
\tag{1}
```

Consequently the routed source normal form may include the silent component as
part of the same-material current:

```math
\nu^S
=
D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal},
\qquad
J^S
=
J_{\rm vis}^S+J_{\rm sil/ex}^S+J_{\rm reset}^S+J_{\rm collar}^S+J_{\rm legal}^S.
\tag{2}
```

This closes the local Schur-invisibility escape.  It does not prove the global
stopped current square-packing estimate.

The open estimate remains:

```math
\sum_{Q\subseteq P}
\left[
\int_{\widehat Q}|J^S|^2\,d\mathcal R
+Stop(Q)
\right]
\le
C_N(u_0)\mathcal R(P)+CR_{\rm legal}(P).
\tag{3}
```

## 2. The two branch gates

After `(1)` is consumed, the square-packing defects are exactly two
non-legal branches:

```math
Def_{\rm test}(P)
\le
C\,RetBV(P)+C\,ResetBV(P)+CR_{\rm legal}(P).
\tag{4}
```

So `(3)` follows from

```math
RetBV(P)+ResetBV(P)
\le
C_N(u_0)\mathcal R(P)+CR_{\rm legal}(P).
\tag{5}
```

This note records the exact content of the two branch gates.

## 3. Fixed stopped-core return gate

The repeated stopped-core branch is not paid by boundedness of a scalar record.
A bounded oscillating record can have infinite variation.  The needed theorem is
a signed stopped-material PLS balance:

```text
SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A.
```

The required identity has the form

```math
D_tP_{\mathfrak R}
=
\mathcal P^{+}_{fresh}
-\mathcal R_{return}
+Err_{legal},
\tag{6}
```

with finite negative return:

```math
\int [D_tP_{\mathfrak R}]_-\,dt
\le
C_N(u_0)+CR_{\rm legal}.
\tag{7}
```

Then positive visits on one stopped ancestry line telescope:

```math
V_+(P_{\mathfrak R};I)
=
P_{\mathfrak R}(t_1)-P_{\mathfrak R}(t_0)
+V_-(P_{\mathfrak R};I),
\tag{8}
```

and `(7)` turns the fixed-core contribution into original-history service.

Without `(6)`--`(7)`, fixed-core return remains open.

## 4. Strict reset gate

The shrinking/reset branch is not paid by raw reset distance or raw \(L^2\)
current.  The critical half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{9}
```

has finite raw mass but divergent selected first-ratio mass:

```math
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{10}
```

The needed theorem is:

```text
CriticalWeightedResetBVFromOriginalHistory.A / LogScaleResetDerivativeCarrierBound.A.
```

The missing identity is a lifted martingale/log-scale derivative representation
for the fresh reset increment:

```math
\Delta Z_{Q\to Q'}^{fresh}
=
\int_{\log r(Q')}^{\log r(Q)}
\partial_\sigma Z(\sigma)\,d\sigma
+\operatorname{turnstile}_{Q\to Q'}
+\operatorname{exchange}_{Q\to Q'}
+R_{\rm legal}.
\tag{11}
```

It must carry the critical weighted packing bound

```math
\sum_{Q,Q'}
w(Q')\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{\rm raw}}^2
\le
C
\int_{\mathcal C(P)}
\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
\right)
+CR_{\rm legal}(P).
\tag{12}
```

This is the strict-reset square-packing gate.  Without `(11)`--`(12)`, reset BV
remains open.

## 5. Resulting live target

The current Gold branch should be stated as:

```text
StoppedRoutedCurrentSquarePacking.A
```

with two exact proof inputs:

```text
SignedStoppedPLSEvolutionIdentity.A / StoppedReturnBVFiniteFromOriginalData.A
```

and

```text
LogScaleResetDerivativeCarrierBound.A / CriticalWeightedResetBVFromOriginalHistory.A.
```

The silent-source theorem is closed local support for the visible/silent/exchange
current.  The remaining hard math is the original-history square-packing of the
two branch defects.
