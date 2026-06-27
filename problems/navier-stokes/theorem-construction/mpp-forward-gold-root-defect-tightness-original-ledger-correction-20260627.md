---
theorem_id: forward-gold-root-defect-tightness-original-ledger-correction-20260627
status: circular-escape-charge-removed-original-ledger-storage-live
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped root geometry
audits:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-root-geometry-compensator-direct-proof-attempt-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-geometry-realization-unifies-affine-transition-martingale-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-active-weight-compensator-from-scale-memory-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-fixed-connection-angle-drift-compensator-20260627.md
attacks_hinge:
  - RootDefectTightnessFromOriginalHistory.A
  - StoppedPredictableRootGeometryCompensator.A
  - SelectedGeneratorStorageCoercivity.A
  - OriginalScaleMemoryStorageCoercivity.A
effect: >-
  Corrects the root-defect compactness theorem by removing the circular escape
  clause that lets lost mass be charged to dA^{wt}+dA^{conn}.  Those measures are
  the left-side root geometry clock being produced.  A noncircular tightness
  theorem may charge escape only to a parent-known original-history generator,
  legal loss, or stop loss.  Thus the live producer is the storage/coercivity
  estimate for that original root generator; active-weight and connection
  tightness are consumers of that estimate, not independent closure certificates.
---

# Root-defect tightness: original-ledger correction

The stopped root-geometry direct attempt correctly unified the active-weight
half-tail and the parent-fixed angle-drift stack into one object:

```text
StoppedPredictableRootGeometryCompensator.A
  =
StoppedPredictableActiveWeightCompensator.A
+ ParentFixedConnectionAngleDriftCompensator.A.
```

It also isolated the right compactness shape:

```text
RootDefectTightnessFromOriginalHistory.A.
```

But the displayed tightness alternative in the direct attempt still allowed a
bad escape to be "charged by"

```math
dA^{wt}+dA^{conn}+d\Lambda^{root}+R_{\rm legal}+Stop.
```

That is too weak as a proof producer.  The measures

```math
dA^{wt}+dA^{conn}
```

are the root clock on the left side of the theorem.  Allowing escaped mass to
be paid by those same measures only renames the missing estimate.

## 1. Correct noncircular tightness statement

Let the normalized root defect measure be

```math
\mu_n^{root}
:=
\sum_{e\in\mathcal E_n}
\int H_{e^-}\|D_e\|_{\mathcal H_{\rm lift}}^2
+\int dA_{P_n}^{root}.
\tag{1}
```

Normalize

```math
\mu_n^{root}(\mathcal E_n)=1.
\tag{2}
```

The escape hypothesis must be measured only against a parent-known
original-history ledger:

```math
\int_{\operatorname{Hist}(P_n)}d\Lambda_{P_n}^{orig}
+R_{\rm legal}(P_n)+Stop(P_n)\to0.
\tag{3}
```

The corrected theorem is:

```text
OriginalLedgerRootDefectTightness.A
```

with statement:

```math
\boxed{
\begin{gathered}
\mu_n^{root}(\mathcal E_n)=1,\qquad
\int d\Lambda_{P_n}^{orig}+R_{\rm legal}(P_n)+Stop(P_n)\to0
\\
\Longrightarrow
\text{after stopped subchain extraction and root rescaling,}
\\
H_{e_n^-}^{1/2}D_{e_n}
\rightharpoonup D_\infty\ne0
\text{ in one same-carrier parent Hilbert space.}
\end{gathered}
}
\tag{4}
```

The theorem may not list \(dA^{wt}\) or \(dA^{conn}\) on the escape side.
Those appear only as quantities to be controlled by the storage/coercivity
estimate below.

## 2. Original root generator

The parent-known original generator is

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
\tag{5}
```

The corresponding ledger is

```math
d\Lambda_P^{orig}
=
H_P^\ast\|\mathcal G_P^{root}\|^2\,d\sigma dt
+dA_P^{sel/chart}
+dR_{\rm legal,P}
+dStop_P,
\tag{6}
```

where \(H_P^\ast\), the projection \(\Pi_{\rm new}^P\), and the parent-fixed
connection are all chosen from stopped parent/root history before descendant
selected readout.

This ledger is proof-bearing only if it has an original-data bound:

```math
\boxed{
\int_{\operatorname{Hist}(P)}d\Lambda_P^{orig}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
}
\tag{7}
```

That is the real storage/coercivity theorem.

## 3. Storage form

The noncircular producer is the parent-known storage estimate

```math
\boxed{
H_P^\ast\|\mathcal G_P^{root}\|^2\,d\sigma dt
+dA_P^{sel/chart}
\le
-D_{\sigma,t}M_P
+d\Theta_P^{orig}
+dR_{\rm legal,P}
+dStop_P,
}
\tag{8}
```

with

```math
0\le M_P\le C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\tag{9}
```

and

```math
\int_{\operatorname{Hist}(P)}d\Theta_P^{orig}
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{10}
```

Integrating `(8)` gives `(7)`.

## 4. Consequence for the compactness argument

With `(7)` in hand, `(4)` gives a nonzero zero-cost same-carrier limit.  In
that limit,

```math
\partial_\sigma Z_\infty=0,\qquad
[D_t,\mathcal L_A]w_\infty=0,\qquad
\operatorname{turnstile}_\infty=0,
```

```math
\operatorname{exchange}_\infty=0,\qquad
\operatorname{covector}_\infty=0,\qquad
\operatorname{frame/collar/endpoint}_\infty=0.
\tag{11}
```

So the remaining object is inherited parent-predictable transport.  The fresh
root quotient is

```math
D_\infty=(I-\Pi_{\mathcal P_-})Z_\infty.
\tag{12}
```

Inherited parent transport lies in \(\mathcal P_-\), hence

```math
D_\infty=0,
\tag{13}
```

contradicting the nonzero limit in `(4)`.

## 5. Result

The root-defect compactness theorem is useful only in the original-ledger form:

```text
OriginalLedgerRootDefectTightness.A
+ SelectedGeneratorStorageCoercivity.A
  -> StoppedPredictableRootGeometryCompensator.A.
```

The route must not claim root tightness by charging escaped mass to
\(dA^{wt}+dA^{conn}\).  Those are the root geometry clock being produced.  The
noncircular producer is the storage/coercivity estimate `(8)` for the
parent-known original root generator `(5)`.

Partial, not Gold closed.
