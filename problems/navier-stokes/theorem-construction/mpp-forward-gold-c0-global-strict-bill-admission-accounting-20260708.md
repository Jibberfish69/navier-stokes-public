---
theorem_id: forward-gold-c0-global-strict-bill-admission-accounting-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / strict retained participation tower / conditional global bill accounting
status: conditional-accounting-only; long-chain-signed-endpoint-handoff-charge-still-open
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2-fixed-affine-collar-h1-trace-payment-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2b-critical-cone-profile-production-accounting-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-cone-pressure-row-elliptic-ownership-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-long-chain-endpoint-handoff-live-edge-20260708.md
completion_truth: >-
  This note proves only the no-loss/no-double-count accounting step after the
  local payment theorems have already been admitted in the same tower currency.
  It must not be cited as an independent c0 closure. The long same-affine chain
  row still depends on the signed endpoint handoff / non-telescoping charge:
  the parent-owned endpoint amplitude a_+ has to be charged by a T-odd
  same-field pressure-current/transport sign, or routed out, with a
  scale-uniform constant. Hodge/viscous magnitude bills charge off-kernel
  variation and fixed finite collars; they do not by themselves charge the
  endpoint affine mode. Under that additional signed endpoint-admission theorem
  the accounting gives P(T) >= c S(T) for the admitted class. Without it this
  file is a conditional reduction, not a proof of c0>0.
---

# Global strict bill admission/accounting

Physical sentence: once a retained tower is really the same fluid carrying
positive Vieillefosse service, the surrounding field must answer that service.
The finite and off-kernel answers can be accounted by the strict bills below.
The long same-affine endpoint is different: the endpoint affine amplitude is
the free Korn/participation mode, so it is paid only by a signed same-field
handoff theorem, not by a magnitude bill. This file accounts payments after
that theorem is admitted; it does not prove the endpoint sign.

## 1. The admitted strict bill

On a retained strict participation tower \(\mathcal T\), define the service
measure

```math
d\nu
=
d\mu_{\rm Vieillefosse}
=
[-\operatorname{tr}S^3]_+\,dx\,dt
\tag{GBA.1}
```

after the lawful same-fluid packet selection. The strict bill measure is the
positive same-field measure

```math
d\mu_{\rm strict}
=
d\mu_{\rm bad}
+d\mu_{\rm D1}
+d\mu_{\rm chain}
+d\mu_{\rm end}
+d\mu_{\rm D2a}
+d\mu_{\rm D2b}.
\tag{GBA.2}
```

The terms are not detached proxies:

- \(d\mu_{\rm bad}\) is the stopping-packet payment already used in VPL.174.
- \(d\mu_{\rm D1}\) is the localized enstrophy-viscous \(H^1\) response from
  the same strain-production budget as the cubic service.
- \(d\mu_{\rm chain}\) is the off-kernel same-affine Hodge payment for
  \((\partial_\rho a-2a)A\).
- \(d\mu_{\rm end}\) is the signed parent-owned endpoint handoff charge for
  the long-chain affine endpoint amplitude. This is not a Hodge magnitude bill;
  it is the T-odd same-field pressure-current/transport sign, or a typed
  route-out, admitted as a theorem.
- \(d\mu_{\rm D2a}\) is the fixed-collar \(H^1\) trace payment when a smooth
  affine endpoint fails to merge into the same parent affine field.
- \(d\mu_{\rm D2b}\) is the retained critical-cone pressure-row admission:
  log-scale record mismatch, material-time record change, frame/selector drift,
  no silent pressure-row dropping, and point-force/source ownership. The annular
  NS residual and angular roughness are not independent bills; residual is the
  same-field equation after material stationarity, and angular regularity is a
  Landau/Sverak consumer or route-out row. Its admission is the open
  non-separable row `RetainedCriticalConeProfileProductionBillAdmission.A`,
  split in Door 2b into `RetainedConeMaterialStationarityAdmission.A`,
  `ConePointForceOwnershipOrRouteOut.A`, and
  `ConeStationaryWeakProfileRegularity.A`. The exact-cone pressure-row
  ownership component is proved by
  `CriticalConePressureRowEllipticOwnership.A`; the open part is the retained
  tower-passage/material-time row and the parent/source relay, not the sphere
  Poisson ownership calculation itself. The same exact-cone note proves that a
  nonzero \(\ell=1\) harmonic pressure relay has pressure-traction moment
  \((4\pi/3)a\); it is stress-flux/source visible unless the full same-field
  stress cancels it into the zero-force Landau/Sverak consumer.

