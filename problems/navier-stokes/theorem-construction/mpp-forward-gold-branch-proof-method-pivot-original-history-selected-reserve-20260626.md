---
theorem_id: forward-gold-branch-proof-method-pivot-original-history-selected-reserve-20260626
status: method-pivot-installed-local-compactness-counting-attacks-do-not-close-selected-reserve
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AdjointSelectedCapacityGain.A
  - RepeatedCorePositiveVariationRootBound.A
  - ScaleInvariantSelectedCapacityNoEscape.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-branch-selected-capacity-closure-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-nonreuse-storage-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-escape-capacity-lower-bound-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-cauchy-green-annular-stress-work-lyapunov-test-20260625.md
---

# Branch proof-method pivot to original-history selected reserve

This note attacks the two live Gold branches as theorem problems.  The result is
not a closure.  It is a proof-method reduction: local storage, local compactness,
and tree counting do not close the selected first-ratio action from the installed
inputs.

The current selected action target is

```math
\mathcal A_{\rm first}
:=
\sum_{\ell\ge0}2^\ell\nu_\ell
\equiv
\sum_{Q\in\mathcal T_{\rm sel}}A(Q)
<\infty.
\tag{BPM.1}
```

The full same-material clock remains the continuation landing object.  The
nonproxy proof hinge inside it is `(BPM.1)`.

## 1. Proof-method pass

The installed extremal bad-tree reduction gives:

```math
\mathcal A_{\rm first}=\infty
\Longrightarrow
\text{reused-core divergence}
\quad\text{or}\quad
\text{shrinking-core selected escape}.
\tag{BPM.2}
```

This note tests three proof methods against those branches:

1. local bounded-below storage;
2. compactness / Liouville;
3. tree counting / branch-antichain packing.

## 2. Reused-core branch

The reused-core branch already has a conditional same-line tax:

```math
\sum_{Q_k\subset\mathcal A(a)}A(Q_k)
\le
C\,\mathcal V_{\rm core}(a)+R_{\rm legal}(a),
\tag{BPM.3}
```

where \(\mathcal V_{\rm core}\) is rectified positive Cauchy-Green deformation,
pressure-Hodge-frame, collar-normal, and annular turnstile variation on the same
material ancestry line.

The branch closes only with the root bound:

```math
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)+R_{\rm legal}.
\tag{BPM.4}
```

### 2.1 Local storage test

For a transported material line,

```math
{d\over dt}\log |D_aX(t)q|
=
e\cdot S e+\operatorname{Err}_{\rm frame}.
\tag{BPM.5}
```

The storage that pays positive stretch/compression has the local form

```math
X(t)=-c\log |D_aX(t)q|.
\tag{BPM.6}
```

In the affine strain normal form

```math
u(x)=Ax,\qquad
p(x)=-{1\over2}x\cdot A^2x,\qquad
A=A^T,\quad\operatorname{tr}A=0,
\tag{BPM.7}
```

the local Navier-Stokes balance is exact:

```math
(u\cdot\nabla)u+\nabla p=0,\qquad
\Delta u=0,\qquad
\nabla\cdot u=0.
\tag{BPM.8}
```

For \(A=\operatorname{diag}(\lambda,-\lambda/2,-\lambda/2)\),

```math
{d\over dt}\log |D_aX(t)e_1|=\lambda.
\tag{BPM.9}
```

Thus `(BPM.6)` satisfies \(X(t)=X(0)-c\lambda t\).  It is not bounded below on a
long persistent affine-strain history.  This rules out a local bounded-below
storage proof of `(BPM.4)`.

### 2.2 Compactness / Liouville test

Assume `(BPM.4)` fails and normalize a reused-core sequence with unit selected
action on each retained visit.  The material compactness limit may retain the
same affine pressure-strain profile `(BPM.7)`--`(BPM.9)`.

That profile is not a defect in the coupled pressure-viscosity-incompressibility
law.  It is a legal local model of material deformation with pressure balancing
convection and zero interior viscous Laplacian.  A Liouville theorem excluding
it would be false as a local statement.  Compactness therefore returns the same
branch object instead of contradicting it.

