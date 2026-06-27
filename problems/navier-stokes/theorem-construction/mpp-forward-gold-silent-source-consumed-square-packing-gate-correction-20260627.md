---
theorem_id: forward-gold-silent-source-consumed-square-packing-gate-correction-20260627
status: silent-source-consumed-fixed-core-and-reset-gates-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped routed current square-packing
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits:
  - SilentKernelSourceOriginNormalForm.A
  - SelectedDensityMartingaleSquareFunctionCarleson.A
  - StoppedRoutedCurrentSquarePacking.A
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedPotentialRecordAverageBound.A
  - StoppedNegativeScaleReturnCharge.A
  - LogScaleResetDerivativeCarrierBound.A
source_surfaces:
  - /Users/thomasbirnie/.codex/attachments/7d3acc39-1623-409f-8306-2d27b9748d7d/pasted-text.txt
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-routed-current-square-packing-branch-gates-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-martingale-local-step-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-support-to-record-return-live-edge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-signed-lift-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-return-branch-sharp-inputs-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-affine-quotient-transition-square-packing-direct-attack-20260627.md
---

# Silent source consumed; square-packing gates remain

The supplied silent-source normal form is the correct local correction to the
failed boundary-observability route.  The silent elliptic kernel is not zero:

```math
\mathcal K_Q^{\rm sil}
=
\{f:\ f=\mathcal L_Aw,\ w|_{\partial A_Q}=0,\ \partial_{\nu_A}w|_{\partial A_Q}=0\}.
```

So the valid local theorem is not boundary faithfulness.  It is the selected
source-origin fork:

```math
\mathcal K_Q^{\rm sil}
\cap
\mathcal C_Q^{\rm sel}
\cap
\ker \mathcal E_Q^{\rm exch}
=\{0\}.
\tag{1}
```

Equivalently, for one stopped material packet,

```math
A_{\rm sel}(Q)
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_Q^{\rm top\text{-}ex}
+\mathcal S_Q^{\rm mat}
+R_Q^{\rm legal}.
\tag{2}
```

This is the missing local step in the selected-density martingale estimate:

```math
|\Delta_Q\rho_{\rm sel}|^2\mu(Q)
\lesssim
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal E_Q^{\rm top\text{-}ex}
+\mathcal S_Q^{\rm mat}
+R_Q^{\rm legal}.
\tag{3}
```

Thus the silent-source escape is consumed as support for the routed current

```math
\nu^S
=
D_AJ^S+\nu^S_{\rm stop}+\nu^S_{\rm legal},
\qquad
J^S
=
J_{\rm vis}^S+J_{\rm sil/ex}^S+J_{\rm reset}^S+J_{\rm collar}^S+J_{\rm legal}^S.
\tag{4}
```

It does not prove the global square-packing theorem for \(J^S\).

## 1. The global target after consuming the silent source

The live stopped square-packing theorem remains

```math
\sum_{Q\subseteq P}
\left[
\int_{\widehat Q}|J^S|^2\,d\mathcal R
+Stop(Q)
\right]
\le
C_N(u_0)\mathcal R(P)+CR_{\rm legal}(P).
\tag{5}
```

After the local silent component is routed into \(J^S\), the nonlegal square
packing defects are exactly:

```math
Def_{\rm test}(P)
\le
C\,RetBV(P)+C\,ResetBV(P)+CR_{\rm legal}(P).
\tag{6}
```

Therefore `(5)` is closed by the two branch gates

```math
RetBV(P)+ResetBV(P)
\le
C_N(u_0)\mathcal R(P)+CR_{\rm legal}(P).
\tag{7}
```

The attached silent-source theorem supplies the local term in `(3)`.  It does
not supply `(7)`.

## 2. Fixed stopped-core gate

The fixed stopped-core branch is not closed by a scalar boundedness statement.
Positive variation obeys

```math
V_+(P_{\mathfrak R};I)
=
P_{\mathfrak R}(t_1)-P_{\mathfrak R}(t_0)
+V_-(P_{\mathfrak R};I).
\tag{8}
```

So fixed-core payment requires three inputs:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
+
StoppedPotentialRecordAverageBound.A
+
StoppedNegativeScaleReturnCharge.A.
```

The needed signed lift has the form

```math
D_tP_{\mathfrak R}
=
\mathcal P^{+}_{fresh}
-\mathcal R_{return}
+Err_{legal}.
\tag{9}
```

The record/root term must be bounded by original history:

```math
P_{\mathfrak R}(t_1)-P_{\mathfrak R}(t_0)
\le
B_{\rm rec}(Q_0)+R_{\rm legal}(Q_0).
\tag{10}
```

The negative return must also be finite:

```math
\int [D_tP_{\mathfrak R}]_-\,dt
\le
C_N(u_0)+CR_{\rm legal}.
\tag{11}
```

The installed annular stress-work primitive gives a real signed derivative
source, but it does not push down to `(9)` for the stopped positive PLS driver.
The installed stopped-primitive notes still leave the signed scale-potential
lift, representative/record bound, and negative-return charge open.

## 3. Strict reset gate

The strict reset branch is not closed by raw Bessel or raw nonreuse.  The
critical half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{12}
```

has finite raw mass but infinite selected first-ratio mass:

```math
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{13}
```

Therefore strict reset requires the original-history derivative carrier:

```text
LogScaleResetDerivativeCarrierBound.A
/
CriticalWeightedResetBVFromOriginalHistory.A.
```

The needed representation is

```math
\Delta Z_{Q\to Q'}^{fresh}
=
\int_{\log r(Q')}^{\log r(Q)}
\partial_\sigma Z(\sigma)\,d\sigma
+\operatorname{turnstile}_{Q\to Q'}
+\operatorname{exchange}_{Q\to Q'}
+R_{\rm legal},
\tag{14}
```

with weighted packing

```math
\sum_{Q,Q'}
w(Q')\|\Delta Z_{Q\to Q'}^{fresh}\|_{\mathcal H_{\rm raw}}^2
\le
C\int_{\mathcal C(P)}
\left(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
\right)
+CR_{\rm legal}(P).
\tag{15}
```

Without `(14)`--`(15)`, raw martingale/Bessel structure does not control the
selected reset charge.

## 4. Correct live edge

The Gold branch should currently read:

```text
StoppedRoutedCurrentSquarePacking.A
```

with exactly two global proof gates:

```text
Fixed stopped-core:
StoppedPrimitivePLSSignedScalePotentialLift.A
+ StoppedPotentialRecordAverageBound.A
+ StoppedNegativeScaleReturnCharge.A
```

and

```text
Strict reset:
LogScaleResetDerivativeCarrierBound.A
/ CriticalWeightedResetBVFromOriginalHistory.A.
```

The silent-source normal form is already consumed as local routed-current
support.  Reopening it as the main theorem would duplicate solved support and
miss the current global half-tail obstruction.
