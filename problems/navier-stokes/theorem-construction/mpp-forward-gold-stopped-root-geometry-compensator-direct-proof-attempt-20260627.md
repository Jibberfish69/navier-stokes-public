---
theorem_id: forward-gold-stopped-root-geometry-compensator-direct-proof-attempt-20260627
status: direct-proof-attempt-reduced-to-root-defect-tightness-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
attacks_hinge:
  - StoppedPredictableRootGeometryCompensator.A
  - StoppedPredictableActiveWeightCompensator.A
  - ParentFixedConnectionAngleDriftCompensator.A
  - OriginalHistoryParentPredictableFreshInnovationCarleson.A
refines:
  - ActiveWeightDefectTightnessFromOriginalHistory.A
  - SameCarrierBadProfileExtraction.A
  - ActiveWeightBlowupProjectionCompactness.A
  - ParentSubtractedDynamicSilentFreshInnovationCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-active-weight-compensator-from-scale-memory-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-fixed-connection-angle-drift-compensator-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-geometry-realization-unifies-affine-transition-martingale-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-snell-compensator-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-weight-bad-profile-compactness-tightness-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-martingale-square-function-governing-edge-20260627.md
effect: >-
  Attempts the producer theorem directly.  The active-weight half-tail and the
  parent-fixed angle-drift stack are not independent obstructions after the root
  geometry is named.  They are the two ways a normalized parent-subtracted root
  defect measure can avoid the original-history ledger: either high active
  weight hides a unit of fresh quotient in a shrinking tube, or parent-fixed
  transport loses orthogonality through uncharged connection drift.  The proof
  reduces both to one missing tightness/extraction theorem for the root defect
  measure.  This is progress on the producer, not Gold closure.
---

# Stopped root-geometry compensator direct proof attempt

## 1. Target

The live producer is

```text
StoppedPredictableRootGeometryCompensator.A
  =
StoppedPredictableActiveWeightCompensator.A
+ ParentFixedConnectionAngleDriftCompensator.A.
```