### 2.3 Counting test

Counting on one ancestry line gives only `(BPM.3)`.  It does not prove the root
integrability `(BPM.4)`.  Incompressibility gives

```math
\det D_aX=1,
\tag{BPM.10}
```

which controls volume, not rectified condition-number or frame-turnstile
variation.  Complete-frame and material Hodge identities attach and orient the
selected action, but do not bound the total rectified positive variation from
original data.

Therefore the reused-core branch still requires
`RepeatedCorePositiveVariationRootBound.A` in the exact root-bound form
`(BPM.4)`.

## 3. Shrinking-core branch

The shrinking-core branch has cores \(Q_k\) with

```math
r_k\downarrow0,\qquad
A(Q_k)\simeq1.
\tag{BPM.11}
```

For localized affine/material-time cores, the installed raw capacities scale as

```math
R_{\rm raw}(Q_k)\lesssim r_k.
\tag{BPM.12}
```

Thus a dyadic terminal family can have

```math
\sum_k r_k<\infty
\quad\text{while}\quad
\sum_kA(Q_k)=\infty.
\tag{BPM.13}
```

### 3.1 Raw capacity test

Raw pressure-Hodge, collar, turnstile, energy, and viscous capacity cannot close
the branch because `(BPM.12)` is summable along `(BPM.13)` while selected action
is scale invariant.

### 3.2 Compactness / Liouville test

Normalize a shrinking-core sequence by its selected unit action.  The local
limit is again allowed to be a coupled affine pressure-strain packet.  Local
compactness supplies a packet; it does not prove a global same-history
no-escape law.  The missing theorem is not local regularity of the normalized
profile.  It is the global statement that one original material history cannot
carry infinitely many such selected unit profiles at summable raw capacity cost.

Therefore the shrinking-core branch still requires
`ScaleInvariantSelectedCapacityNoEscape.A`.

## 4. Combined tree method

The installed half-tail model shows why the branch split cannot be closed by
support axioms alone.  The one-child laminar model

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{BPM.14}
```

satisfies

```math
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{BPM.15}
```

It also satisfies laminarity, raw finite mass, complete-frame orientation, and
conditional single-line payment.  So no purely combinatorial tree argument
using only those installed support axioms can prove `(BPM.1)`.

## 5. Exact nonproxy remaining theorem

The next Gold proof cannot be another local Cauchy-Green storage, pressure-only
estimate, raw-capacity estimate, compactness extraction, or support-axis
classification.

The nonproxy theorem is a bounded-below original-history selected reserve:

```math
\mathscr S_N^{\rm sel}(0)\le C_N(u_0),
\qquad
\inf_{t<T^*}\mathscr S_N^{\rm sel}(t)\ge -C_N(u_0),
\tag{BPM.16}
```

and

```math
d\mathscr S_N^{\rm sel}
+
c_N\,d\mathcal A_{\rm first}
\le
dR_N^{\rm legal},
\qquad
\int_0^{T^*}dR_N^{\rm legal}<\infty.
\tag{BPM.17}
```

Equivalently, prove one of the two branch forms:

```math
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le C_N(u_0)+R_{\rm legal},
\tag{BPM.18}
```

or

```math
\text{no infinite shrinking-core family with }
A(Q_k)\simeq1
\text{ and }
\sum_k R_{\rm raw}(Q_k)<\infty.
\tag{BPM.19}
```

## 6. Result

The proof-method pivot is complete:

```math
\text{local storage}
\quad
\text{compactness/Liouville}
\quad
\text{support-tree counting}
\tag{BPM.20}
```

do not close the Gold selected first-ratio action from installed inputs.

The live Gold theorem remains the original-history selected reserve `(BPM.16)`-
`(BPM.17)`, or one of its two branch equivalents `(BPM.18)` and `(BPM.19)`.
Once that selected reserve is proved, it gives finite full same-material clock,
bounded continuation-depth material record, and the fixed \(H^s\) restart.
