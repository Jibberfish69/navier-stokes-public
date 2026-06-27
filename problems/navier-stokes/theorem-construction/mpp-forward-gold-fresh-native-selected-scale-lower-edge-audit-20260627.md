---
theorem_id: forward-gold-fresh-native-selected-scale-lower-edge-audit-20260627
status: selected-scale-lower-edge-closed-root-upper-bound-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh native root reserve
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - SelectedScaleNativeReserveAtom.A
  - SelectedScaleFreshNativeRootReserve.A
  - NativeBirthChargePacking.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-spent-source-projection-nonreuse-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-augmented-parent-drop-silent-source-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-packing-selected-scale-atom-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
---

# Fresh native selected-scale lower-edge audit

The spent-source projection audit separates two questions:

1. can a strict selected descendant reuse an already-spent source direction;
2. can the fresh source direction be too small to carry selected unit action.

The first branch is closed by projection plus paid carry/reselection/silent
exchange.  This note tests the second branch as a zero-channel rigidity
problem.

## 1. Fresh native atom

After lower-band carry, entrance/legal, nonlaminar exits, paid selector jumps,
silent-source exchange, and spent-source reuse are removed, the fresh native
reserve density at a retained selected birth \(Q\) is

```math
\rho_Q^{fresh}
:=
\rho_Q^{vis}
+\rho_Q^{sil/ex}
+\rho_Q^{Hodge/proj}
+\rho_Q^{annular}
+\rho_Q^{vis/rad}
+\rho_Q^{freq/native}.
\tag{1}
```

These are not detached suppliers.  They are the visible Schur quotient, the
silent-source exchange coordinate, material Hodge/projector motion, annular
stress-work, viscous/radius service, and frequency-native entrance/refill
coordinate of the same transported packet.

The selected-scale lower-edge statement is

```math
\omega_Q
\le
C_N\rho_Q^{fresh}
+R_{\rm legal}(Q),
\qquad
\omega_Q\simeq A_{\rm sel}(Q).
\tag{2}
```

## 2. Contradiction test

Assume `(2)` fails.  Then there is a normalized retained sequence \(Q_n\) with

```math
\omega_{Q_n}=1,
\qquad
\rho_{Q_n}^{fresh}+R_{\rm legal}(Q_n)\to0.
\tag{3}
```

Pass to the retained same-material blow-up limit.  The vanishing of each native
coordinate gives:

```math
\rho^{vis}=0
\quad\Rightarrow\quad
\text{zero pressure-visible Schur quotient},
\tag{4}
```

```math
\rho^{sil/ex}=0
\quad\Rightarrow\quad
\text{no selected silent strain-Hessian / complete-frame exchange},
\tag{5}
```

```math
\rho^{Hodge/proj}=0
\quad\Rightarrow\quad
\text{no material projector/metric motion},
\tag{6}
```

```math
\rho^{annular}=0,\quad \rho^{vis/rad}=0
\quad\Rightarrow\quad
\text{no annular stress transaction and no viscous/radius service},
\tag{7}
```

and the frequency-native term has no entrance/refill contribution.

Thus the limiting selected source is Schur-invisible and has zero same-material
exchange/service.

## 3. Source-origin rigidity

The installed silent interior source normal form gives

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{\text{zero same-material strain/exchange charge}\}
=\{0\}.
\tag{8}
```

Equivalently, a boundary-flat pressure-Hodge source is either projected
constraint material,

```math
\mathbb P_A(A^\top\nabla_aw)=0,
\tag{9}
```

and therefore unselected, or its selected reading is paid by the strain-Hessian
/ complete-frame exchange term.

The complete-frame trace-free payment also removes transverse null symbols:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+[-n\cdot Sn]_+.
\tag{10}
```

So a nonzero selected transverse reading forces same-packet compression
service, contradicting `(5)`.

Therefore the limit in `(3)` has zero selected action:

```math
\omega_\infty=0.
\tag{11}
```

This contradicts the normalization \(\omega_{Q_n}=1\).

## 4. Lower edge conclusion

The selected-scale lower edge is valid:

```math
\omega_Q
\le
C_N\rho_Q^{fresh}
+R_{\rm legal}(Q).
\tag{12}
```

This closes the local selected-size atom part of
`SelectedScaleNativeReserveAtom.A`.

## 5. Remaining root theorem

The lower edge does not prove the root upper bound.  Gold still needs

```math
\sum_{Q\subset P}\rho_Q^{fresh}
\le
C_N(u_0)\mathcal R(P)
+R_{\rm legal}(P).
\tag{13}
```

Equation `(13)` is the current proof-bearing theorem.  It is the finite
original-history root reserve for fresh native source increments after all
reuse and silent-source zero-cost escapes have been removed.

The critical half-tail survives precisely when `(12)` holds locally but `(13)`
fails globally:

```math
\sum_\ell \rho_\ell^{fresh}<\infty
\quad\text{in raw mass, while}\quad
\sum_\ell \omega_\ell=\infty.
\tag{14}
```

Thus the next theorem is the root upper bound, not another lower-edge or
observability theorem.

## 6. Result

The fresh selected-scale lower edge is closed by zero-channel rigidity:

```math
\text{fresh selected birth}
\Longrightarrow
\text{nonzero same-packet native source coordinate}.
\tag{15}
```

The remaining Gold wall is:

```text
FreshNativeRootUpperBound.A
```

Statement: the fresh native source coordinates left after spent-source
projection, silent-source normal form, and paid selector/exchange removals form
a Carleson/root-summable original-history measure.
