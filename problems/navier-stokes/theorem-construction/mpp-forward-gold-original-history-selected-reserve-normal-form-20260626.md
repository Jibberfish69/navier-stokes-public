---
theorem_id: forward-gold-original-history-selected-reserve-normal-form-20260626
status: reserve-normal-form-installed-carleson-selected-action-is-the-live-theorem
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AdjointSelectedCapacityGain.A
  - OriginalHistorySelectedReserve.A
  - RepeatedCorePositiveVariationRootBound.A
  - ScaleInvariantSelectedCapacityNoEscape.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-branch-proof-method-pivot-original-history-selected-reserve-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-affine-tail-global-poisson-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-payment-vs-full-clock-producer-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-hodge-sign-cancellation-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
---

# Original-history selected reserve normal form

The active Gold target is a finite selected first-ratio action on the original
transported material history:

```math
\mathcal A_{\rm first}
:=
\sum_{Q\in\mathcal T_{\rm sel}}A(Q)
<\infty .
\tag{OHSR.1}
```

The previous branch-pivot note ruled out three closure methods from installed
inputs: local bounded-below storage, compactness/Liouville, and support-tree
counting.  This note tests the remaining global same-fluid identities and fixes
the normal form of any valid original-history reserve.

## 1. What a reserve would have to do

A Gold reserve must be finite from the original datum and bounded below:

```math
\mathscr S_N^{\rm sel}(0)\le C_N(u_0),
\qquad
\inf_{t<T^*}\mathscr S_N^{\rm sel}(t)\ge -C_N(u_0),
\tag{OHSR.2}
```

and must satisfy a selected action inequality:

```math
d\mathscr S_N^{\rm sel}
+
c_N\,d\mathcal A_{\rm first}
\le
dR_N^{\rm legal},
\qquad
\int_0^{T^*}dR_N^{\rm legal}<\infty .
\tag{OHSR.3}
```

Integrating `(OHSR.3)` gives `(OHSR.1)`.  Conversely, if `(OHSR.1)` is already
known, the terminal-tail storage

```math
\mathscr S_{\rm tail}(t)
:=
\int_t^{T^*}d\mathcal A_{\rm first}
\tag{OHSR.4}
```

satisfies

```math
d\mathscr S_{\rm tail}+d\mathcal A_{\rm first}=0.
\tag{OHSR.5}
```

So a reserve constructed as future selected tail is equivalent to the theorem,
not a proof of it.

## 2. Current-state scalar storage is not enough

Any scalar storage built only from a current finite-depth local material state
has to pay affine trace-free material strain.  In the affine normal form

```math
u(x)=Ax,\qquad
p(x)=-{1\over2}x\cdot A^2x,\qquad
A=A^T,\quad\operatorname{tr}A=0,
\tag{OHSR.6}
```

the local Navier--Stokes balance is exact:

```math
(u\cdot\nabla)u+\nabla p=0,\qquad
\Delta u=0,\qquad
\nabla\cdot u=0.
\tag{OHSR.7}
```

For \(A=\operatorname{diag}(\lambda,-\lambda/2,-\lambda/2)\),

```math
{d\over dt}\log |D_aX(t)e_1|=\lambda.
\tag{OHSR.8}
```

The paying primitive is therefore a negative stretch variable such as

```math
X(t)=-c\log |D_aX(t)e_1|,
\tag{OHSR.9}
```

which is unbounded below on a long persistent affine-strain history.  Saturating
`(OHSR.9)` restores a lower bound only by losing payment of arbitrarily many
selected visits.  Thus a current-state scalar storage cannot be the reserve.

## 3. Global signed identities are coordinates, not reserves

### 3.1 Betchov

The periodic Betchov identity gives the exact signed global cubic balance:

```math
\int_{T^3}\operatorname{tr}(S^3)\,dx
=
-{3\over4}\int_{T^3}\omega\cdot S\omega\,dx .
\tag{OHSR.10}
```

This attaches strain self-amplification to the same incompressible
strain-vorticity ledger.  It controls a signed net quantity.  It does not control
the rectified selected positive action:

```math
\int [\omega\cdot S\omega]_+,
\qquad
\int |\operatorname{tr}(S^3)|,
\qquad
\sum_{Q\in\mathcal T_{\rm sel}}A(Q).
\tag{OHSR.11}
```

Positive and negative service can cancel in `(OHSR.10)` while `(OHSR.11)` remains
large.

### 3.2 Pressure Poisson

The pressure equation

```math
-\Delta p=\partial_i\partial_j(u_i u_j)
\tag{OHSR.12}
```

is the correct same-fluid pressure attachment.  But it is a time-slice elliptic
law.  Time-separated selected affine visits do not interact through an
instantaneous Poisson cross term, and simultaneous cross terms are signed:

```math
\sum_{k\ne\ell}
\langle f_k,(-\Delta)^{-1}f_\ell\rangle .
\tag{OHSR.13}
```

So pressure Poisson supplies nonlocal partner structure, not a one-sided
selected reserve.

### 3.3 Complete-frame and Hodge

The complete-frame trace-free identity gives the pointwise orientation payment:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+ .
\tag{OHSR.14}
```

Material Hodge projection removes pressure as an independent tangent dynamic
source and identifies projector motion with the same strain/metric geometry.

Together these inputs prove admission and orientation:

```math
\text{selected positive action}
\longrightarrow
\text{same-material compression / Hodge-frame / collar motion}.
\tag{OHSR.15}
```

They do not prove that the total right-side motion is finite from \(u_0\).

## 4. Normal form: selected action Carleson measure

After the installed laminar reduction, the original history supplies a selected
ancestry tree \(\mathcal T_{\rm sel}\).  A nonanticipating original-history
reserve is equivalent to a Carleson packing bound for the selected action:

```math
\sup_{Q_0\in\mathcal T_{\rm sel}}
\sum_{Q\subseteq Q_0}A(Q)
\le
C_N\,\mathcal R_{\rm root}(Q_0)+R_{\rm legal}(Q_0),
\tag{OHSR.16}
```

with finite root reserve

```math
\sum_{Q_0\ {\rm roots}}\mathcal R_{\rm root}(Q_0)
\le C_N(u_0).
\tag{OHSR.17}
```

Indeed, `(OHSR.16)`--`(OHSR.17)` imply `(OHSR.1)` by summing over roots.
Conversely, any reserve satisfying `(OHSR.2)`--`(OHSR.3)` defines an unspent
selected capacity on every subtree:

```math
\mathcal R_{\rm root}(Q_0)
:=
C_N^{-1}
\left(
\mathscr S_N^{\rm sel}(t(Q_0))-
\inf_{t<T^*}\mathscr S_N^{\rm sel}(t)
+R_N^{\rm legal}(Q_0)
\right),
\tag{OHSR.18}
```

and `(OHSR.3)` gives `(OHSR.16)`.  Thus the reserve theorem and the selected
Carleson packing theorem are the same theorem in two languages.

## 5. Branch forms of the Carleson theorem

The selected Carleson bound has the two installed branch faces.

Reused-core form:

```math
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)+R_{\rm legal}.
\tag{OHSR.19}
```

Shrinking-core form:

```math
\text{there is no infinite selected family }
Q_k,\ r_k\downarrow0,\ A(Q_k)\simeq1,
\sum_k R_{\rm raw}(Q_k)<\infty .
\tag{OHSR.20}
```

The first form is the reused-core root positive-variation bound.  The second is
scale-invariant selected-capacity no-escape.

## 6. Result

The valid Gold reserve cannot be supplied by:

```math
\text{local current-state storage},
\quad
\text{Betchov net balance},
\quad
\text{same-time whole-participant Poisson},
\quad
\text{complete-frame/Hodge attachment alone},
\quad
\text{BKM/continuation propagation}.
\tag{OHSR.21}
```

The exact live theorem is the selected action Carleson bound `(OHSR.16)` with
finite original-data root reserve `(OHSR.17)`, equivalently `(OHSR.19)` or
`(OHSR.20)`.

Once `(OHSR.16)`--`(OHSR.17)` is proved, the selected first-ratio action is
finite, the full same-material clock is finite, the material record stays
bounded, and the fixed \(H^s\) continuation readout restarts the solution past
the alleged terminal time.
