---
theorem_id: forward-gold-wkb-signed-stress-certificate-variation-floor-20260706
status: exact-variation-floor-for-signed-stress-certificate-carriage
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / pressure-law certificate
target_object:
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBActualPressureLawClosedness.A
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-no-vanishing-horn-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-field-readout-20260706.md
completion_truth: >-
  Exact algebraic floor for the signed-stress alternative. If a symmetric
  signed stress S is legally carried by two PSD packet stresses P,N with
  S=P-N, then tr P + tr N >= ||S||_* pointwise, and this constant is sharp by
  the spectral Jordan decomposition S=S_+-S_-. Thus a nonzero signed tensor
  certificate cannot be represented by positive packet pieces with vanishing
  total trace variation. In trace-energy currency, the required positive
  packet energy satisfies (1/2)(tr P+tr N) >= (1/2)||S||_*. Therefore the
  explicit signed-stress branch is only: vanishing trace-norm signed stress;
  nonvanishing positive variation carried by legal PSD subcertificates and
  then subject to the same terminal Field/readout and certificate rows; or
  failure to provide a legal same-packet signed certificate, which is
  actual-law / ancestry / cover / tower certificate loss rather than retained
  pressure-law supply. This proves no legal signed-stress carriage theorem, no
  WKB profile admission theorem, no WKB construction/exclusion theorem, no
  confinement constant, and no MPP closure.
---

# Signed-stress certificate has a variation floor

## 1. Object

The pressure-law row has one alternative left outside the PSD covariance
branch:

```text
the stress is not an actual Reynolds covariance
  -> requires explicit signed-stress certificate.
```

This note does not prove that such a certificate exists. It prices what the
certificate must carry if it is realized by same-packet positive stress pieces.

The physical point is simple. A velocity covariance is positive. A signed
stress is not. To carry a signed stress inside same-fluid WKB packet currency,
one must carry its positive and negative tensor parts as real positive packet
mass, not as pressure erasure.

## 2. Matrix floor

Let \(S\in{\rm Sym}(3)\). Suppose
\[
  S=P-N,\qquad P\ge0,\qquad N\ge0 .
  \tag{SSF.1}
\]
Then
\[
  \operatorname{tr}P+\operatorname{tr}N\ge\|S\|_* ,
  \tag{SSF.2}
\]
where \(\|S\|_*\) is the trace norm, the sum of absolute eigenvalues.

Proof. Since \(S\) is symmetric, trace-norm duality may be restricted to
symmetric test matrices:
\[
  \|S\|_*=\sup_{\substack{\|B\|_{\rm op}\le1\\ B=B^T}}\operatorname{tr}(BS).
  \tag{SSF.3}
\]
For any such \(B\),
\[
  \operatorname{tr}(BS)
  =
  \operatorname{tr}(BP)-\operatorname{tr}(BN)
  \le
  \operatorname{tr}P+\operatorname{tr}N,
  \tag{SSF.4}
\]
because \(-I\le B\le I\) in operator order. Taking the supremum gives
(SSF.2).

The constant is sharp. Let
\[
  S=S_+-S_-
  \tag{SSF.5}
\]
be the spectral positive/negative decomposition. Then \(S_\pm\ge0\),
\(S_+S_-=0\), and
\[
  \operatorname{tr}S_++\operatorname{tr}S_-=\|S\|_* .
  \tag{SSF.6}
\]

Thus \(\|S\|_*\) is the exact minimal positive trace variation needed to
represent \(S\) as a difference of PSD stresses.

## 3. Energy currency

For a PSD covariance stress \(P\), the trace-energy ledger is
\[
  \mu_P={1\over2}\operatorname{tr}P .
  \tag{SSF.7}
\]
Therefore any signed-stress representation (SSF.1) carries positive packet
energy at least
\[
  \mu_P+\mu_N
  =
  {1\over2}(\operatorname{tr}P+\operatorname{tr}N)
  \ge
  {1\over2}\|S\|_* .
  \tag{SSF.8}
\]

For trace-free \(S\), the spectral Jordan decomposition satisfies
\[
  \operatorname{tr}S_+=\operatorname{tr}S_-={1\over2}\|S\|_* .
  \tag{SSF.9}
\]
So a nonzero trace-free signed null stress needs equal positive and negative
PSD trace mass in the minimal representation.

The same statement holds for matrix-valued measures after taking
Radon-Nikodym densities with respect to a common dominating positive measure:
for every nonnegative test weight \(\psi\),
\[
  \int\psi\,d\|S\|_*
  \le
  \int\psi\,d\operatorname{tr}P+\int\psi\,d\operatorname{tr}N .
  \tag{SSF.10}
\]

## 4. Terminal WKB consequence

On a normalized terminal \(D_j\)-bank, set
\[
  V_j:=\phi_jD_j^3\|S_j\|_* .
  \tag{SSF.11}
\]
If a signed-stress certificate is realized by PSD packet stresses
\[
  S_j=P_j-N_j,
  \tag{SSF.12}
\]
then the total positive trace-energy mass satisfies
\[
  \phi_jD_j^3(\mu_{P,j}+\mu_{N,j})
  \ge
  {1\over2}V_j .
  \tag{SSF.13}
\]

Hence:

1. if \(V_j\to0\), the signed stress vanishes as a retained tensor
   certificate;
2. if \(\limsup_j V_j>0\), there is a terminal subtail with nonvanishing
   positive trace-energy mass in the representing PSD pieces;
3. if no PSD same-packet representation is supplied, the object is not a
   rung-zero Reynolds covariance branch and has not been admitted as retained
   WKB supply.

In the second case, the positive pieces still must pass the same witness
admission, finite cover, material ancestry, and same-law tower rows before any
Field/readout consumer may be used.

## 5. Corrected signed-stress branch

The explicit signed-stress alternative now has this exact split:

```text
signed stress has vanishing normalized trace norm
  -> retained signed tensor defect vanishes;
signed stress has nonvanishing trace norm and is represented by legal
same-packet PSD subcertificates
  -> positive trace variation is present and goes through the already named
     Field/readout + cover/ancestry/tower certificate rows;
signed stress has nonvanishing trace norm but no legal same-packet
representation/certificate
  -> actual-law / ancestry / cover / tower certificate failure.
```

There is no signed-stress branch in which a nonzero tensor certificate is
carried by zero positive packet variation.

## 6. Four-sentence result

A signed stress can be invisible to the velocity law only after it is a legal
certificate, not merely because it is signed. If \(S=P-N\) with \(P,N\ge0\),
then \(\operatorname{tr}P+\operatorname{tr}N\ge\|S\|_*\), sharply. Thus a
nonzero signed-stress certificate carries positive trace variation at least
\((1/2)\|S\|_*\) in energy currency. Vanishing trace variation kills the signed
tensor; nonvanishing trace variation routes to the same admission and
certificate rows as positive ballast.

## 7. State

This note prices the signed-stress alternative in the pressure-law fork.

It proves no existence of a legal signed-stress certificate, no actual WKB
carrier extraction, no microlocal-profile admission theorem, no WKB
construction/exclusion theorem, no crowd-cell decision, no confinement
constant, and no MPP closure.