Thus

```math
\mathsf P_{\rm strict}(\mathcal T)
=
\mu_{\rm strict}(\mathcal T).
\tag{GBA.3}
```

This is the exact bill ontology used below. If a narrower bill excludes one of
these same-field channels, the theorem below proves the strict retained class
for the admitted bill, not for that narrower bill.

## 2. Service partition

VPL Section 23 gives a stopping-time partition of the active service measure.
There are bad stopping packets \(B_k\), finite maximal strict atoms \(A_j\), and
long same-normalized-affine chains \(C_\alpha\), with a subordinate partition

```math
1
=
\sum_j\omega_j
+\sum_k\beta_k
+\sum_\alpha\gamma_\alpha
\qquad
\nu\text{-a.e. on }\mathcal T .
\tag{GBA.4}
```

Hence no service is lost:

```math
\mathsf S(\mathcal T)
=
\sum_j S(A_j)
+\sum_k S(B_k)
+\sum_\alpha S(C_\alpha),
\tag{GBA.5}
```

where the three terms denote the corresponding integrals of
\(\omega_j,\beta_k,\gamma_\alpha\) against \(d\nu\).

## 3. Local lower bounds

Bad packets pay by the stopping inequality:

```math
S(B_k)
\le
C_B\,\mu_{\rm bad}(\Lambda B_k).
\tag{GBA.6}
```

Finite strict atoms pay by Door 1 plus the strict atom packet/collar geometry.
Door 1 removes the cubic \(L^2\to L^3\) gap by the enstrophy-viscous \(H^1\)
bill, so

```math
S(A_j)
\le
C_A\left(
\mu_{\rm D1}(\Lambda A_j)
+\mu_{\rm D2a}(\Lambda A_j)
\right),
\tag{GBA.7}
```

with the \(D2a\) term appearing only when the atom exits through a fixed
smooth-affine collar. If the affine endpoint merges into the parent, it is not
charged to the child atom; its service is parent-owned and appears in the
parent packet selected by the stopping partition.

For a long same-affine chain \(C_\alpha\), the log-chain Hodge note gives the
off-kernel payment plus an endpoint term. The endpoint term is the affine
handoff amplitude. It is the free Korn/participation mode, so this note may
convert it into a bill only under the signed endpoint handoff theorem
\(\texttt{SignedEndpointHandoffCharge.A}\), equivalently the retained
T-odd cubic-flux/payment-or-route-out theorem on the long chain. With that
additional admission,

```math
S(C_\alpha)
\le
C_C\left(
\mu_{\rm chain}(\Lambda C_\alpha)
+\mu_{\rm end}(\partial_{\rm handoff}C_\alpha)
+\mu_{\rm D2a}(\partial_{\rm out}C_\alpha)
+\mu_{\rm D2b}(\partial_{\rm crit}C_\alpha)
\right).
\tag{GBA.8}
```

The terms represent the same-field exits of the chain: off-kernel log
variation, signed parent handoff, fixed smooth-affine first non-merge collar,
and scale-consistent degree \(-1\) pressure cone. Door 2b consumes the last
term only after `RetainedCriticalConeProfileProductionBillAdmission.A` supplies
the non-separable retained pressure-row admission. The parent handoff cannot be
charged by the Hodge magnitude; it needs the signed endpoint theorem.

Let

```math
C_{\rm loc}
=
\max(C_A,C_B,C_C).
\tag{GBA.9}
```

Then (GBA.6)--(GBA.8) give

