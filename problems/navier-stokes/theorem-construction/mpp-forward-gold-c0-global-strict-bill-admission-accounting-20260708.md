---
theorem_id: forward-gold-c0-global-strict-bill-admission-accounting-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / strict retained participation tower / global bill accounting
status: strict-retained-tower-c0-closed-under-admitted-strict-bill; clay-original-data-admission-still-open
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-payment-forces-zero-participation-direct-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2-fixed-affine-collar-h1-trace-payment-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2b-critical-cone-profile-production-accounting-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
completion_truth: >-
  This note proves the global no-loss/no-double-count accounting step for the
  retained strict participation tower, assuming the strict bill admits the
  same-field Door-1 H1/enstrophy payment, Door-2a fixed-collar H1 trace payment,
  and Door-2b profile-production cone payment. Under that admitted bill, VPL
  Section 23 plus Door 1, Door 2a, and Door 2b give P(T) >= c S(T), hence
  c0>0 for the retained strict participation tower class. This is not yet a
  full Clay proof from arbitrary original data: the remaining external burden is
  that every relevant Navier-Stokes breakdown branch either enters this retained
  strict bill class with the admitted payment channels or routes out through the
  CM Pack/Part/Field tree.
---

# Global strict bill admission/accounting

Physical sentence: once a retained tower is really the same fluid carrying
positive Vieillefosse service, every place where that service can hide has a
same-field payment channel. Small non-affine concentration pays the
enstrophy-viscous \(H^1\) bill. Smooth affine turn-off pays the fixed collar
trace bill. The critical pressure cone pays profile-production defects, and
zero defect is the zero-force Landau/Sverak profile. The only remaining
accounting question is whether these payments are all counted once in the same
tower bill. They are.

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
- \(d\mu_{\rm D2a}\) is the fixed-collar \(H^1\) trace payment when a smooth
  affine endpoint fails to merge into the same parent affine field.
- \(d\mu_{\rm D2b}\) is the retained critical-cone profile-production bill:
  log-scale drift, material-time drift, frame modulation, annular stationary
  NS defect, angular roughness, and point-force/source ownership.

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

For a long same-affine chain \(C_\alpha\), the log-chain Hodge note gives

```math
S(C_\alpha)
\le
C_C\left(
\mu_{\rm chain}(\Lambda C_\alpha)
+\mu_{\rm D2a}(\partial_{\rm out}C_\alpha)
+\mu_{\rm D2b}(\partial_{\rm crit}C_\alpha)
\right).
\tag{GBA.8}
```

The three terms represent the only same-field exits of the chain:
off-kernel log variation, fixed smooth-affine first non-merge collar, and
scale-consistent degree \(-1\) pressure cone. Door 2b says the last term
vanishes with positive service only if the cone has a profile-production
defect; if no defect remains, the zero-force Landau/Sverak consumer gives
zero service.

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
+\sum_\alpha\mu_{\rm chain/D2a/D2b}(\Lambda C_\alpha)
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
+\sum_\alpha\mu_{\rm chain/D2a/D2b}(\Lambda C_\alpha)
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

## 5. \(c_0\) consequence inside the retained strict class

For the retained strict participation tower class with the admitted bill,

```math
c_0^{\rm strict}
=
\inf_{\mathsf S(\mathcal T)>0}
{\mathsf P_{\rm strict}(\mathcal T)\over\mathsf S(\mathcal T)}
\ge
c_{\rm strict}>0.
\tag{GBA.15}
```

Equivalently,

```math
c_0^{\rm strict}
=
\sup\{c:\mathsf P_{\rm strict}\ge c\,\mathsf S
\text{ on every retained strict tower}\}
\ge
c_{\rm strict}>0.
\tag{GBA.16}
```

## 6. What remains outside this theorem

This proves the global accounting theorem for the retained strict tower once
the strict bill is admitted. It does not prove that every Clay-facing
Navier-Stokes breakdown branch enters this retained strict tower with this bill.
The outside alternatives remain:

```math
\text{carrier/law/field loss}
\quad\Rightarrow\quad
\text{CM Pack/Part/Field route-out,}
\tag{GBA.17}
```

or the forward-Gold original-data admission theorem that turns arbitrary
terminal growth into retained positive Vieillefosse participation with the
strict bill already attached.

Thus the retained strict \(c_0\) wall is crossed under the admitted bill. The
remaining Clay/global task is admission from arbitrary original data, not
another local pressure-sign or affine-collar calculation.
