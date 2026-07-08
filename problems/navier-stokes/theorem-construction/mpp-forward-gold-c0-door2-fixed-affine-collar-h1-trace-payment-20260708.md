---
theorem_id: forward-gold-c0-door2-fixed-affine-collar-h1-trace-payment-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / Door 2 / smooth affine endpoint collar
status: fixed-affine-collar-payment-proved-under-enstrophy-viscous-participation; critical-cone-door-open
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-chain-hodge-payment-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-log-hodge-hardy-endpoint-lemma-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-transverse-restoring-sign-local-no-go-borrowing-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2b-critical-cone-profile-production-accounting-20260708.md
completion_truth: >-
  This note proves the fixed-geometry smooth-affine first-nonmerge collar
  payment under the same enstrophy-viscous participation bill used in the Door-1
  note. It does not prove NoFreeWrongSignPressureBorrowing.A in full by itself.
  The companion Door-2b endpoint is the scale-consistent degree -1
  pressure/velocity cone; that note kills the cone under strict
  profile-production bill admission. The remaining issue is global bill
  admission/accounting for the full retained tower.
---

# Door 2a: Fixed Smooth-Affine Collar Payment

Physical sentence: a smooth affine strain can be free only while it remains the
same affine motion of the same surrounding fluid. The instant the surrounding
fluid does not carry that same affine strain, the field must bend through the
collar, and that bending is the same \(H^1\)-level viscous/collar bill used in
Door 1.

## 1. Fixed collar statement

Work on a normalized annular collar

```math
\mathcal A=\{1<|x|<2\}.
\tag{D2A.1}
```

Let the child-side trace carry a nonzero traceless affine strain \(A\):

```math
S(u)|_{\Gamma_{\rm in}}\approx A,
\qquad
\operatorname{tr}A=0,
\qquad
[-\operatorname{tr}A^3]_+>0.
\tag{D2A.2}
```

Let \(\mathfrak A_{\rm par}\) be the affine strains owned by the parent collar.
The merge case is

```math
\operatorname{dist}(A,\mathfrak A_{\rm par})=0.
\tag{D2A.3}
```

The first non-merge case has a definite normalized gap

```math
\operatorname{dist}(A,\mathfrak A_{\rm par})
\ge
\kappa |A|
\tag{D2A.4}
```

after the usual stopping-time convention: infinitesimal affine drift is kept in
the same chain until it is paid by the off-kernel log-chain term, or until the
first collar where the gap is definite.

Then the fixed-collar payment is

```math
\mathsf P_{\rm collar}(\mathcal A)
\ge
c(\kappa)\,|A|^2 .
\tag{D2A.5}
```

## 2. Proof

For any parent affine strain \(B\in\mathfrak A_{\rm par}\), set

```math
E=S(u)-B .
\tag{D2A.6}
```

On the inner trace,

```math
\|E\|_{L^2(\Gamma_{\rm in})}
\ge
c\,|A-B|-{\rm Err}_{\rm atom}.
\tag{D2A.7}
```

The trace theorem on the fixed annulus gives

```math
\|E\|_{H^1(\mathcal A)}
\ge
c_{\rm tr}\|E\|_{L^2(\Gamma_{\rm in})}.
\tag{D2A.8}
```

Taking the infimum over parent-owned affine \(B\),

```math
\inf_{B\in\mathfrak A_{\rm par}}
\|S(u)-B\|_{H^1(\mathcal A)}^2
\ge
c\,\operatorname{dist}(A,\mathfrak A_{\rm par})^2
-C\,{\rm Err}_{\rm atom}.
\tag{D2A.9}
```

The strict same-field participation bill on the collar includes the localized
enstrophy-viscous/collar \(H^1\) term:

```math
\mathsf P_{\rm collar}(\mathcal A)
\ge
c_{\rm pay}
\inf_{B\in\mathfrak A_{\rm par}}
\|S(u)-B\|_{H^1(\mathcal A)}^2
-C_{\rm pay}{\rm Err}_{\rm atom}.
\tag{D2A.10}
```

Combining (D2A.4), (D2A.9), and (D2A.10), and absorbing the strict atom error,
gives (D2A.5).

The proof charges no affine mismatch as such. If \(B=A\), the collar is a merge
and the child service is parent-owned. The payment appears only when the same
velocity field must bend away from that affine strain inside the collar.

## 3. Infinite merge chain

If every parent collar merges, the same nonzero smooth affine strain persists
outward:

```math
u(x)=Ax+\text{rigid motion}
\tag{D2A.11}
```

on arbitrarily large physical balls. A nonzero affine velocity has

```math
\int_{B_R}|Ax|^2\,dx
\simeq
|A|^2R^5
\to\infty .
\tag{D2A.12}
```

So inside a finite-energy retained packet, an infinite smooth-affine merge
chain is not an unpaid child participant. It is either parent/global material,
or it must encounter a first non-merge collar and pay by (D2A.5).

## 4. What this does not close

This closes the fixed smooth-affine endpoint collar under the strict
enstrophy-viscous bill. It does not close the scale-consistent pressure-bank
escape isolated in the transverse-restoring note:

```math
u(x)\sim |x|^{-1}V(\theta),
\qquad
\nabla^2p(x)\sim |x|^{-4}\mathcal K(\theta).
\tag{D2A.13}
```

That object is not a fixed smooth affine trace being turned off in one collar.
It is the marginal wrong-sign Leray-cone/profile-production row:

```math
\texttt{NoRetainedWrongSignCriticalPressureCone.A}
\Longrightarrow
\texttt{NoFreeWrongSignPressureBorrowing.A}.
\tag{D2A.14}
```

Thus Door 2 splits:

```math
\begin{array}{ll}
\text{smooth affine first non-merge collar}
& \text{paid by fixed }H^1\text{ trace/collar bill,}\\
\text{degree }-1\text{ critical pressure cone}
& \text{killed by Door 2b under strict profile-production bill admission.}
\end{array}
\tag{D2A.15}
```