```math
\mathsf S(\mathcal T)
\le
C_{\rm loc}
\left(
\sum_k\mu_{\rm bad}(\Lambda B_k)
+\sum_j\mu_{\rm D1/D2a}(\Lambda A_j)
+\sum_\alpha\mu_{\rm chain/end/D2a/D2b}(\Lambda C_\alpha)
\right).
\tag{GBA.10}
```

## 4. No double-counting

The stopping packets, atom collars, chain collars, and cone endpoint cylinders
are selected by a dyadic maximal rule. Their dilates have bounded overlap:

```math
\sum_k \mathbf 1_{\Lambda B_k}
+\sum_j \mathbf 1_{\Lambda A_j}
+\sum_\alpha \mathbf 1_{\Lambda C_\alpha}
+\sum_\alpha \mathbf 1_{\partial_{\rm handoff}C_\alpha}
+\sum_\alpha \mathbf 1_{\partial_{\rm out}C_\alpha}
+\sum_\alpha \mathbf 1_{\partial_{\rm crit}C_\alpha}
\le
N_{\rm acc}.
\tag{GBA.11}
```

Because every local payment in (GBA.10) is a restriction of the same positive
measure \(d\mu_{\rm strict}\), (GBA.11) implies

```math
\sum_k\mu_{\rm bad}(\Lambda B_k)
+\sum_j\mu_{\rm D1/D2a}(\Lambda A_j)
+\sum_\alpha\mu_{\rm chain/end/D2a/D2b}(\Lambda C_\alpha)
\le
N_{\rm acc}\,\mu_{\rm strict}(\mathcal T).
\tag{GBA.12}
```

Combining (GBA.10) and (GBA.12),

```math
\mathsf S(\mathcal T)
\le
C_{\rm loc}N_{\rm acc}\,\mathsf P_{\rm strict}(\mathcal T).
\tag{GBA.13}
```

Equivalently,

```math
\mathsf P_{\rm strict}(\mathcal T)
\ge
c_{\rm strict}\,\mathsf S(\mathcal T),
\qquad
c_{\rm strict}=(C_{\rm loc}N_{\rm acc})^{-1}>0.
\tag{GBA.14}
```

The constants depend only on the fixed strict atom geometry, the fixed
stopping thresholds, and the admitted bill constants; they do not depend on
tower depth or scale.

## 5. Conditional \(c_0\) consequence inside the admitted class

For the retained strict participation tower class with the admitted bill,
including \(\mu_{\rm end}\),

```math
c_0^{\rm strict,adm}
=
\inf_{\mathsf S(\mathcal T)>0}
{\mathsf P_{\rm strict}(\mathcal T)\over\mathsf S(\mathcal T)}
\ge
c_{\rm strict}>0.
\tag{GBA.15}
```

Equivalently,

```math
c_0^{\rm strict,adm}
=
\sup\{c:\mathsf P_{\rm strict}\ge c\,\mathsf S
\text{ on every admitted retained strict tower}\}
\ge
c_{\rm strict}>0.
\tag{GBA.16}
```

This is a conditional sharp floor for the already-admitted class. It is not the
unconditional \(c_0\) theorem, because the signed endpoint handoff charge is
one of the admitted bill terms.

## 6. What remains outside this accounting theorem

This proves the global accounting theorem only after the strict bill is
admitted. It does not prove the signed endpoint handoff charge, and it does not
prove that every Clay-facing Navier-Stokes breakdown branch enters this
retained strict tower with this bill. The outside alternatives remain:

```math
\text{carrier/law/field loss}
\quad\Rightarrow\quad
\text{CM Pack/Part/Field route-out,}
\tag{GBA.17}
```

or the forward-Gold original-data admission theorem that turns arbitrary
terminal growth into retained positive Vieillefosse participation with the
strict bill already attached.

Thus this file leaves the \(c_0\) wall at the same place as the two-door audit:
prove the signed endpoint handoff / non-telescoping charge on the long
same-affine chain, or route that service out, and prove original-data admission
into the retained branch. The accounting is ready once those theorems exist; it
does not create them.