For each stopped parent \(P'\subseteq P\), the desired estimate is

```math
\boxed{
\int_{\operatorname{Hist}(P')}dA_{P'}^{root}
+
\sum_{e\subset P'}
\int H_{e^-}\|D_e^{vis}+D_e^{sil}+D_e^{ex}\|_{\mathcal H_{\rm lift}}^2
\le
C_N(u_0)\mathcal R(P')
+R_{\rm legal}(P')
+Stop(P').
}
\tag{1}
```

where

```math
dA_P^{root}=dA_P^{wt}+dA_P^{conn}.
\tag{2}
```

The proof may use original stopped material history, parent/root predictable
data, legal and stop losses, and already installed local identities.  It may
not use `FullMaterialClockLedger.A`, future selected-tail readout, downstream
routed-current energy, or a parent envelope without a paid compensator.

## 2. Root generator

The only noncircular source for `(1)` is the parent-subtracted material
generator

```math
\mathcal G_P^{root}
=
\Pi_{\rm new}^P
\left(
\partial_\sigma Z
+[D_t,\mathcal L_A]w
+\operatorname{turnstile}_\sigma
+\operatorname{exchange}_\sigma
+\operatorname{covector}_\sigma
+\operatorname{frame}_\sigma
+\operatorname{collar/endpoint}_\sigma
\right).
\tag{3}
```

The candidate original-history ledger is

```math
d\Lambda_P^{root}
=
H_P^\ast\|\mathcal G_P^{root}\|^2\,d\sigma dt
+dA_P^{sel/chart}
+dR_{\rm legal,P}
+dStop_P.
\tag{4}
```

The direct proof would follow from a storage inequality

```math
dA_P^{root}
+a_P\|\mathcal G_P^{root}\|^2\,d\sigma dt
\le
-D_{\sigma,t}M_P
+d\Lambda_P^{root},
\tag{5}
```

with

```math
0\le M_P\le C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\qquad
\int_{\operatorname{Hist}(P)}d\Lambda_P^{root}
\le C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{6}
```

Integrating `(5)` gives the \(dA_P^{root}\) part of `(1)`.  The remaining
square term follows if every retained fresh edge satisfies the parent-fixed
representation

```math
D_e
=
(I-\Pi_{\mathcal P_{e^-}})
\int_{I_e}\mathcal G_P^{root}\,d\sigma
+R_e^{legal}
\tag{7}
```

in the common root Hilbert geometry chosen before selected readout.

## 3. What the direct estimate already pays

The derivative-exact pieces in `(7)` are paid by the harmonic Cauchy identity:

```math
H_{I_e}
\left\|
{1\over |I_e|}\int_{I_e}F_e(\sigma,t)\,d\sigma
\right\|^2
\le
\int_{I_e}w(\sigma,t)\|F_e(\sigma,t)\|^2\,d\sigma.
\tag{8}
```

Thus log-scale derivative, turnstile, exchange, covector, frame, collar, and
endpoint derivative pieces are paid once the edge is an announced material
derivative interval and the witness intervals have stopped bounded overlap.

The angle-drift cross terms are paid once the parent-fixed connection ledger is
available:

```math
\sum_{e<f}
|\langle\widetilde D_e,\widetilde D_f\rangle_{\mathfrak H_P}|
\le
\varepsilon\sum_e\int H_{e^-}\|D_e\|^2
+C_\varepsilon\int dA_P^{conn}
+R_{\rm legal}(P).
\tag{9}
```

The silent-source part is also in the same generator:

```math
D_e^{sil}
=
(I-\Pi_{\mathcal P_{e^-}})
\int_{I_e}\Pi_{\rm sel}^{ex}[D_t,\mathcal L_A]w_e
+\operatorname{frame/covector/collar/endpoint}
+R_e^{legal}.
\tag{10}
```

Frozen silence can remain inherited parent transport.  Fresh selected silence
is only the quotient left after parent subtraction, and it must be measured by
`(10)`.

## 4. Where the direct estimate still fails

The persistent affine quotient is not automatically derivative exact.  The
formal identity

```math
D_e=(I-\Pi_{\mathcal P_{e^-}})\mathcal C_\theta[Z_e]
\tag{11}
```

does not itself imply `(7)`.  Applying `(8)` directly to \(Z_e\) would require

```math
\int_{I_e}w\|Z_e^{fresh}\|^2<\infty,
\tag{12}
```

which is the selected-critical root bound being proved.

So the direct proof reaches the following exact missing theorem.

```text
RootDefectTightnessFromOriginalHistory.A.
```

It says that a normalized unit of parent-subtracted root defect cannot vanish
into shrinking high-weight tubes or moving-frame transport without paying
`dLambda_P^{root}`.

## 5. Bad-profile contradiction form

Assume `(1)` fails.  Normalize a stopped family so that

```math
\mu_n^{root}(\mathcal E_n)
:=
\int dA_{P_n}^{root}
+
\sum_{e\in\mathcal E_n}
\int H_{e^-}\|D_e\|_{\mathcal H_{\rm lift}}^2
=1,
\tag{13}
```

while

```math
\int_{\operatorname{Hist}(P_n)}d\Lambda_{P_n}^{root}
+R_{\rm legal}(P_n)
+Stop(P_n)
\to0.
\tag{14}
```

There are three possible losses of compactness.

First, the active-weight loss:

```math
H_{e_\ell^-}\simeq 2^\ell,
\qquad
\|D_{e_\ell}\|^2\simeq {2^{-\ell}\over \ell+1}.
\tag{15}
```

Second, the connection loss:

```math
\sum_e\|D_e\|^2<\infty,
\qquad
\sum_{e<f}|\langle\widetilde D_e,\widetilde D_f\rangle|=\infty.
\tag{16}
```

Third, the material-silent loss:

```math
A_{\rm sel}(f_e^{sil})>0,
\qquad
[D_t,\mathcal L_A]w_e=0,
\qquad
dA_e^{conn}=0.
\tag{17}
```

The direct proof requires one compactness/extraction theorem covering all
three losses:

```text
RootDefectTightnessFromOriginalHistory.A
  =
SameCarrierRootDefectExtraction.A
  + ActiveWeightBlowupProjectionCompactness.A
  + ParentFixedConnectionTightness.A.
```

Its statement is:

```math
\boxed{
\begin{gathered}
\mu_n^{root}(\mathcal E_n)=1,\qquad
\int d\Lambda_{P_n}^{root}+R_{\rm legal}+Stop\to0
\\
\Longrightarrow
\text{after a stopped subchain and root rescaling, }
H_{e_n^-}^{1/2}D_{e_n}
\rightharpoonup D_\infty\ne0
\text{ in one same-carrier parent Hilbert space,}
\\
\text{unless the lost mass is charged by }
dA^{wt}+dA^{conn}+d\Lambda^{root}+R_{\rm legal}+Stop.
\end{gathered}
}
\tag{18}
```

With `(18)`, the contradiction is immediate.  In the limit, `(14)` gives

```math
\partial_\sigma Z_\infty=0,\quad
[D_t,\mathcal L_A]w_\infty=0,\quad
\operatorname{turnstile}_\infty=0,\quad
\operatorname{exchange}_\infty=0,\quad
\operatorname{covector}_\infty=0,\quad
dA_\infty^{conn}=0,\quad
dA_\infty^{wt}=0.
\tag{19}
```

Thus the surviving object is inherited parent-predictable transport.  But the
fresh quotient was defined by

```math
D_\infty=(I-\Pi_{\mathcal P_-})Z_\infty.
\tag{20}
```

Inherited parent transport lies in \(\mathcal P_-\), so `(20)` gives

```math
D_\infty=0,
\tag{21}
```

contradicting the nonzero limit in `(18)`.

## 6. Result of the attempt

The direct route does not yet prove `StoppedPredictableRootGeometryCompensator.A`.
It reduces the producer to one sharper compactness theorem for the root defect
measure:

```text
RootDefectTightnessFromOriginalHistory.A.
```

This is not a new consumer or a renamed Gold target.  It is the missing proof
step inside the current producer.  Active-weight upcrossing and angle drift are
now the same tightness problem for a parent-subtracted, parent-fixed, weighted
fresh quotient.  Bessel, affine-transition martingales, selected-density
square functions, and endpoint readouts remain downstream consumers until this
tightness theorem is proved.

Partial, not Gold closed.
